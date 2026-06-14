; =========================================================
; Game Engine Function: sub_10D7E8
; Address            : 0x10D7E8 - 0x10D80A
; =========================================================

10D7E8:  PUSH            {R4,R6,R7,LR}
10D7EA:  ADD             R7, SP, #8
10D7EC:  LDR             R4, =(unk_26324C - 0x10D7F4)
10D7EE:  MOVS            R1, #2
10D7F0:  ADD             R4, PC; unk_26324C
10D7F2:  MOV             R0, R4
10D7F4:  BL              sub_10D3E4
10D7F8:  LDR             R0, =(sub_10D40C+1 - 0x10D802)
10D7FA:  MOV             R1, R4
10D7FC:  LDR             R2, =(off_22A540 - 0x10D804)
10D7FE:  ADD             R0, PC; sub_10D40C
10D800:  ADD             R2, PC; off_22A540
10D802:  POP.W           {R4,R6,R7,LR}
10D806:  B.W             sub_224250
