; =========================================================
; Game Engine Function: _Z13Menu_LoadSloti
; Address            : 0x2A90F4 - 0x2A914A
; =========================================================

2A90F4:  PUSH            {R4,R6,R7,LR}
2A90F6:  ADD             R7, SP, #8
2A90F8:  MOVS            R1, #1; int
2A90FA:  MOV             R4, R0
2A90FC:  BLX             j__ZN19CGenericGameStorage18CheckSlotDataValidEib; CGenericGameStorage::CheckSlotDataValid(int,bool)
2A9100:  CMP             R0, #1
2A9102:  ITT NE
2A9104:  MOVNE           R0, #0
2A9106:  POPNE           {R4,R6,R7,PC}
2A9108:  LDR             R0, =(gGameState_ptr - 0x2A910E)
2A910A:  ADD             R0, PC; gGameState_ptr
2A910C:  LDR             R0, [R0]; gGameState
2A910E:  LDR             R0, [R0]
2A9110:  CMP             R0, #9
2A9112:  IT EQ
2A9114:  BLXEQ           j__Z26SettingsBeforeStartingGamev; SettingsBeforeStartingGame(void)
2A9118:  LDR             R2, =(AllowMissionReplay_ptr - 0x2A9122)
2A911A:  LDR             R0, =(gMobileMenu_ptr - 0x2A9124)
2A911C:  LDR             R1, =(_ZN5CGame16bMissionPackGameE_ptr - 0x2A9128)
2A911E:  ADD             R2, PC; AllowMissionReplay_ptr
2A9120:  ADD             R0, PC; gMobileMenu_ptr
2A9122:  LDR             R2, [R2]; AllowMissionReplay
2A9124:  ADD             R1, PC; _ZN5CGame16bMissionPackGameE_ptr
2A9126:  LDR             R3, [R0]; gMobileMenu
2A9128:  LDR             R0, [R1]; CGame::bMissionPackGame ...
2A912A:  MOVS            R1, #0
2A912C:  LDR             R2, [R2]
2A912E:  STR             R4, [R3,#(dword_6E00BC - 0x6E006C)]
2A9130:  STRB            R1, [R0]; CGame::bMissionPackGame
2A9132:  MOVS            R0, #1
2A9134:  CMP             R2, #6
2A9136:  STRB.W          R0, [R3,#(byte_6E00B9 - 0x6E006C)]
2A913A:  IT EQ
2A913C:  POPEQ           {R4,R6,R7,PC}
2A913E:  LDR             R0, =(AllowMissionReplay_ptr - 0x2A9144)
2A9140:  ADD             R0, PC; AllowMissionReplay_ptr
2A9142:  LDR             R0, [R0]; AllowMissionReplay
2A9144:  STR             R1, [R0]
2A9146:  MOVS            R0, #1
2A9148:  POP             {R4,R6,R7,PC}
