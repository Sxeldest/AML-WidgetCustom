; =========================================================
; Game Engine Function: sub_104C9C
; Address            : 0x104C9C - 0x104CCA
; =========================================================

104C9C:  PUSH            {R4,R5,R7,LR}
104C9E:  ADD             R7, SP, #8
104CA0:  ADD.W           R0, R0, #0x198
104CA4:  MOV             R4, R1
104CA6:  MOVS            R1, #0x10
104CA8:  BL              sub_FFA98
104CAC:  MOV             R5, R0
104CAE:  MOV             R0, R4; s
104CB0:  BLX             strlen
104CB4:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x104CBE); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
104CB6:  ADD             R0, R4
104CB8:  LDR             R1, =0x1010107
104CBA:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
104CBC:  STRD.W          R4, R0, [R5,#8]
104CC0:  MOV             R0, R5
104CC2:  ADDS            R2, #8
104CC4:  STRD.W          R2, R1, [R5]
104CC8:  POP             {R4,R5,R7,PC}
