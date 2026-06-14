; =========================================================
; Game Engine Function: _Z13CameraDestroyP8RwCamera
; Address            : 0x5D3354 - 0x5D33B6
; =========================================================

5D3354:  PUSH            {R4-R7,LR}
5D3356:  ADD             R7, SP, #0xC
5D3358:  PUSH.W          {R11}
5D335C:  MOV             R4, R0
5D335E:  CBZ             R4, loc_5D33B0
5D3360:  LDR             R5, [R4,#4]
5D3362:  CBZ             R5, loc_5D3372
5D3364:  MOV             R0, R4
5D3366:  MOVS            R1, #0
5D3368:  BLX.W           j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
5D336C:  MOV             R0, R5
5D336E:  BLX.W           j__Z14RwFrameDestroyP7RwFrame; RwFrameDestroy(RwFrame *)
5D3372:  LDR             R5, [R4,#0x60]
5D3374:  CBZ             R5, loc_5D338A
5D3376:  MOV             R0, R5
5D3378:  LDR             R6, [R5]
5D337A:  BLX.W           j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5D337E:  CBZ             R6, loc_5D338A
5D3380:  CMP             R6, R5
5D3382:  ITT NE
5D3384:  MOVNE           R0, R6
5D3386:  BLXNE.W         j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5D338A:  LDR             R5, [R4,#0x64]
5D338C:  CBZ             R5, loc_5D33A2
5D338E:  MOV             R0, R5
5D3390:  LDR             R6, [R5]
5D3392:  BLX.W           j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5D3396:  CBZ             R6, loc_5D33A2
5D3398:  CMP             R6, R5
5D339A:  ITT NE
5D339C:  MOVNE           R0, R6
5D339E:  BLXNE.W         j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5D33A2:  MOV             R0, R4
5D33A4:  POP.W           {R11}
5D33A8:  POP.W           {R4-R7,LR}
5D33AC:  B.W             sub_19C714
5D33B0:  POP.W           {R11}
5D33B4:  POP             {R4-R7,PC}
