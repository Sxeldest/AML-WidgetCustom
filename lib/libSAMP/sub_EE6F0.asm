; =========================================================
; Game Engine Function: sub_EE6F0
; Address            : 0xEE6F0 - 0xEE754
; =========================================================

EE6F0:  PUSH            {R4-R7,LR}
EE6F2:  ADD             R7, SP, #0xC
EE6F4:  PUSH.W          {R11}
EE6F8:  SUB             SP, SP, #8
EE6FA:  MOV             R5, R3
EE6FC:  MOV             R3, R2
EE6FE:  MOV             R4, R0
EE700:  CMP             R1, R2
EE702:  BEQ             loc_EE712
EE704:  MOV             R6, R1
EE706:  LDRB.W          R0, [R6],#1
EE70A:  CMP             R0, #0x3A ; ':'
EE70C:  IT NE
EE70E:  MOVNE           R6, R1
EE710:  B               loc_EE714
EE712:  MOV             R6, R1
EE714:  ADD             R2, SP, #0x18+var_14
EE716:  MOV             R0, R6
EE718:  MOV             R1, R3
EE71A:  BL              sub_EE754
EE71E:  CMP             R0, R6
EE720:  BNE             loc_EE728
EE722:  CBZ             R5, loc_EE728
EE724:  LDR             R1, [R4,#8]
EE726:  B               loc_EE72E
EE728:  SUBS            R1, R0, R6
EE72A:  STRD.W          R6, R1, [R4,#4]
EE72E:  CMP             R1, #2
EE730:  BNE             loc_EE74C
EE732:  LDR             R1, [R4,#4]
EE734:  LDRB            R2, [R1]
EE736:  CMP             R2, #0x25 ; '%'
EE738:  BNE             loc_EE74C
EE73A:  LDRB            R1, [R1,#1]
EE73C:  CMP             R1, #0x46 ; 'F'
EE73E:  BEQ             loc_EE748
EE740:  CMP             R1, #0x54 ; 'T'
EE742:  BNE             loc_EE74C
EE744:  MOVS            R1, #2
EE746:  B               loc_EE74A
EE748:  MOVS            R1, #1
EE74A:  STR             R1, [R4]
EE74C:  ADD             SP, SP, #8
EE74E:  POP.W           {R11}
EE752:  POP             {R4-R7,PC}
