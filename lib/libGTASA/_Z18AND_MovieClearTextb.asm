; =========================================================
; Game Engine Function: _Z18AND_MovieClearTextb
; Address            : 0x26AFDC - 0x26AFFA
; =========================================================

26AFDC:  PUSH            {R4,R5,R7,LR}
26AFDE:  ADD             R7, SP, #8
26AFE0:  LDR             R0, =(s_MovieClearText_ptr - 0x26AFE8)
26AFE2:  LDR             R4, =(dword_6D81DC - 0x26AFEA)
26AFE4:  ADD             R0, PC; s_MovieClearText_ptr
26AFE6:  ADD             R4, PC; dword_6D81DC
26AFE8:  LDR             R5, [R0]; s_MovieClearText
26AFEA:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26AFEE:  LDR             R1, [R4]
26AFF0:  LDR             R2, [R5]
26AFF2:  POP.W           {R4,R5,R7,LR}
26AFF6:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
