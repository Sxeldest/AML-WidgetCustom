; =========================================================
; Game Engine Function: _Z18OS_ServiceOpenLinkPKc
; Address            : 0x26C430 - 0x26C46E
; =========================================================

26C430:  PUSH            {R4,R5,R7,LR}
26C432:  ADD             R7, SP, #8
26C434:  MOV             R4, R0
26C436:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26C43A:  MOV             R5, R0
26C43C:  MOV             R1, R4
26C43E:  LDR             R0, [R5]
26C440:  LDR.W           R2, [R0,#0x29C]
26C444:  MOV             R0, R5
26C446:  BLX             R2
26C448:  MOV             R4, R0
26C44A:  LDR             R0, =(s_OpenLink_ptr - 0x26C454)
26C44C:  LDR             R1, =(dword_6D81DC - 0x26C456)
26C44E:  MOV             R3, R4
26C450:  ADD             R0, PC; s_OpenLink_ptr
26C452:  ADD             R1, PC; dword_6D81DC
26C454:  LDR             R0, [R0]; s_OpenLink
26C456:  LDR             R1, [R1]
26C458:  LDR             R2, [R0]
26C45A:  MOV             R0, R5
26C45C:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26C460:  LDR             R0, [R5]
26C462:  MOV             R1, R4
26C464:  LDR             R2, [R0,#0x5C]
26C466:  MOV             R0, R5
26C468:  POP.W           {R4,R5,R7,LR}
26C46C:  BX              R2
