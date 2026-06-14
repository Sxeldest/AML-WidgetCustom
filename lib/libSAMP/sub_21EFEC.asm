; =========================================================
; Game Engine Function: sub_21EFEC
; Address            : 0x21EFEC - 0x21F010
; =========================================================

21EFEC:  PUSH            {R4,R5,R7,LR}
21EFEE:  ADD             R7, SP, #8
21EFF0:  LDR             R5, [R1,#8]
21EFF2:  LDR             R4, [R0,#4]
21EFF4:  LDR             R5, [R5,#4]
21EFF6:  CMP             R4, R5
21EFF8:  BEQ             loc_21F008
21EFFA:  LDR             R0, [R0,#8]
21EFFC:  LDR             R4, [R0]
21EFFE:  LDR.W           R12, [R4,#0x1C]
21F002:  POP.W           {R4,R5,R7,LR}
21F006:  BX              R12
21F008:  POP.W           {R4,R5,R7,LR}
21F00C:  B.W             sub_21EFA4
