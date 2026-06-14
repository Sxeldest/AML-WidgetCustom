; =========================================================
; Game Engine Function: _ZN20CAnimBlendAssocGroupC2Ev
; Address            : 0x38915C - 0x38916E
; =========================================================

38915C:  VMOV.I32        Q8, #0
389160:  MOV             R1, R0
389162:  MOV.W           R2, #0xFFFFFFFF
389166:  VST1.32         {D16-D17}, [R1]!
38916A:  STR             R2, [R1]
38916C:  BX              LR
