; =========================================================
; Game Engine Function: sub_1D6ECC
; Address            : 0x1D6ECC - 0x1D6EFC
; =========================================================

1D6ECC:  PUSH            {R4,R5,R7,LR}
1D6ECE:  ADD             R7, SP, #8
1D6ED0:  MOV             R4, R0
1D6ED2:  LDR             R0, =(RwEngineInstance_ptr - 0x1D6ED8)
1D6ED4:  ADD             R0, PC; RwEngineInstance_ptr
1D6ED6:  LDR             R5, [R0]; RwEngineInstance
1D6ED8:  LDR             R0, [R5]
1D6EDA:  STR             R4, [R0]
1D6EDC:  BLX             j__Z17_rwFrameSyncDirtyv; _rwFrameSyncDirty(void)
1D6EE0:  LDR             R0, [R5]
1D6EE2:  MOV             R1, R4
1D6EE4:  MOVS            R2, #0
1D6EE6:  MOVS            R5, #0
1D6EE8:  LDR             R3, [R0,#0x4C]
1D6EEA:  MOVS            R0, #0
1D6EEC:  BLX             R3
1D6EEE:  CBZ             R0, loc_1D6EF8
1D6EF0:  MOV             R0, R4
1D6EF2:  BLX             j__Z20_rwPipeInitForCameraPK8RwCamera; _rwPipeInitForCamera(RwCamera const*)
1D6EF6:  MOV             R5, R4
1D6EF8:  MOV             R0, R5
1D6EFA:  POP             {R4,R5,R7,PC}
