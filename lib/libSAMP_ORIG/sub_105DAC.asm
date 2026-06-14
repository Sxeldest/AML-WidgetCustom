; =========================================================
; Game Engine Function: sub_105DAC
; Address            : 0x105DAC - 0x105DE2
; =========================================================

105DAC:  PUSH            {R4,R5,R7,LR}
105DAE:  ADD             R7, SP, #8
105DB0:  ADD.W           R0, R0, #0x198
105DB4:  MOV             R5, R1
105DB6:  MOVS            R1, #0x14
105DB8:  MOV             R4, R2
105DBA:  BL              sub_FFA98
105DBE:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13ReferenceTypeE - 0x105DC6); `vtable for'`anonymous namespace'::itanium_demangle::ReferenceType ...
105DC0:  LDR             R2, [R5]
105DC2:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ReferenceType
105DC4:  ADDS            R1, #8
105DC6:  STR             R1, [R0]
105DC8:  LDR             R1, [R4]
105DCA:  STRD.W          R2, R1, [R0,#8]
105DCE:  MOVW            R1, #0x101
105DD2:  STRH            R1, [R0,#6]
105DD4:  MOVS            R1, #0xC
105DD6:  STRB            R1, [R0,#4]
105DD8:  MOVS            R1, #0
105DDA:  STRB            R1, [R0,#0x10]
105DDC:  LDRB            R1, [R2,#5]
105DDE:  STRB            R1, [R0,#5]
105DE0:  POP             {R4,R5,R7,PC}
