; =========================================================
; Game Engine Function: _Z17OS_MovieClearTextb
; Address            : 0x26AFB4 - 0x26AFD2
; =========================================================

26AFB4:  PUSH            {R4,R5,R7,LR}
26AFB6:  ADD             R7, SP, #8
26AFB8:  LDR             R0, =(s_MovieClearText_ptr - 0x26AFC0)
26AFBA:  LDR             R4, =(dword_6D81DC - 0x26AFC2)
26AFBC:  ADD             R0, PC; s_MovieClearText_ptr
26AFBE:  ADD             R4, PC; dword_6D81DC
26AFC0:  LDR             R5, [R0]; s_MovieClearText
26AFC2:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26AFC6:  LDR             R1, [R4]
26AFC8:  LDR             R2, [R5]
26AFCA:  POP.W           {R4,R5,R7,LR}
26AFCE:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
