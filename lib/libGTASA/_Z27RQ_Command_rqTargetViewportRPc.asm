; =========================================================
; Game Engine Function: _Z27RQ_Command_rqTargetViewportRPc
; Address            : 0x1D101A - 0x1D104A
; =========================================================

1D101A:  PUSH            {R4,R6,R7,LR}
1D101C:  ADD             R7, SP, #8
1D101E:  LDR             R3, [R0]
1D1020:  ADDS            R1, R3, #4
1D1022:  ADD.W           R2, R3, #8
1D1026:  MOV             LR, R3
1D1028:  ADD.W           R4, R3, #0xC
1D102C:  LDR.W           R12, [LR],#0x10
1D1030:  STR             R1, [R0]
1D1032:  LDR             R1, [R3,#4]; y
1D1034:  STR             R2, [R0]
1D1036:  LDR             R2, [R3,#8]; width
1D1038:  STR             R4, [R0]
1D103A:  LDR             R3, [R3,#0xC]; height
1D103C:  STR.W           LR, [R0]
1D1040:  MOV             R0, R12; x
1D1042:  POP.W           {R4,R6,R7,LR}
1D1046:  B.W             j_glViewport
