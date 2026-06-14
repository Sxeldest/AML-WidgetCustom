; =========================================================
; Game Engine Function: _Z24WarBilling_SetBillingKeyPKc
; Address            : 0x26CEF4 - 0x26CF32
; =========================================================

26CEF4:  PUSH            {R4,R5,R7,LR}
26CEF6:  ADD             R7, SP, #8
26CEF8:  MOV             R4, R0
26CEFA:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
26CEFE:  MOV             R5, R0
26CF00:  MOV             R1, R4
26CF02:  LDR             R0, [R5]
26CF04:  LDR.W           R2, [R0,#0x29C]
26CF08:  MOV             R0, R5
26CF0A:  BLX             R2
26CF0C:  MOV             R4, R0
26CF0E:  LDR             R0, =(s_setBillingKey_ptr - 0x26CF18)
26CF10:  LDR             R1, =(dword_6D81DC - 0x26CF1A)
26CF12:  MOV             R3, R4
26CF14:  ADD             R0, PC; s_setBillingKey_ptr
26CF16:  ADD             R1, PC; dword_6D81DC
26CF18:  LDR             R0, [R0]; s_setBillingKey
26CF1A:  LDR             R1, [R1]
26CF1C:  LDR             R2, [R0]
26CF1E:  MOV             R0, R5
26CF20:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
26CF24:  LDR             R0, [R5]
26CF26:  MOV             R1, R4
26CF28:  LDR             R2, [R0,#0x5C]
26CF2A:  MOV             R0, R5
26CF2C:  POP.W           {R4,R5,R7,LR}
26CF30:  BX              R2
