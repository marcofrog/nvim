local vim = vim

-- Key Mappings
vim.api.nvim_set_keymap('n', '`', 'i', {})
vim.api.nvim_set_keymap('i', '`', '<ESC>', {})
---------------------------------------------------------------------------
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set("n", "<leader>p", '"0p<CR>')
vim.keymap.set("n", "<leader>e", ':Ex<CR>')
vim.keymap.set("n", "<leader>t", ':Telescope find_files<CR>')
-------------------------------------------------------------
vim.keymap.set("i", "", '<ESC>:ToggleTerm<CR>')
vim.keymap.set("n", "", ':ToggleTerm<CR>')
vim.keymap.set("t", "", '<C-n>:ToggleTerm<CR>')
vim.keymap.set("t", "<C-w>", '<C-n><C-w>')
vim.api.nvim_set_keymap('i', "<Right>", 'pumvisible() ? "\\<C-y>" : "\\<Right>"', { noremap = true, expr = true })
vim.keymap.set("v", "<S-Down>", "<Nop>")
vim.keymap.set("v", "<S-Up>", "<Nop>")
vim.keymap.set("i", "<S-Left>", "<Home>")
vim.keymap.set("i", "<S-Right>", "<End>")
vim.keymap.set("n", "<S-Left>", "<Home>")
vim.keymap.set("n", "<S-Right>", "<End>")
vim.keymap.set("n", "\\", "<C-w>w")
-------------------------------------------------------------------------
vim.o.cursorline = true
vim.o.number = true
-- Colorscheme
vim.cmd('colorscheme gruvbox')
vim.cmd('set spell')
-- Terminal Configuration
-- vim.o.t_SI = '\27[5 q' -- cursors
-- vim.o.t_EI = '\27[2 q'
-- vim.api.nvim_set_option('t_EI', '\27[4 q')
-- vim.api.nvim_set_option('t_SI', '\27[4 q')
vim.o.guicursor = "n:block-blinkon10-blinkoff10,i:ver100-blinkon10-blinkoff10"

-- Mouse
vim.o.mouse = ''

-- Custom Mappings
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {})
vim.api.nvim_set_keymap('i', '<C-s>', '<ESC>:w<CR>', {})
vim.api.nvim_set_keymap('n', '<A-BS>', ':NERDTreeToggle<CR>', {})

-- Airline Configuration
vim.g.airline_left_sep = ''
vim.g.airline_left_alt_sep = ''
vim.g.airline_right_sep = ''
vim.g.airline_right_alt_sep = ''

-- Plugin: vim-surround
--vim.cmd('call plug#begin(\'~/.vim/plugged\')')
--vim.cmd('Plug \'http://github.com/tpope/vim-surround\'')
--vim.cmd('Plug \'https://github.com/preservim/nerdtree\'')
--vim.cmd('Plug \'https://github.com/tpope/vim-commentary\'')
--vim.cmd('Plug \'https://github.com/vim-airline/vim-airline\'')
--vim.cmd('Plug \'https://github.com/ryanoasis/vim-devicons\'')
--vim.cmd('Plug \'https://github.com/terryma/vim-multiple-cursors\'')
--vim.cmd('Plug \'https://github.com/vim-scripts/AutoComplPop\'')
--vim.cmd('Plug \'https://github.com/prabirshrestha/async.vim\'')
--vim.cmd('Plug \'https://github.com/prabirshrestha/vim-lsp\'')
--vim.cmd('call plug#end()')

vim.g.OmniSharp_server_use_mono = 1
vim.g.OmniSharp_server_use_net7 = 1

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
		--///////////////////////
		-- 'vim-scripts/AutoComplPop',
		--///////////////////////
		'OmniSharp/omnisharp-vim',
		-- 'nickspoons/vim-sharpenup',
		'Issafalcon/lsp-overloads.nvim',
		'tpope/vim-surround',
		'preservim/nerdtree',
		'tpope/vim-commentary',
		'vim-airline/vim-airline',
		'ryanoasis/vim-devicons',
		{
    		'nvim-telescope/telescope.nvim', tag = '0.1.2',
      		dependencies = { 'nvim-lua/plenary.nvim' }
    		},
		{
		{'akinsho/toggleterm.nvim', version = "*", config = true}
		},
		{
		-- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		dependencies = {
		{ 'williamboman/mason.nvim', config = true },
		'williamboman/mason-lspconfig.nvim',

		{ 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },
		'folke/neodev.nvim',
		},
		},
		{
		-- Autocompletion
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-nvim-lsp',
		'saadparwaiz1/cmp_luasnip',
		'L3MON4D3/LuaSnip',
		dependencies = {
		'saadparwaiz1/cmp_luasnip',
		'hrsh7th/cmp-nvim-lsp',
		'rafamadriz/friendly-snippets',
		},
		}
		}
		)

-- vim.g.OmniSharp_server_use_net6 = 1

-- [[ Configure LSP ]]
--  This function gets run when an LSP connects to a particular buffer.
local on_attach = function(_, bufnr)
  -- NOTE: Remember that lua is a real programming language, and as such it is possible
  -- to define small helper and utility functions so you don't have to repeat yourself
  -- many times.
  --
  -- In this case, we create a function that lets us more easily define mappings specific
  -- for LSP related items. It sets the mode, buffer and description for us each time.
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

  nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
  nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
  nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
  nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
  nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
  nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

  -- See `:help K` for why this keymap
  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

  -- Lesser used LSP functionality
  nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
  nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
  nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
  nmap('<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, '[W]orkspace [L]ist Folders')

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, { desc = 'Format current buffer with LSP' })
end

-- Enable the following language servers
--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
--
--  Add any additional override configuration in the following tables. They will be passed to
--  the `settings` field of the server config. You must look up that documentation yourself.
local servers = {
omnisharp = {

	MsBuildPath = './Downloads/nvim-macos/share/nvim/runtime/compiler/msbuild.vim';
},
  -- clangd = {},
  -- gopls = {},
  -- pyright = {},
  -- rust_analyzer = {},
  -- tsserver = {},

  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
}

-- Setup neovim lua configuration
require('neodev').setup()

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
    }
  end,
}

-- [[ Configure nvim-cmp ]]
-- See `:help cmp`
local cmp = require 'cmp'
local luasnip = require('luasnip')
require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete {},
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_locally_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.locally_jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  sources = {
    { name = 'path'},
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}
require'lspconfig'.omnisharp.setup {
     -- cmd = { "dotnet", ".local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll" },
     -- Enables support for reading code style, naming convention and analyzer
     -- settings from .editorconfig.
     enable_editorconfig_support = true,
     -- If true, MSBuild project system will only load projects for files that
     -- were opened in the editor. This setting is useful for big C# codebases
     -- and allows for faster initialization of code navigation features only
     -- for projects that are relevant to code that is being edited. With this
     -- setting enabled OmniSharp may load fewer projects and may thus display
     -- incomplete reference lists for symbols.
     enable_ms_build_load_projects_on_demand = false,
     -- Enables support for roslyn analyzers, code fixes and rulesets.
     enable_roslyn_analyzers = false,
     -- Specifies whether 'using' directives should be grouped and sorted durin
     -- document formatting.
     organize_imports_on_format = false,
     -- Enables support for showing unimported types and unimported extension
     -- methods in completion lists. When committed, the appropriate using
     -- directive will be added at the top of the current file. This option can
     -- have a negative impact on initial completion responsiveness,
     -- particularly for the first few completion sessions after opening a
     -- solution.
     enable_import_completion = false
     }
