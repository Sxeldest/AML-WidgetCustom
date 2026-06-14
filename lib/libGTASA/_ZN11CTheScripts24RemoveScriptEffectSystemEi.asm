; =========================================================
; Game Engine Function: _ZN11CTheScripts24RemoveScriptEffectSystemEi
; Address            : 0x357AD0 - 0x357AF4
; =========================================================

357AD0:  PUSH            {R7,LR}
357AD2:  MOV             R7, SP
357AD4:  MOVS            R1, #1; int
357AD6:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
357ADA:  ADDS            R1, R0, #1
357ADC:  IT EQ
357ADE:  POPEQ           {R7,PC}
357AE0:  LDR             R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x357AE8)
357AE2:  MOVS            R2, #0
357AE4:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
357AE6:  LDR             R1, [R1]; CTheScripts::ScriptEffectSystemArray ...
357AE8:  STRB.W          R2, [R1,R0,LSL#3]
357AEC:  ADD.W           R0, R1, R0,LSL#3
357AF0:  STR             R2, [R0,#4]
357AF2:  POP             {R7,PC}
