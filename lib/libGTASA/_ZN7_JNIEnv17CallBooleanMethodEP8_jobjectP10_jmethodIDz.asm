; =========================================================
; Game Engine Function: _ZN7_JNIEnv17CallBooleanMethodEP8_jobjectP10_jmethodIDz
; Address            : 0x27CAB4 - 0x27CAD8
; =========================================================

27CAB4:  SUB             SP, SP, #4
27CAB6:  PUSH            {R7,LR}
27CAB8:  MOV             R7, SP
27CABA:  SUB             SP, SP, #4
27CABC:  STR             R3, [R7,#8]
27CABE:  ADD.W           R3, R7, #8
27CAC2:  STR             R3, [SP,#0x10+var_10]
27CAC4:  LDR.W           R12, [R0]
27CAC8:  LDR.W           R12, [R12,#0x98]
27CACC:  BLX             R12
27CACE:  ADD             SP, SP, #4
27CAD0:  POP.W           {R7,LR}
27CAD4:  ADD             SP, SP, #4
27CAD6:  BX              LR
