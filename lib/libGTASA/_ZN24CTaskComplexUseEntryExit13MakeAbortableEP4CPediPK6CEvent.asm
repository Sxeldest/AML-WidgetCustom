; =========================================================
; Game Engine Function: _ZN24CTaskComplexUseEntryExit13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5260D8 - 0x5260EC
; =========================================================

5260D8:  CMP             R2, #2
5260DA:  ITT NE
5260DC:  MOVNE           R0, #0
5260DE:  BXNE            LR
5260E0:  LDR             R0, [R0,#8]
5260E2:  LDR             R2, [R0]
5260E4:  LDR.W           R12, [R2,#0x1C]
5260E8:  MOVS            R2, #2
5260EA:  BX              R12
