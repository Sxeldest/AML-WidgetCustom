; =========================================================
; Game Engine Function: sub_18B6F0
; Address            : 0x18B6F0 - 0x18B774
; =========================================================

18B6F0:  PUSH            {R4-R7,LR}
18B6F2:  ADD             R7, SP, #0xC
18B6F4:  PUSH.W          {R8,R9,R11}
18B6F8:  SUB             SP, SP, #0x30
18B6FA:  MOV             R8, R0
18B6FC:  ADD             R0, SP, #0x48+var_24
18B6FE:  MOV             R6, R3
18B700:  MOV             R5, R2
18B702:  MOV             R9, R1
18B704:  BL              sub_F06B2
18B708:  BL              sub_F0734
18B70C:  MOV             R4, R0
18B70E:  LDRB            R0, [R0]
18B710:  LSLS            R0, R0, #0x1F
18B712:  BNE             loc_18B71A
18B714:  MOVS            R0, #0
18B716:  STRH            R0, [R4]
18B718:  B               loc_18B72A
18B71A:  LDR             R0, [R4,#8]
18B71C:  MOVS            R1, #0
18B71E:  STRB            R1, [R0]
18B720:  LDRB            R2, [R4]
18B722:  LDR             R0, [R4]
18B724:  STR             R1, [R4,#4]
18B726:  LSLS            R1, R2, #0x1F
18B728:  BNE             loc_18B72E
18B72A:  MOVS            R2, #9
18B72C:  B               loc_18B734
18B72E:  SUBS            R0, #2
18B730:  BIC.W           R2, R0, #1
18B734:  STR             R6, [SP,#0x48+var_20]
18B736:  MOVS            R0, #0
18B738:  MOVS            R3, #0xC
18B73A:  ADD             R1, SP, #0x48+var_20
18B73C:  STRD.W          R3, R0, [SP,#0x48+var_40]
18B740:  STRD.W          R1, R0, [SP,#0x48+var_38]
18B744:  ADD             R0, SP, #0x48+var_2C
18B746:  MOV             R1, R4
18B748:  MOV             R3, R9
18B74A:  STR             R5, [SP,#0x48+var_48]
18B74C:  BL              sub_DCA40
18B750:  LDRB            R0, [R4]
18B752:  LDRD.W          R2, R1, [R4,#4]
18B756:  ANDS.W          R3, R0, #1
18B75A:  ITT EQ
18B75C:  ADDEQ           R1, R4, #1; text
18B75E:  LSREQ           R2, R0, #1
18B760:  MOV             R0, R8; int
18B762:  BL              sub_ED4F8
18B766:  ADD             R0, SP, #0x48+var_24
18B768:  BL              sub_F0720
18B76C:  ADD             SP, SP, #0x30 ; '0'
18B76E:  POP.W           {R8,R9,R11}
18B772:  POP             {R4-R7,PC}
