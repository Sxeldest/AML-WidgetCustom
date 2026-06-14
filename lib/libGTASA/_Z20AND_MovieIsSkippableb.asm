; =========================================================
; Game Engine Function: _Z20AND_MovieIsSkippableb
; Address            : 0x26AE18 - 0x26AE42
; =========================================================

26AE18:  PUSH            {R4-R7,LR}
26AE1A:  ADD             R7, SP, #0xC
26AE1C:  PUSH.W          {R11}
26AE20:  MOV             R4, R0
26AE22:  LDR             R0, =(s_MovieIsSkippable_ptr - 0x26AE2A)
26AE24:  LDR             R5, =(dword_6D81DC - 0x26AE2C)
26AE26:  ADD             R0, PC; s_MovieIsSkippable_ptr
26AE28:  ADD             R5, PC; dword_6D81DC
26AE2A:  LDR             R6, [R0]; s_MovieIsSkippable
26AE2C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26AE30:  LDR             R1, [R5]
26AE32:  MOV             R3, R4
26AE34:  LDR             R2, [R6]
26AE36:  POP.W           {R11}
26AE3A:  POP.W           {R4-R7,LR}
26AE3E:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
