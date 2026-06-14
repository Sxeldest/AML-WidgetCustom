; =========================================================
; Game Engine Function: sub_1806C4
; Address            : 0x1806C4 - 0x180770
; =========================================================

1806C4:  PUSH            {R4-R7,LR}
1806C6:  ADD             R7, SP, #0xC
1806C8:  PUSH.W          {R8-R11}
1806CC:  SUB             SP, SP, #0x24
1806CE:  MOV             R5, R1
1806D0:  MOV             R4, R0
1806D2:  LDRD.W          R1, R0, [R7,#arg_8]
1806D6:  STRD.W          R1, R0, [SP,#0x40+var_24]
1806DA:  MOV.W           R0, #0
1806DE:  CBZ             R5, loc_180724
1806E0:  MOV             R6, R2
1806E2:  CMP             R2, #0
1806E4:  BMI             loc_180724
1806E6:  LDR.W           R1, [R4,#0x340]
1806EA:  CBZ             R1, loc_180724
1806EC:  LDRB            R0, [R4,#4]
1806EE:  CBZ             R0, loc_1806F4
1806F0:  MOVS            R0, #0
1806F2:  B               loc_180724
1806F4:  LDR.W           R11, [R7,#arg_10]
1806F8:  MOV             R8, R3
1806FA:  LDRD.W          R10, R9, [R7,#arg_0]
1806FE:  CMP.W           R11, #0
180702:  BEQ             loc_18072C
180704:  LDRD.W          R0, R1, [SP,#0x40+var_24]
180708:  MOVS            R2, #0
18070A:  ADD             R3, SP, #0x40+var_38
18070C:  STR             R2, [SP,#0x40+var_2C]
18070E:  STM.W           R3, {R0,R1,R11}
180712:  LSLS            R2, R6, #3
180714:  MOV             R0, R4
180716:  MOV             R1, R5
180718:  MOV             R3, R8
18071A:  STRD.W          R10, R9, [SP,#0x40+var_40]
18071E:  BL              sub_180774
180722:  MOVS            R0, #1
180724:  ADD             SP, SP, #0x24 ; '$'
180726:  POP.W           {R8-R11}
18072A:  POP             {R4-R7,PC}
18072C:  LDR             R1, =(unk_BE944 - 0x180734)
18072E:  ADD             R0, SP, #0x40+var_24
180730:  ADD             R1, PC; unk_BE944
180732:  BL              sub_17E580
180736:  CMP             R0, #0
180738:  BNE             loc_1806F0
18073A:  LDR.W           R0, [R4,#0x800]
18073E:  CMP             R0, #0
180740:  BEQ             loc_180704
180742:  LDR             R0, [R4]
180744:  LDRD.W          R1, R2, [SP,#0x40+var_24]
180748:  LDR             R3, [R0,#0x60]
18074A:  MOV             R0, R4
18074C:  BLX             R3
18074E:  ADDS            R0, #1
180750:  BNE             loc_180704
180752:  LDR.W           R0, [R4,#0x800]
180756:  LDRD.W          R2, R3, [SP,#0x40+var_24]
18075A:  LDR             R1, [R0]
18075C:  LDR             R4, [R1]
18075E:  MOV             R1, R5
180760:  STRD.W          R2, R3, [SP,#0x40+var_38]
180764:  LSLS            R2, R6, #3
180766:  MOV             R3, R8
180768:  STRD.W          R10, R9, [SP,#0x40+var_40]
18076C:  BLX             R4
18076E:  B               loc_180724
