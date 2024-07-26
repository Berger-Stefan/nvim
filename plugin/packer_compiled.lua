-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/stefan/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?.lua;/home/stefan/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?/init.lua;/home/stefan/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?.lua;/home/stefan/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/stefan/.cache/nvim/packer_hererocks/2.1.1720049189/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["definition-or-references.nvim"] = {
    config = { "\27LJ\2\nê\1\0\0\a\0\t\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\0045\5\b\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\29definition_or_references\29definition-or-references\frequire\agd\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/definition-or-references.nvim",
    url = "https://github.com/KostkaBrukowa/definition-or-references.nvim"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["iron.nvim"] = {
    config = { "\27LJ\2\n‰\4\0\0\n\0\31\0-6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\19\0005\4\3\0005\5\n\0005\6\5\0005\a\4\0=\a\6\0066\a\0\0'\t\a\0B\a\2\0029\a\b\a=\a\t\6=\6\v\5=\5\f\0046\5\0\0'\a\r\0B\5\2\0029\5\14\0059\5\15\0059\5\16\5'\a\17\0B\5\2\2=\5\18\4=\4\20\0035\4\21\0=\4\22\3B\1\2\0016\1\23\0009\1\24\0019\1\25\1'\3\26\0'\4\27\0'\5\28\0B\1\4\0016\1\23\0009\1\24\0019\1\25\1'\3\26\0'\4\29\0'\5\30\0B\1\4\1K\0\1\0\23<cmd>IronFocus<cr>\14<space>rf\22<cmd>IronRepl<cr>\14<space>rs\6n\bset\vkeymap\bvim\fkeymaps\1\0\2\16visual_send\r<space>r\16send_motion\r<space>r\vconfig\1\0\2\vconfig\0\fkeymaps\0\18repl_open_cmd\b35%\rbotright\rvertical\nsplit\14iron.view\20repl_definition\vpython\1\0\1\vpython\0\vformat\20bracketed_paste\20iron.fts.common\fcommand\1\0\2\fcommand\0\vformat\0\1\2\0\0\fipython\1\0\5\18repl_open_cmd\0\20repl_definition\0\19highlight_last\1\17scratch_repl\2\20should_map_plug\1\nsetup\14iron.core\frequire\0" },
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/iron.nvim",
    url = "https://github.com/Vigemus/iron.nvim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["leap.nvim"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ufo"] = {
    config = { "\27LJ\2\n%\0\3\4\0\1\0\0025\3\0\0L\3\2\0\1\3\0\0\15treesitter\vindent€\2\1\0\a\0\20\0-6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1c\0=\1\4\0006\0\0\0009\0\1\0)\1c\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0006\4\v\0'\6\f\0B\4\2\0029\4\r\4B\0\4\0016\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\14\0006\4\v\0'\6\f\0B\4\2\0029\4\15\4B\0\4\0016\0\v\0'\2\f\0B\0\2\0029\0\16\0005\2\18\0003\3\17\0=\3\19\2B\0\2\1K\0\1\0\22provider_selector\1\0\1\22provider_selector\0\0\nsetup\18closeAllFolds\azM\17openAllFolds\bufo\frequire\azR\6n\bset\vkeymap\15foldenable\19foldlevelstart\14foldlevel\0061\15foldcolumn\6o\bvim\0" },
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20symbols-outline\frequire\0" },
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tmux.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\nsetup\ttmux\frequire\0" },
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/tmux.nvim",
    url = "https://github.com/aserowy/tmux.nvim"
  },
  ["vim-textobj-hydrogen"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/vim-textobj-hydrogen",
    url = "https://github.com/GCBallesteros/vim-textobj-hydrogen"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  vimspector = {
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/vimspector",
    url = "https://github.com/puremourning/vimspector"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\np\0\0\3\0\a\0\0146\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "/home/stefan/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-ufo
time([[Config for nvim-ufo]], true)
try_loadstring("\27LJ\2\n%\0\3\4\0\1\0\0025\3\0\0L\3\2\0\1\3\0\0\15treesitter\vindent€\2\1\0\a\0\20\0-6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1c\0=\1\4\0006\0\0\0009\0\1\0)\1c\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0006\4\v\0'\6\f\0B\4\2\0029\4\r\4B\0\4\0016\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\14\0006\4\v\0'\6\f\0B\4\2\0029\4\15\4B\0\4\0016\0\v\0'\2\f\0B\0\2\0029\0\16\0005\2\18\0003\3\17\0=\3\19\2B\0\2\1K\0\1\0\22provider_selector\1\0\1\22provider_selector\0\0\nsetup\18closeAllFolds\azM\17openAllFolds\bufo\frequire\azR\6n\bset\vkeymap\15foldenable\19foldlevelstart\14foldlevel\0061\15foldcolumn\6o\bvim\0", "config", "nvim-ufo")
time([[Config for nvim-ufo]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\np\0\0\3\0\a\0\0146\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: tmux.nvim
time([[Config for tmux.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\3\0\0056\0\0\0'\2\1\0B\0\2\0029\0\2\0D\0\1\0\nsetup\ttmux\frequire\0", "config", "tmux.nvim")
time([[Config for tmux.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: definition-or-references.nvim
time([[Config for definition-or-references.nvim]], true)
try_loadstring("\27LJ\2\nê\1\0\0\a\0\t\0\f6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\0045\5\b\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\29definition_or_references\29definition-or-references\frequire\agd\6n\bset\vkeymap\bvim\0", "config", "definition-or-references.nvim")
time([[Config for definition-or-references.nvim]], false)
-- Config for: iron.nvim
time([[Config for iron.nvim]], true)
try_loadstring("\27LJ\2\n‰\4\0\0\n\0\31\0-6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\19\0005\4\3\0005\5\n\0005\6\5\0005\a\4\0=\a\6\0066\a\0\0'\t\a\0B\a\2\0029\a\b\a=\a\t\6=\6\v\5=\5\f\0046\5\0\0'\a\r\0B\5\2\0029\5\14\0059\5\15\0059\5\16\5'\a\17\0B\5\2\2=\5\18\4=\4\20\0035\4\21\0=\4\22\3B\1\2\0016\1\23\0009\1\24\0019\1\25\1'\3\26\0'\4\27\0'\5\28\0B\1\4\0016\1\23\0009\1\24\0019\1\25\1'\3\26\0'\4\29\0'\5\30\0B\1\4\1K\0\1\0\23<cmd>IronFocus<cr>\14<space>rf\22<cmd>IronRepl<cr>\14<space>rs\6n\bset\vkeymap\bvim\fkeymaps\1\0\2\16visual_send\r<space>r\16send_motion\r<space>r\vconfig\1\0\2\vconfig\0\fkeymaps\0\18repl_open_cmd\b35%\rbotright\rvertical\nsplit\14iron.view\20repl_definition\vpython\1\0\1\vpython\0\vformat\20bracketed_paste\20iron.fts.common\fcommand\1\0\2\fcommand\0\vformat\0\1\2\0\0\fipython\1\0\5\18repl_open_cmd\0\20repl_definition\0\19highlight_last\1\17scratch_repl\2\20should_map_plug\1\nsetup\14iron.core\frequire\0", "config", "iron.nvim")
time([[Config for iron.nvim]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20symbols-outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
