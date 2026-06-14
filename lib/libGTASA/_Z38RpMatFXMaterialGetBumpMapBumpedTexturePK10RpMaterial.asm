; =========================================================
; Game Engine Function: _Z38RpMatFXMaterialGetBumpMapBumpedTexturePK10RpMaterial
; Address            : 0x1C7694 - 0x1C76B4
; =========================================================

1C7694:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x1C769C)
1C7696:  MOVS            R2, #0
1C7698:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
1C769A:  LDR             R1, [R1]; MatFXMaterialDataOffset
1C769C:  LDR             R1, [R1]
1C769E:  LDR             R0, [R0,R1]
1C76A0:  LDR             R1, [R0,#0x14]
1C76A2:  CMP             R1, #1
1C76A4:  IT NE
1C76A6:  MOVNE           R2, #1
1C76A8:  ORR.W           R1, R2, R2,LSL#1
1C76AC:  ADD.W           R0, R0, R1,LSL#3
1C76B0:  LDR             R0, [R0,#4]
1C76B2:  BX              LR
