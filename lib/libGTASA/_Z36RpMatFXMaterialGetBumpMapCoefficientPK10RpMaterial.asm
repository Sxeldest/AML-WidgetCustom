; =========================================================
; Game Engine Function: _Z36RpMatFXMaterialGetBumpMapCoefficientPK10RpMaterial
; Address            : 0x1C7700 - 0x1C7724
; =========================================================

1C7700:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x1C7708)
1C7702:  MOVS            R2, #0
1C7704:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
1C7706:  LDR             R1, [R1]; MatFXMaterialDataOffset
1C7708:  LDR             R1, [R1]
1C770A:  LDR             R0, [R0,R1]
1C770C:  LDR             R1, [R0,#0x14]
1C770E:  CMP             R1, #1
1C7710:  IT NE
1C7712:  MOVNE           R2, #1
1C7714:  ORR.W           R1, R2, R2,LSL#1
1C7718:  ADD.W           R0, R0, R1,LSL#3
1C771C:  LDR             R0, [R0,#0xC]
1C771E:  EOR.W           R0, R0, #0x80000000
1C7722:  BX              LR
