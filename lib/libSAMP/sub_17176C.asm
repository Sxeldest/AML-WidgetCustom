; =========================================================
; Game Engine Function: sub_17176C
; Address            : 0x17176C - 0x1717C6
; =========================================================

17176C:  PUSH            {R4-R7,LR}
17176E:  ADD             R7, SP, #0xC
171770:  PUSH.W          {R11}
171774:  MOV             R5, R0
171776:  LDR             R0, =(dword_381B58 - 0x171782)
171778:  MOV             R4, R1
17177A:  LDR.W           R1, [R1,#0x27C]
17177E:  ADD             R0, PC; dword_381B58
171780:  LDR             R0, [R0]
171782:  LDR.W           R2, [R0,#0x368]
171786:  ADDS            R2, #1
171788:  STR.W           R2, [R0,#0x368]
17178C:  MOV             R0, R5
17178E:  BL              sub_16E87C
171792:  LDR.W           R0, [R4,#0x14C]
171796:  CMP             R0, #1
171798:  BLT             loc_1717C0
17179A:  MOVS            R6, #0
17179C:  LDR.W           R1, [R4,#0x154]
1717A0:  LDR.W           R1, [R1,R6,LSL#2]
1717A4:  LDRB.W          R2, [R1,#0x7A]
1717A8:  CBZ             R2, loc_1717BA
1717AA:  LDRB.W          R2, [R1,#0x81]
1717AE:  CBNZ            R2, loc_1717BA
1717B0:  MOV             R0, R5
1717B2:  BL              sub_17176C
1717B6:  LDR.W           R0, [R4,#0x14C]
1717BA:  ADDS            R6, #1
1717BC:  CMP             R6, R0
1717BE:  BLT             loc_17179C
1717C0:  POP.W           {R11}
1717C4:  POP             {R4-R7,PC}
