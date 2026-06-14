; =========================================================
; Game Engine Function: _Z40RpMatFXMaterialSetEnvMapFrameBufferAlphaP10RpMateriali
; Address            : 0x1C7520 - 0x1C7544
; =========================================================

1C7520:  LDR             R2, =(MatFXMaterialDataOffset_ptr - 0x1C7528)
1C7522:  MOVS            R3, #0
1C7524:  ADD             R2, PC; MatFXMaterialDataOffset_ptr
1C7526:  LDR             R2, [R2]; MatFXMaterialDataOffset
1C7528:  LDR             R2, [R2]
1C752A:  LDR             R2, [R0,R2]
1C752C:  LDR.W           R12, [R2,#0x14]
1C7530:  CMP.W           R12, #2
1C7534:  IT NE
1C7536:  MOVNE           R3, #1
1C7538:  ORR.W           R3, R3, R3,LSL#1
1C753C:  ADD.W           R2, R2, R3,LSL#3
1C7540:  STR             R1, [R2,#0xC]
1C7542:  BX              LR
