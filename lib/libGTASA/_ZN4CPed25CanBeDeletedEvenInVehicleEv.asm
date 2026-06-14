; =========================================================
; Game Engine Function: _ZN4CPed25CanBeDeletedEvenInVehicleEv
; Address            : 0x4A4C64 - 0x4A4C78
; =========================================================

4A4C64:  LDRB.W          R0, [R0,#0x448]
4A4C68:  CMP             R0, #3
4A4C6A:  IT NE
4A4C6C:  CMPNE           R0, #2
4A4C6E:  BNE             loc_4A4C74
4A4C70:  MOVS            R0, #0
4A4C72:  BX              LR
4A4C74:  MOVS            R0, #1
4A4C76:  BX              LR
