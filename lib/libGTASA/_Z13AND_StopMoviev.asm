; =========================================================
; Game Engine Function: _Z13AND_StopMoviev
; Address            : 0x26AE74 - 0x26AE92
; =========================================================

26AE74:  PUSH            {R4,R5,R7,LR}
26AE76:  ADD             R7, SP, #8
26AE78:  LDR             R0, =(s_StopMovie_ptr - 0x26AE80)
26AE7A:  LDR             R4, =(dword_6D81DC - 0x26AE82)
26AE7C:  ADD             R0, PC; s_StopMovie_ptr
26AE7E:  ADD             R4, PC; dword_6D81DC
26AE80:  LDR             R5, [R0]; s_StopMovie
26AE82:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26AE86:  LDR             R1, [R4]
26AE88:  LDR             R2, [R5]
26AE8A:  POP.W           {R4,R5,R7,LR}
26AE8E:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
