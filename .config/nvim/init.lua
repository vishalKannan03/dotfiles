if vim.g.vscode then
    require("code")
else
    require("config")
    -- Ordinary Neovim
    vim.cmd([[colorscheme lackluster]])
    vim.cmd [[
    highlight Normal guibg=none
    highlight NonText guibg=none
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
]]
end
