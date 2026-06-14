; =========================================================
; Game Engine Function: sub_1026A8
; Address            : 0x1026A8 - 0x1026DE
; =========================================================

1026A8:  PUSH            {R4-R7,LR}
1026AA:  ADD             R7, SP, #0xC
1026AC:  PUSH.W          {R11}
1026B0:  ADD.W           R0, R0, #0x198
1026B4:  MOV             R6, R1
1026B6:  MOVS            R1, #0x10
1026B8:  MOV             R4, R3
1026BA:  MOV             R5, R2
1026BC:  BL              sub_FFA98
1026C0:  LDR             R1, =0x1010139
1026C2:  STR             R1, [R0,#4]
1026C4:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10DeleteExprE - 0x1026CC); `vtable for'`anonymous namespace'::itanium_demangle::DeleteExpr ...
1026C6:  LDRB            R2, [R5]
1026C8:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::DeleteExpr
1026CA:  ADDS            R1, #8
1026CC:  STR             R1, [R0]
1026CE:  LDR             R1, [R6]
1026D0:  STR             R1, [R0,#8]
1026D2:  LDRB            R1, [R4]
1026D4:  STRB            R2, [R0,#0xC]
1026D6:  STRB            R1, [R0,#0xD]
1026D8:  POP.W           {R11}
1026DC:  POP             {R4-R7,PC}
