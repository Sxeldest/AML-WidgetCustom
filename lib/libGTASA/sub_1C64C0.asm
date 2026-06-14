; =========================================================
; Game Engine Function: sub_1C64C0
; Address            : 0x1C64C0 - 0x1C64CE
; =========================================================

1C64C0:  LDR             R1, =(MatFXMaterialDataOffset_ptr - 0x1C64C8)
1C64C2:  MOVS            R2, #0
1C64C4:  ADD             R1, PC; MatFXMaterialDataOffset_ptr
1C64C6:  LDR             R1, [R1]; MatFXMaterialDataOffset
1C64C8:  LDR             R1, [R1]
1C64CA:  STR             R2, [R0,R1]
1C64CC:  BX              LR
