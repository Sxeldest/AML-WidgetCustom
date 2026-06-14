#include "Command.h"
#include "Settings.h"
#include <mod/amlmod.h>
#include <mod/logger.h>
#include <string.h>
#include <vector>
#include <string>

struct CommandEntry {
    std::string cmd;
    CommandHandler handler;
};

static std::vector<CommandEntry> s_commands;
static bool s_bInitialized = false;

// Hook declaration
DECL_HOOKv(SampOnInputEnd, void* env, void* thiz, void* text);

static bool EqualsIgnoreCase(const char* a, const char* b)
{
    if (!a || !b) return false;
    while (*a && *b) {
        char ca = *a, cb = *b;
        if (ca >= 'A' && ca <= 'Z') ca += 32;
        if (cb >= 'A' && cb <= 'Z') cb += 32;
        if (ca != cb) return false;
        a++; b++;
    }
    return *a == '\0' && *b == '\0';
}

bool HandleLocalCommand(const char* text)
{
    if (!text || text[0] != '/') return false;

    char fullText[256];
    strncpy(fullText, text, sizeof(fullText)-1);
    fullText[sizeof(fullText)-1] = '\0';

    char* cmdPart = strtok(fullText, " ");
    char* paramsPart = strtok(NULL, "");

    for (const auto& entry : s_commands)
    {
        if (EqualsIgnoreCase(entry.cmd.c_str(), cmdPart))
        {
            entry.handler(paramsPart ? paramsPart : "");
            return true;
        }
    }
    return false;
}

void HookOf_SampOnInputEnd(void* env, void* thiz, void* text)
{
    if (env && text)
    {
        void** vtable = *(void***)env;
        const char* (*GetStringUTFChars)(void*, void*, unsigned char*) = (const char* (*)(void*, void*, unsigned char*))vtable[169];
        void (*ReleaseStringUTFChars)(void*, void*, const char*) = (void (*)(void*, void*, const char*))vtable[170];
        unsigned char isCopy = 0;
        const char* chars = GetStringUTFChars(env, text, &isCopy);
        if (chars)
        {
            if (HandleLocalCommand(chars))
            {
                ReleaseStringUTFChars(env, text, chars);
                return;
            }
            ReleaseStringUTFChars(env, text, chars);
        }
    }
    SampOnInputEnd(env, thiz, text);
}

void InitCommandSystem()
{
    if (s_bInitialized) return;

    uintptr_t hSAMP = aml->GetLib("libsamp.so");
    if (hSAMP)
    {
        HOOK(SampOnInputEnd, hSAMP + 0x17CC88 + 1);
        s_bInitialized = true;
    }
}

void sampRegisterCommand(const char* cmd, CommandHandler handler)
{
    if (!cmd || !handler) return;

    if (!s_bInitialized) InitCommandSystem();

    std::string command = (cmd[0] == '/') ? cmd : "/" + std::string(cmd);

    for (auto& entry : s_commands) {
        if (EqualsIgnoreCase(entry.cmd.c_str(), command.c_str())) {
            entry.handler = handler;
            return;
        }
    }

    s_commands.push_back({command, handler});
}
