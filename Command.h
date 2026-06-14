#pragma once

typedef void (*CommandHandler)(const char* params);

void sampRegisterCommand(const char* cmd, CommandHandler handler);
bool HandleLocalCommand(const char* text);
void InitCommandSystem();
