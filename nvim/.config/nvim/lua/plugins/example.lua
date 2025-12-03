-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
-- return {


  
--   -- add pyright to lspconfig
--   {
--     "neovim/nvim-lspconfig",
--     ---@class PluginLspOpts
--     opts = {
--       ---@type lspconfig.options
--       servers = {
--         -- pyright will be automatically installed with mason and loaded with lspconfig
--         pyright = {},
--       },
--     },
--   },

--   -- add more treesitter parsers
--   {
--     "nvim-treesitter/nvim-treesitter",
--     opts = {
--       ensure_installed = {
--         "bash",
--         "html",
--         "javascript",
--         "json",
--         "lua",
--         "markdown",
--         "markdown_inline",
--         "python",
--         "query",
--         "regex",
--         "tsx",
--         "typescript",
--         "vim",
--         "yaml",
--       },
--     },
--   },

--   -- use mini.starter instead of alpha
--   { import = "lazyvim.plugins.extras.ui.mini-starter" },

--   -- add jsonls and schemastore packages, and setup treesitter for json, json5 and jsonc
--   { import = "lazyvim.plugins.extras.lang.json" },

  

  
-- }

-- need to include this line to prevent loading the example spec
if true then return {} end