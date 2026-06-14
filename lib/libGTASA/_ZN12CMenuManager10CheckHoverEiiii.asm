; =========================================================
; Game Engine Function: _ZN12CMenuManager10CheckHoverEiiii
; Address            : 0x435954 - 0x435976
; =========================================================

435954:  LDR.W           R12, [R0,#0x80]
435958:  CMP             R12, R1
43595A:  BLE             loc_435972
43595C:  CMP             R12, R2
43595E:  BGE             loc_435972
435960:  LDR.W           R0, [R0,#0x84]
435964:  CMP             R0, R3
435966:  BLE             loc_435972
435968:  LDR             R1, [SP,#arg_0]
43596A:  CMP             R0, R1
43596C:  ITT LT
43596E:  MOVLT           R0, #1
435970:  BXLT            LR
435972:  MOVS            R0, #0
435974:  BX              LR
