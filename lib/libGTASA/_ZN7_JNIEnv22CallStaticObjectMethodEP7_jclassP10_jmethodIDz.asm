; =========================================================
; Game Engine Function: _ZN7_JNIEnv22CallStaticObjectMethodEP7_jclassP10_jmethodIDz
; Address            : 0x27D2BA - 0x27D2DE
; =========================================================

27D2BA:  SUB             SP, SP, #4
27D2BC:  PUSH            {R7,LR}
27D2BE:  MOV             R7, SP
27D2C0:  SUB             SP, SP, #4
27D2C2:  STR             R3, [R7,#8]
27D2C4:  ADD.W           R3, R7, #8
27D2C8:  STR             R3, [SP,#0x10+var_10]
27D2CA:  LDR.W           R12, [R0]
27D2CE:  LDR.W           R12, [R12,#0x1CC]
27D2D2:  BLX             R12
27D2D4:  ADD             SP, SP, #4
27D2D6:  POP.W           {R7,LR}
27D2DA:  ADD             SP, SP, #4
27D2DC:  BX              LR
