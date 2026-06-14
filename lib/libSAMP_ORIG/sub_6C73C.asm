; =========================================================
; Game Engine Function: sub_6C73C
; Address            : 0x6C73C - 0x6C7E6
; =========================================================

6C73C:  SUB             SP, SP, #0xC
6C73E:  PUSH            {R4,R5,R7,LR}
6C740:  ADD             R7, SP, #8
6C742:  SUBW            SP, SP, #0x40C
6C746:  MOV             R12, R0
6C748:  LDR             R0, =(off_114AB0 - 0x6C756)
6C74A:  STRD.W          R1, R2, [R7,#var_s8]
6C74E:  MOVW            R5, #0xDEEC
6C752:  ADD             R0, PC; off_114AB0
6C754:  STR             R3, [R7,#var_s10]
6C756:  MOVT            R5, #0x23 ; '#'
6C75A:  LDR             R4, [R0]; dword_1A4408
6C75C:  LDR             R0, =(__stack_chk_guard_ptr - 0x6C762)
6C75E:  ADD             R0, PC; __stack_chk_guard_ptr
6C760:  LDR             R1, [R4]
6C762:  LDR             R0, [R0]; __stack_chk_guard
6C764:  LDR             R0, [R0]
6C766:  STR.W           R0, [R7,#var_C]
6C76A:  LDR             R0, [R1,R5]
6C76C:  CBZ             R0, loc_6C7AA
6C76E:  ADD.W           R0, R7, #8
6C772:  MOVS            R1, #0
6C774:  MOV.W           R2, #0x400
6C778:  MOV             R3, R12
6C77A:  STRD.W          R0, R0, [SP,#0x414+var_414]
6C77E:  ADD             R0, SP, #0x414+var_40C
6C780:  BLX             __vsprintf_chk
6C784:  LDR             R0, [R4]
6C786:  MOV             R1, #0x12D5E9
6C78E:  ADDS            R4, R0, R1
6C790:  LDR             R5, [R0,R5]
6C792:  CBNZ            R5, loc_6C7A2
6C794:  LDR             R1, =(aSampOrig - 0x6C79E); "SAMP_ORIG" ...
6C796:  MOVS            R0, #4; prio
6C798:  LDR             R2, =(aUiPointerIsNul - 0x6C7A0); "UI pointer is null" ...
6C79A:  ADD             R1, PC; "SAMP_ORIG"
6C79C:  ADD             R2, PC; "UI pointer is null"
6C79E:  BLX             __android_log_print
6C7A2:  LDR             R0, [R5,#0x60]
6C7A4:  ADD             R1, SP, #0x414+var_40C
6C7A6:  BLX             R4
6C7A8:  B               loc_6C7C6
6C7AA:  LDR             R4, =(aSampOrig - 0x6C7B4); "SAMP_ORIG" ...
6C7AC:  MOVS            R0, #4; prio
6C7AE:  LDR             R2, =(aUiPointerIsNul - 0x6C7B6); "UI pointer is null" ...
6C7B0:  ADD             R4, PC; "SAMP_ORIG"
6C7B2:  ADD             R2, PC; "UI pointer is null"
6C7B4:  MOV             R1, R4; tag
6C7B6:  BLX             __android_log_print
6C7BA:  LDR             R2, =(aSampAdddebugme - 0x6C7C4); "SAMP::addDebugMessage: UI pointer is nu"... ...
6C7BC:  MOVS            R0, #4; prio
6C7BE:  MOV             R1, R4; tag
6C7C0:  ADD             R2, PC; "SAMP::addDebugMessage: UI pointer is nu"...
6C7C2:  BLX             __android_log_print
6C7C6:  LDR.W           R0, [R7,#var_C]
6C7CA:  LDR             R1, =(__stack_chk_guard_ptr - 0x6C7D0)
6C7CC:  ADD             R1, PC; __stack_chk_guard_ptr
6C7CE:  LDR             R1, [R1]; __stack_chk_guard
6C7D0:  LDR             R1, [R1]
6C7D2:  CMP             R1, R0
6C7D4:  ITTTT EQ
6C7D6:  ADDWEQ          SP, SP, #0x40C
6C7DA:  POPEQ.W         {R4,R5,R7,LR}
6C7DE:  ADDEQ           SP, SP, #0xC
6C7E0:  BXEQ            LR
6C7E2:  BLX             __stack_chk_fail
