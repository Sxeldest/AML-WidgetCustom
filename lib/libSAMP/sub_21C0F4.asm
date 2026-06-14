; =========================================================
; Game Engine Function: sub_21C0F4
; Address            : 0x21C0F4 - 0x21C122
; =========================================================

21C0F4:  PUSH            {R4,R5,R7,LR}
21C0F6:  ADD             R7, SP, #8
21C0F8:  ADD.W           R0, R0, #0x198
21C0FC:  MOV             R4, R1
21C0FE:  MOVS            R1, #0x10
21C100:  BL              sub_216EF0
21C104:  MOV             R5, R0
21C106:  MOV             R0, R4; s
21C108:  BLX             strlen
21C10C:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x21C116); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
21C10E:  ADD             R0, R4
21C110:  LDR             R1, =0x1010107
21C112:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
21C114:  STRD.W          R4, R0, [R5,#8]
21C118:  MOV             R0, R5
21C11A:  ADDS            R2, #8
21C11C:  STRD.W          R2, R1, [R5]
21C120:  POP             {R4,R5,R7,PC}
