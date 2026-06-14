; =========================================================
; Game Engine Function: sub_7157C
; Address            : 0x7157C - 0x715CE
; =========================================================

7157C:  PUSH            {R4-R7,LR}
7157E:  ADD             R7, SP, #0xC
71580:  PUSH.W          {R11}
71584:  SUB             SP, SP, #0x10
71586:  LDR             R6, [R0,#4]
71588:  MOV             R0, R3
7158A:  MOV             R4, R2
7158C:  MOV             R5, R1
7158E:  BL              sub_88A34
71592:  MOV             R3, R0; int
71594:  LDR             R0, [R7,#arg_0]
71596:  CBZ             R0, loc_715AC
71598:  MOVS            R0, #0xF
7159A:  MOVS            R1, #0
7159C:  STRD.W          R1, R0, [SP,#0x20+var_20]; float
715A0:  MOV             R0, R6; int
715A2:  MOV             R1, R5; int
715A4:  MOV             R2, R4; int
715A6:  BL              sub_9D624
715AA:  B               loc_715C6
715AC:  VLDR            S0, [R7,#arg_4]
715B0:  MOVS            R0, #0xF
715B2:  MOVS            R1, #0
715B4:  MOV             R2, R4; int
715B6:  STRD.W          R1, R0, [SP,#0x20+var_20]; float
715BA:  MOV             R0, R6; int
715BC:  MOV             R1, R5; int
715BE:  VSTR            S0, [SP,#0x20+var_18]
715C2:  BL              sub_9D568
715C6:  ADD             SP, SP, #0x10
715C8:  POP.W           {R11}
715CC:  POP             {R4-R7,PC}
