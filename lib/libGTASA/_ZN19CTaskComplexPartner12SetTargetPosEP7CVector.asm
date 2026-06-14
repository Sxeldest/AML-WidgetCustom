; =========================================================
; Game Engine Function: _ZN19CTaskComplexPartner12SetTargetPosEP7CVector
; Address            : 0x5347EE - 0x5347FC
; =========================================================

5347EE:  VLDR            D16, [R1]
5347F2:  LDR             R1, [R1,#8]
5347F4:  STR             R1, [R0,#0x48]
5347F6:  VSTR            D16, [R0,#0x40]
5347FA:  BX              LR
