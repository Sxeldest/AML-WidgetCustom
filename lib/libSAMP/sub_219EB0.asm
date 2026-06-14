; =========================================================
; Game Engine Function: sub_219EB0
; Address            : 0x219EB0 - 0x219EF6
; =========================================================

219EB0:  PUSH            {R4-R7,LR}
219EB2:  ADD             R7, SP, #0xC
219EB4:  PUSH.W          {R11}
219EB8:  ADD.W           R0, R0, #0x198
219EBC:  MOV             R5, R1
219EBE:  MOVS            R1, #0x1C
219EC0:  MOV             R4, R2
219EC2:  BL              sub_216EF0
219EC6:  MOV             R6, R0
219EC8:  MOV             R0, R5; s
219ECA:  BLX             strlen
219ECE:  LDR             R1, =0x1010134
219ED0:  ADD             R0, R5
219ED2:  STR             R1, [R6,#4]
219ED4:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13EnclosingExprE - 0x219EDA); `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr ...
219ED6:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr
219ED8:  ADDS            R1, #8
219EDA:  STR             R1, [R6]
219EDC:  LDR             R1, [R4]
219EDE:  STR             R1, [R6,#0x10]
219EE0:  STR             R5, [R6,#8]
219EE2:  STR             R0, [R6,#0xC]
219EE4:  LDR             R0, =(unk_901C1 - 0x219EEA)
219EE6:  ADD             R0, PC; unk_901C1
219EE8:  STR             R0, [R6,#0x14]
219EEA:  ADDS            R0, #1
219EEC:  STR             R0, [R6,#0x18]
219EEE:  MOV             R0, R6
219EF0:  POP.W           {R11}
219EF4:  POP             {R4-R7,PC}
