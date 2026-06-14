; =========================================================
; Game Engine Function: _ZN41CTaskComplexCarSlowBeDraggedOutAndStandUp13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5052E8 - 0x5052FC
; =========================================================

5052E8:  CMP             R2, #2
5052EA:  ITT NE
5052EC:  MOVNE           R0, #0
5052EE:  BXNE            LR
5052F0:  LDR             R0, [R0,#8]
5052F2:  LDR             R2, [R0]
5052F4:  LDR.W           R12, [R2,#0x1C]
5052F8:  MOVS            R2, #2
5052FA:  BX              R12
