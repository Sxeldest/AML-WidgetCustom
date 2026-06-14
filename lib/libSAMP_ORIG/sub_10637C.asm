; =========================================================
; Game Engine Function: sub_10637C
; Address            : 0x10637C - 0x1063C6
; =========================================================

10637C:  PUSH            {R1-R7,LR}
10637E:  ADD             R7, SP, #0x18
106380:  LDR             R1, =(__stack_chk_guard_ptr - 0x106386)
106382:  ADD             R1, PC; __stack_chk_guard_ptr
106384:  LDR             R1, [R1]; __stack_chk_guard
106386:  LDR             R1, [R1]
106388:  STR             R1, [SP,#0x18+var_4]
10638A:  LDR             R0, [R0,#8]
10638C:  LDRB            R1, [R0,#4]
10638E:  CMP             R1, #7
106390:  BNE             loc_1063AE
106392:  LDRD.W          R1, R0, [R0,#8]
106396:  STRD.W          R1, R0, [SP,#0x18+var_10]
10639A:  MOV             R1, SP
10639C:  LDR             R0, =(aObjcObject - 0x1063A2); "objc_object" ...
10639E:  ADD             R0, PC; "objc_object"
1063A0:  STR             R0, [SP,#0x18+var_18]
1063A2:  ADDS            R0, #0xB
1063A4:  STR             R0, [SP,#0x18+var_14]
1063A6:  ADD             R0, SP, #0x18+var_10
1063A8:  BL              sub_103CFC
1063AC:  B               loc_1063B0
1063AE:  MOVS            R0, #0
1063B0:  LDR             R1, [SP,#0x18+var_4]
1063B2:  LDR             R2, =(__stack_chk_guard_ptr - 0x1063B8)
1063B4:  ADD             R2, PC; __stack_chk_guard_ptr
1063B6:  LDR             R2, [R2]; __stack_chk_guard
1063B8:  LDR             R2, [R2]
1063BA:  CMP             R2, R1
1063BC:  ITT EQ
1063BE:  ADDEQ           SP, SP, #0x18
1063C0:  POPEQ           {R7,PC}
1063C2:  BLX             __stack_chk_fail
