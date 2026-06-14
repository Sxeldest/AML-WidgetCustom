; =========================================================
; Game Engine Function: _Z31RpMatFXMaterialGetEnvMapTexturePK10RpMaterial
; Address            : 0x1C7728 - 0x1C7748
; =========================================================

1C7728:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x1C7730)
1C772A:  MOVS            R2, #0
1C772C:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
1C772E:  LDR             R1, [R1]; MatFXMaterialDataOffset
1C7730:  LDR             R1, [R1]
1C7732:  LDR             R0, [R0,R1]
1C7734:  LDR             R1, [R0,#0x14]
1C7736:  CMP             R1, #2
1C7738:  IT NE
1C773A:  MOVNE           R2, #1
1C773C:  ORR.W           R1, R2, R2,LSL#1
1C7740:  ADD.W           R0, R0, R1,LSL#3
1C7744:  LDR             R0, [R0,#4]
1C7746:  BX              LR
