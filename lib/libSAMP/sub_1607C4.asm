; =========================================================
; Game Engine Function: sub_1607C4
; Address            : 0x1607C4 - 0x160850
; =========================================================

1607C4:  PUSH            {R4-R7,LR}
1607C6:  ADD             R7, SP, #0xC
1607C8:  PUSH.W          {R8,R9,R11}
1607CC:  SUB             SP, SP, #0x38
1607CE:  MOV             R8, R0
1607D0:  ADD             R0, SP, #0x50+var_2C
1607D2:  MOV             R6, R3
1607D4:  MOV             R5, R2
1607D6:  MOV             R9, R1
1607D8:  BL              sub_F06B2
1607DC:  BL              sub_F0734
1607E0:  MOV             R4, R0
1607E2:  LDR             R0, [R7,#arg_0]
1607E4:  LDRB            R1, [R4]
1607E6:  LSLS            R1, R1, #0x1F
1607E8:  BNE             loc_1607F0
1607EA:  MOVS            R1, #0
1607EC:  STRH            R1, [R4]
1607EE:  B               loc_160800
1607F0:  LDR             R1, [R4,#8]
1607F2:  MOVS            R2, #0
1607F4:  STRB            R2, [R1]
1607F6:  LDRB            R3, [R4]
1607F8:  LDR             R1, [R4]
1607FA:  STR             R2, [R4,#4]
1607FC:  LSLS            R2, R3, #0x1F
1607FE:  BNE             loc_160804
160800:  MOVS            R2, #9
160802:  B               loc_16080A
160804:  SUBS            R1, #2
160806:  BIC.W           R2, R1, #1
16080A:  MOVS            R1, #0
16080C:  LDR             R3, [R6]
16080E:  STR             R1, [SP,#0x50+var_24]
160810:  STR             R0, [SP,#0x50+var_20]
160812:  STR             R3, [SP,#0x50+var_28]
160814:  ADD             R0, SP, #0x50+var_28
160816:  MOVS            R3, #0xC1
160818:  STRD.W          R0, R1, [SP,#0x50+var_40]
16081C:  ADD             R0, SP, #0x50+var_34
16081E:  STRD.W          R3, R1, [SP,#0x50+var_48]
160822:  MOV             R1, R4
160824:  MOV             R3, R9
160826:  STR             R5, [SP,#0x50+var_50]
160828:  BL              sub_DCA40
16082C:  LDRB            R0, [R4]
16082E:  LDRD.W          R2, R1, [R4,#4]
160832:  ANDS.W          R3, R0, #1
160836:  ITT EQ
160838:  ADDEQ           R1, R4, #1; text
16083A:  LSREQ           R2, R0, #1
16083C:  MOV             R0, R8; int
16083E:  BL              sub_ED4F8
160842:  ADD             R0, SP, #0x50+var_2C
160844:  BL              sub_F0720
160848:  ADD             SP, SP, #0x38 ; '8'
16084A:  POP.W           {R8,R9,R11}
16084E:  POP             {R4-R7,PC}
