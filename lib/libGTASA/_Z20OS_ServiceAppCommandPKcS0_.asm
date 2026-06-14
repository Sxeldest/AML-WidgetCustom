; =========================================================
; Game Engine Function: _Z20OS_ServiceAppCommandPKcS0_
; Address            : 0x27AEFC - 0x27AF6A
; =========================================================

27AEFC:  PUSH            {R4-R7,LR}
27AEFE:  ADD             R7, SP, #0xC
27AF00:  PUSH.W          {R8}
27AF04:  SUB             SP, SP, #8
27AF06:  MOV             R5, R1
27AF08:  MOV             R6, R0
27AF0A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27AF0E:  MOV             R4, R0
27AF10:  MOV             R1, R6
27AF12:  LDR             R0, [R4]
27AF14:  LDR.W           R2, [R0,#0x29C]
27AF18:  MOV             R0, R4
27AF1A:  BLX             R2
27AF1C:  MOV             R8, R0
27AF1E:  LDR             R0, [R4]
27AF20:  MOV             R1, R5
27AF22:  LDR.W           R2, [R0,#0x29C]
27AF26:  MOV             R0, R4
27AF28:  BLX             R2
27AF2A:  MOV             R5, R0
27AF2C:  LDR             R0, =(s_ServiceAppCommand_ptr - 0x27AF36)
27AF2E:  LDR             R1, =(dword_6D81DC - 0x27AF3A)
27AF30:  MOV             R3, R8
27AF32:  ADD             R0, PC; s_ServiceAppCommand_ptr
27AF34:  STR             R5, [SP,#0x18+var_18]
27AF36:  ADD             R1, PC; dword_6D81DC
27AF38:  LDR             R0, [R0]; s_ServiceAppCommand
27AF3A:  LDR             R1, [R1]
27AF3C:  LDR             R2, [R0]
27AF3E:  MOV             R0, R4
27AF40:  BLX             j__ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallBooleanMethod(_jobject *,_jmethodID *,...)
27AF44:  MOV             R6, R0
27AF46:  LDR             R0, [R4]
27AF48:  MOV             R1, R8
27AF4A:  LDR             R2, [R0,#0x5C]
27AF4C:  MOV             R0, R4
27AF4E:  BLX             R2
27AF50:  LDR             R0, [R4]
27AF52:  MOV             R1, R5
27AF54:  LDR             R2, [R0,#0x5C]
27AF56:  MOV             R0, R4
27AF58:  BLX             R2
27AF5A:  CMP             R6, #0
27AF5C:  IT NE
27AF5E:  MOVNE           R6, #1
27AF60:  MOV             R0, R6
27AF62:  ADD             SP, SP, #8
27AF64:  POP.W           {R8}
27AF68:  POP             {R4-R7,PC}
