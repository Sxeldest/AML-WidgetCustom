; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity19UpdateGasPedalAudioEP8CVehiclei
; Address            : 0x3AF660 - 0x3AF6B2
; =========================================================

3AF660:  ADD.W           R0, R1, #0x4A0
3AF664:  CMP             R2, #9
3AF666:  VLDR            S0, [R0]
3AF66A:  BEQ             loc_3AF678
3AF66C:  CMP             R2, #0
3AF66E:  IT NE
3AF670:  BXNE            LR
3AF672:  ADDW            R0, R1, #0x978
3AF676:  B               loc_3AF67C
3AF678:  ADDW            R0, R1, #0x81C
3AF67C:  VABS.F32        S0, S0
3AF680:  VLDR            S2, [R0]
3AF684:  VCMPE.F32       S0, S2
3AF688:  VMRS            APSR_nzcv, FPSCR
3AF68C:  BLE             loc_3AF6A0
3AF68E:  VLDR            S4, =0.09
3AF692:  VADD.F32        S2, S2, S4
3AF696:  VMIN.F32        D0, D1, D0
3AF69A:  VSTR            S0, [R0]
3AF69E:  BX              LR
3AF6A0:  VLDR            S4, =-0.07
3AF6A4:  VADD.F32        S2, S2, S4
3AF6A8:  VMAX.F32        D0, D1, D0
3AF6AC:  VSTR            S0, [R0]
3AF6B0:  BX              LR
