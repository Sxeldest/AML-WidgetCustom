; =========================================================
; Game Engine Function: sub_F35C8
; Address            : 0xF35C8 - 0xF368C
; =========================================================

F35C8:  PUSH            {R4-R7,LR}
F35CA:  ADD             R7, SP, #0xC
F35CC:  PUSH.W          {R8}
F35D0:  LDR             R0, =(off_23FFFC - 0xF35D6)
F35D2:  ADD             R0, PC; off_23FFFC
F35D4:  LDR             R0, [R0]
F35D6:  BLX             R0
F35D8:  LDR             R0, =(dword_23FCE0 - 0xF35E0)
F35DA:  MOVS            R6, #0
F35DC:  ADD             R0, PC; dword_23FCE0
F35DE:  MOV             R8, R0
F35E0:  LDR.W           R4, [R8,R6,LSL#2]
F35E4:  MOV             R0, R8
F35E6:  CBZ             R4, loc_F365C
F35E8:  MOVS            R0, #0
F35EA:  BL              sub_103960
F35EE:  LDRH.W          R0, [R0,#0x110]
F35F2:  CBZ             R0, loc_F3606
F35F4:  MOV             R0, R4
F35F6:  BL              sub_163C0E
F35FA:  LSLS            R0, R0, #0x1D
F35FC:  BMI             loc_F3606
F35FE:  MOV             R0, R4
F3600:  MOVS            R1, #0
F3602:  BL              sub_163C08
F3606:  CMP             R6, #0xBF
F3608:  BEQ             loc_F3616
F360A:  CMP             R6, #0xBE
F360C:  BNE             loc_F3652
F360E:  MOV             R0, R4
F3610:  BL              sub_F60B0
F3614:  B               loc_F3652
F3616:  LDR.W           R0, [R4,#0xA8]
F361A:  CBZ             R0, loc_F364A
F361C:  LDR.W           R5, [R8]
F3620:  MOV             R0, R5
F3622:  BL              sub_163C02
F3626:  CBZ             R0, loc_F3652
F3628:  VLDR            S0, [R5,#0xAC]
F362C:  VCMP.F32        S0, #0.0
F3630:  VMRS            APSR_nzcv, FPSCR
F3634:  ITTT NE
F3636:  VLDRNE          S0, [R5,#0xB4]
F363A:  VCMPNE.F32      S0, #0.0
F363E:  VMRSNE          APSR_nzcv, FPSCR
F3642:  BNE             loc_F364A
F3644:  MOV             R0, R4
F3646:  MOVS            R1, #1
F3648:  B               loc_F364E
F364A:  MOV             R0, R4
F364C:  MOVS            R1, #0
F364E:  BL              sub_163C08
F3652:  LDR             R0, [R4]
F3654:  LDR.W           R1, [R0,#0x84]
F3658:  MOV             R0, R4
F365A:  BLX             R1
F365C:  ADDS            R6, #1
F365E:  CMP             R6, #0xC0
F3660:  BNE             loc_F35E0
F3662:  LDR             R0, =(off_23494C - 0xF3670)
F3664:  MOV             R1, #0x2AC4DD
F366C:  ADD             R0, PC; off_23494C
F366E:  LDR             R4, [R0]; dword_23DF24
F3670:  LDR             R0, [R4]
F3672:  ADD             R0, R1
F3674:  BLX             R0
F3676:  LDR             R0, [R4]
F3678:  MOV             R1, #0x296689
F3680:  ADD             R0, R1
F3682:  POP.W           {R8}
F3686:  POP.W           {R4-R7,LR}
F368A:  BX              R0
