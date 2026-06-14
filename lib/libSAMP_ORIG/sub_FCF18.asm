; =========================================================
; Game Engine Function: sub_FCF18
; Address            : 0xFCF18 - 0xFCF4C
; =========================================================

FCF18:  PUSH            {R5-R7,LR}
FCF1A:  ADD             R7, SP, #8
FCF1C:  LDR             R1, =(__stack_chk_guard_ptr - 0xFCF26)
FCF1E:  ADD.W           R3, R7, #8; arg
FCF22:  ADD             R1, PC; __stack_chk_guard_ptr
FCF24:  LDR             R1, [R1]; __stack_chk_guard
FCF26:  LDR             R1, [R1]
FCF28:  STR             R1, [SP,#8+var_4]
FCF2A:  MOV.W           R1, #0x400; maxlen
FCF2E:  STR             R3, [SP,#8+var_8]
FCF30:  LDR             R2, =(aUnknownErrorD - 0xFCF36); "Unknown error %d" ...
FCF32:  ADD             R2, PC; "Unknown error %d"
FCF34:  BLX             vsnprintf
FCF38:  LDR             R0, [SP,#8+var_4]
FCF3A:  LDR             R1, =(__stack_chk_guard_ptr - 0xFCF40)
FCF3C:  ADD             R1, PC; __stack_chk_guard_ptr
FCF3E:  LDR             R1, [R1]; __stack_chk_guard
FCF40:  LDR             R1, [R1]
FCF42:  CMP             R1, R0
FCF44:  IT EQ
FCF46:  POPEQ           {R2,R3,R7,PC}
FCF48:  BLX             __stack_chk_fail
