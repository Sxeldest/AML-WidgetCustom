; =========================================================
; Game Engine Function: _Z12AND_OpenLinkPKc
; Address            : 0x26C478 - 0x26C4B6
; =========================================================

26C478:  PUSH            {R4,R5,R7,LR}
26C47A:  ADD             R7, SP, #8
26C47C:  MOV             R4, R0
26C47E:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26C482:  MOV             R5, R0
26C484:  MOV             R1, R4
26C486:  LDR             R0, [R5]
26C488:  LDR.W           R2, [R0,#0x29C]
26C48C:  MOV             R0, R5
26C48E:  BLX             R2
26C490:  MOV             R4, R0
26C492:  LDR             R0, =(s_OpenLink_ptr - 0x26C49C)
26C494:  LDR             R1, =(dword_6D81DC - 0x26C49E)
26C496:  MOV             R3, R4
26C498:  ADD             R0, PC; s_OpenLink_ptr
26C49A:  ADD             R1, PC; dword_6D81DC
26C49C:  LDR             R0, [R0]; s_OpenLink
26C49E:  LDR             R1, [R1]
26C4A0:  LDR             R2, [R0]
26C4A2:  MOV             R0, R5
26C4A4:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26C4A8:  LDR             R0, [R5]
26C4AA:  MOV             R1, R4
26C4AC:  LDR             R2, [R0,#0x5C]
26C4AE:  MOV             R0, R5
26C4B0:  POP.W           {R4,R5,R7,LR}
26C4B4:  BX              R2
