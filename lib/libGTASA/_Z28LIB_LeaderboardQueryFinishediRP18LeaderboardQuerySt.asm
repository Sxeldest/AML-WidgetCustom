; =========================================================
; Game Engine Function: _Z28LIB_LeaderboardQueryFinishediRP18LeaderboardQuerySt
; Address            : 0x26F1DC - 0x26F320
; =========================================================

26F1DC:  PUSH            {R4-R7,LR}
26F1DE:  ADD             R7, SP, #0xC
26F1E0:  PUSH.W          {R8-R11}
26F1E4:  SUB             SP, SP, #4
26F1E6:  MOV             R9, R0
26F1E8:  LDR             R0, =(gameServiceMutex_ptr - 0x26F1F0)
26F1EA:  MOV             R8, R1
26F1EC:  ADD             R0, PC; gameServiceMutex_ptr
26F1EE:  LDR             R0, [R0]; gameServiceMutex
26F1F0:  LDR             R0, [R0]; mutex
26F1F2:  BLX             pthread_mutex_lock
26F1F6:  LDR             R0, =(queries_ptr - 0x26F1FC)
26F1F8:  ADD             R0, PC; queries_ptr
26F1FA:  LDR             R0, [R0]; queries
26F1FC:  LDR             R0, [R0,#(dword_6D7158 - 0x6D7154)]
26F1FE:  CBZ             R0, loc_26F220
26F200:  LDR             R1, =(queries_ptr - 0x26F20A)
26F202:  MOVS            R6, #0
26F204:  MOVS            R4, #0
26F206:  ADD             R1, PC; queries_ptr
26F208:  LDR             R1, [R1]; queries
26F20A:  LDR.W           R10, [R1,#(dword_6D715C - 0x6D7154)]
26F20E:  LDR.W           R1, [R10,R4,LSL#2]
26F212:  LDR             R2, [R1]
26F214:  CMP             R2, R9
26F216:  BEQ             loc_26F224
26F218:  ADDS            R4, #1
26F21A:  SUBS            R6, #4
26F21C:  CMP             R4, R0
26F21E:  BCC             loc_26F20E
26F220:  MOVS            R4, #0
26F222:  B               loc_26F30A
26F224:  LDR             R0, [R1,#4]
26F226:  CMP             R0, #1
26F228:  BLT             loc_26F2EA
26F22A:  MOVS            R0, #0x10; unsigned int
26F22C:  BLX             _Znwj; operator new(uint)
26F230:  MOV             R5, R0
26F232:  LDR             R0, =(queries_ptr - 0x26F23C)
26F234:  MOV.W           R11, #4
26F238:  ADD             R0, PC; queries_ptr
26F23A:  LDR.W           R9, [R0]; queries
26F23E:  MOVS            R0, #0
26F240:  STRD.W          R0, R0, [R5,#4]
26F244:  STR             R0, [R5,#0xC]
26F246:  STR.W           R5, [R8]
26F24A:  LDR.W           R0, [R9,#(dword_6D715C - 0x6D7154)]
26F24E:  LDR.W           R1, [R0,R4,LSL#2]
26F252:  LDR             R1, [R1,#4]
26F254:  STR             R1, [R5,#4]
26F256:  LDR.W           R0, [R0,R4,LSL#2]
26F25A:  LDR             R0, [R0,#4]
26F25C:  UMULL.W         R0, R1, R0, R11
26F260:  CMP             R1, #0
26F262:  IT NE
26F264:  MOVNE           R1, #1
26F266:  CMP             R1, #0
26F268:  IT NE
26F26A:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
26F26E:  BLX             _Znaj; operator new[](uint)
26F272:  LDR.W           R10, [R9,#(dword_6D715C - 0x6D7154)]
26F276:  STR             R0, [R5,#8]
26F278:  LDR.W           R0, [R10,R4,LSL#2]
26F27C:  LDR             R0, [R0,#4]
26F27E:  UMULL.W         R0, R1, R0, R11
26F282:  CMP             R1, #0
26F284:  IT NE
26F286:  MOVNE           R1, #1
26F288:  CMP             R1, #0
26F28A:  IT NE
26F28C:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
26F290:  BLX             _Znaj; operator new[](uint)
26F294:  LDR.W           R1, [R8]
26F298:  STR             R0, [R1,#0xC]
26F29A:  LDR.W           R0, [R10,R4,LSL#2]
26F29E:  LDR             R1, [R0,#4]
26F2A0:  CMP             R1, #1
26F2A2:  BLT             loc_26F2EA
26F2A4:  LDR             R1, =(queries_ptr - 0x26F2AC)
26F2A6:  MOVS            R5, #0
26F2A8:  ADD             R1, PC; queries_ptr
26F2AA:  LDR.W           R9, [R1]; queries
26F2AE:  LDR.W           R1, [R8]
26F2B2:  LDR             R0, [R0,#8]
26F2B4:  LDR             R1, [R1,#8]
26F2B6:  LDR.W           R0, [R0,R5,LSL#2]
26F2BA:  STR.W           R0, [R1,R5,LSL#2]
26F2BE:  LDR.W           R0, [R9,#(dword_6D715C - 0x6D7154)]
26F2C2:  LDR.W           R0, [R0,R4,LSL#2]
26F2C6:  LDR             R0, [R0,#0xC]
26F2C8:  LDR.W           R0, [R0,R5,LSL#2]; char *
26F2CC:  BLX             j_strdup
26F2D0:  LDR.W           R1, [R8]
26F2D4:  LDR             R1, [R1,#0xC]
26F2D6:  STR.W           R0, [R1,R5,LSL#2]
26F2DA:  ADDS            R5, #1
26F2DC:  LDR.W           R10, [R9,#(dword_6D715C - 0x6D7154)]
26F2E0:  LDR.W           R0, [R10,R4,LSL#2]
26F2E4:  LDR             R1, [R0,#4]
26F2E6:  CMP             R5, R1
26F2E8:  BLT             loc_26F2AE
26F2EA:  LDR             R0, =(queries_ptr - 0x26F2F0)
26F2EC:  ADD             R0, PC; queries_ptr
26F2EE:  LDR             R4, [R0]; queries
26F2F0:  SUB.W           R0, R10, R6; dest
26F2F4:  ADDS            R1, R0, #4; src
26F2F6:  LDR             R2, [R4,#(dword_6D7158 - 0x6D7154)]
26F2F8:  ADD.W           R2, R6, R2,LSL#2
26F2FC:  SUBS            R2, #4; n
26F2FE:  BLX             memmove_1
26F302:  LDR             R0, [R4,#(dword_6D7158 - 0x6D7154)]
26F304:  SUBS            R0, #1
26F306:  STR             R0, [R4,#(dword_6D7158 - 0x6D7154)]
26F308:  MOVS            R4, #1
26F30A:  LDR             R0, =(gameServiceMutex_ptr - 0x26F310)
26F30C:  ADD             R0, PC; gameServiceMutex_ptr
26F30E:  LDR             R0, [R0]; gameServiceMutex
26F310:  LDR             R0, [R0]; mutex
26F312:  BLX             pthread_mutex_unlock
26F316:  MOV             R0, R4
26F318:  ADD             SP, SP, #4
26F31A:  POP.W           {R8-R11}
26F31E:  POP             {R4-R7,PC}
