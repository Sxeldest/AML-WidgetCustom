#include <mod/amlmod.h>
#include <mod/logger.h>
#include <mod/config.h>
#include "Menu.h"
#include "Command.h"
#include "ImGui/RW/RenderWare.h"

MYMODCFG(net.dexsocy.mymod.guid, AML Mod Template, 1.0, Dexsociety)

uintptr_t pGameHandle = 0;
RwReal* nearScreenZ = nullptr;
RwReal* recipNearClip = nullptr;
void (*SetScissorRect)(float*) = nullptr;

DECL_HOOKv(Render2DStuff)
{
    Render2DStuff();
    if (g_pMenu) g_pMenu->render();
}

void OnTestCommand(const char* params)
{
    if (g_pMenu)
    {
        g_pMenu->bShow = !g_pMenu->bShow;
        logger->Info("Menu toggled: %s", g_pMenu->bShow ? "ON" : "OFF");
    }
}

extern "C" void OnModLoad()
{
    logger->SetTag("Mod Template");

    pGameHandle = aml->GetLib("libGTASA.so");
    if(pGameHandle)
    {
        logger->Info("MyGame mod is loaded!");
    }
    else
    {
        logger->Error("MyGame mod is not loaded :(");
        return;
    }

    // Initialize RenderWare and ImGui
    InitRenderWareFunctions();

    // Use symbols from CSprite2d like in r4dx
    nearScreenZ = (RwReal*)aml->GetSym(pGameHandle, "_ZN9CSprite2d11NearScreenZE");
    recipNearClip = (RwReal*)aml->GetSym(pGameHandle, "_ZN9CSprite2d13RecipNearClipE");
    SetScissorRect = (void(*)(float*))aml->GetSym(pGameHandle, "_Z14SetScissorRectPf");

    // Hook Render2DStuff instead of RwCameraEndUpdate like in r4dx
    HOOK(Render2DStuff, aml->GetSym(pGameHandle, "_Z13Render2dStuffv"));

    g_pMenu = new Menu();
    if (g_pMenu->initialize())
    {
        g_pMenu->createFontTexture();
        logger->Info("ImGui initialized!");
    }

    // Register SAMP Command
    sampRegisterCommand("test", OnTestCommand);
    logger->Info("Command /test registered! Use it to open the menu.");

    // Original template code (optional)
    bool bEnabled = cfg->Bind("Enable", true)->GetBool();
    cfg->Save();
}
