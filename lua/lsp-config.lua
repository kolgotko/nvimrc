require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = { "tsserver", "angularls", "jsonls", "eslint", "lua_ls", "emmet_ls", "cssls", 'tailwindcss', "rust_analyzer" }
})

local lspconfig = require("lspconfig")

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- vim.lsp.inlay_hint(ev.buf, true)

        -- Enable completion triggered by <c-x><c-o>
        -- vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions

        local opts = { buffer = ev.buf }

        -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        -- vim.keymap.set('n', '<space>wl', function()
        --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        -- end, opts)
        -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        -- vim.keymap.set('n', '<space>f', function()
        --   vim.lsp.buf.format { async = true }
        -- end, opts)
        --
        vim.keymap.set('n', '<leader>ho', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<leader>ac', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<leader>di', vim.diagnostic.open_float, opts)
        vim.keymap.set('n', '<leader>gn', vim.diagnostic.goto_next, opts)
    end,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- require("typescript-tools").setup({
--     capabilities = capabilities,
-- })

lspconfig['tsserver'].setup({
    capabilities = capabilities,
    settings = {
        quotePreference = 'single',
        typescript = {
            inlayHints = {
                includeInlayParameterNameHints = 'all',
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = false,
                includeInlayVariableTypeHints = false,
                includeInlayVariableTypeHintsWhenTypeMatchesName = true,
                includeInlayPropertyDeclarationTypeHints = false,
                includeInlayFunctionLikeReturnTypeHints = false,
                includeInlayEnumMemberValueHints = false,
            }
        },
    }
})

lspconfig['lua_ls'].setup({
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                },
            },
        },
    },
})

lspconfig['angularls'].setup({
    capabilities = capabilities,
})

lspconfig['jsonls'].setup({
    capabilities = capabilities,
    settings = {
        json = {
            schemas = require('schemastore').json.schemas(),
        }
    },
})

lspconfig['eslint'].setup({
    capabilities = capabilities,
    settings = {
        format = {
            enable = true,
        },
    },
})

lspconfig['emmet_ls'].setup({
    capabilities = capabilities,
})

lspconfig['cssls'].setup({
    capabilities = capabilities,
})

lspconfig['rust_analyzer'].setup({
    capabilities = capabilities,
})

lspconfig['tailwindcss'].setup({
    capabilities = capabilities,
})
