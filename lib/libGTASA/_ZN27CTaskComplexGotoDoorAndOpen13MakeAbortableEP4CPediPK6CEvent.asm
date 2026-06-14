; =========================================================
; Game Engine Function: _ZN27CTaskComplexGotoDoorAndOpen13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x525A78 - 0x525A8C
; =========================================================

525A78:  CMP             R2, #2
525A7A:  ITT NE
525A7C:  MOVNE           R0, #0
525A7E:  BXNE            LR
525A80:  LDR             R0, [R0,#8]
525A82:  LDR             R2, [R0]
525A84:  LDR.W           R12, [R2,#0x1C]
525A88:  MOVS            R2, #2
525A8A:  BX              R12
