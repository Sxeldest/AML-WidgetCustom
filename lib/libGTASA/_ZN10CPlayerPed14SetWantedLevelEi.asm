; =========================================================
; Game Engine Function: _ZN10CPlayerPed14SetWantedLevelEi
; Address            : 0x4C96A8 - 0x4C96B8
; =========================================================

4C96A8:  LDR.W           R0, [R0,#0x444]
4C96AC:  CMP             R0, #0
4C96AE:  ITE NE
4C96B0:  LDRNE           R0, [R0]
4C96B2:  MOVEQ           R0, #0; this
4C96B4:  B.W             sub_19290C
