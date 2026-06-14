; =========================================================
; Game Engine Function: _Z20RwRGBAGetRasterPixelP6RwRGBAP8RwRasterii
; Address            : 0x1DA570 - 0x1DA5F0
; =========================================================

1DA570:  PUSH            {R4-R7,LR}
1DA572:  ADD             R7, SP, #0xC
1DA574:  PUSH.W          {R8-R10}
1DA578:  SUB             SP, SP, #0x10
1DA57A:  MOV             R10, R3
1DA57C:  MOV             R4, R2
1DA57E:  MOV             R9, R1
1DA580:  MOV             R8, R0
1DA582:  MOVS            R0, #0; int
1DA584:  MOVS            R1, #0; int
1DA586:  MOVS            R2, #0; int
1DA588:  MOVS            R3, #0; int
1DA58A:  MOVS            R6, #0
1DA58C:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
1DA590:  MOV             R5, R0
1DA592:  CBZ             R5, loc_1DA5E6
1DA594:  MOVS            R0, #1
1DA596:  STRD.W          R4, R10, [SP,#0x28+var_28]
1DA59A:  STRD.W          R0, R0, [SP,#0x28+var_20]
1DA59E:  MOV             R2, SP
1DA5A0:  MOV             R0, R5
1DA5A2:  MOV             R1, R9
1DA5A4:  BLX             j__Z17RwRasterSubRasterP8RwRasterS0_P6RwRect; RwRasterSubRaster(RwRaster *,RwRaster *,RwRect *)
1DA5A8:  CBZ             R0, loc_1DA5DE
1DA5AA:  MOVS            R0, #1; int
1DA5AC:  MOVS            R1, #1; int
1DA5AE:  MOVS            R2, #0x20 ; ' '; int
1DA5B0:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1DA5B4:  MOV             R4, R0
1DA5B6:  CBZ             R4, loc_1DA5DE
1DA5B8:  LDR             R0, =(RwEngineInstance_ptr - 0x1DA5C6)
1DA5BA:  MOV             R1, R5
1DA5BC:  STR.W           R8, [R4,#0x14]
1DA5C0:  MOVS            R2, #0
1DA5C2:  ADD             R0, PC; RwEngineInstance_ptr
1DA5C4:  LDR             R0, [R0]; RwEngineInstance
1DA5C6:  LDR             R0, [R0]
1DA5C8:  LDR             R3, [R0,#0x60]
1DA5CA:  MOV             R0, R4
1DA5CC:  BLX             R3
1DA5CE:  MOV             R0, R4
1DA5D0:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DA5D4:  MOV             R0, R5
1DA5D6:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1DA5DA:  MOV             R6, R8
1DA5DC:  B               loc_1DA5E6
1DA5DE:  MOV             R0, R5
1DA5E0:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1DA5E4:  MOVS            R6, #0
1DA5E6:  MOV             R0, R6
1DA5E8:  ADD             SP, SP, #0x10
1DA5EA:  POP.W           {R8-R10}
1DA5EE:  POP             {R4-R7,PC}
