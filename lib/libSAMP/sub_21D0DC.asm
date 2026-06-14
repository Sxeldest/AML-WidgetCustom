; =========================================================
; Game Engine Function: sub_21D0DC
; Address            : 0x21D0DC - 0x21D10A
; =========================================================

21D0DC:  PUSH            {R4,R5,R7,LR}
21D0DE:  ADD             R7, SP, #8
21D0E0:  ADD.W           R0, R0, #0x198
21D0E4:  MOV             R4, R1
21D0E6:  MOVS            R1, #0x10
21D0E8:  BL              sub_216EF0
21D0EC:  MOV             R5, R0
21D0EE:  MOV             R0, R4; s
21D0F0:  BLX             strlen
21D0F4:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x21D0FE); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
21D0F6:  ADD             R0, R4
21D0F8:  LDR             R1, =0x1010107
21D0FA:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
21D0FC:  STRD.W          R4, R0, [R5,#8]
21D100:  MOV             R0, R5
21D102:  ADDS            R2, #8
21D104:  STRD.W          R2, R1, [R5]
21D108:  POP             {R4,R5,R7,PC}
