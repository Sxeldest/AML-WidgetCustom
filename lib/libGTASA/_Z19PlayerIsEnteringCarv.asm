; =========================================================
; Game Engine Function: _Z19PlayerIsEnteringCarv
; Address            : 0x3FAB06 - 0x3FAB56
; =========================================================

3FAB06:  PUSH            {R7,LR}
3FAB08:  MOV             R7, SP
3FAB0A:  MOV.W           R0, #0xFFFFFFFF; int
3FAB0E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAB12:  CMP             R0, #0
3FAB14:  ITT EQ
3FAB16:  MOVEQ           R0, #0
3FAB18:  POPEQ           {R7,PC}
3FAB1A:  MOV.W           R0, #0xFFFFFFFF; int
3FAB1E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAB22:  LDR.W           R0, [R0,#0x440]
3FAB26:  MOVW            R1, #0x2BD; int
3FAB2A:  ADDS            R0, #4; this
3FAB2C:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3FAB30:  CMP             R0, #0
3FAB32:  ITT NE
3FAB34:  MOVNE           R0, #1
3FAB36:  POPNE           {R7,PC}
3FAB38:  MOV.W           R0, #0xFFFFFFFF; int
3FAB3C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAB40:  LDR.W           R0, [R0,#0x440]
3FAB44:  MOV.W           R1, #0x2BC; int
3FAB48:  ADDS            R0, #4; this
3FAB4A:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3FAB4E:  CMP             R0, #0
3FAB50:  IT NE
3FAB52:  MOVNE           R0, #1
3FAB54:  POP             {R7,PC}
