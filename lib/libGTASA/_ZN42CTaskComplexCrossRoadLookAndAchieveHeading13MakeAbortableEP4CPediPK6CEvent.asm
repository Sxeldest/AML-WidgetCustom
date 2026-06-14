; =========================================================
; Game Engine Function: _ZN42CTaskComplexCrossRoadLookAndAchieveHeading13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4F3268 - 0x4F3282
; =========================================================

4F3268:  SUB.W           R12, R2, #1
4F326C:  CMP.W           R12, #1
4F3270:  ITT HI
4F3272:  MOVHI           R0, #0
4F3274:  BXHI            LR
4F3276:  LDR             R0, [R0,#8]
4F3278:  LDR.W           R12, [R0]
4F327C:  LDR.W           R12, [R12,#0x1C]
4F3280:  BX              R12
