; =========================================================
; Game Engine Function: sub_FFFD8
; Address            : 0xFFFD8 - 0x100006
; =========================================================

FFFD8:  PUSH            {R4,R5,R7,LR}
FFFDA:  ADD             R7, SP, #8
FFFDC:  ADD.W           R0, R0, #0x198
FFFE0:  MOV             R4, R1
FFFE2:  MOVS            R1, #0x10
FFFE4:  BL              sub_FFA98
FFFE8:  MOV             R5, R0
FFFEA:  MOV             R0, R4; s
FFFEC:  BLX             strlen
FFFF0:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0xFFFFA); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
FFFF2:  ADD             R0, R4
FFFF4:  LDR             R1, =0x1010107
FFFF6:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
FFFF8:  STRD.W          R4, R0, [R5,#8]
FFFFC:  MOV             R0, R5
FFFFE:  ADDS            R2, #8
100000:  STRD.W          R2, R1, [R5]
100004:  POP             {R4,R5,R7,PC}
