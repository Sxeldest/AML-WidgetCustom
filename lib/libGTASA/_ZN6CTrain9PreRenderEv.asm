; =========================================================
; Game Engine Function: _ZN6CTrain9PreRenderEv
; Address            : 0x57C7E0 - 0x57C822
; =========================================================

57C7E0:  PUSH            {R4,R6,R7,LR}
57C7E2:  ADD             R7, SP, #8
57C7E4:  MOV             R4, R0
57C7E6:  BLX             j__ZN8CVehicle9PreRenderEv; CVehicle::PreRender(void)
57C7EA:  LDRH.W          R0, [R4,#0x5CC]
57C7EE:  TST.W           R0, #8
57C7F2:  BNE             loc_57C808
57C7F4:  LSLS            R0, R0, #0x1B
57C7F6:  IT PL
57C7F8:  POPPL           {R4,R6,R7,PC}
57C7FA:  LDR             R1, [R4,#0x14]; CMatrix *
57C7FC:  MOV             R0, R4; this
57C7FE:  MOVS            R2, #0x15; unsigned int
57C800:  POP.W           {R4,R6,R7,LR}
57C804:  B.W             sub_19B39C
57C808:  LDRH            R0, [R4,#0x26]
57C80A:  MOVW            R2, #0x1C1
57C80E:  LDR             R1, [R4,#0x14]; CMatrix *
57C810:  CMP             R0, R2
57C812:  MOV             R0, R4; this
57C814:  ITE EQ
57C816:  MOVEQ           R2, #5
57C818:  MOVNE           R2, #0x25 ; '%'; unsigned int
57C81A:  POP.W           {R4,R6,R7,LR}
57C81E:  B.W             sub_19B39C
