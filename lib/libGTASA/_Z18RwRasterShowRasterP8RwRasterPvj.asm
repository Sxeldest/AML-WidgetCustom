; =========================================================
; Game Engine Function: _Z18RwRasterShowRasterP8RwRasterPvj
; Address            : 0x1DA9BC - 0x1DA9EE
; =========================================================

1DA9BC:  PUSH            {R4-R7,LR}
1DA9BE:  ADD             R7, SP, #0xC
1DA9C0:  PUSH.W          {R8}
1DA9C4:  MOV             R6, R0
1DA9C6:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA9D0)
1DA9C8:  MOV             R8, R2
1DA9CA:  MOV             R5, R1
1DA9CC:  ADD             R0, PC; RwEngineInstance_ptr
1DA9CE:  LDR             R0, [R0]; RwEngineInstance
1DA9D0:  LDR             R0, [R0]
1DA9D2:  LDR.W           R4, [R0,#0x98]
1DA9D6:  BLX             j__Z17_rwResourcesPurgev; _rwResourcesPurge(void)
1DA9DA:  MOV             R0, R6
1DA9DC:  MOV             R1, R5
1DA9DE:  MOV             R2, R8
1DA9E0:  BLX             R4
1DA9E2:  CMP             R0, #0
1DA9E4:  IT NE
1DA9E6:  MOVNE           R0, R6
1DA9E8:  POP.W           {R8}
1DA9EC:  POP             {R4-R7,PC}
