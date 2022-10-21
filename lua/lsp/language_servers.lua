local capabilities = require('cmp_nvim_lsp').default_capabilities()
local langservers = {
  'html',
  'cssls',
  'tsserver',
  'ls_emmet',
}

require'lspconfig.configs'.ls_emmet = {
  default_config = {
    cmd = { 'ls_emmet', '--stdio' };
    filetypes = {
      'html',
      'css',
      'scss',
      'javascriptreact',
      'typescriptreact',
      'haml',
      'xml',
      'xsl',
      'pug',
      'slim',
      'sass',
      'stylus',
      'less',
      'sss',
      'hbs',
      'handlebars',
    };
    root_dir = function(fname)
      return vim.loop.cwd()
    end;
    settings = {};
  };
}

for _, server in ipairs(langservers) do
  require'lspconfig'[server].setup {
    capabilities = capabilities
  }
end

