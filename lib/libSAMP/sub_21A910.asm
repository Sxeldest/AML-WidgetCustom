; =========================================================
; Game Engine Function: sub_21A910
; Address            : 0x21A910 - 0x21A93E
; =========================================================

21A910:  PUSH            {R4,R5,R7,LR}
21A912:  ADD             R7, SP, #8
21A914:  ADD.W           R0, R0, #0x198
21A918:  MOV             R4, R1
21A91A:  MOVS            R1, #0x10
21A91C:  BL              sub_216EF0
21A920:  MOV             R5, R0
21A922:  MOV             R0, R4; s
21A924:  BLX             strlen
21A928:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x21A932); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
21A92A:  ADD             R0, R4
21A92C:  LDR             R1, =0x1010107
21A92E:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
21A930:  STRD.W          R4, R0, [R5,#8]
21A934:  MOV             R0, R5
21A936:  ADDS            R2, #8
21A938:  STRD.W          R2, R1, [R5]
21A93C:  POP             {R4,R5,R7,PC}
