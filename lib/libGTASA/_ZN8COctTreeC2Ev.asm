; =========================================================
; Game Engine Function: _ZN8COctTreeC2Ev
; Address            : 0x45BE90 - 0x45BEBC
; =========================================================

45BE90:  LDR             R1, =(_ZTV8COctTree_ptr - 0x45BE9E); Alternative name is 'COctTree::COctTree(void)'
45BE92:  MOVS            R2, #0
45BE94:  MOV.W           R3, #0xFFFFFFFF
45BE98:  STR             R2, [R0,#4]
45BE9A:  ADD             R1, PC; _ZTV8COctTree_ptr
45BE9C:  STRD.W          R2, R2, [R0,#0x1C]
45BEA0:  STR             R2, [R0,#0x24]
45BEA2:  LDR             R1, [R1]; `vtable for'COctTree ...
45BEA4:  STR.W           R3, [R0,#0xA]
45BEA8:  STR.W           R3, [R0,#0x16]
45BEAC:  ADDS            R1, #8
45BEAE:  STR.W           R3, [R0,#0x12]
45BEB2:  STR.W           R3, [R0,#0xE]
45BEB6:  STRB            R2, [R0,#8]
45BEB8:  STR             R1, [R0]
45BEBA:  BX              LR
