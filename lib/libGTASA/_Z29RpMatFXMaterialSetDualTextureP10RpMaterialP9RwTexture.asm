; =========================================================
; Game Engine Function: _Z29RpMatFXMaterialSetDualTextureP10RpMaterialP9RwTexture
; Address            : 0x1C7618 - 0x1C7678
; =========================================================

1C7618:  PUSH            {R4-R7,LR}
1C761A:  ADD             R7, SP, #0xC
1C761C:  PUSH.W          {R11}
1C7620:  MOV             R4, R0
1C7622:  LDR             R0, =(MatFXMaterialDataOffset_ptr - 0x1C762A)
1C7624:  MOV             R5, R1
1C7626:  ADD             R0, PC; MatFXMaterialDataOffset_ptr
1C7628:  LDR             R0, [R0]; MatFXMaterialDataOffset
1C762A:  LDR             R0, [R0]
1C762C:  LDR             R0, [R4,R0]
1C762E:  LDR             R1, [R0,#0x14]
1C7630:  CMP             R1, #4
1C7632:  BNE             loc_1C7638
1C7634:  MOVS            R1, #0
1C7636:  B               loc_1C7640
1C7638:  LDR             R1, [R0,#0x2C]
1C763A:  CMP             R1, #4
1C763C:  BNE             loc_1C764A
1C763E:  MOVS            R1, #1
1C7640:  ADD.W           R1, R1, R1,LSL#1
1C7644:  ADD.W           R6, R0, R1,LSL#3
1C7648:  B               loc_1C764C
1C764A:  MOVS            R6, #0
1C764C:  LDR             R0, [R5,#0x54]
1C764E:  ADDS            R0, #1
1C7650:  STR             R0, [R5,#0x54]
1C7652:  LDR             R0, [R6]
1C7654:  CBZ             R0, loc_1C765E
1C7656:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
1C765A:  MOVS            R0, #0
1C765C:  STR             R0, [R6]
1C765E:  MOV             R0, R6
1C7660:  MOVS            R1, #2
1C7662:  STR             R5, [R6]
1C7664:  BLX             j__Z28_rpMatFXSetupDualRenderStateP13MatFXDualData13RwRenderState; _rpMatFXSetupDualRenderState(MatFXDualData *,RwRenderState)
1C7668:  MOV             R0, R6
1C766A:  MOVS            R1, #1
1C766C:  BLX             j__Z28_rpMatFXSetupDualRenderStateP13MatFXDualData13RwRenderState; _rpMatFXSetupDualRenderState(MatFXDualData *,RwRenderState)
1C7670:  MOV             R0, R4
1C7672:  POP.W           {R11}
1C7676:  POP             {R4-R7,PC}
