; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline16SetFxSpecTextureEP10RpMaterialP9RwTexture
; Address            : 0x2CC630 - 0x2CC66C
; =========================================================

2CC630:  PUSH            {R4,R5,R7,LR}
2CC632:  ADD             R7, SP, #8
2CC634:  MOV             R4, R1
2CC636:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr - 0x2CC63C)
2CC638:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr
2CC63A:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset ...
2CC63C:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset
2CC63E:  LDR             R5, [R0,R1]
2CC640:  CMP             R5, #0
2CC642:  IT EQ
2CC644:  POPEQ           {R4,R5,R7,PC}
2CC646:  CBZ             R4, loc_2CC65C
2CC648:  LDR             R0, [R5,#4]
2CC64A:  CBZ             R0, loc_2CC654
2CC64C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
2CC650:  MOVS            R0, #0
2CC652:  STR             R0, [R5,#4]
2CC654:  STR             R4, [R5,#4]
2CC656:  LDR             R0, [R4,#0x54]
2CC658:  ADDS            R0, #1
2CC65A:  STR             R0, [R4,#0x54]
2CC65C:  LDR             R0, [R5,#4]
2CC65E:  CMP             R0, #0
2CC660:  ITT NE
2CC662:  MOVWNE          R1, #0x1102
2CC666:  STRHNE.W        R1, [R0,#0x50]
2CC66A:  POP             {R4,R5,R7,PC}
