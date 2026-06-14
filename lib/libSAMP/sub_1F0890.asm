; =========================================================
; Game Engine Function: sub_1F0890
; Address            : 0x1F0890 - 0x1F08BE
; =========================================================

1F0890:  PUSH            {R7,LR}
1F0892:  MOV             R7, SP
1F0894:  SUB             SP, SP, #0x70
1F0896:  MOV             R3, R2
1F0898:  LDR             R2, =(__stack_chk_guard_ptr - 0x1F089E)
1F089A:  ADD             R2, PC; __stack_chk_guard_ptr
1F089C:  LDR             R2, [R2]; __stack_chk_guard
1F089E:  LDR             R2, [R2]
1F08A0:  STR             R2, [SP,#0x78+var_C]
1F08A2:  MOV             R2, SP
1F08A4:  BL              sub_1EFEF0
1F08A8:  LDR             R0, [SP,#0x78+var_C]
1F08AA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F08B0)
1F08AC:  ADD             R1, PC; __stack_chk_guard_ptr
1F08AE:  LDR             R1, [R1]; __stack_chk_guard
1F08B0:  LDR             R1, [R1]
1F08B2:  CMP             R1, R0
1F08B4:  ITT EQ
1F08B6:  ADDEQ           SP, SP, #0x70 ; 'p'
1F08B8:  POPEQ           {R7,PC}
1F08BA:  BLX             __stack_chk_fail
