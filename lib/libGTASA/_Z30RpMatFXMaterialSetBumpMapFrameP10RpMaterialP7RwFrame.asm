; =========================================================
; Game Engine Function: _Z30RpMatFXMaterialSetBumpMapFrameP10RpMaterialP7RwFrame
; Address            : 0x1C738C - 0x1C73AE
; =========================================================

1C738C:  LDR             R2, =(MatFXMaterialDataOffset_ptr - 0x1C7394)
1C738E:  MOVS            R3, #0
1C7390:  ADD             R2, PC; MatFXMaterialDataOffset_ptr
1C7392:  LDR             R2, [R2]; MatFXMaterialDataOffset
1C7394:  LDR             R2, [R2]
1C7396:  LDR             R2, [R0,R2]
1C7398:  LDR.W           R12, [R2,#0x14]
1C739C:  CMP.W           R12, #1
1C73A0:  IT NE
1C73A2:  MOVNE           R3, #1
1C73A4:  ORR.W           R3, R3, R3,LSL#1
1C73A8:  STR.W           R1, [R2,R3,LSL#3]
1C73AC:  BX              LR
