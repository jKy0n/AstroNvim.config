return {
  "rcarriga/nvim-notify",
  config = function()
    local bg = vim.api.nvim_get_hl_by_name("Normal", true).background
    require("notify").setup({
      background_colour = bg and string.format("#%06x", bg) or "#1e1e2e",
    })
  end,
}
