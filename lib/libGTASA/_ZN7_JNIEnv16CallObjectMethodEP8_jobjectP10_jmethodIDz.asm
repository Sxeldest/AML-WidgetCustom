; =========================================================
; Game Engine Function: _ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz
; Address            : 0x27D296 - 0x27D2BA
; =========================================================

27D296:  SUB             SP, SP, #4
27D298:  PUSH            {R7,LR}
27D29A:  MOV             R7, SP
27D29C:  SUB             SP, SP, #4
27D29E:  STR             R3, [R7,#8]
27D2A0:  ADD.W           R3, R7, #8
27D2A4:  STR             R3, [SP,#0x10+var_10]
27D2A6:  LDR.W           R12, [R0]
27D2AA:  LDR.W           R12, [R12,#0x8C]
27D2AE:  BLX             R12
27D2B0:  ADD             SP, SP, #4
27D2B2:  POP.W           {R7,LR}
27D2B6:  ADD             SP, SP, #4
27D2B8:  BX              LR
