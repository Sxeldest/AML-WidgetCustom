; =========================================================
; Game Engine Function: sub_6918C
; Address            : 0x6918C - 0x691CA
; =========================================================

6918C:  SUB             SP, SP, #4
6918E:  PUSH            {R7,LR}
69190:  MOV             R7, SP
69192:  SUB             SP, SP, #0xC
69194:  STR             R3, [R7,#8]
69196:  LDR             R3, =(__stack_chk_guard_ptr - 0x6919C)
69198:  ADD             R3, PC; __stack_chk_guard_ptr
6919A:  LDR             R3, [R3]; __stack_chk_guard
6919C:  LDR             R3, [R3]
6919E:  STR             R3, [SP,#0x18+var_10]
691A0:  LDR             R3, [R0]
691A2:  LDR.W           R12, [R3,#0x74]
691A6:  ADD.W           R3, R7, #8
691AA:  STR             R3, [SP,#0x18+var_14]
691AC:  BLX             R12
691AE:  LDR             R1, [SP,#0x18+var_10]
691B0:  LDR             R2, =(__stack_chk_guard_ptr - 0x691B6)
691B2:  ADD             R2, PC; __stack_chk_guard_ptr
691B4:  LDR             R2, [R2]; __stack_chk_guard
691B6:  LDR             R2, [R2]
691B8:  CMP             R2, R1
691BA:  ITTTT EQ
691BC:  ADDEQ           SP, SP, #0xC
691BE:  POPEQ.W         {R7,LR}
691C2:  ADDEQ           SP, SP, #4
691C4:  BXEQ            LR
691C6:  BLX             __stack_chk_fail
