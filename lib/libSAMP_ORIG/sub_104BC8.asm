; =========================================================
; Game Engine Function: sub_104BC8
; Address            : 0x104BC8 - 0x104BF6
; =========================================================

104BC8:  PUSH            {R4,R5,R7,LR}
104BCA:  ADD             R7, SP, #8
104BCC:  ADD.W           R0, R0, #0x198
104BD0:  MOV             R4, R1
104BD2:  MOVS            R1, #0x10
104BD4:  BL              sub_FFA98
104BD8:  MOV             R5, R0
104BDA:  MOV             R0, R4; s
104BDC:  BLX             strlen
104BE0:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x104BEA); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
104BE2:  ADD             R0, R4
104BE4:  LDR             R1, =0x1010107
104BE6:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
104BE8:  STRD.W          R4, R0, [R5,#8]
104BEC:  MOV             R0, R5
104BEE:  ADDS            R2, #8
104BF0:  STRD.W          R2, R1, [R5]
104BF4:  POP             {R4,R5,R7,PC}
