require("toggleterm").setup{
  size = 20,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  direction = "float"
}

function _G.set_terminal_keymaps()
  local opst = {noremap = true}
  vim.api.nvim.nvim_buf_set_keymap(0, 't', '<esc>', [[c-\><c-n>]], opts)
  vim.api.nvim.nvim_buf_set_keymap(0, 't', 'jk', [[c-\><c-n>]], opts)
  vim.api.nvim.nvim_buf_set_keymap(0, 't', '<c-h>', [[c-\><c-n><c-w>h]], opts)
  vim.api.nvim.nvim_buf_set_keymap(0, 't', '<c-j>', [[c-\><c-n><c-w>j]], opts)
  vim.api.nvim.nvim_buf_set_keymap(0, 't', '<c-k>', [[c-\><c-n><c-w>k]], opts)
  vim.api.nvim.nvim_buf_set_keymap(0, 't', '<c-l>', [[c-\><c-n><c-w>l]], opts)
end

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

local node = Terminal:new({ cmd = "node", hidden = true })

function _NODE_TOGGLE()
  node:toggle()
end

local htop = Terminal:new({ cmd = "htop", hidden = true })

function _HTOP_TOGGLE()
  htop:toggle()
end
