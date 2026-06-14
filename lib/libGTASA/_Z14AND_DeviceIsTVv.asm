; =========================================================
; Game Engine Function: _Z14AND_DeviceIsTVv
; Address            : 0x26BEA0 - 0x26BEC2
; =========================================================

26BEA0:  PUSH            {R4,R5,R7,LR}
26BEA2:  ADD             R7, SP, #8
26BEA4:  LDR             R0, =(s_IsTV_ptr - 0x26BEAC)
26BEA6:  LDR             R4, =(dword_6D81DC - 0x26BEAE)
26BEA8:  ADD             R0, PC; s_IsTV_ptr
26BEAA:  ADD             R4, PC; dword_6D81DC
26BEAC:  LDR             R5, [R0]; s_IsTV
26BEAE:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26BEB2:  LDR             R1, [R4]
26BEB4:  LDR             R2, [R5]
26BEB6:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
26BEBA:  CMP             R0, #0
26BEBC:  IT NE
26BEBE:  MOVNE           R0, #1
26BEC0:  POP             {R4,R5,R7,PC}
