; =========================================================
; Game Engine Function: sub_1056D0
; Address            : 0x1056D0 - 0x1057BE
; =========================================================

1056D0:  PUSH            {R4-R7,LR}
1056D2:  ADD             R7, SP, #0xC
1056D4:  PUSH.W          {R8-R11}
1056D8:  SUB             SP, SP, #0x14
1056DA:  MOV             R10, R0
1056DC:  LDR             R0, [R0,#0x5C]
1056DE:  CBZ             R0, loc_1056F8
1056E0:  LDR             R1, =(off_23494C - 0x1056F0)
1056E2:  MOVW            R2, #0x79AC
1056E6:  LDR             R0, [R0]
1056E8:  MOVT            R2, #0x66 ; 'f'
1056EC:  ADD             R1, PC; off_23494C
1056EE:  LDR             R1, [R1]; dword_23DF24
1056F0:  LDR             R1, [R1]
1056F2:  ADD             R1, R2
1056F4:  CMP             R0, R1
1056F6:  BNE             loc_105700
1056F8:  ADD             SP, SP, #0x14
1056FA:  POP.W           {R8-R11}
1056FE:  POP             {R4-R7,PC}
105700:  LDRB.W          R0, [R10,#0x42]
105704:  CBZ             R0, loc_105752
105706:  LDR             R5, =(byte_B3470 - 0x105716)
105708:  MOV             R8, SP
10570A:  ADD.W           R9, R8, #3
10570E:  MOV.W           R11, #0xF
105712:  ADD             R5, PC; byte_B3470
105714:  MOV             R6, R5
105716:  MOV             R0, R5
105718:  MOV             R1, R8
10571A:  LDRB.W          R4, [R0],#1
10571E:  VLD1.8          {D16-D17}, [R0],R11
105722:  VST1.64         {D16-D17}, [R1],R11
105726:  LDR             R0, [R0]
105728:  STR             R0, [R1]
10572A:  MOV             R0, R10
10572C:  BL              sub_F9124
105730:  CBZ             R0, loc_105744
105732:  LDR             R0, [R0,#0x20]
105734:  VLD1.8          {D16-D17}, [R9]
105738:  LDR             R1, [R0,#0x24]
10573A:  MLA.W           R0, R1, R4, R0
10573E:  ADDS            R0, #0x4C ; 'L'
105740:  VST1.8          {D16-D17}, [R0]
105744:  MOV             R0, R6
105746:  ADDS            R5, #0x14
105748:  ADD.W           R0, R6, #0xB4
10574C:  CMP             R5, R0
10574E:  BNE             loc_105716
105750:  B               loc_1057A4
105752:  LDRB.W          R0, [R10,#0x43]
105756:  CMP             R0, #0
105758:  BEQ             loc_1056F8
10575A:  LDR             R4, =(byte_B3524 - 0x10576A)
10575C:  MOV             R8, SP
10575E:  ADD.W           R9, R8, #3
105762:  MOV.W           R11, #0xF
105766:  ADD             R4, PC; byte_B3524
105768:  MOV             R6, R4
10576A:  MOV             R0, R4
10576C:  MOV             R1, R8
10576E:  LDRB.W          R5, [R0],#1
105772:  VLD1.8          {D16-D17}, [R0],R11
105776:  VST1.64         {D16-D17}, [R1],R11
10577A:  LDR             R0, [R0]
10577C:  STR             R0, [R1]
10577E:  MOV             R0, R10
105780:  BL              sub_F9124
105784:  CBZ             R0, loc_105798
105786:  LDR             R0, [R0,#0x20]
105788:  VLD1.8          {D16-D17}, [R9]
10578C:  LDR             R1, [R0,#0x24]
10578E:  MLA.W           R0, R1, R5, R0
105792:  ADDS            R0, #0x4C ; 'L'
105794:  VST1.8          {D16-D17}, [R0]
105798:  MOV             R0, R6
10579A:  ADDS            R4, #0x14
10579C:  ADD.W           R0, R6, #0xF0
1057A0:  CMP             R4, R0
1057A2:  BNE             loc_10576A
1057A4:  MOV             R0, R10
1057A6:  MOVS            R1, #0
1057A8:  MOVS            R2, #0
1057AA:  BL              sub_10479C
1057AE:  MOV             R0, R10
1057B0:  ADD             SP, SP, #0x14
1057B2:  POP.W           {R8-R11}
1057B6:  POP.W           {R4-R7,LR}
1057BA:  B.W             sub_F9104
