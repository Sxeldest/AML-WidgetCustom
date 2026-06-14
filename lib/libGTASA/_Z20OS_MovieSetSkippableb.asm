; =========================================================
; Game Engine Function: _Z20OS_MovieSetSkippableb
; Address            : 0x26ADE4 - 0x26AE0E
; =========================================================

26ADE4:  PUSH            {R4-R7,LR}
26ADE6:  ADD             R7, SP, #0xC
26ADE8:  PUSH.W          {R11}
26ADEC:  MOV             R4, R0
26ADEE:  LDR             R0, =(s_MovieIsSkippable_ptr - 0x26ADF6)
26ADF0:  LDR             R5, =(dword_6D81DC - 0x26ADF8)
26ADF2:  ADD             R0, PC; s_MovieIsSkippable_ptr
26ADF4:  ADD             R5, PC; dword_6D81DC
26ADF6:  LDR             R6, [R0]; s_MovieIsSkippable
26ADF8:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26ADFC:  LDR             R1, [R5]
26ADFE:  MOV             R3, R4
26AE00:  LDR             R2, [R6]
26AE02:  POP.W           {R11}
26AE06:  POP.W           {R4-R7,LR}
26AE0A:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
