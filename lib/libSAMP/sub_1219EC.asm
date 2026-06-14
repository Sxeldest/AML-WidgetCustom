; =========================================================
; Game Engine Function: sub_1219EC
; Address            : 0x1219EC - 0x121A08
; =========================================================

1219EC:  PUSH            {R4,R5,R7,LR}
1219EE:  ADD             R7, SP, #8
1219F0:  MOV             R4, R1
1219F2:  MOV             R5, R0
1219F4:  BL              sub_121A0C
1219F8:  LDR             R0, =(unk_263990 - 0x121A02)
1219FA:  MOV             R1, R5
1219FC:  MOV             R2, R4
1219FE:  ADD             R0, PC; unk_263990
121A00:  POP.W           {R4,R5,R7,LR}
121A04:  B.W             sub_11C084
