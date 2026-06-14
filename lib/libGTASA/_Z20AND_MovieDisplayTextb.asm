; =========================================================
; Game Engine Function: _Z20AND_MovieDisplayTextb
; Address            : 0x26B02C - 0x26B04A
; =========================================================

26B02C:  PUSH            {R4,R5,R7,LR}
26B02E:  ADD             R7, SP, #8
26B030:  LDR             R0, =(s_MovieDisplayText_ptr - 0x26B038)
26B032:  LDR             R4, =(dword_6D81DC - 0x26B03A)
26B034:  ADD             R0, PC; s_MovieDisplayText_ptr
26B036:  ADD             R4, PC; dword_6D81DC
26B038:  LDR             R5, [R0]; s_MovieDisplayText
26B03A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26B03E:  LDR             R1, [R4]
26B040:  LDR             R2, [R5]
26B042:  POP.W           {R4,R5,R7,LR}
26B046:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
