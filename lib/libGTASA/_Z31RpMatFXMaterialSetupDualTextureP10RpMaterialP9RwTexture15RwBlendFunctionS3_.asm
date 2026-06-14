; =========================================================
; Game Engine Function: _Z31RpMatFXMaterialSetupDualTextureP10RpMaterialP9RwTexture15RwBlendFunctionS3_
; Address            : 0x1C7570 - 0x1C7610
; =========================================================

1C7570:  PUSH            {R4-R7,LR}
1C7572:  ADD             R7, SP, #0xC
1C7574:  PUSH.W          {R8,R9,R11}
1C7578:  MOV             R4, R0
1C757A:  LDR             R0, =(MatFXMaterialDataOffset_ptr - 0x1C7584)
1C757C:  MOV             R5, R1
1C757E:  MOV             R8, R3
1C7580:  ADD             R0, PC; MatFXMaterialDataOffset_ptr
1C7582:  MOV             R9, R2
1C7584:  LDR             R0, [R0]; MatFXMaterialDataOffset
1C7586:  LDR             R0, [R0]
1C7588:  LDR             R0, [R4,R0]
1C758A:  LDR             R1, [R0,#0x14]
1C758C:  CMP             R1, #4
1C758E:  BNE             loc_1C7594
1C7590:  MOVS            R1, #0
1C7592:  B               loc_1C759C
1C7594:  LDR             R1, [R0,#0x2C]
1C7596:  CMP             R1, #4
1C7598:  BNE             loc_1C75A6
1C759A:  MOVS            R1, #1
1C759C:  ADD.W           R1, R1, R1,LSL#1
1C75A0:  ADD.W           R6, R0, R1,LSL#3
1C75A4:  B               loc_1C75A8
1C75A6:  MOVS            R6, #0
1C75A8:  LDR             R0, [R5,#0x54]
1C75AA:  ADDS            R0, #1
1C75AC:  STR             R0, [R5,#0x54]
1C75AE:  LDR             R0, [R6]
1C75B0:  CBZ             R0, loc_1C75BA
1C75B2:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
1C75B6:  MOVS            R0, #0
1C75B8:  STR             R0, [R6]
1C75BA:  MOV             R0, R6
1C75BC:  MOVS            R1, #2
1C75BE:  STR             R5, [R6]
1C75C0:  BLX             j__Z28_rpMatFXSetupDualRenderStateP13MatFXDualData13RwRenderState; _rpMatFXSetupDualRenderState(MatFXDualData *,RwRenderState)
1C75C4:  MOV             R0, R6
1C75C6:  MOVS            R1, #1
1C75C8:  BLX             j__Z28_rpMatFXSetupDualRenderStateP13MatFXDualData13RwRenderState; _rpMatFXSetupDualRenderState(MatFXDualData *,RwRenderState)
1C75CC:  LDR             R0, =(MatFXMaterialDataOffset_ptr - 0x1C75D2)
1C75CE:  ADD             R0, PC; MatFXMaterialDataOffset_ptr
1C75D0:  LDR             R0, [R0]; MatFXMaterialDataOffset
1C75D2:  LDR             R0, [R0]
1C75D4:  LDR             R0, [R4,R0]
1C75D6:  LDR             R1, [R0,#0x14]
1C75D8:  CMP             R1, #4
1C75DA:  BNE             loc_1C75E0
1C75DC:  MOVS            R1, #0
1C75DE:  B               loc_1C75E8
1C75E0:  LDR             R1, [R0,#0x2C]
1C75E2:  CMP             R1, #4
1C75E4:  BNE             loc_1C75F2
1C75E6:  MOVS            R1, #1
1C75E8:  ADD.W           R1, R1, R1,LSL#1
1C75EC:  ADD.W           R5, R0, R1,LSL#3
1C75F0:  B               loc_1C75F4
1C75F2:  MOVS            R5, #0
1C75F4:  MOV             R0, R5
1C75F6:  MOVS            R1, #0xA
1C75F8:  STRD.W          R9, R8, [R5,#4]
1C75FC:  BLX             j__Z28_rpMatFXSetupDualRenderStateP13MatFXDualData13RwRenderState; _rpMatFXSetupDualRenderState(MatFXDualData *,RwRenderState)
1C7600:  MOV             R0, R5
1C7602:  MOVS            R1, #0xB
1C7604:  BLX             j__Z28_rpMatFXSetupDualRenderStateP13MatFXDualData13RwRenderState; _rpMatFXSetupDualRenderState(MatFXDualData *,RwRenderState)
1C7608:  MOV             R0, R4
1C760A:  POP.W           {R8,R9,R11}
1C760E:  POP             {R4-R7,PC}
