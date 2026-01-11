return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    styles = {
      functions = { "italic" },
      comments = { "italic" },
      loops = { "italic" },
    },
  },
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        options = {
          compile_path = vim.fn.stdpath("cache") .. "/nightfox",
          compile_file_suffix = "_compiled", -- Compiled file suffix
          transparent = false,
          terminal_colors = false,
          dim_inactive = false,
          module_default = true,
          styles = {
            comments = "italic",
            conditionals = "italic",
            constants = "bold",
            functions = "italic,bold",
            keywords = "italic",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "italic",
          },
          inverse = { -- Inverse highlight for different types
            match_paren = true,
            visual = false,
            search = false,
          },
          modules = { -- List of various plugins and additional options
            -- ...
          },
        },
        specs = {},
        groups = {},
      })
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    config = function()
      --vim.cmd("colorscheme dracula")
    end,
  },
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_background = "hard"
      vim.cmd("colorscheme gruvbox-material")
    end,
  },
  {
    "everviolet/nvim",
    name = "evergarden",
    priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
    opts = {
      theme = {
        variant = "fall", -- 'winter'|'fall'|'spring'|'summer'
        accent = "green",
      },
      editor = {
        transparent_background = false,
        sign = { color = "none" },
        float = {
          color = "mantle",
          invert_border = false,
        },
        completion = {
          color = "surface0",
        },
      },
    },
  },
}
