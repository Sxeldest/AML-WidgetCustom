; =========================================================
; Game Engine Function: sub_21C3E8
; Address            : 0x21C3E8 - 0x21C426
; =========================================================

21C3E8:  PUSH            {R4-R7,LR}
21C3EA:  ADD             R7, SP, #0xC
21C3EC:  PUSH.W          {R11}
21C3F0:  MOV             R4, R1
21C3F2:  LDR             R1, =(aQjk+6 - 0x21C3FC); "(" ...
21C3F4:  LDR             R6, =(sub_216F98+1 - 0x21C402)
21C3F6:  MOV             R5, R0
21C3F8:  ADD             R1, PC; "("
21C3FA:  MOV             R0, R4
21C3FC:  ADDS            R2, R1, #1
21C3FE:  ADD             R6, PC; sub_216F98
21C400:  BLX             R6; sub_216F98
21C402:  LDR             R0, [R5,#8]
21C404:  MOV             R1, R4
21C406:  BL              sub_2154CC
21C40A:  LDR             R1, =(unk_901C1 - 0x21C412)
21C40C:  MOV             R0, R4
21C40E:  ADD             R1, PC; unk_901C1
21C410:  ADDS            R2, R1, #1
21C412:  BLX             R6; sub_216F98
21C414:  LDRD.W          R1, R2, [R5,#0xC]
21C418:  MOV             R0, R4
21C41A:  MOV             R3, R6
21C41C:  POP.W           {R11}
21C420:  POP.W           {R4-R7,LR}
21C424:  BX              R3; sub_216F98
