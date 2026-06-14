; =========================================================
; Game Engine Function: _Z15NVEventLoadFilePKc
; Address            : 0x271190 - 0x271238
; =========================================================

271190:  PUSH            {R4-R7,LR}
271192:  ADD             R7, SP, #0xC
271194:  PUSH.W          {R8-R11}
271198:  SUB             SP, SP, #4
27119A:  MOV             R5, R0
27119C:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
2711A0:  MOV             R4, R0
2711A2:  MOV             R1, R5
2711A4:  LDR             R0, [R4]
2711A6:  LDR.W           R2, [R0,#0x29C]
2711AA:  MOV             R0, R4
2711AC:  BLX             R2
2711AE:  LDR             R1, =(dword_6D81DC - 0x2711B8)
2711B0:  MOV             R3, R0
2711B2:  LDR             R0, =(dword_6D81E4 - 0x2711BA)
2711B4:  ADD             R1, PC; dword_6D81DC
2711B6:  ADD             R0, PC; dword_6D81E4
2711B8:  LDR             R1, [R1]
2711BA:  LDR             R2, [R0]
2711BC:  MOV             R0, R4
2711BE:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
2711C2:  MOV             R9, R0
2711C4:  LDR             R0, =(dword_6D81E8 - 0x2711CC)
2711C6:  LDR             R1, [R4]
2711C8:  ADD             R0, PC; dword_6D81E8
2711CA:  LDR             R2, [R0]
2711CC:  MOV             R0, R4
2711CE:  LDR.W           R3, [R1,#0x17C]
2711D2:  MOV             R1, R9
2711D4:  BLX             R3
2711D6:  MOV             R8, R0
2711D8:  LDR             R0, =(dword_6D81EC - 0x2711E0)
2711DA:  LDR             R1, [R4]
2711DC:  ADD             R0, PC; dword_6D81EC
2711DE:  LDR             R2, [R0]
2711E0:  MOV             R0, R4
2711E2:  LDR.W           R3, [R1,#0x190]
2711E6:  MOV             R1, R9
2711E8:  BLX             R3
2711EA:  MOV             R6, R0
2711EC:  LDR             R0, [R4]
2711EE:  MOV             R1, R8
2711F0:  MOVS            R2, #0
2711F2:  MOV.W           R11, #0
2711F6:  LDR.W           R3, [R0,#0x2E0]
2711FA:  MOV             R0, R4
2711FC:  BLX             R3
2711FE:  MOV             R10, R0
271200:  ADDS            R0, R6, #1; unsigned int
271202:  BLX             _Znaj; operator new[](uint)
271206:  MOV             R1, R10; void *
271208:  MOV             R2, R6; size_t
27120A:  MOV             R5, R0
27120C:  BLX             memcpy_1
271210:  STRB.W          R11, [R5,R6]
271214:  MOV             R1, R8
271216:  MOV             R2, R10
271218:  LDR             R0, [R4]
27121A:  MOVS            R3, #0
27121C:  LDR.W           R6, [R0,#0x300]
271220:  MOV             R0, R4
271222:  BLX             R6
271224:  LDR             R0, [R4]
271226:  MOV             R1, R9
271228:  LDR             R2, [R0,#0x5C]
27122A:  MOV             R0, R4
27122C:  BLX             R2
27122E:  MOV             R0, R5
271230:  ADD             SP, SP, #4
271232:  POP.W           {R8-R11}
271236:  POP             {R4-R7,PC}
