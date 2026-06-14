; =========================================================
; Game Engine Function: _Z14AND_DeviceTypev
; Address            : 0x26A470 - 0x26A48E
; =========================================================

26A470:  PUSH            {R4,R5,R7,LR}
26A472:  ADD             R7, SP, #8
26A474:  LDR             R0, =(s_GetDeviceType_ptr - 0x26A47C)
26A476:  LDR             R4, =(dword_6D81DC - 0x26A47E)
26A478:  ADD             R0, PC; s_GetDeviceType_ptr
26A47A:  ADD             R4, PC; dword_6D81DC
26A47C:  LDR             R5, [R0]; s_GetDeviceType
26A47E:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26A482:  LDR             R1, [R4]
26A484:  LDR             R2, [R5]
26A486:  POP.W           {R4,R5,R7,LR}
26A48A:  B.W             j_j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; j__JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
