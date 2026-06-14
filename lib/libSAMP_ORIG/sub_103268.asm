; =========================================================
; Game Engine Function: sub_103268
; Address            : 0x103268 - 0x1032C2
; =========================================================

103268:  PUSH            {R2-R5,R7,LR}
10326A:  ADD             R7, SP, #0x10
10326C:  MOV             R4, R0
10326E:  LDR             R0, =(__stack_chk_guard_ptr - 0x103278)
103270:  VMOV.I32        Q8, #0
103274:  ADD             R0, PC; __stack_chk_guard_ptr
103276:  LDR             R0, [R0]; __stack_chk_guard
103278:  LDR             R0, [R0]
10327A:  STR             R0, [SP,#0x10+var_C]
10327C:  ADD.W           R0, R4, #0x14
103280:  LDRD.W          R2, R3, [R1,#0x14C]
103284:  MOV             R5, R0
103286:  STR             R0, [R4,#0xC]
103288:  SUBS            R2, R3, R2
10328A:  VST1.32         {D16-D17}, [R5]!
10328E:  ASRS            R2, R2, #2
103290:  STR             R2, [R4,#4]
103292:  MOV             R2, R4
103294:  STR.W           R0, [R2,#8]!
103298:  ADD.W           R0, R1, #0x14C
10329C:  STR             R1, [R4]
10329E:  MOV             R1, SP
1032A0:  VST1.32         {D16-D17}, [R5]!
1032A4:  STR             R5, [R4,#0x10]
1032A6:  STR             R2, [SP,#0x10+var_10]
1032A8:  BL              sub_1004F2
1032AC:  LDR             R0, [SP,#0x10+var_C]
1032AE:  LDR             R1, =(__stack_chk_guard_ptr - 0x1032B4)
1032B0:  ADD             R1, PC; __stack_chk_guard_ptr
1032B2:  LDR             R1, [R1]; __stack_chk_guard
1032B4:  LDR             R1, [R1]
1032B6:  CMP             R1, R0
1032B8:  ITT EQ
1032BA:  MOVEQ           R0, R4
1032BC:  POPEQ           {R2-R5,R7,PC}
1032BE:  BLX             __stack_chk_fail
