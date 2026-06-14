; =========================================================
; Game Engine Function: sub_10E554
; Address            : 0x10E554 - 0x10E576
; =========================================================

10E554:  PUSH            {R4,R6,R7,LR}
10E556:  ADD             R7, SP, #8
10E558:  LDR             R4, =(unk_263270 - 0x10E560)
10E55A:  MOVS            R1, #2
10E55C:  ADD             R4, PC; unk_263270
10E55E:  MOV             R0, R4
10E560:  BL              sub_10D818
10E564:  LDR             R0, =(sub_10D840+1 - 0x10E56E)
10E566:  MOV             R1, R4
10E568:  LDR             R2, =(off_22A540 - 0x10E570)
10E56A:  ADD             R0, PC; sub_10D840
10E56C:  ADD             R2, PC; off_22A540
10E56E:  POP.W           {R4,R6,R7,LR}
10E572:  B.W             sub_224250
