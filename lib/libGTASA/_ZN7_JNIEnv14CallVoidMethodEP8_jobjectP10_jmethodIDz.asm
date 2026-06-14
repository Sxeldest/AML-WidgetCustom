; =========================================================
; Game Engine Function: _ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz
; Address            : 0x27CA90 - 0x27CAB4
; =========================================================

27CA90:  SUB             SP, SP, #4
27CA92:  PUSH            {R7,LR}
27CA94:  MOV             R7, SP
27CA96:  SUB             SP, SP, #4
27CA98:  STR             R3, [R7,#8]
27CA9A:  ADD.W           R3, R7, #8
27CA9E:  STR             R3, [SP,#0x10+var_10]
27CAA0:  LDR.W           R12, [R0]
27CAA4:  LDR.W           R12, [R12,#0xF8]
27CAA8:  BLX             R12
27CAAA:  ADD             SP, SP, #4
27CAAC:  POP.W           {R7,LR}
27CAB0:  ADD             SP, SP, #4
27CAB2:  BX              LR
