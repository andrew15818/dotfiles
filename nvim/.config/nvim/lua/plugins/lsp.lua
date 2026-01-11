return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      --pyright = {
      --  mason = false,
      --},
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
          python = { "ruff_format", "ruff_fix", "ruff_organize_imports" },
        },
      },
    },
  },
}
