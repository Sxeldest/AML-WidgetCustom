; =========================================================
; Game Engine Function: _Z16OS_SendStatEventPKcb
; Address            : 0x27ADC8 - 0x27AE16
; =========================================================

27ADC8:  PUSH            {R4-R7,LR}
27ADCA:  ADD             R7, SP, #0xC
27ADCC:  PUSH.W          {R11}
27ADD0:  SUB             SP, SP, #8
27ADD2:  MOV             R4, R1
27ADD4:  MOV             R5, R0
27ADD6:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27ADDA:  MOV             R6, R0
27ADDC:  MOV             R1, R5
27ADDE:  LDR             R0, [R6]
27ADE0:  LDR.W           R2, [R0,#0x29C]
27ADE4:  MOV             R0, R6
27ADE6:  BLX             R2
27ADE8:  MOV             R5, R0
27ADEA:  LDR             R0, =(s_SendStatEvent_ptr - 0x27ADF4)
27ADEC:  LDR             R1, =(dword_6D81DC - 0x27ADF6)
27ADEE:  MOV             R3, R5
27ADF0:  ADD             R0, PC; s_SendStatEvent_ptr
27ADF2:  ADD             R1, PC; dword_6D81DC
27ADF4:  LDR             R0, [R0]; s_SendStatEvent
27ADF6:  LDR             R1, [R1]
27ADF8:  LDR             R2, [R0]
27ADFA:  MOV             R0, R6
27ADFC:  STR             R4, [SP,#0x18+var_18]
27ADFE:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
27AE02:  LDR             R0, [R6]
27AE04:  MOV             R1, R5
27AE06:  LDR             R2, [R0,#0x5C]
27AE08:  MOV             R0, R6
27AE0A:  ADD             SP, SP, #8
27AE0C:  POP.W           {R11}
27AE10:  POP.W           {R4-R7,LR}
27AE14:  BX              R2
