; =========================================================
; Game Engine Function: sub_214C00
; Address            : 0x214C00 - 0x214C34
; =========================================================

214C00:  PUSH            {R5-R7,LR}
214C02:  ADD             R7, SP, #8
214C04:  LDR             R1, =(__stack_chk_guard_ptr - 0x214C0E)
214C06:  ADD.W           R3, R7, #8; arg
214C0A:  ADD             R1, PC; __stack_chk_guard_ptr
214C0C:  LDR             R1, [R1]; __stack_chk_guard
214C0E:  LDR             R1, [R1]
214C10:  STR             R1, [SP,#8+var_4]
214C12:  MOV.W           R1, #0x400; maxlen
214C16:  STR             R3, [SP,#8+var_8]
214C18:  LDR             R2, =(aUnknownErrorD - 0x214C1E); "Unknown error %d" ...
214C1A:  ADD             R2, PC; "Unknown error %d"
214C1C:  BLX             vsnprintf
214C20:  LDR             R0, [SP,#8+var_4]
214C22:  LDR             R1, =(__stack_chk_guard_ptr - 0x214C28)
214C24:  ADD             R1, PC; __stack_chk_guard_ptr
214C26:  LDR             R1, [R1]; __stack_chk_guard
214C28:  LDR             R1, [R1]
214C2A:  CMP             R1, R0
214C2C:  IT EQ
214C2E:  POPEQ           {R2,R3,R7,PC}
214C30:  BLX             __stack_chk_fail
