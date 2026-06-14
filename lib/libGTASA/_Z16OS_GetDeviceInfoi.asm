; =========================================================
; Game Engine Function: _Z16OS_GetDeviceInfoi
; Address            : 0x26BB78 - 0x26BBA2
; =========================================================

26BB78:  PUSH            {R4-R7,LR}
26BB7A:  ADD             R7, SP, #0xC
26BB7C:  PUSH.W          {R11}
26BB80:  MOV             R4, R0
26BB82:  LDR             R0, =(s_GetDeviceInfo_ptr - 0x26BB8A)
26BB84:  LDR             R5, =(dword_6D81DC - 0x26BB8C)
26BB86:  ADD             R0, PC; s_GetDeviceInfo_ptr
26BB88:  ADD             R5, PC; dword_6D81DC
26BB8A:  LDR             R6, [R0]; s_GetDeviceInfo
26BB8C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26BB90:  LDR             R1, [R5]
26BB92:  MOV             R3, R4
26BB94:  LDR             R2, [R6]
26BB96:  POP.W           {R11}
26BB9A:  POP.W           {R4-R7,LR}
26BB9E:  B.W             j_j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
