; =========================================================
; Game Engine Function: _ZN28CTaskComplexHitByGunResponse13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4F34C8 - 0x4F34E2
; =========================================================

4F34C8:  SUB.W           R12, R2, #1
4F34CC:  CMP.W           R12, #1
4F34D0:  ITT HI
4F34D2:  MOVHI           R0, #0
4F34D4:  BXHI            LR
4F34D6:  LDR             R0, [R0,#8]
4F34D8:  LDR.W           R12, [R0]
4F34DC:  LDR.W           R12, [R12,#0x1C]
4F34E0:  BX              R12
