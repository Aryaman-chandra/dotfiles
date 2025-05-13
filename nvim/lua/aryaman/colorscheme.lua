local colorscheme = "cyberdream"
local status_ok, _ = pcall( vim.cmd , "colorscheme " .. colorscheme)

vim.cmd('highlight NonText guibg=none')
vim.cmd('highlight Normal guibg=none')
if not status_ok then
    vim.notify_once("colorscheme" .. colorscheme .. " not found")
    return
end
