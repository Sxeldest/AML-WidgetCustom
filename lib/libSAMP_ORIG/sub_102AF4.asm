; =========================================================
; Game Engine Function: sub_102AF4
; Address            : 0x102AF4 - 0x102B22
; =========================================================

102AF4:  PUSH            {R4,R5,R7,LR}
102AF6:  ADD             R7, SP, #8
102AF8:  ADD.W           R0, R0, #0x198
102AFC:  MOV             R4, R1
102AFE:  MOVS            R1, #0x10
102B00:  BL              sub_FFA98
102B04:  MOV             R5, R0
102B06:  MOV             R0, R4; s
102B08:  BLX             strlen
102B0C:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x102B16); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
102B0E:  ADD             R0, R4
102B10:  LDR             R1, =0x1010107
102B12:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
102B14:  STRD.W          R4, R0, [R5,#8]
102B18:  MOV             R0, R5
102B1A:  ADDS            R2, #8
102B1C:  STRD.W          R2, R1, [R5]
102B20:  POP             {R4,R5,R7,PC}
