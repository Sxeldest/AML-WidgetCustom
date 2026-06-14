; =========================================================
; Game Engine Function: _ZN7CCamera20SetCamCutSceneOffSetERK7CVector
; Address            : 0x3E137E - 0x3E1392
; =========================================================

3E137E:  VLDR            D16, [R1]
3E1382:  LDR             R1, [R1,#8]
3E1384:  STR.W           R1, [R0,#0x810]
3E1388:  ADDW            R0, R0, #0x808
3E138C:  VSTR            D16, [R0]
3E1390:  BX              LR
