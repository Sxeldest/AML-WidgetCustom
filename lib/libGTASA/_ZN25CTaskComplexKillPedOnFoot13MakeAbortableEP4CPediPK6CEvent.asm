; =========================================================
; Game Engine Function: _ZN25CTaskComplexKillPedOnFoot13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4E0288 - 0x4E02A8
; =========================================================

4E0288:  LDR.W           R12, [R1,#0x48C]
4E028C:  BIC.W           R12, R12, #0x400000
4E0290:  STR.W           R12, [R1,#0x48C]
4E0294:  LDR             R0, [R0,#8]
4E0296:  CMP             R0, #0
4E0298:  ITT EQ
4E029A:  MOVEQ           R0, #1
4E029C:  BXEQ            LR
4E029E:  LDR.W           R12, [R0]
4E02A2:  LDR.W           R12, [R12,#0x1C]
4E02A6:  BX              R12
