; =========================================================
; Game Engine Function: sub_1617C8
; Address            : 0x1617C8 - 0x161852
; =========================================================

1617C8:  PUSH            {R4-R7,LR}
1617CA:  ADD             R7, SP, #0xC
1617CC:  PUSH.W          {R8,R9,R11}
1617D0:  SUB             SP, SP, #0x38
1617D2:  MOV             R8, R0
1617D4:  ADD             R0, SP, #0x50+var_2C
1617D6:  MOV             R6, R3
1617D8:  MOV             R5, R2
1617DA:  MOV             R9, R1
1617DC:  BL              sub_F06B2
1617E0:  BL              sub_F0734
1617E4:  MOV             R4, R0
1617E6:  LDR             R0, [R7,#arg_0]
1617E8:  LDRB            R1, [R4]
1617EA:  LSLS            R1, R1, #0x1F
1617EC:  BNE             loc_1617F4
1617EE:  MOVS            R1, #0
1617F0:  STRH            R1, [R4]
1617F2:  B               loc_161804
1617F4:  LDR             R1, [R4,#8]
1617F6:  MOVS            R2, #0
1617F8:  STRB            R2, [R1]
1617FA:  LDRB            R3, [R4]
1617FC:  LDR             R1, [R4]
1617FE:  STR             R2, [R4,#4]
161800:  LSLS            R2, R3, #0x1F
161802:  BNE             loc_161808
161804:  MOVS            R2, #9
161806:  B               loc_16180E
161808:  SUBS            R1, #2
16180A:  BIC.W           R2, R1, #1
16180E:  LDR             R0, [R0]
161810:  STR             R6, [SP,#0x50+var_28]
161812:  STR             R0, [SP,#0x50+var_20]
161814:  MOVS            R0, #0
161816:  MOVS            R3, #0xCC
161818:  ADD             R1, SP, #0x50+var_28
16181A:  STRD.W          R3, R0, [SP,#0x50+var_48]
16181E:  STRD.W          R1, R0, [SP,#0x50+var_40]
161822:  ADD             R0, SP, #0x50+var_34
161824:  MOV             R1, R4
161826:  MOV             R3, R9
161828:  STR             R5, [SP,#0x50+var_50]
16182A:  BL              sub_DCA40
16182E:  LDRB            R0, [R4]
161830:  LDRD.W          R2, R1, [R4,#4]
161834:  ANDS.W          R3, R0, #1
161838:  ITT EQ
16183A:  ADDEQ           R1, R4, #1; text
16183C:  LSREQ           R2, R0, #1
16183E:  MOV             R0, R8; int
161840:  BL              sub_ED4F8
161844:  ADD             R0, SP, #0x50+var_2C
161846:  BL              sub_F0720
16184A:  ADD             SP, SP, #0x38 ; '8'
16184C:  POP.W           {R8,R9,R11}
161850:  POP             {R4-R7,PC}
