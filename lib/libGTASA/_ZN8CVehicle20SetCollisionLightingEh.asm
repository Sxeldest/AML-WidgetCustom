; =========================================================
; Game Engine Function: _ZN8CVehicle20SetCollisionLightingEh
; Address            : 0x58197C - 0x581988
; =========================================================

58197C:  MOV.W           R2, #0x1010101
581980:  MULS            R1, R2
581982:  STR.W           R1, [R0,#0x584]
581986:  BX              LR
