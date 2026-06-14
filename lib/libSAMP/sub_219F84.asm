; =========================================================
; Game Engine Function: sub_219F84
; Address            : 0x219F84 - 0x219FA6
; =========================================================

219F84:  PUSH            {R4,R6,R7,LR}
219F86:  ADD             R7, SP, #8
219F88:  ADD.W           R0, R0, #0x198
219F8C:  MOV             R4, R1
219F8E:  MOVS            R1, #0xC
219F90:  BL              sub_216EF0
219F94:  LDR             R1, =0x1010140
219F96:  STR             R1, [R0,#4]
219F98:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10UUIDOfExprE - 0x219F9E); `vtable for'`anonymous namespace'::itanium_demangle::UUIDOfExpr ...
219F9A:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::UUIDOfExpr
219F9C:  ADDS            R1, #8
219F9E:  STR             R1, [R0]
219FA0:  LDR             R1, [R4]
219FA2:  STR             R1, [R0,#8]
219FA4:  POP             {R4,R6,R7,PC}
