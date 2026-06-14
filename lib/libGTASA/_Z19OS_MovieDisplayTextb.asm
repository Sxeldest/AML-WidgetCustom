; =========================================================
; Game Engine Function: _Z19OS_MovieDisplayTextb
; Address            : 0x26B004 - 0x26B022
; =========================================================

26B004:  PUSH            {R4,R5,R7,LR}
26B006:  ADD             R7, SP, #8
26B008:  LDR             R0, =(s_MovieDisplayText_ptr - 0x26B010)
26B00A:  LDR             R4, =(dword_6D81DC - 0x26B012)
26B00C:  ADD             R0, PC; s_MovieDisplayText_ptr
26B00E:  ADD             R4, PC; dword_6D81DC
26B010:  LDR             R5, [R0]; s_MovieDisplayText
26B012:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26B016:  LDR             R1, [R4]
26B018:  LDR             R2, [R5]
26B01A:  POP.W           {R4,R5,R7,LR}
26B01E:  B.W             j_j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
