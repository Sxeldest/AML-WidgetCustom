; =========================================================
; Game Engine Function: sub_6C95C
; Address            : 0x6C95C - 0x6CA06
; =========================================================

6C95C:  SUB             SP, SP, #0xC
6C95E:  PUSH            {R4,R5,R7,LR}
6C960:  ADD             R7, SP, #8
6C962:  SUBW            SP, SP, #0x40C
6C966:  MOV             R12, R0
6C968:  LDR             R0, =(off_114AB0 - 0x6C976)
6C96A:  STRD.W          R1, R2, [R7,#var_s8]
6C96E:  MOVW            R5, #0xDEEC
6C972:  ADD             R0, PC; off_114AB0
6C974:  STR             R3, [R7,#var_s10]
6C976:  MOVT            R5, #0x23 ; '#'
6C97A:  LDR             R4, [R0]; dword_1A4408
6C97C:  LDR             R0, =(__stack_chk_guard_ptr - 0x6C982)
6C97E:  ADD             R0, PC; __stack_chk_guard_ptr
6C980:  LDR             R1, [R4]
6C982:  LDR             R0, [R0]; __stack_chk_guard
6C984:  LDR             R0, [R0]
6C986:  STR.W           R0, [R7,#var_C]
6C98A:  LDR             R0, [R1,R5]
6C98C:  CBZ             R0, loc_6C9CA
6C98E:  ADD.W           R0, R7, #8
6C992:  MOVS            R1, #0
6C994:  MOV.W           R2, #0x400
6C998:  MOV             R3, R12
6C99A:  STRD.W          R0, R0, [SP,#0x414+var_414]
6C99E:  ADD             R0, SP, #0x414+var_40C
6C9A0:  BLX             __vsprintf_chk
6C9A4:  LDR             R0, [R4]
6C9A6:  MOV             R1, #0x12D491
6C9AE:  ADDS            R4, R0, R1
6C9B0:  LDR             R5, [R0,R5]
6C9B2:  CBNZ            R5, loc_6C9C2
6C9B4:  LDR             R1, =(aSampOrig - 0x6C9BE); "SAMP_ORIG" ...
6C9B6:  MOVS            R0, #4; prio
6C9B8:  LDR             R2, =(aUiPointerIsNul - 0x6C9C0); "UI pointer is null" ...
6C9BA:  ADD             R1, PC; "SAMP_ORIG"
6C9BC:  ADD             R2, PC; "UI pointer is null"
6C9BE:  BLX             __android_log_print
6C9C2:  LDR             R0, [R5,#0x60]
6C9C4:  ADD             R1, SP, #0x414+var_40C
6C9C6:  BLX             R4
6C9C8:  B               loc_6C9E6
6C9CA:  LDR             R4, =(aSampOrig - 0x6C9D4); "SAMP_ORIG" ...
6C9CC:  MOVS            R0, #4; prio
6C9CE:  LDR             R2, =(aUiPointerIsNul - 0x6C9D6); "UI pointer is null" ...
6C9D0:  ADD             R4, PC; "SAMP_ORIG"
6C9D2:  ADD             R2, PC; "UI pointer is null"
6C9D4:  MOV             R1, R4; tag
6C9D6:  BLX             __android_log_print
6C9DA:  LDR             R2, =(aSampAddinfomes - 0x6C9E4); "SAMP::addInfoMessage: UI pointer is nul"... ...
6C9DC:  MOVS            R0, #4; prio
6C9DE:  MOV             R1, R4; tag
6C9E0:  ADD             R2, PC; "SAMP::addInfoMessage: UI pointer is nul"...
6C9E2:  BLX             __android_log_print
6C9E6:  LDR.W           R0, [R7,#var_C]
6C9EA:  LDR             R1, =(__stack_chk_guard_ptr - 0x6C9F0)
6C9EC:  ADD             R1, PC; __stack_chk_guard_ptr
6C9EE:  LDR             R1, [R1]; __stack_chk_guard
6C9F0:  LDR             R1, [R1]
6C9F2:  CMP             R1, R0
6C9F4:  ITTTT EQ
6C9F6:  ADDWEQ          SP, SP, #0x40C
6C9FA:  POPEQ.W         {R4,R5,R7,LR}
6C9FE:  ADDEQ           SP, SP, #0xC
6CA00:  BXEQ            LR
6CA02:  BLX             __stack_chk_fail
