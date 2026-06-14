; =========================================================
; Game Engine Function: _Z15_rwPalQuantTermP10rwPalQuant
; Address            : 0x1AC3B8 - 0x1AC3EE
; =========================================================

1AC3B8:  PUSH            {R4,R5,R7,LR}
1AC3BA:  ADD             R7, SP, #8
1AC3BC:  MOV             R4, R0
1AC3BE:  MOVS            R2, #5
1AC3C0:  LDR             R1, [R4,#8]
1AC3C2:  BL              sub_1AC3F4
1AC3C6:  LDR             R0, [R4,#0xC]
1AC3C8:  MOVS            R1, #0
1AC3CA:  STR             R1, [R4,#8]
1AC3CC:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1AC3D0:  LDR             R0, =(RwEngineInstance_ptr - 0x1AC3D6)
1AC3D2:  ADD             R0, PC; RwEngineInstance_ptr
1AC3D4:  LDR             R5, [R0]; RwEngineInstance
1AC3D6:  LDR             R0, [R4,#4]
1AC3D8:  LDR             R1, [R5]
1AC3DA:  LDR.W           R1, [R1,#0x130]
1AC3DE:  BLX             R1
1AC3E0:  LDR             R1, [R5]
1AC3E2:  LDR             R0, [R4]
1AC3E4:  LDR.W           R1, [R1,#0x130]
1AC3E8:  POP.W           {R4,R5,R7,LR}
1AC3EC:  BX              R1
