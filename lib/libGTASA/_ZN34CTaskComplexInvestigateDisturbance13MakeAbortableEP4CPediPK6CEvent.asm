; =========================================================
; Game Engine Function: _ZN34CTaskComplexInvestigateDisturbance13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x526464 - 0x526478
; =========================================================

526464:  LDR             R0, [R0,#8]
526466:  CMP             R0, #0
526468:  ITT EQ
52646A:  MOVEQ           R0, #1
52646C:  BXEQ            LR
52646E:  LDR.W           R12, [R0]
526472:  LDR.W           R12, [R12,#0x1C]
526476:  BX              R12
