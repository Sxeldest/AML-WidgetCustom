; =========================================================
; Game Engine Function: _Z23_rpSkinPipelinesDestroyv
; Address            : 0x1C7AFC - 0x1C7B64
; =========================================================

1C7AFC:  PUSH            {R7,LR}
1C7AFE:  MOV             R7, SP
1C7B00:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C7B06)
1C7B02:  ADD             R0, PC; _rpSkinGlobals_ptr
1C7B04:  LDR             R0, [R0]; _rpSkinGlobals
1C7B06:  LDR             R0, [R0,#(dword_6B7298 - 0x6B7274)]
1C7B08:  CBZ             R0, loc_1C7B18
1C7B0A:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1C7B0E:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C7B16)
1C7B10:  MOVS            R1, #0
1C7B12:  ADD             R0, PC; _rpSkinGlobals_ptr
1C7B14:  LDR             R0, [R0]; _rpSkinGlobals
1C7B16:  STR             R1, [R0,#(dword_6B7298 - 0x6B7274)]
1C7B18:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C7B1E)
1C7B1A:  ADD             R0, PC; _rpSkinGlobals_ptr
1C7B1C:  LDR             R0, [R0]; _rpSkinGlobals
1C7B1E:  LDR             R0, [R0,#(dword_6B729C - 0x6B7274)]
1C7B20:  CBZ             R0, loc_1C7B30
1C7B22:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1C7B26:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C7B2E)
1C7B28:  MOVS            R1, #0
1C7B2A:  ADD             R0, PC; _rpSkinGlobals_ptr
1C7B2C:  LDR             R0, [R0]; _rpSkinGlobals
1C7B2E:  STR             R1, [R0,#(dword_6B729C - 0x6B7274)]
1C7B30:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C7B36)
1C7B32:  ADD             R0, PC; _rpSkinGlobals_ptr
1C7B34:  LDR             R0, [R0]; _rpSkinGlobals
1C7B36:  LDR             R0, [R0,#(dword_6B72A0 - 0x6B7274)]
1C7B38:  CBZ             R0, loc_1C7B48
1C7B3A:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1C7B3E:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C7B46)
1C7B40:  MOVS            R1, #0
1C7B42:  ADD             R0, PC; _rpSkinGlobals_ptr
1C7B44:  LDR             R0, [R0]; _rpSkinGlobals
1C7B46:  STR             R1, [R0,#(dword_6B72A0 - 0x6B7274)]
1C7B48:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C7B4E)
1C7B4A:  ADD             R0, PC; _rpSkinGlobals_ptr
1C7B4C:  LDR             R0, [R0]; _rpSkinGlobals
1C7B4E:  LDR             R0, [R0,#(dword_6B72A4 - 0x6B7274)]
1C7B50:  CBZ             R0, loc_1C7B60
1C7B52:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1C7B56:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C7B5E)
1C7B58:  MOVS            R1, #0
1C7B5A:  ADD             R0, PC; _rpSkinGlobals_ptr
1C7B5C:  LDR             R0, [R0]; _rpSkinGlobals
1C7B5E:  STR             R1, [R0,#(dword_6B72A4 - 0x6B7274)]
1C7B60:  MOVS            R0, #1
1C7B62:  POP             {R7,PC}
