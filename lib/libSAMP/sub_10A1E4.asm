; =========================================================
; Game Engine Function: sub_10A1E4
; Address            : 0x10A1E4 - 0x10A214
; =========================================================

10A1E4:  PUSH            {R4,R6,R7,LR}
10A1E6:  ADD             R7, SP, #8
10A1E8:  MOV             R4, R0
10A1EA:  LDR             R0, [R0,#0xC]
10A1EC:  CBZ             R0, loc_10A20C
10A1EE:  LDR             R0, [R4,#8]
10A1F0:  BL              sub_108354
10A1F4:  CBZ             R0, loc_10A20C
10A1F6:  LDR             R0, [R4,#0xC]
10A1F8:  LDR.W           R0, [R0,#0x464]
10A1FC:  CBZ             R0, loc_10A20C
10A1FE:  LDRB.W          R1, [R0,#0x485]
10A202:  LSLS            R1, R1, #0x1F
10A204:  BEQ             loc_10A20C
10A206:  LDR.W           R0, [R0,#0x59C]
10A20A:  CBZ             R0, loc_10A210
10A20C:  MOVS            R0, #0
10A20E:  POP             {R4,R6,R7,PC}
10A210:  MOVS            R0, #1
10A212:  POP             {R4,R6,R7,PC}
