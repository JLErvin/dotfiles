local lazyvim = {
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "onedark",
  },
}

return {
  lazyvim,
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        highlights = {
          ["@keyword.function"] = { fmt = "italic" },
          ["@keyword"] = { fmt = "italic" },
        },
      })
    end,
  },
}
