; =========================================================
; Game Engine Function: sub_102B2C
; Address            : 0x102B2C - 0x102B4E
; =========================================================

102B2C:  PUSH            {R4,R6,R7,LR}
102B2E:  ADD             R7, SP, #8
102B30:  ADD.W           R0, R0, #0x198
102B34:  MOV             R4, R1
102B36:  MOVS            R1, #0xC
102B38:  BL              sub_FFA98
102B3C:  LDR             R1, =0x1010140
102B3E:  STR             R1, [R0,#4]
102B40:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10UUIDOfExprE - 0x102B46); `vtable for'`anonymous namespace'::itanium_demangle::UUIDOfExpr ...
102B42:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::UUIDOfExpr
102B44:  ADDS            R1, #8
102B46:  STR             R1, [R0]
102B48:  LDR             R1, [R4]
102B4A:  STR             R1, [R0,#8]
102B4C:  POP             {R4,R6,R7,PC}
