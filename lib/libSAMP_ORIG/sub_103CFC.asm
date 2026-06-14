; =========================================================
; Game Engine Function: sub_103CFC
; Address            : 0x103CFC - 0x103D1E
; =========================================================

103CFC:  PUSH            {R4,R6,R7,LR}
103CFE:  ADD             R7, SP, #8
103D00:  MOV             R3, R0
103D02:  LDRD.W          R2, R0, [R1]
103D06:  SUBS            R4, R0, R2
103D08:  LDRD.W          R0, R1, [R3]
103D0C:  SUBS            R3, R1, R0
103D0E:  CMP             R3, R4
103D10:  BNE             loc_103D1A
103D12:  POP.W           {R4,R6,R7,LR}
103D16:  B.W             sub_FF296
103D1A:  MOVS            R0, #0
103D1C:  POP             {R4,R6,R7,PC}
