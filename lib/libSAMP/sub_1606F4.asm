; =========================================================
; Game Engine Function: sub_1606F4
; Address            : 0x1606F4 - 0x16077C
; =========================================================

1606F4:  PUSH            {R4-R7,LR}
1606F6:  ADD             R7, SP, #0xC
1606F8:  PUSH.W          {R8,R9,R11}
1606FC:  SUB             SP, SP, #0x30
1606FE:  MOV             R8, R0
160700:  ADD             R0, SP, #0x48+var_24
160702:  MOV             R6, R3
160704:  MOV             R5, R2
160706:  MOV             R9, R1
160708:  BL              sub_F06B2
16070C:  BL              sub_F0734
160710:  MOV             R4, R0
160712:  LDRB            R0, [R0]
160714:  LSLS            R0, R0, #0x1F
160716:  BNE             loc_16071E
160718:  MOVS            R0, #0
16071A:  STRH            R0, [R4]
16071C:  B               loc_16072E
16071E:  LDR             R0, [R4,#8]
160720:  MOVS            R1, #0
160722:  STRB            R1, [R0]
160724:  LDRB            R2, [R4]
160726:  LDR             R0, [R4]
160728:  STR             R1, [R4,#4]
16072A:  LSLS            R1, R2, #0x1F
16072C:  BNE             loc_160732
16072E:  MOVS            R2, #9
160730:  B               loc_160738
160732:  SUBS            R0, #2
160734:  BIC.W           R2, R0, #1
160738:  LDR             R0, [R6]
16073A:  MOVS            R1, #0
16073C:  STRD.W          R0, R1, [SP,#0x48+var_20]
160740:  ADD             R0, SP, #0x48+var_20
160742:  MOVS            R3, #2
160744:  STRD.W          R0, R1, [SP,#0x48+var_38]
160748:  ADD             R0, SP, #0x48+var_2C
16074A:  STRD.W          R3, R1, [SP,#0x48+var_40]
16074E:  MOV             R1, R4
160750:  MOV             R3, R9
160752:  STR             R5, [SP,#0x48+var_48]
160754:  BL              sub_DCA40
160758:  LDRB            R0, [R4]
16075A:  LDRD.W          R2, R1, [R4,#4]
16075E:  ANDS.W          R3, R0, #1
160762:  ITT EQ
160764:  ADDEQ           R1, R4, #1; text
160766:  LSREQ           R2, R0, #1
160768:  MOV             R0, R8; int
16076A:  BL              sub_ED4F8
16076E:  ADD             R0, SP, #0x48+var_24
160770:  BL              sub_F0720
160774:  ADD             SP, SP, #0x30 ; '0'
160776:  POP.W           {R8,R9,R11}
16077A:  POP             {R4-R7,PC}
