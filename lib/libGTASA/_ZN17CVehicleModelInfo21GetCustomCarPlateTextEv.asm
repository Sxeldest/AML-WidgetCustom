; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo21GetCustomCarPlateTextEv
; Address            : 0x388F18 - 0x388F24
; =========================================================

388F18:  LDRB.W          R1, [R0,#0x40]!
388F1C:  CMP             R1, #0
388F1E:  IT EQ
388F20:  MOVEQ           R0, R1
388F22:  BX              LR
