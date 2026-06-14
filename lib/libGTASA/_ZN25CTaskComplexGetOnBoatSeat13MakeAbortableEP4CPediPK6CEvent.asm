; =========================================================
; Game Engine Function: _ZN25CTaskComplexGetOnBoatSeat13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x506294 - 0x5062A8
; =========================================================

506294:  CMP             R2, #2
506296:  ITT NE
506298:  MOVNE           R0, #0
50629A:  BXNE            LR
50629C:  LDR             R0, [R0,#8]
50629E:  LDR             R2, [R0]
5062A0:  LDR.W           R12, [R2,#0x1C]
5062A4:  MOVS            R2, #2
5062A6:  BX              R12
