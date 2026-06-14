; =========================================================
; Game Engine Function: _Z28OS_ServiceIsNetworkAvailablev
; Address            : 0x26A538 - 0x26A55A
; =========================================================

26A538:  PUSH            {R4,R5,R7,LR}
26A53A:  ADD             R7, SP, #8
26A53C:  LDR             R0, =(s_IsNetworkAvailable_ptr - 0x26A544)
26A53E:  LDR             R4, =(dword_6D81DC - 0x26A546)
26A540:  ADD             R0, PC; s_IsNetworkAvailable_ptr
26A542:  ADD             R4, PC; dword_6D81DC
26A544:  LDR             R5, [R0]; s_IsNetworkAvailable
26A546:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26A54A:  LDR             R1, [R4]
26A54C:  LDR             R2, [R5]
26A54E:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
26A552:  CMP             R0, #0
26A554:  IT NE
26A556:  MOVNE           R0, #1
26A558:  POP             {R4,R5,R7,PC}
