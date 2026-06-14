; =========================================================
; Game Engine Function: _Z22NvUtilSetLocalAppValuePKcS0_
; Address            : 0x27A35C - 0x27A3A8
; =========================================================

27A35C:  PUSH            {R4-R7,LR}
27A35E:  ADD             R7, SP, #0xC
27A360:  PUSH.W          {R11}
27A364:  SUB             SP, SP, #8
27A366:  MOV             R4, R1
27A368:  MOV             R5, R0
27A36A:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27A36E:  MOV             R6, R0
27A370:  MOV             R1, R5
27A372:  LDR             R0, [R6]
27A374:  LDR.W           R2, [R0,#0x29C]
27A378:  MOV             R0, R6
27A37A:  BLX             R2
27A37C:  MOV             R5, R0
27A37E:  LDR             R0, [R6]
27A380:  MOV             R1, R4
27A382:  LDR.W           R2, [R0,#0x29C]
27A386:  MOV             R0, R6
27A388:  BLX             R2
27A38A:  LDR             R1, =(dword_6DF170 - 0x27A392)
27A38C:  LDR             R3, =(dword_6DF178 - 0x27A396)
27A38E:  ADD             R1, PC; dword_6DF170
27A390:  STR             R0, [SP,#0x18+var_18]
27A392:  ADD             R3, PC; dword_6DF178
27A394:  MOV             R0, R6
27A396:  LDR             R2, [R1]
27A398:  LDR             R1, [R3]
27A39A:  MOV             R3, R5
27A39C:  BLX             j__ZN7_JNIEnv14CallVoidMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallVoidMethod(_jobject *,_jmethodID *,...)
27A3A0:  ADD             SP, SP, #8
27A3A2:  POP.W           {R11}
27A3A6:  POP             {R4-R7,PC}
