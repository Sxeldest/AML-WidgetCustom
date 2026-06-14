; =========================================================
; Game Engine Function: sub_104CD4
; Address            : 0x104CD4 - 0x104D02
; =========================================================

104CD4:  PUSH            {R4,R5,R7,LR}
104CD6:  ADD             R7, SP, #8
104CD8:  ADD.W           R0, R0, #0x198
104CDC:  MOV             R4, R1
104CDE:  MOVS            R1, #0x10
104CE0:  BL              sub_FFA98
104CE4:  MOV             R5, R0
104CE6:  MOV             R0, R4; s
104CE8:  BLX             strlen
104CEC:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x104CF6); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
104CEE:  ADD             R0, R4
104CF0:  LDR             R1, =0x1010107
104CF2:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
104CF4:  STRD.W          R4, R0, [R5,#8]
104CF8:  MOV             R0, R5
104CFA:  ADDS            R2, #8
104CFC:  STRD.W          R2, R1, [R5]
104D00:  POP             {R4,R5,R7,PC}
