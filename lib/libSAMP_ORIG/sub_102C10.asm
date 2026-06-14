; =========================================================
; Game Engine Function: sub_102C10
; Address            : 0x102C10 - 0x102C3E
; =========================================================

102C10:  PUSH            {R4,R5,R7,LR}
102C12:  ADD             R7, SP, #8
102C14:  ADD.W           R0, R0, #0x198
102C18:  MOV             R4, R1
102C1A:  MOVS            R1, #0x10
102C1C:  BL              sub_FFA98
102C20:  MOV             R5, R0
102C22:  MOV             R0, R4; s
102C24:  BLX             strlen
102C28:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x102C32); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
102C2A:  ADD             R0, R4
102C2C:  LDR             R1, =0x1010107
102C2E:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
102C30:  STRD.W          R4, R0, [R5,#8]
102C34:  MOV             R0, R5
102C36:  ADDS            R2, #8
102C38:  STRD.W          R2, R1, [R5]
102C3C:  POP             {R4,R5,R7,PC}
