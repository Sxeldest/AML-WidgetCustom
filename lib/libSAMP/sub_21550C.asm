; =========================================================
; Game Engine Function: sub_21550C
; Address            : 0x21550C - 0x215572
; =========================================================

21550C:  PUSH            {R4-R7,LR}
21550E:  ADD             R7, SP, #0xC
215510:  PUSH.W          {R11}
215514:  MOV             R4, R0
215516:  MOVW            R0, #0x1198
21551A:  ADDS            R5, R4, R0
21551C:  ADD.W           R6, R4, #0x198
215520:  LDR             R0, [R5]; ptr
215522:  CBZ             R0, loc_215532
215524:  LDR             R1, [R0]
215526:  CMP             R6, R0
215528:  STR             R1, [R5]
21552A:  BEQ             loc_215520
21552C:  BLX             free
215530:  B               loc_215520
215532:  MOVS            R0, #0
215534:  ADD.W           R1, R4, #0x174
215538:  STRD.W          R0, R0, [R4,#0x198]
21553C:  LDR.W           R0, [R4,#0x168]; ptr
215540:  STR             R6, [R5]
215542:  CMP             R0, R1
215544:  IT NE
215546:  BLXNE           free
21554A:  ADD.W           R0, R4, #0x14C
21554E:  BL              sub_215572
215552:  ADD.W           R0, R4, #0x120
215556:  BL              sub_21558A
21555A:  ADD.W           R0, R4, #0x94
21555E:  BL              sub_2155A2
215562:  ADD.W           R0, R4, #8
215566:  BL              sub_2155A2
21556A:  MOV             R0, R4
21556C:  POP.W           {R11}
215570:  POP             {R4-R7,PC}
