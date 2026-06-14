; =========================================================
; Game Engine Function: _Z38_rpMaterialSetDefaultSurfacePropertiesPK19RwSurfaceProperties
; Address            : 0x2170E4 - 0x217108
; =========================================================

2170E4:  CBZ             R0, loc_2170F8
2170E6:  LDR             R1, =(dword_683BB0 - 0x2170F0)
2170E8:  VLDR            D16, [R0]
2170EC:  ADD             R1, PC; dword_683BB0
2170EE:  LDR             R0, [R0,#8]
2170F0:  STR             R0, [R1,#(dword_683BB8 - 0x683BB0)]
2170F2:  VSTR            D16, [R1]
2170F6:  BX              LR
2170F8:  LDR             R0, =(dword_683BB0 - 0x217102)
2170FA:  MOV.W           R1, #0x3F800000
2170FE:  ADD             R0, PC; dword_683BB0
217100:  STRD.W          R1, R1, [R0]
217104:  STR             R1, [R0,#(dword_683BB8 - 0x683BB0)]
217106:  BX              LR
