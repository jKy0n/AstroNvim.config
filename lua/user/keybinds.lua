local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Navegar entre os painéis usando Ctrl + Setas
map('n', '<C-Left>', '<C-w>h', opts) -- Ir para o painel à esquerda
map('n', '<C-Down>', '<C-w>j', opts) -- Ir para o painel abaixo
map('n', '<C-Up>', '<C-w>k', opts)   -- Ir para o painel acima
map('n', '<C-Right>', '<C-w>l', opts) -- Ir para o painel à direita

-- Redimensionar painéis usando Alt + Setas
map('n', '<A-Left>', '<C-w><', opts)  -- Reduzir largura do painel
map('n', '<A-Right>', '<C-w>>', opts) -- Aumentar largura do painel
map('n', '<A-Up>', '<C-w>+', opts)    -- Aumentar altura do painel
map('n', '<A-Down>', '<C-w>-', opts)  -- Reduzir altura do painel

-- Home e End no modo de inserção
map('i', '<Home>', '<C-o>^', opts) -- Vai para o início da linha
map('i', '<End>', '<C-o>$', opts)  -- Vai para o final da linha
