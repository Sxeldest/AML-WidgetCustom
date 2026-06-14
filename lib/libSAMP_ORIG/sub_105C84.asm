; =========================================================
; Game Engine Function: sub_105C84
; Address            : 0x105C84 - 0x105CB2
; =========================================================

105C84:  PUSH            {R4,R5,R7,LR}
105C86:  ADD             R7, SP, #8
105C88:  ADD.W           R0, R0, #0x198
105C8C:  MOV             R4, R1
105C8E:  MOVS            R1, #0x10
105C90:  BL              sub_FFA98
105C94:  MOV             R5, R0
105C96:  MOV             R0, R4; s
105C98:  BLX             strlen
105C9C:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x105CA6); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
105C9E:  ADD             R0, R4
105CA0:  LDR             R1, =0x1010107
105CA2:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
105CA4:  STRD.W          R4, R0, [R5,#8]
105CA8:  MOV             R0, R5
105CAA:  ADDS            R2, #8
105CAC:  STRD.W          R2, R1, [R5]
105CB0:  POP             {R4,R5,R7,PC}
