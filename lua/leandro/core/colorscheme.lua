vim.cmd("colorscheme vscode")

local status, _ = pcall(vim.cmd, "colorscheme vscode")
if not status then
	print("Color scheme not found!")
	return
end
