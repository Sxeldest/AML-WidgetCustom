; =========================================================
; Game Engine Function: _ZN11CTheScripts21AddScriptEffectSystemEP10FxSystem_c
; Address            : 0x357AA0 - 0x357ACA
; =========================================================

357AA0:  LDR             R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x357AA6)
357AA2:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
357AA4:  LDR             R2, [R1]; CTheScripts::ScriptEffectSystemArray ...
357AA6:  MOV.W           R1, #0xFFFFFFFF
357AAA:  LDRB.W          R3, [R2],#8; unsigned __int8
357AAE:  ADDS            R1, #1
357AB0:  CMP             R1, #0x1F
357AB2:  BHI             loc_357AB8
357AB4:  CMP             R3, #0
357AB6:  BNE             loc_357AAA
357AB8:  STR.W           R0, [R2,#-4]
357ABC:  MOVS            R0, #1
357ABE:  STRB.W          R0, [R2,#-8]
357AC2:  MOV             R0, R1; this
357AC4:  MOVS            R1, #1; int
357AC6:  B.W             j_j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; j_CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
