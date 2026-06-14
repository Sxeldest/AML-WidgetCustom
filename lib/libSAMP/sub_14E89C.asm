; =========================================================
; Game Engine Function: sub_14E89C
; Address            : 0x14E89C - 0x14E8FA
; =========================================================

14E89C:  PUSH            {R7,LR}
14E89E:  MOV             R7, SP
14E8A0:  SUB             SP, SP, #0x118
14E8A2:  LDRD.W          R1, R0, [R0]; src
14E8A6:  MOVS            R3, #0
14E8A8:  ASRS            R2, R0, #0x1F
14E8AA:  ADD.W           R0, R0, R2,LSR#29
14E8AE:  MOVS            R2, #1
14E8B0:  ADD.W           R2, R2, R0,ASR#3; size
14E8B4:  MOV             R0, SP; int
14E8B6:  BL              sub_17D4F2
14E8BA:  SUBS            R1, R7, #2; int
14E8BC:  MOVS            R2, #0x10
14E8BE:  MOVS            R3, #1
14E8C0:  BL              sub_17D786
14E8C4:  LDRH.W          R0, [R7,#-2]
14E8C8:  CMP.W           R0, #0x3E8
14E8CC:  BHI             loc_14E8F0
14E8CE:  LDR             R1, =(off_23496C - 0x14E8D4)
14E8D0:  ADD             R1, PC; off_23496C
14E8D2:  LDR             R1, [R1]; dword_23DEF4
14E8D4:  LDR             R1, [R1]
14E8D6:  LDR.W           R1, [R1,#0x3B0]
14E8DA:  LDR             R1, [R1,#0x10]
14E8DC:  ADDS            R2, R1, R0
14E8DE:  LDRB            R2, [R2,#4]
14E8E0:  CBZ             R2, loc_14E8F0
14E8E2:  ADD.W           R0, R1, R0,LSL#2
14E8E6:  LDR.W           R0, [R0,#0x3EC]
14E8EA:  CBZ             R0, loc_14E8F0
14E8EC:  BL              sub_1020FC
14E8F0:  MOV             R0, SP
14E8F2:  BL              sub_17D542
14E8F6:  ADD             SP, SP, #0x118
14E8F8:  POP             {R7,PC}
