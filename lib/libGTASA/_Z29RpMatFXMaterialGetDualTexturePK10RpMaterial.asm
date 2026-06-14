; =========================================================
; Game Engine Function: _Z29RpMatFXMaterialGetDualTexturePK10RpMaterial
; Address            : 0x1C77B8 - 0x1C77D6
; =========================================================

1C77B8:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x1C77C0)
1C77BA:  MOVS            R2, #0
1C77BC:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
1C77BE:  LDR             R1, [R1]; MatFXMaterialDataOffset
1C77C0:  LDR             R1, [R1]
1C77C2:  LDR             R0, [R0,R1]
1C77C4:  LDR             R1, [R0,#0x14]
1C77C6:  CMP             R1, #4
1C77C8:  IT NE
1C77CA:  MOVNE           R2, #1
1C77CC:  ORR.W           R1, R2, R2,LSL#1
1C77D0:  LDR.W           R0, [R0,R1,LSL#3]
1C77D4:  BX              LR
