; =========================================================
; Game Engine Function: _ZN7_JNIEnv13CallIntMethodEP8_jobjectP10_jmethodIDz
; Address            : 0x27CAE2 - 0x27CB06
; =========================================================

27CAE2:  SUB             SP, SP, #4
27CAE4:  PUSH            {R7,LR}
27CAE6:  MOV             R7, SP
27CAE8:  SUB             SP, SP, #4
27CAEA:  STR             R3, [R7,#8]
27CAEC:  ADD.W           R3, R7, #8
27CAF0:  STR             R3, [SP,#0x10+var_10]
27CAF2:  LDR.W           R12, [R0]
27CAF6:  LDR.W           R12, [R12,#0xC8]
27CAFA:  BLX             R12
27CAFC:  ADD             SP, SP, #4
27CAFE:  POP.W           {R7,LR}
27CB02:  ADD             SP, SP, #4
27CB04:  BX              LR
