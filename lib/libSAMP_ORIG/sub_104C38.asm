; =========================================================
; Game Engine Function: sub_104C38
; Address            : 0x104C38 - 0x104C5A
; =========================================================

104C38:  PUSH            {R4,R6,R7,LR}
104C3A:  ADD             R7, SP, #8
104C3C:  ADD.W           R0, R0, #0x198
104C40:  MOV             R4, R1
104C42:  MOVS            R1, #0xC
104C44:  BL              sub_FFA98
104C48:  LDR             R1, =0x1010104
104C4A:  STR             R1, [R0,#4]
104C4C:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle22ConversionOperatorTypeE - 0x104C52); `vtable for'`anonymous namespace'::itanium_demangle::ConversionOperatorType ...
104C4E:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ConversionOperatorType
104C50:  ADDS            R1, #8
104C52:  STR             R1, [R0]
104C54:  LDR             R1, [R4]
104C56:  STR             R1, [R0,#8]
104C58:  POP             {R4,R6,R7,PC}
