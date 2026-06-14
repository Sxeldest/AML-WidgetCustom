; =========================================================
; Game Engine Function: _ZN14CTaskSimpleDieC2EP19CAnimBlendHierarchyiff
; Address            : 0x4EACF8 - 0x4EAD46
; =========================================================

4EACF8:  PUSH            {R4-R7,LR}
4EACFA:  ADD             R7, SP, #0xC
4EACFC:  PUSH.W          {R11}
4EAD00:  MOV             R4, R3
4EAD02:  MOV             R5, R2
4EAD04:  MOV             R6, R1
4EAD06:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EAD0A:  LDR.W           R12, =(_ZTV14CTaskSimpleDie_ptr - 0x4EAD1A)
4EAD0E:  MOVS            R2, #0
4EAD10:  VLDR            S0, [R7,#arg_0]
4EAD14:  MOVS            R3, #0xF
4EAD16:  ADD             R12, PC; _ZTV14CTaskSimpleDie_ptr
4EAD18:  LDRB.W          R1, [R0,#0x20]
4EAD1C:  ADD.W           R11, R0, #8
4EAD20:  STM.W           R11, {R2,R3,R6}
4EAD24:  AND.W           R1, R1, #0xFC
4EAD28:  STRD.W          R5, R4, [R0,#0x14]
4EAD2C:  VSTR            S0, [R0,#0x1C]
4EAD30:  STR             R2, [R0,#0x24]
4EAD32:  LDR.W           R2, [R12]; `vtable for'CTaskSimpleDie ...
4EAD36:  STRB.W          R1, [R0,#0x20]
4EAD3A:  ADD.W           R1, R2, #8
4EAD3E:  STR             R1, [R0]
4EAD40:  POP.W           {R11}
4EAD44:  POP             {R4-R7,PC}
