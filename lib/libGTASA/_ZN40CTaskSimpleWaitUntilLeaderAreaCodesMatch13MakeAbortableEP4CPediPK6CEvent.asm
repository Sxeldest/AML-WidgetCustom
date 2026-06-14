; =========================================================
; Game Engine Function: _ZN40CTaskSimpleWaitUntilLeaderAreaCodesMatch13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4F1860 - 0x4F1874
; =========================================================

4F1860:  CMP             R2, #2
4F1862:  ITT NE
4F1864:  MOVNE           R0, #0
4F1866:  BXNE            LR
4F1868:  LDR             R0, [R1,#0x1C]
4F186A:  ORR.W           R0, R0, #1
4F186E:  STR             R0, [R1,#0x1C]
4F1870:  MOVS            R0, #1
4F1872:  BX              LR
