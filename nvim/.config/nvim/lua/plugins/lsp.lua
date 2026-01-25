return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      bacon_ls = {
        enabled = diagnostics == "bacon-ls",
      },
      rust_analyser = { enabled = false },
      ruff = {
        cmd_env = { RUFF_TRACE = "messages" },
        init_options = {
          settings = {
            logLevel = "error",
          },
        },
        keys = {
          {
            "<leader>co",
            LazyVim.lsp.action["source.organizeImports"],
            desc = "Organize Imports",
          },
        },
      },
    },
    {
      "stevearch/conform.nvim",
      opts = {
        formattrs_by_ft = {
          rust = { "rustfmt", lsp_format = "fallback" },
          python = { "ruff_format", "ruff_fix", "ruff_organize_imports" },
        },
      },
    },
  },
}
