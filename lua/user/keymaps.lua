-- ~/.config/nvim/lua/user/keymaps.lua

-- Opções padrão para os keymaps
local opts = { noremap = true, silent = true }

-- Keybinds Gerais
-- Navegar entre painéis usando Ctrl + Setas
vim.keymap.set('n', '<C-Left>', '<C-w>h', opts)
vim.keymap.set('n', '<C-Down>', '<C-w>j', opts)
vim.keymap.set('n', '<C-Up>', '<C-w>k', opts)
vim.keymap.set('n', '<C-Right>', '<C-w>l', opts)

-- Redimensionar painéis usando Alt + Setas
vim.keymap.set('n', '<A-Left>', '<C-w><', opts)
vim.keymap.set('n', '<A-Right>', '<C-w>>', opts)
vim.keymap.set('n', '<A-Up>', '<C-w>+', opts)
vim.keymap.set('n', '<A-Down>', '<C-w>-', opts)

-- Home e End no modo de inserção
vim.keymap.set('i', '<Home>', '<C-o>^', opts)
vim.keymap.set('i', '<End>', '<C-o>$', opts)

-- Refazer com Alt + u
vim.keymap.set('n', '<A-u>', '<C-r>', opts)

-- Apagar linha no Normal Mode
vim.keymap.set("n", "<S-Del>", "dd", { desc = "Delete line (Shift+Del)" })

-- Define atalho para o terminal (ToggleTerm)
-- vim.keymap.set("n", "<F4>", ":ToggleTerm<CR>", { noremap = true, silent = true })

-- Apagar linha no Insert Mode
vim.keymap.set("i", "<S-Del>", function()
  vim.cmd("stopinsert")
  vim.cmd("normal! 0dd")
  vim.cmd("startinsert")
end, { desc = "Delete line (Shift+Del) [insert mode]" })

-- Which-key: Atalhos Rápidos
local which_key = require("which-key")
which_key.register({
  ["<leader>h"] = {
    name = "Atalhos Rápidos",
    u = { ":undo<CR>", "Undo" },
    r = { ":redo<CR>", "Redo" },
    s = { ":w<CR>", "Salvar" },
    q = { ":q<CR>", "Fechar" },
  },
})
