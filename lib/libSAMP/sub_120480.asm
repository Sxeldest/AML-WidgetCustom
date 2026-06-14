; =========================================================
; Game Engine Function: sub_120480
; Address            : 0x120480 - 0x1204B6
; =========================================================

120480:  PUSH            {R4,R6,R7,LR}
120482:  ADD             R7, SP, #8
120484:  LDRB.W          R12, [R0,#5]
120488:  CMP.W           R12, #0
12048C:  ITT NE
12048E:  MOVNE           R0, #0
120490:  POPNE           {R4,R6,R7,PC}
120492:  LDR.W           R12, [R7,#arg_0]
120496:  LDR             R4, =(off_23494C - 0x12049C)
120498:  ADD             R4, PC; off_23494C
12049A:  LDR             R4, [R4]; dword_23DF24
12049C:  LDR.W           LR, [R4]
1204A0:  MOVW            R4, #:lower16:unk_270B3D
1204A4:  STR.W           R12, [R7,#arg_0]
1204A8:  MOVT            R4, #:upper16:unk_270B3D
1204AC:  ADD.W           R12, LR, R4
1204B0:  POP.W           {R4,R6,R7,LR}
1204B4:  BX              R12
