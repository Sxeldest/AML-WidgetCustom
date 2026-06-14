; =========================================================
; Game Engine Function: sub_16189C
; Address            : 0x16189C - 0x1618BE
; =========================================================

16189C:  PUSH            {R4,R6,R7,LR}
16189E:  ADD             R7, SP, #8
1618A0:  LDR             R4, =(unk_381A58 - 0x1618A8)
1618A2:  MOVS            R1, #0
1618A4:  ADD             R4, PC; unk_381A58
1618A6:  MOV             R0, R4
1618A8:  BL              sub_160FE8
1618AC:  LDR             R0, =(sub_161010+1 - 0x1618B6)
1618AE:  MOV             R1, R4
1618B0:  LDR             R2, =(off_22A540 - 0x1618B8)
1618B2:  ADD             R0, PC; sub_161010
1618B4:  ADD             R2, PC; off_22A540
1618B6:  POP.W           {R4,R6,R7,LR}
1618BA:  B.W             sub_224250
