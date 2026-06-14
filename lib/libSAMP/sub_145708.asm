; =========================================================
; Game Engine Function: sub_145708
; Address            : 0x145708 - 0x1457A0
; =========================================================

145708:  PUSH            {R7,LR}
14570A:  MOV             R7, SP
14570C:  SUB             SP, SP, #0x118
14570E:  LDRD.W          R1, R0, [R0]; src
145712:  MOVS            R3, #0
145714:  ASRS            R2, R0, #0x1F
145716:  ADD.W           R0, R0, R2,LSR#29
14571A:  MOVS            R2, #1
14571C:  ADD.W           R2, R2, R0,ASR#3; size
145720:  MOV             R0, SP; int
145722:  BL              sub_17D4F2
145726:  SUBS            R1, R7, #2; int
145728:  MOVS            R2, #0x10
14572A:  MOVS            R3, #1
14572C:  BL              sub_17D786
145730:  SUBS            R1, R7, #3; int
145732:  MOV             R0, SP; int
145734:  MOVS            R2, #8
145736:  MOVS            R3, #1
145738:  BL              sub_17D786
14573C:  ADD             R1, SP, #0x120+var_C; int
14573E:  MOV             R0, SP; int
145740:  MOVS            R2, #8
145742:  MOVS            R3, #1
145744:  BL              sub_17D786
145748:  LDR             R0, =(off_23496C - 0x14574E)
14574A:  ADD             R0, PC; off_23496C
14574C:  LDR             R0, [R0]; dword_23DEF4
14574E:  LDR             R0, [R0]
145750:  LDR.W           R0, [R0,#0x3B0]
145754:  LDR             R0, [R0,#4]
145756:  CBZ             R0, loc_145796
145758:  LDRH.W          R1, [R7,#-2]
14575C:  LDRB.W          R3, [SP,#0x120+var_C]
145760:  LDRB.W          R2, [R7,#-3]
145764:  BL              sub_150144
145768:  BL              sub_F74A4
14576C:  CBNZ            R0, loc_145774
14576E:  BL              sub_F541C
145772:  CBZ             R0, loc_14577C
145774:  LDR             R0, [SP,#0x120+var_120]
145776:  CMP             R0, #0x29 ; ')'
145778:  BGE             loc_14578E
14577A:  B               loc_145796
14577C:  BL              sub_F4270
145780:  LDR             R1, [SP,#0x120+var_120]
145782:  MOVS            R2, #0
145784:  CMP             R1, #0x28 ; '('
145786:  IT GT
145788:  MOVGT           R2, #1
14578A:  TST             R0, R2
14578C:  BEQ             loc_145796
14578E:  MOV             R0, SP
145790:  MOVS            R1, #0x28 ; '('
145792:  BL              sub_1450C8
145796:  MOV             R0, SP
145798:  BL              sub_17D542
14579C:  ADD             SP, SP, #0x118
14579E:  POP             {R7,PC}
