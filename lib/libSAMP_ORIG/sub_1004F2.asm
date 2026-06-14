; =========================================================
; Game Engine Function: sub_1004F2
; Address            : 0x1004F2 - 0x100566
; =========================================================

1004F2:  PUSH            {R4-R7,LR}
1004F4:  ADD             R7, SP, #0xC
1004F6:  PUSH.W          {R8-R10}
1004FA:  MOV             R4, R0
1004FC:  LDRD.W          R6, R0, [R0,#4]
100500:  MOV             R8, R1
100502:  CMP             R6, R0
100504:  BNE             loc_100552
100506:  MOV             R0, R4
100508:  LDR.W           R9, [R0],#0xC
10050C:  SUB.W           R10, R6, R9
100510:  CMP             R9, R0
100512:  BEQ             loc_100526
100514:  MOV.W           R1, R10,LSL#1; size
100518:  MOV             R0, R9; ptr
10051A:  BLX             realloc
10051E:  MOV             R5, R0
100520:  STR             R0, [R4]
100522:  CBNZ            R0, loc_10053E
100524:  B               loc_100562
100526:  MOV.W           R0, R10,LSL#1; size
10052A:  BLX             malloc
10052E:  CBZ             R0, loc_100562
100530:  MOV             R5, R0
100532:  MOV             R0, R9; src
100534:  MOV             R1, R6; int
100536:  MOV             R2, R5; dest
100538:  BL              sub_1006C6
10053C:  STR             R5, [R4]
10053E:  MOV.W           R0, R10,ASR#1
100542:  MOV.W           R1, R10,ASR#2
100546:  ADD.W           R6, R5, R1,LSL#2
10054A:  ADD.W           R0, R5, R0,LSL#2
10054E:  STRD.W          R6, R0, [R4,#4]
100552:  LDR.W           R0, [R8]
100556:  ADDS            R1, R6, #4
100558:  STR             R1, [R4,#4]
10055A:  STR             R0, [R6]
10055C:  POP.W           {R8-R10}
100560:  POP             {R4-R7,PC}
100562:  BLX             j__ZSt9terminatev; std::terminate(void)
