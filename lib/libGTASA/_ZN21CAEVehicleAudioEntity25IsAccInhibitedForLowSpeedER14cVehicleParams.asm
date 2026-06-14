; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity25IsAccInhibitedForLowSpeedER14cVehicleParams
; Address            : 0x3B3990 - 0x3B39B8
; =========================================================

3B3990:  VLDR            S2, [R1,#0x1C]
3B3994:  MOVS            R2, #0
3B3996:  VLDR            S0, =0.1
3B399A:  MOVS            R1, #0
3B399C:  LDRB.W          R0, [R0,#0xB0]
3B39A0:  VCMPE.F32       S2, S0
3B39A4:  VMRS            APSR_nzcv, FPSCR
3B39A8:  IT LT
3B39AA:  MOVLT           R2, #1
3B39AC:  CMP             R0, #0
3B39AE:  IT EQ
3B39B0:  MOVEQ           R1, #1
3B39B2:  AND.W           R0, R1, R2
3B39B6:  BX              LR
