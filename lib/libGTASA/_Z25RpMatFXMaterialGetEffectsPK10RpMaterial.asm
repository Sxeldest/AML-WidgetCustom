; =========================================================
; Game Engine Function: _Z25RpMatFXMaterialGetEffectsPK10RpMaterial
; Address            : 0x1C767C - 0x1C7690
; =========================================================

1C767C:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x1C7682)
1C767E:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
1C7680:  LDR             R1, [R1]; MatFXMaterialDataOffset
1C7682:  LDR             R1, [R1]
1C7684:  LDR             R0, [R0,R1]
1C7686:  CMP             R0, #0
1C7688:  ITE NE
1C768A:  LDRNE           R0, [R0,#0x30]
1C768C:  MOVEQ           R0, #0
1C768E:  BX              LR
