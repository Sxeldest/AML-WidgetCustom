; =========================================================
; Game Engine Function: sub_14D494
; Address            : 0x14D494 - 0x14D4D8
; =========================================================

14D494:  PUSH            {R7,LR}
14D496:  MOV             R7, SP
14D498:  SUB             SP, SP, #0x118
14D49A:  LDRD.W          R1, R0, [R0]; src
14D49E:  MOVS            R3, #0
14D4A0:  ASRS            R2, R0, #0x1F
14D4A2:  ADD.W           R0, R0, R2,LSR#29
14D4A6:  MOVS            R2, #1
14D4A8:  ADD.W           R2, R2, R0,ASR#3; size
14D4AC:  MOV             R0, SP; int
14D4AE:  BL              sub_17D4F2
14D4B2:  SUBS            R1, R7, #1; int
14D4B4:  MOVS            R2, #8
14D4B6:  MOVS            R3, #1
14D4B8:  BL              sub_17D786
14D4BC:  LDR             R0, =(off_234970 - 0x14D4C2)
14D4BE:  ADD             R0, PC; off_234970
14D4C0:  LDR             R0, [R0]; dword_23DEF0
14D4C2:  LDR             R0, [R0]
14D4C4:  CBZ             R0, loc_14D4CE
14D4C6:  LDRB.W          R1, [R7,#-1]
14D4CA:  BL              sub_FA2A8
14D4CE:  MOV             R0, SP
14D4D0:  BL              sub_17D542
14D4D4:  ADD             SP, SP, #0x118
14D4D6:  POP             {R7,PC}
