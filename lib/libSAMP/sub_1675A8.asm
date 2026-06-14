; =========================================================
; Game Engine Function: sub_1675A8
; Address            : 0x1675A8 - 0x167660
; =========================================================

1675A8:  PUSH            {R7,LR}
1675AA:  MOV             R7, SP
1675AC:  LDR             R1, =(dword_381B58 - 0x1675B6)
1675AE:  MOVW            R3, #0x19AC
1675B2:  ADD             R1, PC; dword_381B58
1675B4:  LDR             R2, [R1]
1675B6:  LDR             R1, [R2,R3]
1675B8:  ADD             R2, R3
1675BA:  LDRB.W          R3, [R2,#0x16B]
1675BE:  CBZ             R3, loc_1675C6
1675C0:  LDRB.W          R3, [R2,#0x16A]
1675C4:  CBZ             R3, loc_16763A
1675C6:  LDRB.W          R3, [R1,#0x10C]
1675CA:  LSLS            R3, R3, #0x1F
1675CC:  BEQ             loc_16765C
1675CE:  LDR.W           LR, [R1,#0x2FC]
1675D2:  LSLS            R3, R0, #0x19
1675D4:  BMI             loc_1675DC
1675D6:  LDR             R3, [R2,#8]
1675D8:  CMP             R3, LR
1675DA:  BNE             loc_16765C
1675DC:  LSLS            R3, R0, #0x1A
1675DE:  BMI             loc_1675F2
1675E0:  LDR.W           R12, [R2,#0x24]
1675E4:  CMP.W           R12, #0
1675E8:  ITT NE
1675EA:  LDRNE.W         R3, [R1,#0x108]
1675EE:  CMPNE           R12, R3
1675F0:  BNE             loc_16764E
1675F2:  LDR.W           R2, [R2,#0x108]
1675F6:  CBZ             R2, loc_167618
1675F8:  LDR.W           R2, [R2,#0x2FC]
1675FC:  CBZ             R2, loc_167618
1675FE:  LDRB.W          R3, [R2,#0x7B]
167602:  CBZ             R3, loc_167618
167604:  CMP             R2, LR
167606:  BEQ             loc_167618
167608:  LDR             R2, [R2,#8]
16760A:  LSLS            R3, R2, #4
16760C:  BMI             loc_16765C
16760E:  LSLS            R3, R0, #0x1C
167610:  BMI             loc_167618
167612:  ANDS.W          R2, R2, #0x4000000
167616:  BNE             loc_16765C
167618:  LSLS            R0, R0, #0x18
16761A:  BMI             loc_167626
16761C:  LDR.W           R0, [R1,#0x16C]
167620:  ANDS.W          R0, R0, #4
167624:  BNE             loc_16765C
167626:  LDR             R0, [R1,#0x50]
167628:  LDR.W           R2, [R1,#0x108]
16762C:  CMP             R2, R0
16762E:  BNE             loc_167636
167630:  LDRB.W          R0, [R1,#0x7C]
167634:  CBNZ            R0, loc_16765C
167636:  MOVS            R0, #1
167638:  POP             {R7,PC}
16763A:  LDR.W           R0, [R2,#0x10C]
16763E:  CBZ             R0, loc_16765C
167640:  LDR.W           R1, [R1,#0x108]
167644:  SUBS            R0, R0, R1
167646:  CLZ.W           R0, R0
16764A:  LSRS            R0, R0, #5
16764C:  POP             {R7,PC}
16764E:  LDRB.W          R3, [R2,#0x31]
167652:  CMP             R3, #0
167654:  BNE             loc_1675F2
167656:  LDR             R3, [R1,#0x50]
167658:  CMP             R12, R3
16765A:  BEQ             loc_1675F2
16765C:  MOVS            R0, #0
16765E:  POP             {R7,PC}
