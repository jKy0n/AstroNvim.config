return {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
        flavour = "macchiato",
        transparent_background = true,
        custom_highlights = function(colors)
            return {
                AvanteConflictCurrent = { bg = colors.surface0, fg = colors.text },
                AvanteConflictIncoming = { bg = colors.surface1, fg = colors.text },
                StatusLine = { bg = colors.mantle }, -- ou colors.base, como preferir
                StatusLineNC = { bg = colors.mantle }, -- Linha de status quando a janela não está focada
        }
        end,
    },
}
