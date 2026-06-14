; =========================================================
; Game Engine Function: sub_1133E2
; Address            : 0x1133E2 - 0x11340C
; =========================================================

1133E2:  PUSH            {R4,R5,R7,LR}
1133E4:  ADD             R7, SP, #8
1133E6:  LDR             R5, [R0]
1133E8:  MOV             R4, R0
1133EA:  CBZ             R5, loc_113408
1133EC:  LDR             R0, [R4,#4]
1133EE:  CMP             R0, R5
1133F0:  BEQ             loc_113400
1133F2:  SUBS            R0, #8
1133F4:  BL              sub_1133AC
1133F8:  CMP             R0, R5
1133FA:  BNE             loc_1133F2
1133FC:  LDR             R0, [R4]
1133FE:  B               loc_113402
113400:  MOV             R0, R5; void *
113402:  STR             R5, [R4,#4]
113404:  BLX             j__ZdlPv; operator delete(void *)
113408:  MOV             R0, R4
11340A:  POP             {R4,R5,R7,PC}
