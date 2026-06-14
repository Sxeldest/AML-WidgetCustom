; =========================================================
; Game Engine Function: _Z17Menu_RetryMissionv
; Address            : 0x2A9070 - 0x2A90D6
; =========================================================

2A9070:  PUSH            {R7,LR}
2A9072:  MOV             R7, SP
2A9074:  LDR             R0, =(AllowMissionReplay_ptr - 0x2A907C)
2A9076:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x2A907E)
2A9078:  ADD             R0, PC; AllowMissionReplay_ptr
2A907A:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
2A907C:  LDR             R2, [R0]; AllowMissionReplay
2A907E:  LDR             R0, [R1]; this
2A9080:  MOVS            R1, #6
2A9082:  STR             R1, [R2]
2A9084:  BLX             j__ZN15CMissionCleanup7ProcessEv; CMissionCleanup::Process(void)
2A9088:  MOVS            R0, #byte_9; this
2A908A:  MOVS            R1, #1; int
2A908C:  BLX             j__ZN19CGenericGameStorage18CheckSlotDataValidEib; CGenericGameStorage::CheckSlotDataValid(int,bool)
2A9090:  CMP             R0, #1
2A9092:  BNE             locret_2A90D4
2A9094:  LDR             R0, =(gGameState_ptr - 0x2A909A)
2A9096:  ADD             R0, PC; gGameState_ptr
2A9098:  LDR             R0, [R0]; gGameState
2A909A:  LDR             R0, [R0]
2A909C:  CMP             R0, #9
2A909E:  IT EQ
2A90A0:  BLXEQ           j__Z26SettingsBeforeStartingGamev; SettingsBeforeStartingGame(void)
2A90A4:  LDR             R0, =(gMobileMenu_ptr - 0x2A90AE)
2A90A6:  LDR             R1, =(_ZN5CGame16bMissionPackGameE_ptr - 0x2A90B0)
2A90A8:  LDR             R2, =(AllowMissionReplay_ptr - 0x2A90B2)
2A90AA:  ADD             R0, PC; gMobileMenu_ptr
2A90AC:  ADD             R1, PC; _ZN5CGame16bMissionPackGameE_ptr
2A90AE:  ADD             R2, PC; AllowMissionReplay_ptr
2A90B0:  LDR             R3, [R0]; gMobileMenu
2A90B2:  LDR             R1, [R1]; CGame::bMissionPackGame ...
2A90B4:  MOVS            R0, #9
2A90B6:  LDR             R2, [R2]; AllowMissionReplay
2A90B8:  STR             R0, [R3,#(dword_6E00BC - 0x6E006C)]
2A90BA:  MOVS            R0, #0
2A90BC:  STRB            R0, [R1]; CGame::bMissionPackGame
2A90BE:  LDR             R1, [R2]
2A90C0:  MOVS            R2, #1
2A90C2:  STRB.W          R2, [R3,#(byte_6E00B9 - 0x6E006C)]
2A90C6:  CMP             R1, #6
2A90C8:  IT EQ
2A90CA:  POPEQ           {R7,PC}
2A90CC:  LDR             R1, =(AllowMissionReplay_ptr - 0x2A90D2)
2A90CE:  ADD             R1, PC; AllowMissionReplay_ptr
2A90D0:  LDR             R1, [R1]; AllowMissionReplay
2A90D2:  STR             R0, [R1]
2A90D4:  POP             {R7,PC}
