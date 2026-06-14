; =========================================================
; Game Engine Function: _Z25OS_ServiceIsWifiAvailablev
; Address            : 0x26A50C - 0x26A52E
; =========================================================

26A50C:  PUSH            {R4,R5,R7,LR}
26A50E:  ADD             R7, SP, #8
26A510:  LDR             R0, =(s_IsWifiAvailable_ptr - 0x26A518)
26A512:  LDR             R4, =(dword_6D81DC - 0x26A51A)
26A514:  ADD             R0, PC; s_IsWifiAvailable_ptr
26A516:  ADD             R4, PC; dword_6D81DC
26A518:  LDR             R5, [R0]; s_IsWifiAvailable
26A51A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26A51E:  LDR             R1, [R4]
26A520:  LDR             R2, [R5]
26A522:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
26A526:  CMP             R0, #0
26A528:  IT NE
26A52A:  MOVNE           R0, #1
26A52C:  POP             {R4,R5,R7,PC}
