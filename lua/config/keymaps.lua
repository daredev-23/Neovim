-- Navegar entre pestañas de izquierda a derecha con Tab y Shift+Tab
vim.keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>', { silent = true })

-- PORTAPAPELES
-- "y" normal -> registro interno de Neovim
-- "<leader>y" -> portapapeles del sistema
-- "<leader>p" -> pegar desde el portapapeles del sistema
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copiar al portapapeles del sistema" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copiar línea al portapapeles del sistema" })
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], { desc = "Pegar desde el portapapeles del sistema" })
