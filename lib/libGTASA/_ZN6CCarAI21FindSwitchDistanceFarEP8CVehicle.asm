; =========================================================
; Game Engine Function: _ZN6CCarAI21FindSwitchDistanceFarEP8CVehicle
; Address            : 0x2E3840 - 0x2E386C
; =========================================================

2E3840:  LDRB.W          R1, [R0,#0x42C]
2E3844:  LSLS            R1, R1, #0x1F
2E3846:  ITTT NE
2E3848:  VLDRNE          S0, =50.0
2E384C:  VMOVNE          R0, S0
2E3850:  BXNE            LR
2E3852:  LDRB.W          R0, [R0,#0x3E1]
2E3856:  VMOV.F32        S0, #5.0
2E385A:  VMOV            S2, R0
2E385E:  VCVT.F32.U32    S2, S2
2E3862:  VADD.F32        S0, S2, S0
2E3866:  VMOV            R0, S0
2E386A:  BX              LR
