; =========================================================
; Game Engine Function: sub_14D6D8
; Address            : 0x14D6D8 - 0x14D7C4
; =========================================================

14D6D8:  PUSH            {R4,R5,R7,LR}
14D6DA:  ADD             R7, SP, #8
14D6DC:  SUB             SP, SP, #0x128
14D6DE:  LDRD.W          R1, R0, [R0]; src
14D6E2:  MOVS            R3, #0
14D6E4:  ASRS            R2, R0, #0x1F
14D6E6:  ADD.W           R0, R0, R2,LSR#29
14D6EA:  MOVS            R2, #1
14D6EC:  ADD.W           R2, R2, R0,ASR#3; size
14D6F0:  ADD             R0, SP, #0x130+var_12C; int
14D6F2:  BL              sub_17D4F2
14D6F6:  SUB.W           R1, R7, #-var_9; int
14D6FA:  MOVS            R2, #8
14D6FC:  MOVS            R3, #1
14D6FE:  BL              sub_17D786
14D702:  ADD             R4, SP, #0x130+var_18
14D704:  ADD             R0, SP, #0x130+var_12C; int
14D706:  MOVS            R2, #0x20 ; ' '
14D708:  MOVS            R3, #1
14D70A:  MOV             R1, R4; int
14D70C:  BL              sub_17D786
14D710:  ADDS            R1, R4, #4; int
14D712:  ADD             R0, SP, #0x130+var_12C; int
14D714:  MOVS            R2, #0x20 ; ' '
14D716:  MOVS            R3, #1
14D718:  BL              sub_17D786
14D71C:  ADD.W           R1, R4, #8; int
14D720:  ADD             R0, SP, #0x130+var_12C; int
14D722:  MOVS            R2, #0x20 ; ' '
14D724:  MOVS            R3, #1
14D726:  BL              sub_17D786
14D72A:  LDR             R0, =(off_23496C - 0x14D730)
14D72C:  ADD             R0, PC; off_23496C
14D72E:  LDR             R0, [R0]; dword_23DEF4
14D730:  LDR             R0, [R0]
14D732:  LDR.W           R0, [R0,#0x3B0]
14D736:  LDR             R4, [R0,#4]
14D738:  CMP             R4, #0
14D73A:  BEQ             loc_14D7BA
14D73C:  LDR             R0, =(off_234970 - 0x14D742)
14D73E:  ADD             R0, PC; off_234970
14D740:  LDR             R0, [R0]; dword_23DEF0
14D742:  LDR             R0, [R0]
14D744:  BL              sub_E35A0
14D748:  MOV             R5, R0
14D74A:  CBZ             R0, loc_14D7BA
14D74C:  MOV             R0, R5
14D74E:  BL              sub_104108
14D752:  CBZ             R0, loc_14D7BA
14D754:  MOV             R0, R5
14D756:  BL              sub_104326
14D75A:  CBZ             R0, loc_14D7BA
14D75C:  MOVW            R1, #0xEA60
14D760:  ADDS            R2, R4, R1
14D762:  LDRD.W          R1, R2, [R2]
14D766:  CMP             R1, R2
14D768:  BEQ             loc_14D782
14D76A:  MOV.W           R3, #0x1F40
14D76E:  LDR             R5, [R1]
14D770:  ADD.W           R5, R4, R5,LSL#2
14D774:  LDR             R5, [R5,R3]
14D776:  CMP             R5, R0
14D778:  BEQ             loc_14D782
14D77A:  ADDS            R1, #4
14D77C:  CMP             R1, R2
14D77E:  BNE             loc_14D76E
14D780:  B               loc_14D7BA
14D782:  CMP             R1, R2
14D784:  BEQ             loc_14D7BA
14D786:  LDRH            R5, [R1]
14D788:  LSRS            R0, R5, #4
14D78A:  CMP             R0, #0x7C ; '|'
14D78C:  BHI             loc_14D7BA
14D78E:  MOV             R0, R4
14D790:  MOV             R1, R5
14D792:  BL              sub_F2396
14D796:  CBZ             R0, loc_14D7BA
14D798:  LDR.W           R0, [R4,R5,LSL#2]
14D79C:  CBZ             R0, loc_14D7BA
14D79E:  LDRB.W          R1, [R7,#var_9]
14D7A2:  CBZ             R1, loc_14D7B2
14D7A4:  CMP             R1, #1
14D7A6:  BNE             loc_14D7BA
14D7A8:  ADD             R3, SP, #0x130+var_18
14D7AA:  LDM             R3, {R1-R3}
14D7AC:  BL              sub_F8A08
14D7B0:  B               loc_14D7BA
14D7B2:  ADD             R3, SP, #0x130+var_18
14D7B4:  LDM             R3, {R1-R3}
14D7B6:  BL              sub_F89BC
14D7BA:  ADD             R0, SP, #0x130+var_12C
14D7BC:  BL              sub_17D542
14D7C0:  ADD             SP, SP, #0x128
14D7C2:  POP             {R4,R5,R7,PC}
