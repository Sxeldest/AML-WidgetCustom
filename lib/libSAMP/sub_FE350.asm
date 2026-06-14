; =========================================================
; Game Engine Function: sub_FE350
; Address            : 0xFE350 - 0xFE380
; =========================================================

FE350:  PUSH            {R4,R5,R7,LR}
FE352:  ADD             R7, SP, #8
FE354:  MOV             R5, R1
FE356:  MOV             R4, R0
FE358:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
FE35C:  MOVS            R0, #0xC; unsigned int
FE35E:  BLX             j__Znwj; operator new(uint)
FE362:  LDR             R2, [R4,#4]
FE364:  ADDS            R1, R4, #4
FE366:  LDR             R3, [R4,#0xC]
FE368:  STRD.W          R2, R1, [R0]
FE36C:  ADDS            R1, R3, #1
FE36E:  STR             R0, [R4,#4]
FE370:  STR             R5, [R0,#8]
FE372:  STR             R0, [R2,#4]
FE374:  MOV             R0, R4
FE376:  STR             R1, [R4,#0xC]
FE378:  POP.W           {R4,R5,R7,LR}
FE37C:  B.W             sub_224304
