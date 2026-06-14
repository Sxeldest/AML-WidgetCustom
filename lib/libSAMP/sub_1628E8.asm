; =========================================================
; Game Engine Function: sub_1628E8
; Address            : 0x1628E8 - 0x16290A
; =========================================================

1628E8:  PUSH            {R4,R6,R7,LR}
1628EA:  ADD             R7, SP, #8
1628EC:  LDR             R4, =(unk_381A70 - 0x1628F4)
1628EE:  MOVS            R1, #0
1628F0:  ADD             R4, PC; unk_381A70
1628F2:  MOV             R0, R4
1628F4:  BL              sub_162310
1628F8:  LDR             R0, =(sub_162338+1 - 0x162902)
1628FA:  MOV             R1, R4
1628FC:  LDR             R2, =(off_22A540 - 0x162904)
1628FE:  ADD             R0, PC; sub_162338
162900:  ADD             R2, PC; off_22A540
162902:  POP.W           {R4,R6,R7,LR}
162906:  B.W             sub_224250
