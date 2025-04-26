return {
    {
        'romgrk/barbar.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Ícones são opcionais
        config = function()
            -- Configure o barbar.nvim aqui
            vim.g.barbar_auto_setup = false -- Configure manualmente os atalhos se desejar
        end,
    },
}
