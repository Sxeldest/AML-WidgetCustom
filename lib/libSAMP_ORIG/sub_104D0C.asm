; =========================================================
; Game Engine Function: sub_104D0C
; Address            : 0x104D0C - 0x104D3A
; =========================================================

104D0C:  PUSH            {R4,R5,R7,LR}
104D0E:  ADD             R7, SP, #8
104D10:  ADD.W           R0, R0, #0x198
104D14:  MOV             R4, R1
104D16:  MOVS            R1, #0x10
104D18:  BL              sub_FFA98
104D1C:  MOV             R5, R0
104D1E:  MOV             R0, R4; s
104D20:  BLX             strlen
104D24:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x104D2E); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
104D26:  ADD             R0, R4
104D28:  LDR             R1, =0x1010107
104D2A:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
104D2C:  STRD.W          R4, R0, [R5,#8]
104D30:  MOV             R0, R5
104D32:  ADDS            R2, #8
104D34:  STRD.W          R2, R1, [R5]
104D38:  POP             {R4,R5,R7,PC}
