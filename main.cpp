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

// We use the pointer defined in RenderWare.cpp
RwCamera* HookOf_RwCameraEndUpdate(RwCamera* camera)
{
    if (g_pMenu) g_pMenu->render();
    return RwCameraEndUpdate(camera);
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

    nearScreenZ = (RwReal*)aml->GetSym(pGameHandle, "_ZN11CCameraSize12nearScreenZE");
    recipNearClip = (RwReal*)aml->GetSym(pGameHandle, "_ZN11CCameraSize13recipNearClipE");
    SetScissorRect = (void(*)(float*))aml->GetSym(pGameHandle, "_Z14SetScissorRectPf");

    // Hook RwCameraEndUpdate using the existing pointer from RenderWare.cpp
    aml->Hook((void*)aml->GetSym(pGameHandle, "_Z17RwCameraEndUpdateP8RwCamera"),
             (void*)HookOf_RwCameraEndUpdate, (void**)&RwCameraEndUpdate);

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
