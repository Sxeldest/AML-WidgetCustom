; =========================================================
; Game Engine Function: _Z18RwFrameSetIdentityP7RwFrame
; Address            : 0x1D8804 - 0x1D8876
; =========================================================

1D8804:  MOV.W           R1, #0x3F800000
1D8808:  MOVS            R2, #0
1D880A:  STR             R1, [R0,#0x10]
1D880C:  STR             R1, [R0,#0x24]
1D880E:  STR             R2, [R0,#0x20]
1D8810:  STRD.W          R2, R2, [R0,#0x14]
1D8814:  STR             R2, [R0,#0x28]
1D8816:  STRD.W          R2, R2, [R0,#0x30]
1D881A:  STR             R1, [R0,#0x38]
1D881C:  STRD.W          R2, R2, [R0,#0x40]
1D8820:  STR             R2, [R0,#0x48]
1D8822:  LDR             R1, [R0,#0x1C]
1D8824:  ORR.W           R1, R1, #0x20000
1D8828:  ORR.W           R1, R1, #3
1D882C:  STR             R1, [R0,#0x1C]
1D882E:  LDR.W           R2, [R0,#0xA0]
1D8832:  LDRB.W          R12, [R2,#3]
1D8836:  TST.W           R12, #3
1D883A:  BNE             loc_1D8866
1D883C:  LDR             R3, =(RwEngineInstance_ptr - 0x1D8842)
1D883E:  ADD             R3, PC; RwEngineInstance_ptr
1D8840:  LDR             R3, [R3]; RwEngineInstance
1D8842:  LDR             R3, [R3]
1D8844:  LDR.W           R1, [R3,#0xBC]!
1D8848:  STR             R1, [R2,#8]
1D884A:  LDR.W           R1, [R0,#0xA0]
1D884E:  STR             R3, [R1,#0xC]
1D8850:  LDR             R1, [R3]
1D8852:  LDR.W           R2, [R0,#0xA0]
1D8856:  ADDS            R2, #8
1D8858:  STR             R2, [R1,#4]
1D885A:  LDR.W           R1, [R0,#0xA0]
1D885E:  ADDS            R1, #8
1D8860:  STR             R1, [R3]
1D8862:  LDR.W           R2, [R0,#0xA0]
1D8866:  ORR.W           R1, R12, #3
1D886A:  STRB            R1, [R2,#3]
1D886C:  LDRB            R1, [R0,#3]
1D886E:  ORR.W           R1, R1, #0xC
1D8872:  STRB            R1, [R0,#3]
1D8874:  BX              LR
