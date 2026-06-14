; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity29GetVehicleDriveWheelSkidValueEP8CVehicleifP13cTransmissionf
; Address            : 0x3B4B5C - 0x3B4BEE
; =========================================================

3B4B5C:  VLDR            S0, =0.0
3B4B60:  CMP             R2, #3
3B4B62:  VLDR            S2, [SP,#arg_4]
3B4B66:  BEQ             loc_3B4B94
3B4B68:  CMP             R2, #2
3B4B6A:  BEQ             loc_3B4BC4
3B4B6C:  CMP             R2, #1
3B4B6E:  BNE             loc_3B4BDA
3B4B70:  VMOV            S2, R3
3B4B74:  VLDR            S4, =0.4
3B4B78:  VCMPE.F32       S2, S4
3B4B7C:  VMRS            APSR_nzcv, FPSCR
3B4B80:  BLE             loc_3B4BDA
3B4B82:  VLDR            S0, =-0.4
3B4B86:  VADD.F32        S0, S2, S0
3B4B8A:  VLDR            S2, =0.6
3B4B8E:  VDIV.F32        S0, S0, S2
3B4B92:  B               loc_3B4BE0
3B4B94:  VABS.F32        S2, S2
3B4B98:  VLDR            S4, =0.04
3B4B9C:  VCMPE.F32       S2, S4
3B4BA0:  VMRS            APSR_nzcv, FPSCR
3B4BA4:  BLE             loc_3B4BDA
3B4BA6:  VMOV.F32        S0, #5.0
3B4BAA:  VLDR            S6, =1.2
3B4BAE:  VMOV.F32        S4, #1.0
3B4BB2:  VMUL.F32        S0, S2, S0
3B4BB6:  VMIN.F32        D0, D0, D2
3B4BBA:  VMUL.F32        S0, S0, S6
3B4BBE:  VMOV            R0, S0
3B4BC2:  BX              LR
3B4BC4:  VMOV.F32        S4, #1.0
3B4BC8:  VABS.F32        S0, S2
3B4BCC:  VCMPE.F32       S0, S4
3B4BD0:  VMRS            APSR_nzcv, FPSCR
3B4BD4:  BLE             loc_3B4BE0
3B4BD6:  VMOV.F32        S0, #0.75
3B4BDA:  VMOV            R0, S0
3B4BDE:  BX              LR
3B4BE0:  VMOV.F32        S2, #0.75
3B4BE4:  VMUL.F32        S0, S0, S2
3B4BE8:  VMOV            R0, S0
3B4BEC:  BX              LR
