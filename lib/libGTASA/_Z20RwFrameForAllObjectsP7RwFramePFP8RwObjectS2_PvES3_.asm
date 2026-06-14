; =========================================================
; Game Engine Function: _Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_
; Address            : 0x1D88D8 - 0x1D8906
; =========================================================

1D88D8:  PUSH            {R4-R7,LR}
1D88DA:  ADD             R7, SP, #0xC
1D88DC:  PUSH.W          {R8,R9,R11}
1D88E0:  MOV             R8, R0
1D88E2:  MOV             R9, R2
1D88E4:  MOV             R5, R8
1D88E6:  MOV             R6, R1
1D88E8:  LDR.W           R0, [R5,#0x90]!
1D88EC:  CMP             R0, R5
1D88EE:  BEQ             loc_1D88FE
1D88F0:  LDR.W           R4, [R0],#-8
1D88F4:  MOV             R1, R9
1D88F6:  BLX             R6
1D88F8:  CMP             R0, #0
1D88FA:  MOV             R0, R4
1D88FC:  BNE             loc_1D88EC
1D88FE:  MOV             R0, R8
1D8900:  POP.W           {R8,R9,R11}
1D8904:  POP             {R4-R7,PC}
