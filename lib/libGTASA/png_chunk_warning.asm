; =========================================================
; Game Engine Function: png_chunk_warning
; Address            : 0x1F2B78 - 0x1F2BC0
; =========================================================

1F2B78:  PUSH            {R4,R5,R7,LR}
1F2B7A:  ADD             R7, SP, #8
1F2B7C:  SUB             SP, SP, #0xE0
1F2B7E:  MOV             R4, R0
1F2B80:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F2B8A)
1F2B82:  MOV             R2, R1
1F2B84:  CMP             R4, #0
1F2B86:  ADD             R0, PC; __stack_chk_guard_ptr
1F2B88:  LDR             R0, [R0]; __stack_chk_guard
1F2B8A:  LDR             R0, [R0]
1F2B8C:  STR             R0, [SP,#0xE8+var_C]
1F2B8E:  BEQ             loc_1F2BA2
1F2B90:  SUB.W           R5, R7, #-var_E2
1F2B94:  MOV             R0, R4
1F2B96:  MOV             R1, R5
1F2B98:  BL              sub_1F2C14
1F2B9C:  MOV             R0, R4
1F2B9E:  MOV             R1, R5
1F2BA0:  B               loc_1F2BA6
1F2BA2:  MOVS            R0, #0
1F2BA4:  MOV             R1, R2
1F2BA6:  BLX             j_png_warning
1F2BAA:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F2BB2)
1F2BAC:  LDR             R1, [SP,#0xE8+var_C]
1F2BAE:  ADD             R0, PC; __stack_chk_guard_ptr
1F2BB0:  LDR             R0, [R0]; __stack_chk_guard
1F2BB2:  LDR             R0, [R0]
1F2BB4:  SUBS            R0, R0, R1
1F2BB6:  ITT EQ
1F2BB8:  ADDEQ           SP, SP, #0xE0
1F2BBA:  POPEQ           {R4,R5,R7,PC}
1F2BBC:  BLX             __stack_chk_fail
