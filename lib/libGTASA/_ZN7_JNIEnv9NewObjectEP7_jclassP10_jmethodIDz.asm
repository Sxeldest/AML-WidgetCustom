; =========================================================
; Game Engine Function: _ZN7_JNIEnv9NewObjectEP7_jclassP10_jmethodIDz
; Address            : 0x27D302 - 0x27D326
; =========================================================

27D302:  SUB             SP, SP, #4
27D304:  PUSH            {R7,LR}
27D306:  MOV             R7, SP
27D308:  SUB             SP, SP, #4
27D30A:  STR             R3, [R7,#8]
27D30C:  ADD.W           R3, R7, #8
27D310:  STR             R3, [SP,#0x10+var_10]
27D312:  LDR.W           R12, [R0]
27D316:  LDR.W           R12, [R12,#0x74]
27D31A:  BLX             R12
27D31C:  ADD             SP, SP, #4
27D31E:  POP.W           {R7,LR}
27D322:  ADD             SP, SP, #4
27D324:  BX              LR
