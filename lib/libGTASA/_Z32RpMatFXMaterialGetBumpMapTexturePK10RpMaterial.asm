; =========================================================
; Game Engine Function: _Z32RpMatFXMaterialGetBumpMapTexturePK10RpMaterial
; Address            : 0x1C76B8 - 0x1C76D8
; =========================================================

1C76B8:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x1C76C0)
1C76BA:  MOVS            R2, #0
1C76BC:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
1C76BE:  LDR             R1, [R1]; MatFXMaterialDataOffset
1C76C0:  LDR             R1, [R1]
1C76C2:  LDR             R0, [R0,R1]
1C76C4:  LDR             R1, [R0,#0x14]
1C76C6:  CMP             R1, #1
1C76C8:  IT NE
1C76CA:  MOVNE           R2, #1
1C76CC:  ORR.W           R1, R2, R2,LSL#1
1C76D0:  ADD.W           R0, R0, R1,LSL#3
1C76D4:  LDR             R0, [R0,#8]
1C76D6:  BX              LR
