; =========================================================
; Game Engine Function: sub_1009B0
; Address            : 0x1009B0 - 0x1009F2
; =========================================================

1009B0:  PUSH            {R4,R6,R7,LR}
1009B2:  ADD             R7, SP, #8
1009B4:  SUB             SP, SP, #8
1009B6:  MOV             R4, R0
1009B8:  STR             R0, [SP,#0x10+var_C]
1009BA:  BLX             j__ZNSt6__ndk119__thread_local_dataEv; std::__thread_local_data(void)
1009BE:  LDR             R1, [R4]; pointer
1009C0:  MOVS            R2, #0
1009C2:  LDR             R0, [R0]; key
1009C4:  STR             R2, [R4]
1009C6:  BLX             pthread_setspecific
1009CA:  LDR             R0, [R4,#0xC]
1009CC:  LDRD.W          R1, R2, [R4,#4]
1009D0:  ADD.W           R0, R0, R2,ASR#1
1009D4:  LSLS            R2, R2, #0x1F
1009D6:  ITT NE
1009D8:  LDRNE           R2, [R0]
1009DA:  LDRNE           R1, [R2,R1]
1009DC:  BLX             R1
1009DE:  MOV             R0, R4
1009E0:  MOVS            R1, #0
1009E2:  BL              sub_100A1C
1009E6:  MOV             R0, R4; void *
1009E8:  BLX             j__ZdlPv; operator delete(void *)
1009EC:  MOVS            R0, #0
1009EE:  ADD             SP, SP, #8
1009F0:  POP             {R4,R6,R7,PC}
