; =========================================================
; Game Engine Function: _Z40RpMatFXMaterialGetEnvMapFrameBufferAlphaPK10RpMaterial
; Address            : 0x1C7770 - 0x1C7790
; =========================================================

1C7770:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x1C7778)
1C7772:  MOVS            R2, #0
1C7774:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
1C7776:  LDR             R1, [R1]; MatFXMaterialDataOffset
1C7778:  LDR             R1, [R1]
1C777A:  LDR             R0, [R0,R1]
1C777C:  LDR             R1, [R0,#0x14]
1C777E:  CMP             R1, #2
1C7780:  IT NE
1C7782:  MOVNE           R2, #1
1C7784:  ORR.W           R1, R2, R2,LSL#1
1C7788:  ADD.W           R0, R0, R1,LSL#3
1C778C:  LDR             R0, [R0,#0xC]
1C778E:  BX              LR
