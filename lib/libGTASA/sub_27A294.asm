; =========================================================
; Game Engine Function: sub_27A294
; Address            : 0x27A294 - 0x27A31A
; =========================================================

27A294:  PUSH            {R4-R7,LR}
27A296:  ADD             R7, SP, #0xC
27A298:  PUSH.W          {R8-R11}
27A29C:  SUB             SP, SP, #4
27A29E:  MOV             R4, R3
27A2A0:  MOV             R9, R2
27A2A2:  MOV             R8, R1
27A2A4:  MOV             R6, R0
27A2A6:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27A2AA:  MOV             R5, R0
27A2AC:  MOV             R1, R4
27A2AE:  LDR             R0, [R5]
27A2B0:  LDR.W           R2, [R0,#0x29C]
27A2B4:  MOV             R0, R5
27A2B6:  BLX             R2
27A2B8:  MOV             R3, R0
27A2BA:  LDR             R0, =(dword_6DF178 - 0x27A2C2)
27A2BC:  MOV             R2, R6
27A2BE:  ADD             R0, PC; dword_6DF178
27A2C0:  LDR             R1, [R0]
27A2C2:  MOV             R0, R5
27A2C4:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
27A2C8:  MOV             R10, R0
27A2CA:  MOV.W           R11, #0
27A2CE:  CMP.W           R10, #0
27A2D2:  BEQ             loc_27A30C
27A2D4:  LDR             R0, [R5]
27A2D6:  MOV             R1, R10
27A2D8:  MOVS            R2, #0
27A2DA:  LDR.W           R3, [R0,#0x2A4]
27A2DE:  MOV             R0, R5
27A2E0:  BLX             R3
27A2E2:  MOV             R4, R0
27A2E4:  BLX             strlen
27A2E8:  MOV             R6, R0
27A2EA:  CMP             R6, R9
27A2EC:  IT GE
27A2EE:  SUBGE.W         R6, R9, #1
27A2F2:  MOV             R0, R8; char *
27A2F4:  MOV             R1, R4; char *
27A2F6:  MOV             R2, R6; size_t
27A2F8:  BLX             strncpy
27A2FC:  LDR             R0, [R5]
27A2FE:  MOV             R1, R10
27A300:  MOV             R2, R4
27A302:  LDR.W           R3, [R0,#0x2A8]
27A306:  MOV             R0, R5
27A308:  BLX             R3
27A30A:  B               loc_27A30E
27A30C:  MOVS            R6, #0
27A30E:  STRB.W          R11, [R8,R6]
27A312:  ADD             SP, SP, #4
27A314:  POP.W           {R8-R11}
27A318:  POP             {R4-R7,PC}
