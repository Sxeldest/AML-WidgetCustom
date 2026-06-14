; =========================================================
; Game Engine Function: sub_102A2C
; Address            : 0x102A2C - 0x102A4E
; =========================================================

102A2C:  PUSH            {R4,R6,R7,LR}
102A2E:  ADD             R7, SP, #8
102A30:  ADD.W           R0, R0, #0x198
102A34:  MOV             R4, R1
102A36:  MOVS            R1, #0xC
102A38:  BL              sub_FFA98
102A3C:  LDR             R1, =0x1010122
102A3E:  STR             R1, [R0,#4]
102A40:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle22ParameterPackExpansionE - 0x102A46); `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion ...
102A42:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ParameterPackExpansion
102A44:  ADDS            R1, #8
102A46:  STR             R1, [R0]
102A48:  LDR             R1, [R4]
102A4A:  STR             R1, [R0,#8]
102A4C:  POP             {R4,R6,R7,PC}
