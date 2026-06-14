; =========================================================
; Game Engine Function: sub_FB47C
; Address            : 0xFB47C - 0xFB49E
; =========================================================

FB47C:  PUSH            {R4,R6,R7,LR}
FB47E:  ADD             R7, SP, #8
FB480:  LDR             R4, =(unk_247370 - 0xFB488)
FB482:  MOVS            R1, #2
FB484:  ADD             R4, PC; unk_247370
FB486:  MOV             R0, R4
FB488:  BL              sub_FA4E4
FB48C:  LDR             R0, =(sub_FA50C+1 - 0xFB496)
FB48E:  MOV             R1, R4
FB490:  LDR             R2, =(off_22A540 - 0xFB498)
FB492:  ADD             R0, PC; sub_FA50C
FB494:  ADD             R2, PC; off_22A540
FB496:  POP.W           {R4,R6,R7,LR}
FB49A:  B.W             sub_224250
