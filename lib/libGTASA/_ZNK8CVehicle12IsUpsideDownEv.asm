; =========================================================
; Game Engine Function: _ZNK8CVehicle12IsUpsideDownEv
; Address            : 0x584D20 - 0x584D3A
; =========================================================

584D20:  LDR             R0, [R0,#0x14]
584D22:  VLDR            S0, =-0.9
584D26:  VLDR            S2, [R0,#0x28]
584D2A:  MOVS            R0, #0
584D2C:  VCMPE.F32       S2, S0
584D30:  VMRS            APSR_nzcv, FPSCR
584D34:  IT LE
584D36:  MOVLE           R0, #1
584D38:  BX              LR
