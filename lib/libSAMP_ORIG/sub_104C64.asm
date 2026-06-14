; =========================================================
; Game Engine Function: sub_104C64
; Address            : 0x104C64 - 0x104C92
; =========================================================

104C64:  PUSH            {R4,R5,R7,LR}
104C66:  ADD             R7, SP, #8
104C68:  ADD.W           R0, R0, #0x198
104C6C:  MOV             R4, R1
104C6E:  MOVS            R1, #0x10
104C70:  BL              sub_FFA98
104C74:  MOV             R5, R0
104C76:  MOV             R0, R4; s
104C78:  BLX             strlen
104C7C:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x104C86); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
104C7E:  ADD             R0, R4
104C80:  LDR             R1, =0x1010107
104C82:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
104C84:  STRD.W          R4, R0, [R5,#8]
104C88:  MOV             R0, R5
104C8A:  ADDS            R2, #8
104C8C:  STRD.W          R2, R1, [R5]
104C90:  POP             {R4,R5,R7,PC}
