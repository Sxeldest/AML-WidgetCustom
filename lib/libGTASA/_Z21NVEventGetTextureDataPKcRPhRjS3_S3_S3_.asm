; =========================================================
; Game Engine Function: _Z21NVEventGetTextureDataPKcRPhRjS3_S3_S3_
; Address            : 0x271248 - 0x2712F4
; =========================================================

271248:  PUSH            {R4-R7,LR}
27124A:  ADD             R7, SP, #0xC
27124C:  PUSH.W          {R8-R10}
271250:  MOV             R9, R3
271252:  MOV             R10, R2
271254:  MOV             R8, R1
271256:  MOV             R4, R0
271258:  BLX             j__Z24NVThreadGetCurrentJNIEnvv; NVThreadGetCurrentJNIEnv(void)
27125C:  MOV             R5, R0
27125E:  MOV             R1, R4
271260:  LDR             R0, [R5]
271262:  LDR.W           R2, [R0,#0x29C]
271266:  MOV             R0, R5
271268:  BLX             R2
27126A:  LDR             R1, =(dword_6D81DC - 0x271274)
27126C:  MOV             R3, R0
27126E:  LDR             R0, =(dword_6D81F0 - 0x271276)
271270:  ADD             R1, PC; dword_6D81DC
271272:  ADD             R0, PC; dword_6D81F0
271274:  LDR             R1, [R1]
271276:  LDR             R2, [R0]
271278:  MOV             R0, R5
27127A:  BLX             j__ZN7_JNIEnv16CallObjectMethodEP8_jobjectP10_jmethodIDz; _JNIEnv::CallObjectMethod(_jobject *,_jmethodID *,...)
27127E:  MOV             R4, R0
271280:  LDR             R0, =(dword_6D81F4 - 0x271288)
271282:  LDR             R1, [R5]
271284:  ADD             R0, PC; dword_6D81F4
271286:  LDR             R2, [R0]
271288:  MOV             R0, R5
27128A:  LDR.W           R3, [R1,#0x17C]
27128E:  MOV             R1, R4
271290:  BLX             R3
271292:  MOV             R6, R0
271294:  LDR             R0, =(dword_6D81F8 - 0x27129C)
271296:  LDR             R1, [R5]
271298:  ADD             R0, PC; dword_6D81F8
27129A:  LDR             R2, [R0]
27129C:  MOV             R0, R5
27129E:  LDR.W           R3, [R1,#0x190]
2712A2:  MOV             R1, R4
2712A4:  BLX             R3
2712A6:  LDR             R1, =(dword_6D81FC - 0x2712B2)
2712A8:  STR.W           R0, [R10]
2712AC:  LDR             R0, [R5]
2712AE:  ADD             R1, PC; dword_6D81FC
2712B0:  LDR             R2, [R1]
2712B2:  MOV             R1, R4
2712B4:  LDR.W           R3, [R0,#0x190]
2712B8:  MOV             R0, R5
2712BA:  BLX             R3
2712BC:  LDRD.W          R1, R2, [R7,#arg_0]
2712C0:  STR.W           R0, [R9]
2712C4:  MOVW            R0, #0x1908
2712C8:  STR             R0, [R1]
2712CA:  MOVW            R0, #0x1401
2712CE:  STR             R0, [R2]
2712D0:  MOV             R1, R6
2712D2:  LDR             R0, [R5]
2712D4:  MOVS            R2, #0
2712D6:  LDR.W           R3, [R0,#0x2E0]
2712DA:  MOV             R0, R5
2712DC:  BLX             R3
2712DE:  STR.W           R0, [R8]
2712E2:  MOV             R1, R4
2712E4:  LDR             R0, [R5]
2712E6:  LDR             R2, [R0,#0x5C]
2712E8:  MOV             R0, R5
2712EA:  BLX             R2
2712EC:  MOV             R0, R6
2712EE:  POP.W           {R8-R10}
2712F2:  POP             {R4-R7,PC}
