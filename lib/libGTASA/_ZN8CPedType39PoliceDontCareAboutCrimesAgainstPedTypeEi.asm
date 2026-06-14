; =========================================================
; Game Engine Function: _ZN8CPedType39PoliceDontCareAboutCrimesAgainstPedTypeEi
; Address            : 0x4C35F0 - 0x4C360C
; =========================================================

4C35F0:  CMP             R0, #0x14
4C35F2:  MOV.W           R2, #0
4C35F6:  SUB.W           R0, R0, #7
4C35FA:  IT EQ
4C35FC:  MOVEQ           R2, #1
4C35FE:  MOVS            R1, #0
4C3600:  CMP             R0, #0xB
4C3602:  IT CC
4C3604:  MOVCC           R1, #1
4C3606:  ORR.W           R0, R2, R1
4C360A:  BX              LR
