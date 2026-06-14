; =========================================================
; Game Engine Function: _Z14GettPoolObjRefP7CObject
; Address            : 0x483D54 - 0x483D62
; =========================================================

483D54:  CMP             R0, #0
483D56:  IT NE
483D58:  BNE.W           sub_199BA4
483D5C:  MOV.W           R0, #0xFFFFFFFF
483D60:  BX              LR
