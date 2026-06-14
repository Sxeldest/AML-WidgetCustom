; =========================================================
; Game Engine Function: sub_162730
; Address            : 0x162730 - 0x1627CA
; =========================================================

162730:  PUSH            {R4-R7,LR}
162732:  ADD             R7, SP, #0xC
162734:  PUSH.W          {R8,R9,R11}
162738:  SUB             SP, SP, #0x40
16273A:  MOV             R8, R0
16273C:  ADD             R0, SP, #0x58+var_34
16273E:  MOV             R6, R3
162740:  MOV             R5, R2
162742:  MOV             R9, R1
162744:  BL              sub_F06B2
162748:  BL              sub_F0734
16274C:  LDRB            R2, [R0]
16274E:  MOV             R4, R0
162750:  LDRD.W          R1, R12, [R7,#arg_0]
162754:  LSLS            R2, R2, #0x1F
162756:  BNE             loc_16275E
162758:  MOVS            R2, #0
16275A:  STRH            R2, [R4]
16275C:  B               loc_16276E
16275E:  LDR             R2, [R4,#8]
162760:  MOVS            R3, #0
162762:  STRB            R3, [R2]
162764:  LDRB            R0, [R4]
162766:  LDR             R2, [R4]
162768:  STR             R3, [R4,#4]
16276A:  LSLS            R0, R0, #0x1F
16276C:  BNE             loc_162772
16276E:  MOVS            R2, #9
162770:  B               loc_162778
162772:  SUBS            R0, R2, #2
162774:  BIC.W           R2, R0, #1
162778:  LDR             R0, [R6]
16277A:  MOVS            R6, #0
16277C:  LDR             R1, [R1]
16277E:  LDR.W           R3, [R12]
162782:  STRD.W          R3, R6, [SP,#0x58+var_20]
162786:  STRD.W          R1, R6, [SP,#0x58+var_28]
16278A:  STR             R0, [SP,#0x58+var_30]
16278C:  ADD             R0, SP, #0x58+var_30
16278E:  MOV.W           R1, #0x22C
162792:  STRD.W          R0, R6, [SP,#0x58+var_48]
162796:  ADD             R0, SP, #0x58+var_3C
162798:  STRD.W          R1, R6, [SP,#0x58+var_50]
16279C:  MOV             R1, R4
16279E:  MOV             R3, R9
1627A0:  STR             R5, [SP,#0x58+var_58]
1627A2:  BL              sub_DCA40
1627A6:  LDRB            R0, [R4]
1627A8:  LDRD.W          R2, R1, [R4,#4]
1627AC:  ANDS.W          R3, R0, #1
1627B0:  ITT EQ
1627B2:  ADDEQ           R1, R4, #1; text
1627B4:  LSREQ           R2, R0, #1
1627B6:  MOV             R0, R8; int
1627B8:  BL              sub_ED4F8
1627BC:  ADD             R0, SP, #0x58+var_34
1627BE:  BL              sub_F0720
1627C2:  ADD             SP, SP, #0x40 ; '@'
1627C4:  POP.W           {R8,R9,R11}
1627C8:  POP             {R4-R7,PC}
