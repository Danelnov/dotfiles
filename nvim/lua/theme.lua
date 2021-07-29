vim.g.nvchad_theme = "tomorrow-night"

local present, base16 = pcall(require, "base16")

if present then
    -- enabled these options, was disabled in options.lua
    vim.cmd([[
        syntax on
        filetype on
        filetype plugin indent on
    ]])

    base16(base16.themes["monokai"], true)
    require "highlights"
    return true
else
    return false
end
