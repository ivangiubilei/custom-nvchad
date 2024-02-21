local plugins = {
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "nvimtools/none-ls.nvim",
      config = function ()
        require "custom.configs.none-ls"
      end,
    },

    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "udalov/kotlin-vim",
    lazy = false
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "pyright",
        "mypy",
        "ruff",
        "black",
        "zls",
        "kotlin-language-server",
        "java-language-server",
        "hls",
        "stylua",
        "eslint",
        "spell",
        "astyle",
      }
    }
  }
}
return plugins
