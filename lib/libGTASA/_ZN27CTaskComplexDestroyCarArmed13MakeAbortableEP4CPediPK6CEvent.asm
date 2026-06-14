; =========================================================
; Game Engine Function: _ZN27CTaskComplexDestroyCarArmed13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4E6F58 - 0x4E6F72
; =========================================================

4E6F58:  SUB.W           R12, R2, #1
4E6F5C:  CMP.W           R12, #1
4E6F60:  ITT HI
4E6F62:  MOVHI           R0, #0
4E6F64:  BXHI            LR
4E6F66:  LDR             R0, [R0,#8]
4E6F68:  LDR.W           R12, [R0]
4E6F6C:  LDR.W           R12, [R12,#0x1C]
4E6F70:  BX              R12
