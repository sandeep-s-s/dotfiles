-- Disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Optionally enable 24-bit colour
vim.opt.termguicolors = true

require('nvim-web-devicons').setup({
  override = {
    html = {
      icon = "",
      color = "#E34C26",
      name = "Html"
    },
    css = {
      icon = "",
      color = "#563d7c",
      name = "Css"
    },
    js = {
      icon = "",
      color = "#F7DF1E",
      name = "Js"
    },
    -- Add more file types as needed
  },
  default = true,  -- Use default icons for other file types
})

-- Empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "✗",
          staged = "✓",
          untracked = "★",
        },
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
        },
      },
    },
  },
  filters = {
    dotfiles = true,
  },
})

