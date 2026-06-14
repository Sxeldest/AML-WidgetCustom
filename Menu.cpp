#include "Menu.h"
#include "ImGui/imgui.h"

Menu* g_pMenu = nullptr;

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

    ImGui::SetNextWindowSize(ImVec2(400, 300), ImGuiCond_FirstUseEver);
    if (ImGui::Begin("AML Mod Menu", &bShow))
    {
        ImGui::Text("Hello! This menu was opened via SAMP command.");
        ImGui::Separator();

        ImGui::Text("Simple Controls:");
        static float f = 0.5f;
        ImGui::SliderFloat("Float Slider", &f, 0.0f, 1.0f);

        static int counter = 0;
        if (ImGui::Button("Button"))
            counter++;
        ImGui::SameLine();
        ImGui::Text("counter = %d", counter);

        ImGui::Separator();
        if (ImGui::Button("Close"))
        {
            bShow = false;
        }
    }
    ImGui::End();
}
