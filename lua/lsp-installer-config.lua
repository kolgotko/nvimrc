require('lspconfig').eslint.setup({})

local lsp_installer = require("nvim-lsp-installer")

local on_attach = function(client, bufnr)
    -- require'lsp_signature'.on_attach(client, bufnr)
    -- require'virtualtypes'.on_attach(client, bufnr)
    -- require 'illuminate'.on_attach(client)

    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    -- Enable completion triggered by <c-x><c-o>
    -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    -- buf_set_keymap('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    -- buf_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', '<leader>ho', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    -- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    -- buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<leader>ac', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    -- buf_set_keymap('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<leader>di', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    -- buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
    -- buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
    -- buf_set_keymap('n', '<leader>fo', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

local servers = {
    'tsserver',
    'angularls',
    'cssls',
    'emmet_ls',
    'eslint',
    'html',
    'jsonls',
    'sumneko_lua',
}

for _, name in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found then
        if not server:is_installed() then
            print("Installing " .. name)
            server:install()
        end
    end
end


local enhance_server_opts = {
    -- Provide settings that should only apply to the "eslintls" server
    ['eslint'] = function(opts)
        opts.settings = {
            format = {
                enable = true,
            },
        }

        local filetypes = require('lspconfig.configs').eslint.filetypes
        table.insert(filetypes, 'html')
        opts.filetypes = filetypes

        opts.on_attach = function(client, bufnr)
            client.resolved_capabilities.document_formatting = true
            on_attach(client, bufnr)
        end
    end,
    ['jsonls'] = function(opts)
        opts.settings = {
            json = {
                schemas = require('schemastore').json.schemas(),
            }
        }
    end,
    ['tsserver'] = function(opts)
        opts.init_options = require("nvim-lsp-ts-utils").init_options
        opts.settings = {
            preferences = {
                quotePreference = 'single'
            }
        }
        opts.on_attach = function(client, bufnr)
            local ts_utils = require("nvim-lsp-ts-utils")

            ts_utils.setup({
                auto_inlay_hints = false,
            })
            ts_utils.setup_client(client)
            on_attach(client, bufnr)
        end
    end,
    ['angularls'] = function(opts)
        -- opts.filetypes = { 'html' }
    end
}

lsp_installer.on_server_ready(function(server)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

    local opts = {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = capabilities,
    }

    if enhance_server_opts[server.name] then
        -- Enhance the default opts with the server-specific ones
        enhance_server_opts[server.name](opts)
    end

    server:setup(opts)
end)
