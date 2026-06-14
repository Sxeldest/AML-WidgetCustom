; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchyC2Ev
; Address            : 0x38A100 - 0x38A112
; =========================================================

38A100:  MOVS            R1, #0; Alternative name is 'CAnimBlendHierarchy::CAnimBlendHierarchy(void)'
38A102:  MOV.W           R2, #0xFFFFFFFF
38A106:  STRD.W          R1, R1, [R0,#4]
38A10A:  STRD.W          R2, R1, [R0,#0xC]
38A10E:  STR             R1, [R0,#0x14]
38A110:  BX              LR
