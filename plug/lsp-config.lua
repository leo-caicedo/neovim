-- lsp setup
-- Set Default Prefix.
-- Note: You can set a prefix per lsp server in the lv-globals.lua file
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
      prefix = "",
      spacing = 0,
    },
    signs = true,
    underline = true,
  }
)

-- -- uncomment below to enable nerd-font based icons for diagnostics in the
-- -- gutter, see:
-- -- https://github.com/neovim/nvim-lspconfig/wiki/UI-customization#change-diagnostic-symbols-in-the-sign-column-gutter
 local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

 for type, icon in pairs(signs) do
   local hl = "LspDiagnosticsSign" .. type
   vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
 end

-- symbols for autocomplete
vim.lsp.protocol.CompletionItemKind = {
    "   (Text) ",
    "   (Method)",
    "   (Function)",
    "   (Constructor)",
    " ﴲ  (Field)",
    "[] (Variable)",
    "   (Class)",
    " ﰮ  (Interface)",
    "   (Module)",
    " 襁 (Property)",
    "   (Unit)",
    "   (Value)",
    " 練 (Enum)",
    "   (Keyword)",
    "   (Snippet)",
    "   (Color)",
    "   (File)",
    "   (Reference)",
    "   (Folder)",
    "   (EnumMember)",
    " ﲀ  (Constant)",
    " ﳤ  (Struct)",
    "   (Event)",
    "   (Operator)",
    "   (TypeParameter)"
}
