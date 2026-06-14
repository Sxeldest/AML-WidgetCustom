; =========================================================
; Game Engine Function: sub_1F128C
; Address            : 0x1F128C - 0x1F12BA
; =========================================================

1F128C:  PUSH            {R7,LR}
1F128E:  MOV             R7, SP
1F1290:  SUB             SP, SP, #0x70
1F1292:  MOV             R3, R2
1F1294:  LDR             R2, =(__stack_chk_guard_ptr - 0x1F129A)
1F1296:  ADD             R2, PC; __stack_chk_guard_ptr
1F1298:  LDR             R2, [R2]; __stack_chk_guard
1F129A:  LDR             R2, [R2]
1F129C:  STR             R2, [SP,#0x78+var_C]
1F129E:  MOV             R2, SP
1F12A0:  BL              sub_1EFE7C
1F12A4:  LDR             R0, [SP,#0x78+var_C]
1F12A6:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F12AC)
1F12A8:  ADD             R1, PC; __stack_chk_guard_ptr
1F12AA:  LDR             R1, [R1]; __stack_chk_guard
1F12AC:  LDR             R1, [R1]
1F12AE:  CMP             R1, R0
1F12B0:  ITT EQ
1F12B2:  ADDEQ           SP, SP, #0x70 ; 'p'
1F12B4:  POPEQ           {R7,PC}
1F12B6:  BLX             __stack_chk_fail
