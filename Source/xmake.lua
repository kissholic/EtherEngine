

target("EtherEngine")
    set_kind("binary")
    add_files("*.cpp")
    on_run(function()
        os.exec("node $(buildir)/wasm/wasm32/debug/EtherEngine.js")
    end )

