; =========================================================
; Game Engine Function: sub_E5646
; Address            : 0xE5646 - 0xE5754
; =========================================================

E5646:  PUSH            {R4-R7,LR}
E5648:  ADD             R7, SP, #0xC
E564A:  PUSH.W          {R8-R11}
E564E:  SUB             SP, SP, #0x24
E5650:  MOV             R5, R0
E5652:  LDR             R0, [R0,#0x40]
E5654:  CMP             R0, #0
E5656:  BEQ             loc_E5744
E5658:  MOV             R0, R5
E565A:  MOV             R9, R1
E565C:  BL              sub_E57C2
E5660:  LDRD.W          R10, R3, [R5,#0x14]
E5664:  ADDS.W          R0, R9, #1
E5668:  LDR             R4, [R5,#0x1C]
E566A:  BEQ             loc_E5688
E566C:  CBNZ            R3, loc_E567A
E566E:  SUB.W           R3, R7, #-var_1D
E5672:  ADDS            R0, R3, #1
E5674:  STR             R0, [R5,#0x1C]
E5676:  STRD.W          R3, R3, [R5,#0x14]
E567A:  STRB.W          R9, [R3]
E567E:  LDRD.W          R2, R0, [R5,#0x14]
E5682:  ADDS            R3, R0, #1
E5684:  STR             R3, [R5,#0x18]
E5686:  B               loc_E568A
E5688:  MOV             R2, R10
E568A:  CMP             R3, R2
E568C:  BEQ             loc_E56AC
E568E:  LDRB.W          R0, [R5,#0x5A]
E5692:  CBZ             R0, loc_E56B6
E5694:  SUBS            R6, R3, R2
E5696:  LDR             R3, [R5,#0x40]; s
E5698:  MOV             R0, R2; ptr
E569A:  MOVS            R1, #1; size
E569C:  MOV             R2, R6; n
E569E:  BLX             fwrite
E56A2:  CMP             R0, R6
E56A4:  BNE             loc_E5744
E56A6:  STRD.W          R10, R10, [R5,#0x14]
E56AA:  STR             R4, [R5,#0x1C]
E56AC:  SUBS.W          R0, R9, #0xFFFFFFFF
E56B0:  IT NE
E56B2:  MOVNE           R0, R9
E56B4:  B               loc_E5748
E56B6:  LDR             R1, [R5,#0x20]
E56B8:  LDR             R0, [R5,#0x44]
E56BA:  STR             R4, [SP,#0x40+var_2C]
E56BC:  CMP             R0, #0
E56BE:  STR             R1, [SP,#0x40+var_24]
E56C0:  BEQ             loc_E5750
E56C2:  LDR             R6, [R0]
E56C4:  ADD.W           R8, R5, #0x48 ; 'H'
E56C8:  LDR             R4, [R5,#0x34]
E56CA:  ADD.W           R12, SP, #0x40+var_24
E56CE:  ADD.W           R11, SP, #0x40+var_28
E56D2:  LDR             R6, [R6,#0xC]
E56D4:  ADD             R4, R1
E56D6:  STRD.W          R11, R1, [SP,#0x40+var_40]
E56DA:  STRD.W          R4, R12, [SP,#0x40+var_38]
E56DE:  MOV             R1, R8
E56E0:  BLX             R6
E56E2:  MOV             R6, R0
E56E4:  LDR             R0, [R5,#0x14]; ptr
E56E6:  LDR             R1, [SP,#0x40+var_28]
E56E8:  CMP             R1, R0
E56EA:  BEQ             loc_E5744
E56EC:  CMP             R6, #3
E56EE:  BEQ             loc_E572E
E56F0:  CMP             R6, #1
E56F2:  BHI             loc_E5744
E56F4:  LDR             R1, [SP,#0x40+var_24]
E56F6:  LDR             R0, [R5,#0x20]; ptr
E56F8:  LDR             R3, [R5,#0x40]; s
E56FA:  SUBS            R4, R1, R0
E56FC:  MOVS            R1, #1; size
E56FE:  MOV             R2, R4; n
E5700:  BLX             fwrite
E5704:  CMP             R0, R4
E5706:  BNE             loc_E5744
E5708:  CMP             R6, #1
E570A:  BNE             loc_E5740
E570C:  LDR             R2, [SP,#0x40+var_28]
E570E:  LDR             R3, [R5,#0x18]
E5710:  LDR             R0, [R5,#0x44]
E5712:  STR             R2, [R5,#0x14]
E5714:  STR             R3, [R5,#0x1C]
E5716:  CBZ             R0, loc_E5750
E5718:  LDR             R6, [R0]
E571A:  LDR             R1, [R5,#0x20]
E571C:  LDR             R4, [R5,#0x34]
E571E:  LDR             R6, [R6,#0xC]
E5720:  ADD             R4, R1
E5722:  STRD.W          R11, R1, [SP,#0x40+var_40]
E5726:  ADD             R1, SP, #0x40+var_24
E5728:  STR             R4, [SP,#0x40+var_38]
E572A:  STR             R1, [SP,#0x40+var_34]
E572C:  B               loc_E56DE
E572E:  LDR             R1, [R5,#0x18]
E5730:  LDR             R3, [R5,#0x40]; s
E5732:  SUBS            R6, R1, R0
E5734:  MOVS            R1, #1; size
E5736:  MOV             R2, R6; n
E5738:  BLX             fwrite
E573C:  CMP             R0, R6
E573E:  BNE             loc_E5744
E5740:  LDR             R4, [SP,#0x40+var_2C]
E5742:  B               loc_E56A6
E5744:  MOV.W           R0, #0xFFFFFFFF
E5748:  ADD             SP, SP, #0x24 ; '$'
E574A:  POP.W           {R8-R11}
E574E:  POP             {R4-R7,PC}
E5750:  BL              sub_E5754
