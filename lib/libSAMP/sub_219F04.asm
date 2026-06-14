; =========================================================
; Game Engine Function: sub_219F04
; Address            : 0x219F04 - 0x219F3A
; =========================================================

219F04:  PUSH            {R4,R6,R7,LR}
219F06:  ADD             R7, SP, #8
219F08:  ADD.W           R0, R0, #0x198
219F0C:  MOV             R4, R1
219F0E:  MOVS            R1, #0x1C
219F10:  BL              sub_216EF0
219F14:  LDR             R1, =0x1010134
219F16:  STR             R1, [R0,#4]
219F18:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13EnclosingExprE - 0x219F1E); `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr ...
219F1A:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::EnclosingExpr
219F1C:  ADDS            R1, #8
219F1E:  STR             R1, [R0]
219F20:  LDR             R1, [R4]
219F22:  STR             R1, [R0,#0x10]
219F24:  LDR             R1, =(aSizeof_0 - 0x219F2A); "sizeof... (" ...
219F26:  ADD             R1, PC; "sizeof... ("
219F28:  STR             R1, [R0,#8]
219F2A:  ADDS            R1, #0xB
219F2C:  STR             R1, [R0,#0xC]
219F2E:  LDR             R1, =(unk_901C1 - 0x219F34)
219F30:  ADD             R1, PC; unk_901C1
219F32:  STR             R1, [R0,#0x14]
219F34:  ADDS            R1, #1
219F36:  STR             R1, [R0,#0x18]
219F38:  POP             {R4,R6,R7,PC}
