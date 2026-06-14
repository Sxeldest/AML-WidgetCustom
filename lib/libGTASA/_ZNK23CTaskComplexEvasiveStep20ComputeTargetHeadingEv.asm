; =========================================================
; Game Engine Function: _ZNK23CTaskComplexEvasiveStep20ComputeTargetHeadingEv
; Address            : 0x50AF94 - 0x50AFA8
; =========================================================

50AF94:  LDRD.W          R1, R2, [R0,#0xC]
50AF98:  MOVS            R3, #0; float
50AF9A:  EOR.W           R0, R1, #0x80000000; this
50AF9E:  EOR.W           R1, R2, #0x80000000; float
50AFA2:  MOVS            R2, #0; float
50AFA4:  B.W             sub_1991A8
