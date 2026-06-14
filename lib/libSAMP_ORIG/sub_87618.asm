; =========================================================
; Game Engine Function: sub_87618
; Address            : 0x87618 - 0x8767C
; =========================================================

87618:  PUSH            {R4-R7,LR}
8761A:  ADD             R7, SP, #0xC
8761C:  PUSH.W          {R8-R11}
87620:  SUB             SP, SP, #4
87622:  CBZ             R2, loc_8766E
87624:  LDR.W           R10, [R7,#arg_0]
87628:  MOV             R8, R3
8762A:  LDR             R4, [R0]
8762C:  MOV             R5, R2
8762E:  MOV             R6, R1
87630:  MOV             R9, R0
87632:  MOV.W           R11, #0
87636:  B               loc_8763C
87638:  SUBS            R5, #1
8763A:  BEQ             loc_87672
8763C:  MOV             R0, R6
8763E:  BL              sub_86FD6
87642:  CMP             R0, #0
87644:  MOV.W           R0, #8
87648:  IT NE
8764A:  MOVNE           R0, #0xC
8764C:  LDR             R4, [R4,R0]
8764E:  LDR             R0, [R4,#8]
87650:  CMP             R0, #0
87652:  ITT EQ
87654:  LDREQ           R0, [R4,#0xC]
87656:  CMPEQ           R0, #0
87658:  BNE             loc_87638
8765A:  CMP             R11, R8
8765C:  ITT CC
8765E:  LDRBCC          R0, [R4]
87660:  STRBCC.W        R0, [R10,R11]
87664:  LDR.W           R4, [R9]
87668:  ADD.W           R11, R11, #1
8766C:  B               loc_87638
8766E:  MOV.W           R11, #0
87672:  MOV             R0, R11
87674:  ADD             SP, SP, #4
87676:  POP.W           {R8-R11}
8767A:  POP             {R4-R7,PC}
