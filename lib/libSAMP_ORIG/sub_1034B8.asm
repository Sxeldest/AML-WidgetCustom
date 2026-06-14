; =========================================================
; Game Engine Function: sub_1034B8
; Address            : 0x1034B8 - 0x1034E6
; =========================================================

1034B8:  PUSH            {R4,R5,R7,LR}
1034BA:  ADD             R7, SP, #8
1034BC:  ADD.W           R0, R0, #0x198
1034C0:  MOV             R4, R1
1034C2:  MOVS            R1, #0x10
1034C4:  BL              sub_FFA98
1034C8:  MOV             R5, R0
1034CA:  MOV             R0, R4; s
1034CC:  BLX             strlen
1034D0:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x1034DA); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
1034D2:  ADD             R0, R4
1034D4:  LDR             R1, =0x1010107
1034D6:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
1034D8:  STRD.W          R4, R0, [R5,#8]
1034DC:  MOV             R0, R5
1034DE:  ADDS            R2, #8
1034E0:  STRD.W          R2, R1, [R5]
1034E4:  POP             {R4,R5,R7,PC}
