local harpoon = require "harpoon"
local conf = require("telescope.config").values

harpoon:setup()

local function toggle_telescope(harpoon_files)
	local file_paths = {}

	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers").new({}, {
		prompt_title = "Harpoon",
		sorter = conf.generic_sorter {},
		previewer = conf.file_previewer {},
		finder = require("telescope.finders").new_table {
			results = file_paths,
		},
	}):find()
end

vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end)
vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-t>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-t>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-t>4", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<C-s>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)

