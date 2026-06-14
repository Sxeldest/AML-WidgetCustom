; =========================================================
; Game Engine Function: _ZN34CTaskSimpleSetKindaStayInSamePlace10ProcessPedEP4CPed
; Address            : 0x4EAA24 - 0x4EAA56
; =========================================================

4EAA24:  PUSH            {R7,LR}
4EAA26:  MOV             R7, SP
4EAA28:  LDR.W           R2, [R1,#0x484]
4EAA2C:  LDRB            R0, [R0,#8]
4EAA2E:  BIC.W           R2, R2, #0x400000
4EAA32:  LDR.W           R3, [R1,#0x488]
4EAA36:  LDR.W           R12, [R1,#0x48C]
4EAA3A:  ORR.W           R0, R2, R0,LSL#22
4EAA3E:  LDR.W           LR, [R1,#0x490]
4EAA42:  STR.W           R0, [R1,#0x484]
4EAA46:  MOVS            R0, #1
4EAA48:  STR.W           R3, [R1,#0x488]
4EAA4C:  STR.W           R12, [R1,#0x48C]
4EAA50:  STR.W           LR, [R1,#0x490]
4EAA54:  POP             {R7,PC}
