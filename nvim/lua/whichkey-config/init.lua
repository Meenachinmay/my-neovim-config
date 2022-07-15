local wk = require("which-key")
local mappings = {
  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    k = {'<cmd>lua vim.lsp.buf.signature_help()<CR>', "Signature help"},
    K = {'<cmd>lua vim.lsp.buf.hover()<CR>', "Hover"},
    w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
    W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
      "List workspace folder"
    },
    t = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
    d = {'<cmd>lua vim.lsp.buf.definition()<CR>', "Go to definition"},
    D = {'<cmd>lua vim.lsp.buf.delaration()<CR>', "Go to declaration"},
    r = {'<cmd>lua vim.lsp.buf.references()<CR>', "References"},
    R = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"},
    a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
    e = {'<cmd>lua vim.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
    n = {'<cmd>lua vim.diagnostic.goto_next()<CR>', "Go to next diagnostic"},
    N = {'<cmd>lua vim.diagnostic.goto_prev()<CR>', "Go to previous diagnostic"},
    I = {'<cmd>LspInstallInfo<cr>', 'Install language server'},
    f = {'<cmd>lua vim.lsp.buf.formatting()<CR>', "Format File"},
    T = {'<cmd> Telescope diagnostics bufnr=0<CR>', "Get Diagnostics"}
  },
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
