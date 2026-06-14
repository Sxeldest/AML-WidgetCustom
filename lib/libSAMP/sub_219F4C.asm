; =========================================================
; Game Engine Function: sub_219F4C
; Address            : 0x219F4C - 0x219F7A
; =========================================================

219F4C:  PUSH            {R4,R5,R7,LR}
219F4E:  ADD             R7, SP, #8
219F50:  ADD.W           R0, R0, #0x198
219F54:  MOV             R4, R1
219F56:  MOVS            R1, #0x10
219F58:  BL              sub_216EF0
219F5C:  MOV             R5, R0
219F5E:  MOV             R0, R4; s
219F60:  BLX             strlen
219F64:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x219F6E); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
219F66:  ADD             R0, R4
219F68:  LDR             R1, =0x1010107
219F6A:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
219F6C:  STRD.W          R4, R0, [R5,#8]
219F70:  MOV             R0, R5
219F72:  ADDS            R2, #8
219F74:  STRD.W          R2, R1, [R5]
219F78:  POP             {R4,R5,R7,PC}
