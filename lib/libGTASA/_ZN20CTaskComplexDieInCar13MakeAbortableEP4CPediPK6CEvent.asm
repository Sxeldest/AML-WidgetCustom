; =========================================================
; Game Engine Function: _ZN20CTaskComplexDieInCar13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4F2784 - 0x4F279E
; =========================================================

4F2784:  SUB.W           R12, R2, #1
4F2788:  CMP.W           R12, #1
4F278C:  ITT HI
4F278E:  MOVHI           R0, #0
4F2790:  BXHI            LR
4F2792:  LDR             R0, [R0,#8]
4F2794:  LDR.W           R12, [R0]
4F2798:  LDR.W           R12, [R12,#0x1C]
4F279C:  BX              R12
