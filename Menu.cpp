#include "Menu.h"
#include "ImGui/imgui.h"

Menu* g_pMenu = nullptr;

static void SetupModernStyle()
{
    ImGuiStyle& style = ImGui::GetStyle();
    style = ImGuiStyle(); // Reset

    ImVec4* colors = style.Colors;

    // Modern Dark Blue Style like r4dx
    float r = 0.2f, g = 0.4f, b = 0.8f; // Accent Color

    style.WindowRounding = 8.0f;
    style.ChildRounding = 6.0f;
    style.FrameRounding = 8.0f;
    style.TabRounding = 6.0f;
    style.PopupRounding = 6.0f;
    style.ScrollbarRounding = 6.0f;
    style.GrabRounding = 6.0f;

    style.FramePadding = ImVec2(12.0f, 10.0f);
    style.ItemSpacing = ImVec2(12.0f, 10.0f);
    style.WindowPadding = ImVec2(18.0f, 18.0f);

    colors[ImGuiCol_WindowBg] = ImVec4(0.11f, 0.11f, 0.14f, 0.95f);
    colors[ImGuiCol_ChildBg] = ImVec4(0.14f, 0.14f, 0.17f, 0.60f);
    colors[ImGuiCol_Button] = ImVec4(r, g, b, 0.40f);
    colors[ImGuiCol_ButtonHovered] = ImVec4(r, g, b, 1.00f);
    colors[ImGuiCol_ButtonActive] = ImVec4(r, g, b, 0.80f);
    colors[ImGuiCol_CheckMark] = ImVec4(r, g, b, 1.00f);
    colors[ImGuiCol_Header] = ImVec4(r, g, b, 0.31f);
    colors[ImGuiCol_HeaderHovered] = ImVec4(r, g, b, 0.80f);
    colors[ImGuiCol_HeaderActive] = ImVec4(r, g, b, 1.00f);
    colors[ImGuiCol_FrameBg] = ImVec4(0.18f, 0.18f, 0.22f, 1.00f);
    colors[ImGuiCol_FrameBgHovered] = ImVec4(0.24f, 0.24f, 0.30f, 1.00f);
    colors[ImGuiCol_FrameBgActive] = ImVec4(0.28f, 0.28f, 0.35f, 1.00f);
}

Menu::Menu()
{
    bShow = false;
}

Menu::~Menu()
{
}

void Menu::drawList()
{
    if (!bShow) return;

    static bool styleApplied = false;
    if (!styleApplied)
    {
        SetupModernStyle();
        styleApplied = true;
    }

    ImGui::SetNextWindowSize(ImVec2(450, 350), ImGuiCond_FirstUseEver);
    if (ImGui::Begin("AML Mod Menu (r4dx Style)", &bShow, ImGuiWindowFlags_NoCollapse))
    {
        if (ImGui::BeginTabBar("Tabs"))
        {
            if (ImGui::BeginTabItem("General"))
            {
                ImGui::TextColored(ImVec4(0.4f, 0.7f, 1.0f, 1.0f), "Settings");
                ImGui::Separator();

                static bool check = true;
                ImGui::Checkbox("Enable Feature A", &check);

                static float f = 0.5f;
                ImGui::SliderFloat("Sensitivity", &f, 0.0f, 1.0f);

                ImGui::EndTabItem();
            }

            if (ImGui::BeginTabItem("About"))
            {
                ImGui::Text("Hooked using Render2DStuff like r4dx!");
                ImGui::Text("This provides better compatibility and stability.");
                ImGui::EndTabItem();
            }
            ImGui::EndTabBar();
        }

        ImGui::Spacing();
        ImGui::Separator();
        if (ImGui::Button("Close Menu", ImVec2(-1, 50)))
        {
            bShow = false;
        }
    }
    ImGui::End();
}
