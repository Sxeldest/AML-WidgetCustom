; =========================================================
; Game Engine Function: sub_146704
; Address            : 0x146704 - 0x146774
; =========================================================

146704:  PUSH            {R7,LR}
146706:  MOV             R7, SP
146708:  SUB             SP, SP, #0x118
14670A:  LDRD.W          R1, R0, [R0]; src
14670E:  MOVS            R3, #0
146710:  ASRS            R2, R0, #0x1F
146712:  ADD.W           R0, R0, R2,LSR#29
146716:  MOVS            R2, #1
146718:  ADD.W           R2, R2, R0,ASR#3; size
14671C:  ADD             R0, SP, #0x120+var_11C; int
14671E:  BL              sub_17D4F2
146722:  ADD.W           R1, SP, #0x120+var_11E; int
146726:  MOVS            R2, #0x10
146728:  MOVS            R3, #1
14672A:  BL              sub_17D786
14672E:  ADD             R0, SP, #0x120+var_11C; int
146730:  ADD.W           R1, SP, #0x120+var_11F; int
146734:  MOVS            R2, #8
146736:  MOVS            R3, #1
146738:  BL              sub_17D786
14673C:  LDR             R0, =(off_234A54 - 0x146742)
14673E:  ADD             R0, PC; off_234A54
146740:  LDR             R0, [R0]; dword_381A0C
146742:  LDR             R0, [R0]
146744:  LDR             R0, [R0,#0x58]
146746:  CBZ             R0, loc_146750
146748:  LDRH.W          R1, [SP,#0x120+var_11E]
14674C:  BL              sub_15254C
146750:  LDR             R0, =(off_23496C - 0x14675A)
146752:  LDRH.W          R1, [SP,#0x120+var_11E]
146756:  ADD             R0, PC; off_23496C
146758:  LDRB.W          R2, [SP,#0x120+var_11F]
14675C:  LDR             R0, [R0]; dword_23DEF4
14675E:  LDR             R0, [R0]
146760:  LDR.W           R0, [R0,#0x3B0]
146764:  LDR             R0, [R0]
146766:  BL              sub_148CAE
14676A:  ADD             R0, SP, #0x120+var_11C
14676C:  BL              sub_17D542
146770:  ADD             SP, SP, #0x118
146772:  POP             {R7,PC}
