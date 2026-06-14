; =========================================================
; Game Engine Function: _ZN7_JNIEnv15CallFloatMethodEP8_jobjectP10_jmethodIDz
; Address            : 0x27D2DE - 0x27D302
; =========================================================

27D2DE:  SUB             SP, SP, #4
27D2E0:  PUSH            {R7,LR}
27D2E2:  MOV             R7, SP
27D2E4:  SUB             SP, SP, #4
27D2E6:  STR             R3, [R7,#8]
27D2E8:  ADD.W           R3, R7, #8
27D2EC:  STR             R3, [SP,#0x10+var_10]
27D2EE:  LDR.W           R12, [R0]
27D2F2:  LDR.W           R12, [R12,#0xE0]
27D2F6:  BLX             R12
27D2F8:  ADD             SP, SP, #4
27D2FA:  POP.W           {R7,LR}
27D2FE:  ADD             SP, SP, #4
27D300:  BX              LR
