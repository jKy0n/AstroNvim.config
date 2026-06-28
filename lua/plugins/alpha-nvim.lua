-- ~/.config/nvim/lua/plugins/alpha.lua

return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- Header (ASCII art)
      -- opts.section.header.val = {
      --   " █████  ███████ ████████ ██████   ██████",
      --   "██   ██ ██         ██    ██   ██ ██    ██",
      --   "███████ ███████    ██    ██████  ██    ██",
      --   "██   ██      ██    ██    ██   ██ ██    ██",
      --   "██   ██ ███████    ██    ██   ██  ██████",
      --   " ",
      --   "    ███    ██ ██    ██ ██ ███    ███",
      --   "    ████   ██ ██    ██ ██ ████  ████",
      --   "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
      --   "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
      --   "    ██   ████   ████   ██ ██      ██",
      -- }
      opts.section.header.val = {
        "     ██╗██╗  ██╗██╗   ██╗ ██████╗ ███╗   ██╗███████╗",
        "     ██║██║ ██╔╝╚██╗ ██╔╝██╔═══██╗████╗  ██║██╔════╝",
        "     ██║█████╔╝  ╚████╔╝ ██║   ██║██╔██╗ ██║███████╗",
        "██   ██║██╔═██╗   ╚██╔╝  ██║   ██║██║╚██╗██║╚════██║",
        "╚█████╔╝██║  ██╗   ██║   ╚██████╔╝██║ ╚████║███████║",
        " ╚════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═══╝╚══════╝",
        " ",
        "     █████╗ ███████╗████████╗██████╗  ██████╗",
        "    ██╔══██╗██╔════╝╚══██╔══╝██╔══██╗██╔═══██╗",
        "    ███████║███████╗   ██║   ██████╔╝██║   ██║",
        "    ██╔══██║╚════██║   ██║   ██╔══██╗██║   ██║",
        "    ██║  ██║███████║   ██║   ██║  ██║╚██████╔╝",
        "    ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ",
        " ",
        "        ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
        "        ████╗  ██║██║   ██║██║████╗ ████║",
        "        ██╔██╗ ██║██║   ██║██║██╔████╔██║",
        "        ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        "        ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
        "        ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
      }

      -- Botões (placeholders, podemos personalizar mais depois)
      local alpha = require("alpha.themes.dashboard")
      opts.section.buttons.val = {
        alpha.button("n", "  New File", ":ene <BAR> startinsert <CR>"),
        alpha.button("f", "󰈞  Find File", ":Telescope find_files<CR>"),
        -- alpha.button("p", "  Projects", ":Telescope projects<CR>"),
        alpha.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
        -- alpha.button("s", "  Save Session", ":SessionManager save_current_session<CR>"),
        alpha.button("q", "  Quit", ":qa<CR>"),
      }

      -- Footer (mensagem simples)
      opts.section.footer.val = { "🚀 AstroNvim customized by jKyon" }

      return opts
    end,
  }
}

