; =========================================================
; Game Engine Function: sub_14B4F8
; Address            : 0x14B4F8 - 0x14B52E
; =========================================================

14B4F8:  PUSH            {R4,R6,R7,LR}
14B4FA:  ADD             R7, SP, #8
14B4FC:  MOV             R4, R0
14B4FE:  LDR.W           R0, [R0,#0x128]
14B502:  CBZ             R0, loc_14B524
14B504:  LDRB            R1, [R4,#0x19]
14B506:  CMP             R1, #0x13
14B508:  BNE             loc_14B51C
14B50A:  LDR             R1, [R4,#4]
14B50C:  CBZ             R1, loc_14B51C
14B50E:  BL              sub_104108
14B512:  CMP             R0, #0
14B514:  ITE NE
14B516:  LDRNE           R0, [R4,#4]
14B518:  LDREQ.W         R0, [R4,#0x128]
14B51C:  POP.W           {R4,R6,R7,LR}
14B520:  B.W             sub_F8E1C
14B524:  MOV             R0, #0x461C4000
14B52C:  POP             {R4,R6,R7,PC}
