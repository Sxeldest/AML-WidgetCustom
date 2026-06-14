; =========================================================
; Game Engine Function: _Z18OS_GamepadTouchpadjjPfS_
; Address            : 0x26846C - 0x26850A
; =========================================================

26846C:  PUSH            {R4-R7,LR}
26846E:  ADD             R7, SP, #0xC
268470:  PUSH.W          {R8-R11}
268474:  SUB             SP, SP, #0xC
268476:  MOV             R5, R1
268478:  MOV             R6, R0
26847A:  MOV             R9, R2
26847C:  MOVS            R0, #0
26847E:  CMP             R5, #1
268480:  BHI             loc_268502
268482:  LDR             R1, =(lastGamepadType_ptr - 0x268488)
268484:  ADD             R1, PC; lastGamepadType_ptr
268486:  LDR             R1, [R1]; lastGamepadType
268488:  LDR.W           R1, [R1,R6,LSL#2]
26848C:  CMP             R1, #1
26848E:  BNE             loc_268502
268490:  LDR             R0, =(s_getGamepadTrack_ptr - 0x268498)
268492:  LDR             R4, =(dword_6D81DC - 0x26849C)
268494:  ADD             R0, PC; s_getGamepadTrack_ptr
268496:  STR             R3, [SP,#0x28+var_20]
268498:  ADD             R4, PC; dword_6D81DC
26849A:  LDR.W           R8, [R0]; s_getGamepadTrack
26849E:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
2684A2:  LDR             R1, [R4]
2684A4:  MOVS            R4, #0
2684A6:  LDR.W           R2, [R8]
2684AA:  MOV             R3, R6
2684AC:  MOV             R11, R0
2684AE:  STRD.W          R5, R4, [SP,#0x28+var_28]
2684B2:  BLX             j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
2684B6:  MOV             R10, R0
2684B8:  LDR             R0, =(dword_6D81DC - 0x2684C4)
2684BA:  LDR.W           R2, [R8]
2684BE:  MOV             R3, R6
2684C0:  ADD             R0, PC; dword_6D81DC
2684C2:  LDR             R1, [R0]
2684C4:  MOVS            R0, #1
2684C6:  STRD.W          R5, R0, [SP,#0x28+var_28]
2684CA:  MOV             R0, R11
2684CC:  BLX             j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
2684D0:  VMOV            S0, R10
2684D4:  CMP             R0, #0
2684D6:  VMOV            S2, R0
2684DA:  VCVT.F32.S32    S0, S0
2684DE:  VCVT.F32.S32    S2, S2
2684E2:  VSTR            S0, [R9]
2684E6:  LDR             R1, [SP,#0x28+var_20]
2684E8:  VSTR            S2, [R1]
2684EC:  VLDR            S0, [R9]
2684F0:  IT NE
2684F2:  MOVNE           R0, #1
2684F4:  VCMP.F32        S0, #0.0
2684F8:  VMRS            APSR_nzcv, FPSCR
2684FC:  IT NE
2684FE:  MOVNE           R4, #1
268500:  ANDS            R0, R4
268502:  ADD             SP, SP, #0xC
268504:  POP.W           {R8-R11}
268508:  POP             {R4-R7,PC}
