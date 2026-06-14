; =========================================================
; Game Engine Function: _Z18AND_IsMoviePlayingv
; Address            : 0x26AED4 - 0x26AEF2
; =========================================================

26AED4:  PUSH            {R4,R5,R7,LR}
26AED6:  ADD             R7, SP, #8
26AED8:  LDR             R0, =(s_IsMoviePlaying_ptr - 0x26AEE0)
26AEDA:  LDR             R4, =(dword_6D81DC - 0x26AEE2)
26AEDC:  ADD             R0, PC; s_IsMoviePlaying_ptr
26AEDE:  ADD             R4, PC; dword_6D81DC
26AEE0:  LDR             R5, [R0]; s_IsMoviePlaying
26AEE2:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26AEE6:  LDR             R1, [R4]
26AEE8:  LDR             R2, [R5]
26AEEA:  POP.W           {R4,R5,R7,LR}
26AEEE:  B.W             j_j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
