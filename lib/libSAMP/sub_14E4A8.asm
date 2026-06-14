; =========================================================
; Game Engine Function: sub_14E4A8
; Address            : 0x14E4A8 - 0x14E508
; =========================================================

14E4A8:  PUSH            {R4,R6,R7,LR}
14E4AA:  ADD             R7, SP, #8
14E4AC:  SUB             SP, SP, #0x118
14E4AE:  LDR             R1, =(off_23496C - 0x14E4B4)
14E4B0:  ADD             R1, PC; off_23496C
14E4B2:  LDR             R1, [R1]; dword_23DEF4
14E4B4:  LDR             R1, [R1]
14E4B6:  LDR.W           R1, [R1,#0x3B0]
14E4BA:  LDR             R4, [R1,#0x1C]
14E4BC:  CBZ             R4, loc_14E504
14E4BE:  LDRD.W          R1, R0, [R0]; src
14E4C2:  MOVS            R3, #0
14E4C4:  ASRS            R2, R0, #0x1F
14E4C6:  ADD.W           R0, R0, R2,LSR#29
14E4CA:  MOVS            R2, #1
14E4CC:  ADD.W           R2, R2, R0,ASR#3; size
14E4D0:  MOV             R0, SP; int
14E4D2:  BL              sub_17D4F2
14E4D6:  SUB.W           R1, R7, #-var_A; int
14E4DA:  MOVS            R2, #0x10
14E4DC:  MOVS            R3, #1
14E4DE:  BL              sub_17D786
14E4E2:  LDRH.W          R0, [R7,#var_A]
14E4E6:  LSRS            R1, R0, #3
14E4E8:  CMP             R1, #0x7C ; '|'
14E4EA:  BHI             loc_14E4FE
14E4EC:  ADDS            R1, R4, R0
14E4EE:  LDRB.W          R1, [R1,#0xFA0]
14E4F2:  CBZ             R1, loc_14E4FE
14E4F4:  LDR.W           R0, [R4,R0,LSL#2]
14E4F8:  CBZ             R0, loc_14E4FE
14E4FA:  BL              sub_F7F98
14E4FE:  MOV             R0, SP
14E500:  BL              sub_17D542
14E504:  ADD             SP, SP, #0x118
14E506:  POP             {R4,R6,R7,PC}
