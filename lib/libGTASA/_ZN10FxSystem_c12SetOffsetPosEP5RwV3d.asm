; =========================================================
; Game Engine Function: _ZN10FxSystem_c12SetOffsetPosEP5RwV3d
; Address            : 0x36E54C - 0x36E55E
; =========================================================

36E54C:  LDR             R2, [R1]
36E54E:  STR             R2, [R0,#0x44]
36E550:  LDR             R2, [R1,#4]
36E552:  STR             R2, [R0,#0x48]
36E554:  LDR             R1, [R1,#8]
36E556:  STR             R1, [R0,#0x4C]
36E558:  ADDS            R0, #0x14
36E55A:  B.W             j_j__Z14RwMatrixUpdateP11RwMatrixTag; j_RwMatrixUpdate(RwMatrixTag *)
