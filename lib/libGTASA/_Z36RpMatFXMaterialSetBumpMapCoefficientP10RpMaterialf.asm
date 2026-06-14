; =========================================================
; Game Engine Function: _Z36RpMatFXMaterialSetBumpMapCoefficientP10RpMaterialf
; Address            : 0x1C73B4 - 0x1C73DC
; =========================================================

1C73B4:  LDR             R2, =(MatFXMaterialDataOffset_ptr - 0x1C73C0)
1C73B6:  MOVS            R3, #0
1C73B8:  EOR.W           R1, R1, #0x80000000
1C73BC:  ADD             R2, PC; MatFXMaterialDataOffset_ptr
1C73BE:  LDR             R2, [R2]; MatFXMaterialDataOffset
1C73C0:  LDR             R2, [R2]
1C73C2:  LDR             R2, [R0,R2]
1C73C4:  LDR.W           R12, [R2,#0x14]
1C73C8:  CMP.W           R12, #1
1C73CC:  IT NE
1C73CE:  MOVNE           R3, #1
1C73D0:  ORR.W           R3, R3, R3,LSL#1
1C73D4:  ADD.W           R2, R2, R3,LSL#3
1C73D8:  STR             R1, [R2,#0xC]
1C73DA:  BX              LR
