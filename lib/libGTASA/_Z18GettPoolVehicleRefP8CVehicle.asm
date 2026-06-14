; =========================================================
; Game Engine Function: _Z18GettPoolVehicleRefP8CVehicle
; Address            : 0x483D20 - 0x483D2E
; =========================================================

483D20:  CMP             R0, #0
483D22:  IT NE
483D24:  BNE.W           sub_193020
483D28:  MOV.W           R0, #0xFFFFFFFF
483D2C:  BX              LR
