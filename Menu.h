#pragma once
#include "ImGui/imguiwrapper.h"

class Menu : public ImGuiWrapper
{
public:
    Menu();
    ~Menu();

    bool bShow;

protected:
    void drawList() override;
};

extern Menu* g_pMenu;
