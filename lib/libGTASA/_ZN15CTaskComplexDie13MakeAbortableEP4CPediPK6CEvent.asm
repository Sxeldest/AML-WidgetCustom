; =========================================================
; Game Engine Function: _ZN15CTaskComplexDie13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4EB5E8 - 0x4EB602
; =========================================================

4EB5E8:  SUB.W           R12, R2, #1
4EB5EC:  CMP.W           R12, #1
4EB5F0:  ITT HI
4EB5F2:  MOVHI           R0, #0
4EB5F4:  BXHI            LR
4EB5F6:  LDR             R0, [R0,#8]
4EB5F8:  LDR.W           R12, [R0]
4EB5FC:  LDR.W           R12, [R12,#0x1C]
4EB600:  BX              R12
