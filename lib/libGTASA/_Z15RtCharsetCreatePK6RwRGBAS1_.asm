; =========================================================
; Game Engine Function: _Z15RtCharsetCreatePK6RwRGBAS1_
; Address            : 0x1ED278 - 0x1ED2F2
; =========================================================

1ED278:  PUSH            {R4-R7,LR}
1ED27A:  ADD             R7, SP, #0xC
1ED27C:  PUSH.W          {R8}
1ED280:  SUB             SP, SP, #8
1ED282:  MOV             R5, R0
1ED284:  CMP             R5, #0
1ED286:  MOV             R6, R1
1ED288:  IT NE
1ED28A:  CMPNE           R6, #0
1ED28C:  BEQ             loc_1ED2B4
1ED28E:  MOVS            R0, #0x80; int
1ED290:  MOVS            R1, #0x80; int
1ED292:  MOVS            R2, #0; int
1ED294:  MOVS            R3, #4; int
1ED296:  MOVS            R4, #0
1ED298:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
1ED29C:  MOV             R8, R0
1ED29E:  CMP.W           R8, #0
1ED2A2:  BEQ             loc_1ED2E8
1ED2A4:  MOV             R0, R8
1ED2A6:  MOV             R1, R5
1ED2A8:  MOV             R2, R6
1ED2AA:  BLX             j__Z18RtCharsetSetColorsP8RwRasterPK6RwRGBAS3_; RtCharsetSetColors(RwRaster *,RwRGBA const*,RwRGBA const*)
1ED2AE:  CBZ             R0, loc_1ED2CC
1ED2B0:  MOV             R4, R8
1ED2B2:  B               loc_1ED2E8
1ED2B4:  MOVS            R0, #0x16
1ED2B6:  MOVS            R4, #0
1ED2B8:  MOVT            R0, #0x8000; int
1ED2BC:  STR             R4, [SP,#0x18+var_18]
1ED2BE:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1ED2C2:  STR             R0, [SP,#0x18+var_14]
1ED2C4:  MOV             R0, SP
1ED2C6:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1ED2CA:  B               loc_1ED2E8
1ED2CC:  LDR             R0, =(_rtgBuffer_ptr - 0x1ED2D2)
1ED2CE:  ADD             R0, PC; _rtgBuffer_ptr
1ED2D0:  LDR             R0, [R0]; _rtgBuffer
1ED2D2:  LDR             R1, [R0]
1ED2D4:  CBZ             R1, loc_1ED2E0
1ED2D6:  LDR             R0, [R0,#(dword_6BD518 - 0x6BD514)]
1ED2D8:  CMP             R0, R8
1ED2DA:  IT EQ
1ED2DC:  BLXEQ           j__Z20RtCharsetBufferFlushv; RtCharsetBufferFlush(void)
1ED2E0:  MOV             R0, R8
1ED2E2:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1ED2E6:  MOVS            R4, #0
1ED2E8:  MOV             R0, R4
1ED2EA:  ADD             SP, SP, #8
1ED2EC:  POP.W           {R8}
1ED2F0:  POP             {R4-R7,PC}
