require('nvim-lsp-installer').setup {}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local function setGenericRemaps()
    vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>gd', ':lua vim.lsp.buf.definition()<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>cA', ':lua vim.lsp.buf.range_code_action()<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>gr', ':lua vim.lsp.buf.references()<CR>', { noremap = true })
    vim.api.nvim_set_keymap('n', '<leader>R', ':lua vim.lsp.buf.rename()<CR>', { noremap = true })
end

-- Various LSP Initialization

require'lspconfig'.omnisharp.setup{
    cmd = { "dotnet", "/home/radulfr/.local/share/nvim/lsp-servers/omnisharp/omnisharp/OmniSharp.dll"},
    capabilities = capabilities,
    on_attach = function()
        setGenericRemaps()
    end,
    handlers = {
        ["textDocument/definition"] = require('omnisharp_extended').handler,
    }
}

require'lspconfig'.sumneko_lua.setup{}
require'lspconfig'.rust_analyzer.setup{
    on_attach = function ()
        setGenericRemaps()
    end
}

-- Autocomplete

vim.opt.completeopt={"menu", "menuone", "noselect"}

local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'}),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
        ['<C-y>'] = cmp.config.disable,
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    })
})
