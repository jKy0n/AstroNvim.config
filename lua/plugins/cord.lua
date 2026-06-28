-- lua/plugins/cord.lua
return {
  {
    "vyfor/cord.nvim",
    build = ":Cord update",
    config = function()
      require("cord").setup({
        theme = "catppuccin",
        flavor = "frappe",     -- mocha / macchiato / latte
        template = {
          large_text = "%file",
          small_text = "linha %line:%col",
        },
      })
    end,
  },
}
