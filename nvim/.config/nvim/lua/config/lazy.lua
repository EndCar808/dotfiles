-- This file determines how LazyVim should behave
-- It essentially has two functions:
-- 1. Boostrap the lazyvim (clones it if it does not alreay exist)
-- 2. Launches lazyvim via a configurable spec i.e., run lazyvim with specified options

---------------- Step 1. Bootstrap lazyvim
-- Create a local variable called lazypath which stores the path to lazyvim on the current machine
-- vim.fn.stdpath("data"): Use the nvim api to call the built in vim function stdpath to return nvims "data" directoy
-- .. "/lazy/lazy.nvim": concatenate "/lazy/lazy.nvim" to the above
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- If lazyvim does not exist clone it
-- vim.loop.fs_stat(lazypath): use nvim api to call low-level system stuff like fs_stat() which will return nil if lazypath does not exist
-- vim.fn.system(..): use nvim api to run a shell commmand - if you pass a list/table of strings the command gets run without a shell (execvp-style)
-- {...}: in lua this is a table literal (think array/dict) - this is being used as a plain list/array
-- {"git", "clone", ...}: runs a shallow-ish clone of a stable branch of lazyvim
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ 
    "git", 
    "clone", 
    "--filter=blob:none", 
    "https://github.com/folke/lazy.nvim.git", 
    "--branch=stable", 
    lazypath 
  })
end

-- Put the lazy.nvim directory at the front of the runtimepath (using $LAZY env var if set, otherwise use the lazypath var above) - this is what makes require("lazy") below work
-- vim.opt.rtp:prepend: use nvim api to prepend the rtp "runtimepath" (a list of directories, nvim searches for plugins, configs, syntax files etc)
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

---------------- Step 2. Launch Lazyvim via a setup config.
-- require("lazy"): look for a package called lazy on the package path (which includes the rtp)
-- .setup(): calls the setup function on that module using the big table passed to it.
-- the {...} table: is a lua table with several keys:
-- 1. spec - the "plugin specification" - a table of plugins - the first is adding in all the default lazyvim plugins,
--           the next few are other lazyvim extra plugins, finally the last one is telling lazyvim to look in lua/plugins for plugin specs and load them all see lua/plugins/*.lua files
-- 2. defaults - these are lazyvims default settings for plugins - no need to touch these unless you know what they are doing - these settings are saying: load all user defined plugins on startup,
--               lazyvim pluggins are lazy loaded, and all plugins should take the latest git commit i.e., no versioning
-- 3. installl - this is a convenience setting on first set up - it ensures you will have a fallback colorscheme if you don't have one installed, order matters here
-- 4. checker  - lazyvim has a background plugin update checker, runs periodically to check for the latest commits/versions, it doesn't automatically update however
--               you still need to do this via :Lazy sync
-- 5. performance - allows you to configure some settings to optimize performance on start up
require("lazy").setup({
  spec = {
    -- Add LazyVim and import its default plugins - use this as a base
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "lazyvim.plugins.extras.lang.json" },

    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },

    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,

    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = {
    colorscheme = { "tokyonight", "habamax" },
  },
  checker = {
    enabled = true, -- automatically check for plugin updates
  },
  performance = {
    rtp = {
      -- disable some built in vim rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
