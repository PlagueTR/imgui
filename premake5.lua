project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "imconfig.h",
		"imgui_internal.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
    }

    filter "system:windows"
        systemversion "latest"

    filter "system:linux"
        pic "on"

    filter "configurations:Debug"
        runtime "Debug"
        optimize "Off"
        symbols "On"
        
    filter "configurations:Release"
        runtime "Release"
        optimize "On"
        symbols "Default"

    filter "configurations:Dist"
        runtime "Release"
        optimize "Speed"
        symbols "Off"