package("alpharom_crack")
    set_homepage("https://github.com/Dir-A/AlphaRom_Crack/")
    set_description("crack alpharom protected game")
    add_urls("https://github.com/Dir-A/AlphaRom_Crack.git")

    add_versions("v1.0", "b5049b5351042ee6fc6f73c9cdd6b536d9a70878")

    -- requires
    add_deps("microsoft-detours")

    -- link system lib
    if is_plat("windows", "mingw") then
        add_syslinks("user32")
    end

    -- on load, get and set configs
    on_load("macosx", "linux", "windows", "mingw", "android", "iphoneos", function (package)
        --
    end)

    -- on install, check configs and compile
    on_install("windows", "mingw", function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    -- on test
    on_test(function (package)
        -- 
    end)
package_end()
