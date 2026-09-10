-- TECLAS LIDER
vim.g.mapleader               = " "
vim.g.maplocalleader          = " "

-- RENDIMIENTO Y LIMPIEZA
vim.g.loaded_node_provider    = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider    = 0
vim.g.loaded_ruby_provider    = 0

local opt                     = vim.opt

-- INTERFAZ DE USUARIO (UI)
opt.number                    = true
opt.relativenumber            = true
opt.cursorline                = true
opt.termguicolors             = true
opt.swapfile                  = false

-- COMPORTAMIENTO DEL CÓDIGO (Indentación)
opt.tabstop                   = 2
opt.shiftwidth                = 2
opt.expandtab                 = true
opt.smartindent               = true

-- BUSQUEDA Y NAVEGACIÓN
opt.ignorecase                = true
opt.smartcase                 = true
opt.hlsearch                  = false
opt.mouse                     = "a"

-- INTEGRACIÓN CON PORTAPAPELES DEL SISTEMA
if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = true,
  }
end
