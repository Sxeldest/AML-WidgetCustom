; =========================================================
; Game Engine Function: sub_109FC4
; Address            : 0x109FC4 - 0x109FEA
; =========================================================

109FC4:  PUSH            {R4,R6,R7,LR}
109FC6:  ADD             R7, SP, #8
109FC8:  MOV             R4, R0
109FCA:  LDR             R0, [R0,#0xC]
109FCC:  CBZ             R0, loc_109FE6
109FCE:  LDR             R0, [R4,#8]
109FD0:  BL              sub_108354
109FD4:  CBZ             R0, loc_109FE6
109FD6:  LDR             R0, [R4,#0xC]
109FD8:  MOVW            R1, #0x20D
109FDC:  LDRH            R0, [R0,#0x26]
109FDE:  CMP             R0, R1
109FE0:  BNE             loc_109FE6
109FE2:  MOVS            R0, #1
109FE4:  POP             {R4,R6,R7,PC}
109FE6:  MOVS            R0, #0
109FE8:  POP             {R4,R6,R7,PC}
