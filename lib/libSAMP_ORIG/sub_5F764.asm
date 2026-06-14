; =========================================================
; Game Engine Function: sub_5F764
; Address            : 0x5F764 - 0x5F7CE
; =========================================================

5F764:  SUB             SP, SP, #0xC
5F766:  PUSH            {R4,R5,R7,LR}
5F768:  ADD             R7, SP, #8
5F76A:  SUB             SP, SP, #0x10C
5F76C:  MOV             R5, R0
5F76E:  ADD.W           R0, R7, #8
5F772:  STM             R0!, {R1-R3}
5F774:  ADD             R4, SP, #0x114+var_10C
5F776:  MOVS            R1, #0xFF; n
5F778:  LDR             R0, =(__stack_chk_guard_ptr - 0x5F77E)
5F77A:  ADD             R0, PC; __stack_chk_guard_ptr
5F77C:  LDR             R0, [R0]; __stack_chk_guard
5F77E:  LDR             R0, [R0]
5F780:  STR             R0, [SP,#0x114+var_C]
5F782:  MOV             R0, R4; int
5F784:  BLX             sub_10967C
5F788:  ADD.W           R3, R7, #8; arg
5F78C:  MOV             R0, R4; s
5F78E:  MOVS            R1, #0xFF; maxlen
5F790:  MOV             R2, R5; format
5F792:  STR             R3, [SP,#0x114+var_110]
5F794:  BLX             vsnprintf
5F798:  LDR             R1, =(aSampOrig - 0x5F7A4); "SAMP_ORIG" ...
5F79A:  MOVS            R0, #6; prio
5F79C:  LDR             R5, =(aS_2 - 0x5F7A6); "%s" ...
5F79E:  MOV             R3, R4
5F7A0:  ADD             R1, PC; "SAMP_ORIG"
5F7A2:  ADD             R5, PC; "%s"
5F7A4:  MOV             R2, R5; fmt
5F7A6:  BLX             __android_log_print
5F7AA:  MOV             R0, R5
5F7AC:  MOV             R1, R4
5F7AE:  BL              sub_6B238
5F7B2:  LDR             R0, [SP,#0x114+var_C]
5F7B4:  LDR             R1, =(__stack_chk_guard_ptr - 0x5F7BA)
5F7B6:  ADD             R1, PC; __stack_chk_guard_ptr
5F7B8:  LDR             R1, [R1]; __stack_chk_guard
5F7BA:  LDR             R1, [R1]
5F7BC:  CMP             R1, R0
5F7BE:  ITTTT EQ
5F7C0:  ADDEQ           SP, SP, #0x10C
5F7C2:  POPEQ.W         {R4,R5,R7,LR}
5F7C6:  ADDEQ           SP, SP, #0xC
5F7C8:  BXEQ            LR
5F7CA:  BLX             __stack_chk_fail
