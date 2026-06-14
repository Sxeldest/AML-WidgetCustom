; =========================================================
; Game Engine Function: _Z17AND_GetDeviceInfoi
; Address            : 0x26BBAC - 0x26BBD6
; =========================================================

26BBAC:  PUSH            {R4-R7,LR}
26BBAE:  ADD             R7, SP, #0xC
26BBB0:  PUSH.W          {R11}
26BBB4:  MOV             R4, R0
26BBB6:  LDR             R0, =(s_GetDeviceInfo_ptr - 0x26BBBE)
26BBB8:  LDR             R5, =(dword_6D81DC - 0x26BBC0)
26BBBA:  ADD             R0, PC; s_GetDeviceInfo_ptr
26BBBC:  ADD             R5, PC; dword_6D81DC
26BBBE:  LDR             R6, [R0]; s_GetDeviceInfo
26BBC0:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26BBC4:  LDR             R1, [R5]
26BBC6:  MOV             R3, R4
26BBC8:  LDR             R2, [R6]
26BBCA:  POP.W           {R11}
26BBCE:  POP.W           {R4-R7,LR}
26BBD2:  B.W             j_j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
