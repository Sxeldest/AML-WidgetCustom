; =========================================================
; Game Engine Function: _Z25OS_ServiceAppCommandValuePKcS0_
; Address            : 0x27AF74 - 0x27AFDC
; =========================================================

27AF74:  PUSH            {R4-R7,LR}
27AF76:  ADD             R7, SP, #0xC
27AF78:  PUSH.W          {R8}
27AF7C:  SUB             SP, SP, #8
27AF7E:  MOV             R5, R1
27AF80:  MOV             R6, R0
27AF82:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27AF86:  MOV             R4, R0
27AF88:  MOV             R1, R6
27AF8A:  LDR             R0, [R4]
27AF8C:  LDR.W           R2, [R0,#0x29C]
27AF90:  MOV             R0, R4
27AF92:  BLX             R2
27AF94:  MOV             R6, R0
27AF96:  LDR             R0, [R4]
27AF98:  MOV             R1, R5
27AF9A:  LDR.W           R2, [R0,#0x29C]
27AF9E:  MOV             R0, R4
27AFA0:  BLX             R2
27AFA2:  MOV             R5, R0
27AFA4:  LDR             R0, =(s_ServiceAppCommandValue_ptr - 0x27AFAE)
27AFA6:  LDR             R1, =(dword_6D81DC - 0x27AFB2)
27AFA8:  MOV             R3, R6
27AFAA:  ADD             R0, PC; s_ServiceAppCommandValue_ptr
27AFAC:  STR             R5, [SP,#0x18+var_18]
27AFAE:  ADD             R1, PC; dword_6D81DC
27AFB0:  LDR             R0, [R0]; s_ServiceAppCommandValue
27AFB2:  LDR             R1, [R1]
27AFB4:  LDR             R2, [R0]
27AFB6:  MOV             R0, R4
27AFB8:  BLX             j__ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallIntMethod(_jobject *,_jmethodID *,...)
27AFBC:  MOV             R8, R0
27AFBE:  LDR             R0, [R4]
27AFC0:  MOV             R1, R6
27AFC2:  LDR             R2, [R0,#0x5C]
27AFC4:  MOV             R0, R4
27AFC6:  BLX             R2
27AFC8:  LDR             R0, [R4]
27AFCA:  MOV             R1, R5
27AFCC:  LDR             R2, [R0,#0x5C]
27AFCE:  MOV             R0, R4
27AFD0:  BLX             R2
27AFD2:  MOV             R0, R8
27AFD4:  ADD             SP, SP, #8
27AFD6:  POP.W           {R8}
27AFDA:  POP             {R4-R7,PC}
