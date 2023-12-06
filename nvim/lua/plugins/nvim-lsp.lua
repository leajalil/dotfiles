local nvim_lsp = require('lspconfig')

nvim_lsp.svlangserver.setup {
  on_init = function(client)

      client.config.settings.systemverilog = {
        includeIndexing     = {"**/*.{sv,svh}"},
        excludeIndexing     = {},
        defines             = {},
        launchConfiguration = "verilator -sv -Wall --lint-only",
        formatCommand       = "verible-verilog-format"
      }

    client.notify("workspace/didChangeConfiguration")
    return true
  end
}

nvim_lsp.pyright.setup {}
