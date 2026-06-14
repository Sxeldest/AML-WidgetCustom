; =========================================================
; Game Engine Function: sub_102AAC
; Address            : 0x102AAC - 0x102AE2
; =========================================================

102AAC:  PUSH            {R4,R6,R7,LR}
102AAE:  ADD             R7, SP, #8
102AB0:  ADD.W           R0, R0, #0x198
102AB4:  MOV             R4, R1
102AB6:  MOVS            R1, #0x1C
102AB8:  BL              sub_FFA98
102ABC:  LDR             R1, =0x1010134
102ABE:  STR             R1, [R0,#4]
102AC0:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13EnclosingExprE - 0x102AC6); `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr ...
102AC2:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr
102AC4:  ADDS            R1, #8
102AC6:  STR             R1, [R0]
102AC8:  LDR             R1, [R4]
102ACA:  STR             R1, [R0,#0x10]
102ACC:  LDR             R1, =(aSizeof_0 - 0x102AD2); "sizeof... (" ...
102ACE:  ADD             R1, PC; "sizeof... ("
102AD0:  STR             R1, [R0,#8]
102AD2:  ADDS            R1, #0xB
102AD4:  STR             R1, [R0,#0xC]
102AD6:  LDR             R1, =(asc_50037 - 0x102ADC); ")" ...
102AD8:  ADD             R1, PC; ")"
102ADA:  STR             R1, [R0,#0x14]
102ADC:  ADDS            R1, #1
102ADE:  STR             R1, [R0,#0x18]
102AE0:  POP             {R4,R6,R7,PC}
