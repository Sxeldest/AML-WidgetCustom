; =========================================================
; Game Engine Function: _ZN22CTaskComplexDestroyCar13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4E5DB8 - 0x4E5DD2
; =========================================================

4E5DB8:  SUB.W           R12, R2, #1
4E5DBC:  CMP.W           R12, #1
4E5DC0:  ITT HI
4E5DC2:  MOVHI           R0, #0
4E5DC4:  BXHI            LR
4E5DC6:  LDR             R0, [R0,#8]
4E5DC8:  LDR.W           R12, [R0]
4E5DCC:  LDR.W           R12, [R12,#0x1C]
4E5DD0:  BX              R12
