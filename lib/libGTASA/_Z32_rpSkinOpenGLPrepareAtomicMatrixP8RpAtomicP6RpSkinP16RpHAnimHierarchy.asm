; =========================================================
; Game Engine Function: _Z32_rpSkinOpenGLPrepareAtomicMatrixP8RpAtomicP6RpSkinP16RpHAnimHierarchy
; Address            : 0x1C85E4 - 0x1C8650
; =========================================================

1C85E4:  PUSH            {R4,R6,R7,LR}
1C85E6:  ADD             R7, SP, #8
1C85E8:  MOV             R4, R2
1C85EA:  LDR             R2, =(_rpSkinGlobals_ptr - 0x1C85F0)
1C85EC:  ADD             R2, PC; _rpSkinGlobals_ptr
1C85EE:  LDR             R2, [R2]; _rpSkinGlobals
1C85F0:  LDR             R2, [R2,#(dword_6B72A8 - 0x6B7274)]
1C85F2:  CMP             R2, R4
1C85F4:  BNE             loc_1C860C
1C85F6:  LDR             R2, =(RwEngineInstance_ptr - 0x1C85FE)
1C85F8:  LDR             R3, =(_rpSkinGlobals_ptr - 0x1C8600)
1C85FA:  ADD             R2, PC; RwEngineInstance_ptr
1C85FC:  ADD             R3, PC; _rpSkinGlobals_ptr
1C85FE:  LDR             R2, [R2]; RwEngineInstance
1C8600:  LDR             R3, [R3]; _rpSkinGlobals
1C8602:  LDR             R2, [R2]
1C8604:  LDR             R3, [R3,#(dword_6B72AC - 0x6B7274)]
1C8606:  LDRH            R2, [R2,#8]
1C8608:  CMP             R3, R2
1C860A:  BEQ             loc_1C8646
1C860C:  MOV             R2, R4
1C860E:  BLX             j__Z26_rpSkinPrepareAtomicMatrixP8RpAtomicP6RpSkinP16RpHAnimHierarchy; _rpSkinPrepareAtomicMatrix(RpAtomic *,RpSkin *,RpHAnimHierarchy *)
1C8612:  LDR             R0, [R4,#4]
1C8614:  CMP             R0, #1
1C8616:  BLT             loc_1C8632
1C8618:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C8622)
1C861A:  MOVS            R1, #0
1C861C:  MOVS            R2, #0
1C861E:  ADD             R0, PC; _rpSkinGlobals_ptr
1C8620:  LDR             R0, [R0]; _rpSkinGlobals
1C8622:  LDR             R0, [R0,#(dword_6B7280 - 0x6B7274)]
1C8624:  ADDS            R0, #0xC
1C8626:  STR.W           R1, [R0],#0x40
1C862A:  ADDS            R2, #1
1C862C:  LDR             R3, [R4,#4]
1C862E:  CMP             R2, R3
1C8630:  BLT             loc_1C8626
1C8632:  LDR             R1, =(RwEngineInstance_ptr - 0x1C863A)
1C8634:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C863C)
1C8636:  ADD             R1, PC; RwEngineInstance_ptr
1C8638:  ADD             R0, PC; _rpSkinGlobals_ptr
1C863A:  LDR             R1, [R1]; RwEngineInstance
1C863C:  LDR             R0, [R0]; _rpSkinGlobals
1C863E:  LDR             R1, [R1]
1C8640:  STR             R4, [R0,#(dword_6B72A8 - 0x6B7274)]
1C8642:  LDRH            R1, [R1,#8]
1C8644:  STR             R1, [R0,#(dword_6B72AC - 0x6B7274)]
1C8646:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C864C)
1C8648:  ADD             R0, PC; _rpSkinGlobals_ptr
1C864A:  LDR             R0, [R0]; _rpSkinGlobals
1C864C:  LDR             R0, [R0,#(dword_6B7280 - 0x6B7274)]
1C864E:  POP             {R4,R6,R7,PC}
