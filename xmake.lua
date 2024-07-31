set_project("EtherEngine")

-- Select language
set_languages("c++23")
set_warnings("all", "extra", "error", "pedantic")


if is_plat("wasm") then
    add_requires("emscripten")
    set_toolchains("emcc@emscripten")
end

-- List compile mode
add_rules("mode.debug", "mode.release")

includes("Source")
includes("Test")

