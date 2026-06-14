; =========================================================
; Game Engine Function: sub_14C6D0
; Address            : 0x14C6D0 - 0x14C746
; =========================================================

14C6D0:  PUSH            {R7,LR}
14C6D2:  MOV             R7, SP
14C6D4:  SUB             SP, SP, #0x118
14C6D6:  LDRD.W          R1, R0, [R0]; src
14C6DA:  MOVS            R3, #0
14C6DC:  ASRS            R2, R0, #0x1F
14C6DE:  ADD.W           R0, R0, R2,LSR#29
14C6E2:  MOVS            R2, #1
14C6E4:  ADD.W           R2, R2, R0,ASR#3; size
14C6E8:  MOV             R0, SP; int
14C6EA:  BL              sub_17D4F2
14C6EE:  SUBS            R1, R7, #2; int
14C6F0:  MOVS            R2, #0x10
14C6F2:  MOVS            R3, #1
14C6F4:  BL              sub_17D786
14C6F8:  SUBS            R1, R7, #3; int
14C6FA:  MOV             R0, SP; int
14C6FC:  MOVS            R2, #8
14C6FE:  MOVS            R3, #1
14C700:  BL              sub_17D786
14C704:  LDRH.W          R0, [R7,#-2]
14C708:  CMP.W           R0, #0x3EC
14C70C:  BHI             loc_14C73C
14C70E:  LDR             R1, =(off_23496C - 0x14C714)
14C710:  ADD             R1, PC; off_23496C
14C712:  LDR             R1, [R1]; dword_23DEF4
14C714:  LDR             R1, [R1]
14C716:  LDR.W           R1, [R1,#0x3B0]
14C71A:  LDR             R1, [R1]
14C71C:  ADDS            R2, R1, R0
14C71E:  LDRB.W          R2, [R2,#0xFB4]
14C722:  CBZ             R2, loc_14C73C
14C724:  ADD.W           R0, R1, R0,LSL#2
14C728:  LDR             R0, [R0,#4]
14C72A:  CBZ             R0, loc_14C73C
14C72C:  LDR             R0, [R0]
14C72E:  CBZ             R0, loc_14C73C
14C730:  LDRB.W          R1, [R7,#-3]
14C734:  CMP             R1, #0
14C736:  IT NE
14C738:  MOVNE           R1, #1
14C73A:  STRB            R1, [R0]
14C73C:  MOV             R0, SP
14C73E:  BL              sub_17D542
14C742:  ADD             SP, SP, #0x118
14C744:  POP             {R7,PC}
