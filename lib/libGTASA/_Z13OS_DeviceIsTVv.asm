; =========================================================
; Game Engine Function: _Z13OS_DeviceIsTVv
; Address            : 0x26BE74 - 0x26BE96
; =========================================================

26BE74:  PUSH            {R4,R5,R7,LR}
26BE76:  ADD             R7, SP, #8
26BE78:  LDR             R0, =(s_IsTV_ptr - 0x26BE80)
26BE7A:  LDR             R4, =(dword_6D81DC - 0x26BE82)
26BE7C:  ADD             R0, PC; s_IsTV_ptr
26BE7E:  ADD             R4, PC; dword_6D81DC
26BE80:  LDR             R5, [R0]; s_IsTV
26BE82:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26BE86:  LDR             R1, [R4]
26BE88:  LDR             R2, [R5]
26BE8A:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
26BE8E:  CMP             R0, #0
26BE90:  IT NE
26BE92:  MOVNE           R0, #1
26BE94:  POP             {R4,R5,R7,PC}
