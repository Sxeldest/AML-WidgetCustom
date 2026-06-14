; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager24GetCurrentRadioStationIDEv
; Address            : 0x3A3588 - 0x3A3596
; =========================================================

3A3588:  LDRB.W          R0, [R0,#0xE9]
3A358C:  CMP             R0, #0xFF
3A358E:  IT EQ
3A3590:  MOVEQ           R0, #0xD
3A3592:  SXTB            R0, R0
3A3594:  BX              LR
