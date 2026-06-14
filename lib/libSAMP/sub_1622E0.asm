; =========================================================
; Game Engine Function: sub_1622E0
; Address            : 0x1622E0 - 0x162302
; =========================================================

1622E0:  PUSH            {R4,R6,R7,LR}
1622E2:  ADD             R7, SP, #8
1622E4:  LDR             R4, =(unk_381A68 - 0x1622EC)
1622E6:  MOVS            R1, #0
1622E8:  ADD             R4, PC; unk_381A68
1622EA:  MOV             R0, R4
1622EC:  BL              sub_161FDC
1622F0:  LDR             R0, =(sub_162004+1 - 0x1622FA)
1622F2:  MOV             R1, R4
1622F4:  LDR             R2, =(off_22A540 - 0x1622FC)
1622F6:  ADD             R0, PC; sub_162004
1622F8:  ADD             R2, PC; off_22A540
1622FA:  POP.W           {R4,R6,R7,LR}
1622FE:  B.W             sub_224250
