; =========================================================
; Game Engine Function: _Z14RwRasterUnlockP8RwRaster
; Address            : 0x1DA738 - 0x1DA756
; =========================================================

1DA738:  PUSH            {R4,R6,R7,LR}
1DA73A:  ADD             R7, SP, #8
1DA73C:  MOV             R4, R0
1DA73E:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA748)
1DA740:  MOV             R1, R4
1DA742:  MOVS            R2, #0
1DA744:  ADD             R0, PC; RwEngineInstance_ptr
1DA746:  LDR             R0, [R0]; RwEngineInstance
1DA748:  LDR             R0, [R0]
1DA74A:  LDR.W           R3, [R0,#0x88]
1DA74E:  MOVS            R0, #0
1DA750:  BLX             R3
1DA752:  MOV             R0, R4
1DA754:  POP             {R4,R6,R7,PC}
