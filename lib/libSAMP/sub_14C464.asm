; =========================================================
; Game Engine Function: sub_14C464
; Address            : 0x14C464 - 0x14C4D8
; =========================================================

14C464:  PUSH            {R7,LR}
14C466:  MOV             R7, SP
14C468:  SUB             SP, SP, #0x130
14C46A:  LDRD.W          R1, R0, [R0]; src
14C46E:  MOVS            R3, #0
14C470:  ASRS            R2, R0, #0x1F
14C472:  ADD.W           R0, R0, R2,LSR#29
14C476:  MOVS            R2, #1
14C478:  ADD.W           R2, R2, R0,ASR#3; size
14C47C:  ADD             R0, SP, #0x138+var_130; int
14C47E:  BL              sub_17D4F2
14C482:  ADD             R1, SP, #0x138+var_C; int
14C484:  MOVS            R2, #0x20 ; ' '
14C486:  MOVS            R3, #1
14C488:  BL              sub_17D786
14C48C:  ADD             R0, SP, #0x138+var_130; int
14C48E:  ADD             R1, SP, #0x138+var_10; int
14C490:  MOVS            R2, #0x20 ; ' '
14C492:  MOVS            R3, #1
14C494:  BL              sub_17D786
14C498:  ADD             R0, SP, #0x138+var_130; int
14C49A:  ADD             R1, SP, #0x138+var_14; int
14C49C:  MOVS            R2, #0x20 ; ' '
14C49E:  MOVS            R3, #1
14C4A0:  BL              sub_17D786
14C4A4:  ADD             R0, SP, #0x138+var_130; int
14C4A6:  ADD             R1, SP, #0x138+var_18; int
14C4A8:  MOVS            R2, #0x20 ; ' '
14C4AA:  MOVS            R3, #1
14C4AC:  BL              sub_17D786
14C4B0:  ADD             R0, SP, #0x138+var_130; int
14C4B2:  ADD             R1, SP, #0x138+var_1C; int
14C4B4:  MOVS            R2, #0x20 ; ' '
14C4B6:  MOVS            R3, #1
14C4B8:  BL              sub_17D786
14C4BC:  LDR             R0, [SP,#0x138+var_C]; int
14C4BE:  LDRD.W          R2, R1, [SP,#0x138+var_14]; int
14C4C2:  LDRD.W          R12, R3, [SP,#0x138+var_1C]; int
14C4C6:  STR.W           R12, [SP,#0x138+var_138]; float
14C4CA:  BL              sub_108BC4
14C4CE:  ADD             R0, SP, #0x138+var_130
14C4D0:  BL              sub_17D542
14C4D4:  ADD             SP, SP, #0x130
14C4D6:  POP             {R7,PC}
