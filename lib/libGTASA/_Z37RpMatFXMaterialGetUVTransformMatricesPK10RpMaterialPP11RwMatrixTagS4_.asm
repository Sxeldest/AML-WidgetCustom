; =========================================================
; Game Engine Function: _Z37RpMatFXMaterialGetUVTransformMatricesPK10RpMaterialPP11RwMatrixTagS4_
; Address            : 0x1C7848 - 0x1C7896
; =========================================================

1C7848:  PUSH            {R7,LR}
1C784A:  MOV             R7, SP
1C784C:  LDR             R3, =(MatFXMaterialDataOffset_ptr - 0x1C7852)
1C784E:  ADD             R3, PC; MatFXMaterialDataOffset_ptr
1C7850:  LDR             R3, [R3]; MatFXMaterialDataOffset
1C7852:  LDR             R3, [R3]
1C7854:  LDR.W           LR, [R0,R3]
1C7858:  LDR.W           R3, [LR,#0x14]
1C785C:  CMP             R3, #5
1C785E:  BNE             loc_1C7866
1C7860:  MOV.W           R12, #0
1C7864:  B               loc_1C7872
1C7866:  LDR.W           R3, [LR,#0x2C]
1C786A:  CMP             R3, #5
1C786C:  BNE             loc_1C787C
1C786E:  MOV.W           R12, #1
1C7872:  ADD.W           R3, R12, R12,LSL#1
1C7876:  ADD.W           R12, LR, R3,LSL#3
1C787A:  B               loc_1C7880
1C787C:  MOV.W           R12, #0
1C7880:  CMP             R1, #0
1C7882:  ITT NE
1C7884:  LDRNE.W         R3, [R12]
1C7888:  STRNE           R3, [R1]
1C788A:  CMP             R2, #0
1C788C:  ITT NE
1C788E:  LDRNE.W         R1, [R12,#4]
1C7892:  STRNE           R1, [R2]
1C7894:  POP             {R7,PC}
