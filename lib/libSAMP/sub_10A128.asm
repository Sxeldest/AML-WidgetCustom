; =========================================================
; Game Engine Function: sub_10A128
; Address            : 0x10A128 - 0x10A144
; =========================================================

10A128:  PUSH            {R4,R6,R7,LR}
10A12A:  ADD             R7, SP, #8
10A12C:  LDR             R0, [R0,#0xC]
10A12E:  CBZ             R0, loc_10A13C
10A130:  LDR.W           R4, [R0,#0x464]
10A134:  BL              sub_1082E4
10A138:  CMP             R4, R0
10A13A:  BEQ             loc_10A140
10A13C:  MOVS            R0, #0
10A13E:  POP             {R4,R6,R7,PC}
10A140:  MOVS            R0, #1
10A142:  POP             {R4,R6,R7,PC}
