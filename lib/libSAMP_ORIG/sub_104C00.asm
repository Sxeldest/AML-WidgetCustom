; =========================================================
; Game Engine Function: sub_104C00
; Address            : 0x104C00 - 0x104C2E
; =========================================================

104C00:  PUSH            {R4,R5,R7,LR}
104C02:  ADD             R7, SP, #8
104C04:  ADD.W           R0, R0, #0x198
104C08:  MOV             R4, R1
104C0A:  MOVS            R1, #0x10
104C0C:  BL              sub_FFA98
104C10:  MOV             R5, R0
104C12:  MOV             R0, R4; s
104C14:  BLX             strlen
104C18:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x104C22); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
104C1A:  ADD             R0, R4
104C1C:  LDR             R1, =0x1010107
104C1E:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
104C20:  STRD.W          R4, R0, [R5,#8]
104C24:  MOV             R0, R5
104C26:  ADDS            R2, #8
104C28:  STRD.W          R2, R1, [R5]
104C2C:  POP             {R4,R5,R7,PC}
