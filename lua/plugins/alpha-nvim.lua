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
        alpha.button("n", "  Novo Arquivo", ":ene <BAR> startinsert <CR>"),
        alpha.button("f", "󰈞  Buscar Arquivo", ":Telescope find_files<CR>"),
        alpha.button("p", "  Projetos", ":Telescope projects<CR>"),
        alpha.button("r", "  Arquivos Recentes", ":Telescope oldfiles<CR>"),
        alpha.button("s", "  Salvar Sessão", ":SessionManager save_current_session<CR>"),
        alpha.button("q", "  Sair", ":qa<CR>"),
      }

      -- Footer (mensagem simples)
      opts.section.footer.val = { "🚀 AstroNvim configurado por jKyon" }

      return opts
    end,
  }
}

