; =========================================================
; Game Engine Function: _Z18CdStreamInitThreadv
; Address            : 0x2C9754 - 0x2C980E
; =========================================================

2C9754:  PUSH            {R4-R7,LR}
2C9756:  ADD             R7, SP, #0xC
2C9758:  PUSH.W          {R8,R9,R11}
2C975C:  SUB             SP, SP, #8
2C975E:  LDR             R0, =(dword_70BE3C - 0x2C9764)
2C9760:  ADD             R0, PC; dword_70BE3C
2C9762:  LDR             R6, [R0]
2C9764:  CMP             R6, #1
2C9766:  BLT             loc_2C97A4
2C9768:  LDR.W           R9, =(dword_70BE40 - 0x2C9778)
2C976C:  MOVS            R4, #0
2C976E:  LDR.W           R8, =(dword_70BE3C - 0x2C977A)
2C9772:  MOVS            R5, #0x14
2C9774:  ADD             R9, PC; dword_70BE40
2C9776:  ADD             R8, PC; dword_70BE3C
2C9778:  BLX             j__Z18OS_SemaphoreCreatev; OS_SemaphoreCreate(void)
2C977C:  LDR.W           R1, [R9]
2C9780:  STR             R0, [R1,R5]
2C9782:  MOVS            R0, #0; char *
2C9784:  BLX             j__Z14OS_MutexCreatePKc; OS_MutexCreate(char const*)
2C9788:  LDR.W           R2, [R9]
2C978C:  CMP             R0, #0
2C978E:  LDR             R1, [R2,R5]
2C9790:  ADD             R2, R5
2C9792:  STR             R0, [R2,#4]
2C9794:  BEQ             loc_2C9806
2C9796:  CBZ             R1, loc_2C9806
2C9798:  LDR.W           R6, [R8]
2C979C:  ADDS            R4, #1
2C979E:  ADDS            R5, #0x20 ; ' '
2C97A0:  CMP             R4, R6
2C97A2:  BLT             loc_2C9778
2C97A4:  MOVS            R0, #4
2C97A6:  ADD.W           R4, R0, R6,LSL#2
2C97AA:  MOV             R0, R4; byte_count
2C97AC:  BLX             malloc
2C97B0:  LDR             R5, =(dword_70BE44 - 0x2C97B8)
2C97B2:  MOV             R1, R4
2C97B4:  ADD             R5, PC; dword_70BE44
2C97B6:  STR             R0, [R5]
2C97B8:  BLX             j___aeabi_memclr8_0
2C97BC:  LDR             R0, =(cdSemaphore_ptr - 0x2C97CA)
2C97BE:  MOV.W           R8, #0
2C97C2:  STRD.W          R8, R8, [R5,#(dword_70BE48 - 0x70BE44)]
2C97C6:  ADD             R0, PC; cdSemaphore_ptr
2C97C8:  LDR             R4, [R0]; cdSemaphore
2C97CA:  ADDS            R0, R6, #1
2C97CC:  STR             R0, [R5,#(dword_70BE50 - 0x70BE44)]
2C97CE:  BLX             j__Z18OS_SemaphoreCreatev; OS_SemaphoreCreate(void)
2C97D2:  CMP             R0, #0
2C97D4:  STR             R0, [R4]
2C97D6:  BEQ             loc_2C9806
2C97D8:  LDR             R0, =(_Z14CdStreamThreadPv_ptr - 0x2C97E6)
2C97DA:  MOVS            R1, #3
2C97DC:  ADR             R3, aCdstream; "CdStream"
2C97DE:  STRD.W          R8, R1, [SP,#0x20+var_20]
2C97E2:  ADD             R0, PC; _Z14CdStreamThreadPv_ptr
2C97E4:  MOVS            R1, #0
2C97E6:  MOVS            R2, #3
2C97E8:  LDR             R0, [R0]; CdStreamThread(void *)
2C97EA:  BLX             j__Z15OS_ThreadLaunchPFjPvES_jPKci16OSThreadPriority; OS_ThreadLaunch(uint (*)(void *),void *,uint,char const*,int,OSThreadPriority)
2C97EE:  LDR             R1, =(dword_70BE54 - 0x2C97F6)
2C97F0:  CMP             R0, #0
2C97F2:  ADD             R1, PC; dword_70BE54
2C97F4:  STR             R0, [R1]
2C97F6:  BEQ             loc_2C9806
2C97F8:  ADD             SP, SP, #8
2C97FA:  POP.W           {R8,R9,R11}
2C97FE:  POP.W           {R4-R7,LR}
2C9802:  B.W             j_j__Z16StartTexdbThreadv; j_StartTexdbThread(void)
2C9806:  ADD             SP, SP, #8
2C9808:  POP.W           {R8,R9,R11}
2C980C:  POP             {R4-R7,PC}
