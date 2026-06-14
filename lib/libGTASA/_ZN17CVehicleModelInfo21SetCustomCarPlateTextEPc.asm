; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo21SetCustomCarPlateTextEPc
; Address            : 0x388F06 - 0x388F18
; =========================================================

388F06:  ADDS            R0, #0x40 ; '@'; char *
388F08:  CMP             R1, #0
388F0A:  ITT NE
388F0C:  MOVNE           R2, #8; size_t
388F0E:  BNE.W           sub_19F770
388F12:  MOVS            R1, #0
388F14:  STRB            R1, [R0]
388F16:  BX              LR
