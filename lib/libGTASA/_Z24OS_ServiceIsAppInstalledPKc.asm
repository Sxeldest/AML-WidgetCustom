; =========================================================
; Game Engine Function: _Z24OS_ServiceIsAppInstalledPKc
; Address            : 0x26C380 - 0x26C3CE
; =========================================================

26C380:  PUSH            {R4-R7,LR}
26C382:  ADD             R7, SP, #0xC
26C384:  PUSH.W          {R11}
26C388:  MOV             R4, R0
26C38A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26C38E:  MOV             R5, R0
26C390:  MOV             R1, R4
26C392:  LDR             R0, [R5]
26C394:  LDR.W           R2, [R0,#0x29C]
26C398:  MOV             R0, R5
26C39A:  BLX             R2
26C39C:  MOV             R4, R0
26C39E:  LDR             R0, =(s_IsAppInstalled_ptr - 0x26C3A8)
26C3A0:  LDR             R1, =(dword_6D81DC - 0x26C3AA)
26C3A2:  MOV             R3, R4
26C3A4:  ADD             R0, PC; s_IsAppInstalled_ptr
26C3A6:  ADD             R1, PC; dword_6D81DC
26C3A8:  LDR             R0, [R0]; s_IsAppInstalled
26C3AA:  LDR             R1, [R1]
26C3AC:  LDR             R2, [R0]
26C3AE:  MOV             R0, R5
26C3B0:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
26C3B4:  MOV             R6, R0
26C3B6:  LDR             R0, [R5]
26C3B8:  MOV             R1, R4
26C3BA:  LDR             R2, [R0,#0x5C]
26C3BC:  MOV             R0, R5
26C3BE:  BLX             R2
26C3C0:  CMP             R6, #0
26C3C2:  IT NE
26C3C4:  MOVNE           R6, #1
26C3C6:  MOV             R0, R6
26C3C8:  POP.W           {R11}
26C3CC:  POP             {R4-R7,PC}
