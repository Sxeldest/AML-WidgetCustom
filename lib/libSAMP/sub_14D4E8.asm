; =========================================================
; Game Engine Function: sub_14D4E8
; Address            : 0x14D4E8 - 0x14D536
; =========================================================

14D4E8:  PUSH            {R7,LR}
14D4EA:  MOV             R7, SP
14D4EC:  SUB             SP, SP, #0x118
14D4EE:  LDRD.W          R1, R0, [R0]; src
14D4F2:  MOVS            R3, #0
14D4F4:  ASRS            R2, R0, #0x1F
14D4F6:  ADD.W           R0, R0, R2,LSR#29
14D4FA:  MOVS            R2, #1
14D4FC:  ADD.W           R2, R2, R0,ASR#3; size
14D500:  MOV             R0, SP; int
14D502:  BL              sub_17D4F2
14D506:  SUBS            R1, R7, #1; int
14D508:  MOVS            R2, #8
14D50A:  MOVS            R3, #1
14D50C:  BL              sub_17D786
14D510:  LDR             R0, =(off_23496C - 0x14D516)
14D512:  ADD             R0, PC; off_23496C
14D514:  LDR             R0, [R0]; dword_23DEF4
14D516:  LDR             R0, [R0]
14D518:  LDR.W           R0, [R0,#0x3B0]
14D51C:  LDR             R0, [R0]
14D51E:  CBZ             R0, loc_14D52C
14D520:  MOVW            R1, #0x13BC
14D524:  LDR             R0, [R0,R1]
14D526:  SUBS            R1, R7, #1
14D528:  BL              sub_141388
14D52C:  MOV             R0, SP
14D52E:  BL              sub_17D542
14D532:  ADD             SP, SP, #0x118
14D534:  POP             {R7,PC}
