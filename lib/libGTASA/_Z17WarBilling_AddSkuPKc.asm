; =========================================================
; Game Engine Function: _Z17WarBilling_AddSkuPKc
; Address            : 0x26CE38 - 0x26CE76
; =========================================================

26CE38:  PUSH            {R4,R5,R7,LR}
26CE3A:  ADD             R7, SP, #8
26CE3C:  MOV             R4, R0
26CE3E:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26CE42:  MOV             R5, R0
26CE44:  MOV             R1, R4
26CE46:  LDR             R0, [R5]
26CE48:  LDR.W           R2, [R0,#0x29C]
26CE4C:  MOV             R0, R5
26CE4E:  BLX             R2
26CE50:  MOV             R4, R0
26CE52:  LDR             R0, =(s_addSku_ptr - 0x26CE5C)
26CE54:  LDR             R1, =(dword_6D81DC - 0x26CE5E)
26CE56:  MOV             R3, R4
26CE58:  ADD             R0, PC; s_addSku_ptr
26CE5A:  ADD             R1, PC; dword_6D81DC
26CE5C:  LDR             R0, [R0]; s_addSku
26CE5E:  LDR             R1, [R1]
26CE60:  LDR             R2, [R0]
26CE62:  MOV             R0, R5
26CE64:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26CE68:  LDR             R0, [R5]
26CE6A:  MOV             R1, R4
26CE6C:  LDR             R2, [R0,#0x5C]
26CE6E:  MOV             R0, R5
26CE70:  POP.W           {R4,R5,R7,LR}
26CE74:  BX              R2
