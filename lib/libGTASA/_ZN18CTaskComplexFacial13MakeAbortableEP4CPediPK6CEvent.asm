; =========================================================
; Game Engine Function: _ZN18CTaskComplexFacial13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x540ED8 - 0x540EEC
; =========================================================

540ED8:  CMP             R2, #2
540EDA:  ITT NE
540EDC:  MOVNE           R0, #0
540EDE:  BXNE            LR
540EE0:  LDR             R0, [R0,#8]
540EE2:  LDR             R2, [R0]
540EE4:  LDR.W           R12, [R2,#0x1C]
540EE8:  MOVS            R2, #2
540EEA:  BX              R12
