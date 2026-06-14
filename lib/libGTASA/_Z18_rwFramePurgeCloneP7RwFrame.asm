; =========================================================
; Game Engine Function: _Z18_rwFramePurgeCloneP7RwFrame
; Address            : 0x1D80F8 - 0x1D8116
; =========================================================

1D80F8:  PUSH            {R4,R6,R7,LR}
1D80FA:  ADD             R7, SP, #8
1D80FC:  MOV             R4, R0
1D80FE:  LDR             R0, [R4,#4]
1D8100:  CBZ             R0, loc_1D810A
1D8102:  LDR.W           R1, [R0,#0xA0]
1D8106:  MOV             R0, R4
1D8108:  B               loc_1D810E
1D810A:  MOV             R0, R4
1D810C:  MOV             R1, R4
1D810E:  BL              sub_1D8116
1D8112:  MOV             R0, R4
1D8114:  POP             {R4,R6,R7,PC}
