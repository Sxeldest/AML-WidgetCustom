; =========================================================
; Game Engine Function: _Z21OS_SendStatEventValuePKcS0_S0_b
; Address            : 0x27AE68 - 0x27AEF0
; =========================================================

27AE68:  PUSH            {R4-R7,LR}
27AE6A:  ADD             R7, SP, #0xC
27AE6C:  PUSH.W          {R8-R10}
27AE70:  SUB             SP, SP, #0x10
27AE72:  MOV             R8, R3
27AE74:  MOV             R9, R2
27AE76:  MOV             R6, R1
27AE78:  MOV             R5, R0
27AE7A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27AE7E:  MOV             R4, R0
27AE80:  MOV             R1, R5
27AE82:  LDR             R0, [R4]
27AE84:  LDR.W           R2, [R0,#0x29C]
27AE88:  MOV             R0, R4
27AE8A:  BLX             R2
27AE8C:  MOV             R10, R0
27AE8E:  LDR             R0, [R4]
27AE90:  MOV             R1, R6
27AE92:  LDR.W           R2, [R0,#0x29C]
27AE96:  MOV             R0, R4
27AE98:  BLX             R2
27AE9A:  MOV             R6, R0
27AE9C:  LDR             R0, [R4]
27AE9E:  MOV             R1, R9
27AEA0:  LDR.W           R2, [R0,#0x29C]
27AEA4:  MOV             R0, R4
27AEA6:  BLX             R2
27AEA8:  MOV             R5, R0
27AEAA:  LDR             R0, =(s_SendStatEventParam_ptr - 0x27AEB4)
27AEAC:  LDR             R1, =(dword_6D81DC - 0x27AEB6)
27AEAE:  MOV             R3, R10
27AEB0:  ADD             R0, PC; s_SendStatEventParam_ptr
27AEB2:  ADD             R1, PC; dword_6D81DC
27AEB4:  LDR             R0, [R0]; s_SendStatEventParam
27AEB6:  LDR             R1, [R1]
27AEB8:  LDR             R2, [R0]
27AEBA:  MOV             R0, R4
27AEBC:  STRD.W          R6, R5, [SP,#0x28+var_28]
27AEC0:  STR.W           R8, [SP,#0x28+var_20]
27AEC4:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
27AEC8:  LDR             R0, [R4]
27AECA:  MOV             R1, R5
27AECC:  LDR             R2, [R0,#0x5C]
27AECE:  MOV             R0, R4
27AED0:  BLX             R2
27AED2:  LDR             R0, [R4]
27AED4:  MOV             R1, R6
27AED6:  LDR             R2, [R0,#0x5C]
27AED8:  MOV             R0, R4
27AEDA:  BLX             R2
27AEDC:  LDR             R0, [R4]
27AEDE:  MOV             R1, R10
27AEE0:  LDR             R2, [R0,#0x5C]
27AEE2:  MOV             R0, R4
27AEE4:  ADD             SP, SP, #0x10
27AEE6:  POP.W           {R8-R10}
27AEEA:  POP.W           {R4-R7,LR}
27AEEE:  BX              R2
