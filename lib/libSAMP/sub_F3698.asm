; =========================================================
; Game Engine Function: sub_F3698
; Address            : 0xF3698 - 0xF379C
; =========================================================

F3698:  PUSH            {R4-R7,LR}
F369A:  ADD             R7, SP, #0xC
F369C:  PUSH.W          {R8-R11}
F36A0:  SUB             SP, SP, #4
F36A2:  MOV             R9, R0
F36A4:  LDR             R0, =(off_23494C - 0xF36AE)
F36A6:  MOVW            R1, #0x61D1
F36AA:  ADD             R0, PC; off_23494C
F36AC:  MOVT            R1, #0xA8
F36B0:  LDR.W           R11, [R0]; dword_23DF24
F36B4:  LDR.W           R0, [R11]
F36B8:  LDRB            R1, [R0,R1]
F36BA:  CMP             R1, #0
F36BC:  BNE             loc_F376A
F36BE:  MOVS            R1, #0x6E0090
F36C4:  LDR             R2, [R0,R1]
F36C6:  CMP             R2, #0
F36C8:  BNE             loc_F376A
F36CA:  ADD             R0, R1
F36CC:  LDR             R0, [R0,#8]
F36CE:  CMP             R0, #0
F36D0:  BNE             loc_F376A
F36D2:  LDR             R4, =(dword_23FCE0 - 0xF36E2)
F36D4:  MOV.W           R8, #0
F36D8:  MOV.W           R10, #1
F36DC:  MOVS            R6, #0
F36DE:  ADD             R4, PC; dword_23FCE0
F36E0:  LDR             R0, [R4,R6]
F36E2:  CBZ             R0, loc_F3744
F36E4:  BL              sub_163B84
F36E8:  LDR             R1, [R4,R6]
F36EA:  STR.W           R8, [R0]
F36EE:  MOV             R0, R1
F36F0:  BL              sub_163B24
F36F4:  BL              sub_163BD8
F36F8:  CBNZ            R0, loc_F371A
F36FA:  BL              sub_163B84
F36FE:  LDR             R1, [R4,R6]
F3700:  STR.W           R10, [R0]
F3704:  MOV             R0, R1
F3706:  BL              sub_163B24
F370A:  BL              sub_163BD8
F370E:  MOV             R5, R0
F3710:  BL              sub_163B84
F3714:  STR.W           R8, [R0]
F3718:  CBZ             R5, loc_F374E
F371A:  LDR             R0, [R4,R6]
F371C:  BL              sub_163C0E
F3720:  LSLS            R0, R0, #0x15
F3722:  BPL             loc_F3744
F3724:  LDR             R0, [R4,R6]
F3726:  BL              sub_163C0E
F372A:  AND.W           R0, R0, #0x10
F372E:  EOR.W           R0, R10, R0,LSR#4
F3732:  CMP             R0, R9
F3734:  BEQ             loc_F373E
F3736:  LDR             R0, [R4,R6]
F3738:  LDR             R1, [R0]
F373A:  LDR             R1, [R1,#0x14]
F373C:  BLX             R1
F373E:  LDR             R0, [R4,R6]
F3740:  BL              sub_163C1A
F3744:  ADDS            R6, #4
F3746:  CMP.W           R6, #0x300
F374A:  BNE             loc_F36E0
F374C:  B               loc_F3764
F374E:  LDR             R0, [R4,R6]
F3750:  BL              sub_163C0E
F3754:  AND.W           R0, R0, #0x10
F3758:  EOR.W           R0, R10, R0,LSR#4
F375C:  TEQ.W           R0, R9
F3760:  BNE             loc_F3736
F3762:  B               loc_F373E
F3764:  CMP.W           R9, #0
F3768:  BEQ             loc_F3772
F376A:  ADD             SP, SP, #4
F376C:  POP.W           {R8-R11}
F3770:  POP             {R4-R7,PC}
F3772:  LDR.W           R0, [R11]
F3776:  MOV             R1, #0x2AC501
F377E:  ADD             R0, R1
F3780:  BLX             R0
F3782:  LDR.W           R0, [R11]
F3786:  MOV             R1, #0x29669D
F378E:  ADD             R0, R1
F3790:  ADD             SP, SP, #4
F3792:  POP.W           {R8-R11}
F3796:  POP.W           {R4-R7,LR}
F379A:  BX              R0
