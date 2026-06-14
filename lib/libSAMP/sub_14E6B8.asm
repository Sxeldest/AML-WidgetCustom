; =========================================================
; Game Engine Function: sub_14E6B8
; Address            : 0x14E6B8 - 0x14E770
; =========================================================

14E6B8:  PUSH            {R4,R6,R7,LR}
14E6BA:  ADD             R7, SP, #8
14E6BC:  SUB.W           SP, SP, #0x240
14E6C0:  LDRD.W          R1, R0, [R0]; src
14E6C4:  ADD             R4, SP, #0x248+var_238
14E6C6:  ASRS            R2, R0, #0x1F
14E6C8:  MOVS            R3, #0
14E6CA:  ADD.W           R0, R0, R2,LSR#29
14E6CE:  MOVS            R2, #1
14E6D0:  ADD.W           R2, R2, R0,ASR#3; size
14E6D4:  MOV             R0, R4; int
14E6D6:  BL              sub_17D4F2
14E6DA:  ADD             R0, SP, #0x248+dest; int
14E6DC:  MOV.W           R1, #0x100; n
14E6E0:  BLX             sub_22178C
14E6E4:  SUB.W           R1, R7, #-var_9; int
14E6E8:  MOV             R0, R4; int
14E6EA:  MOVS            R2, #8
14E6EC:  MOVS            R3, #1
14E6EE:  BL              sub_17D786
14E6F2:  LDRB.W          R2, [R7,#var_9]
14E6F6:  ADD             R0, SP, #0x248+var_238; int
14E6F8:  ADD             R1, SP, #0x248+dest; dest
14E6FA:  BL              sub_17D744
14E6FE:  ADD             R0, SP, #0x248+var_238; int
14E700:  ADD             R1, SP, #0x248+var_114; int
14E702:  MOVS            R2, #0x20 ; ' '
14E704:  MOVS            R3, #1
14E706:  BL              sub_17D786
14E70A:  ADD             R0, SP, #0x248+var_238; int
14E70C:  ADD             R1, SP, #0x248+var_118; int
14E70E:  MOVS            R2, #0x20 ; ' '
14E710:  MOVS            R3, #1
14E712:  BL              sub_17D786
14E716:  ADD             R0, SP, #0x248+var_238; int
14E718:  ADD             R1, SP, #0x248+var_11C; int
14E71A:  MOVS            R2, #0x20 ; ' '
14E71C:  MOVS            R3, #1
14E71E:  BL              sub_17D786
14E722:  ADD             R0, SP, #0x248+var_238; int
14E724:  ADD             R1, SP, #0x248+var_120; int
14E726:  MOVS            R2, #0x20 ; ' '
14E728:  MOVS            R3, #1
14E72A:  BL              sub_17D786
14E72E:  ADD             R0, SP, #0x248+var_238; int
14E730:  ADDW            R1, SP, #0x248+var_121; int
14E734:  MOVS            R2, #8
14E736:  MOVS            R3, #1
14E738:  BL              sub_17D786
14E73C:  LDR             R0, =(off_234A1C - 0x14E742)
14E73E:  ADD             R0, PC; off_234A1C
14E740:  LDR             R0, [R0]; dword_23DF04
14E742:  LDR             R0, [R0]; int
14E744:  CBZ             R0, loc_14E764
14E746:  LDRB.W          R1, [SP,#0x248+var_121]
14E74A:  LDRD.W          R3, R2, [SP,#0x248+var_118]; int
14E74E:  LDRD.W          R4, R12, [SP,#0x248+var_120]
14E752:  CMP             R1, #0
14E754:  IT NE
14E756:  MOVNE           R1, #1
14E758:  STR             R1, [SP,#0x248+var_240]; int
14E75A:  ADD             R1, SP, #0x248+dest; int
14E75C:  STRD.W          R12, R4, [SP,#0x248+var_248]; float
14E760:  BL              sub_E3088
14E764:  ADD             R0, SP, #0x248+var_238
14E766:  BL              sub_17D542
14E76A:  ADD.W           SP, SP, #0x240
14E76E:  POP             {R4,R6,R7,PC}
