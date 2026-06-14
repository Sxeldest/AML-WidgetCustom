; =========================================================
; Game Engine Function: _ZNK8CVehicle11IsOnItsSideEv
; Address            : 0x584D40 - 0x584D6E
; =========================================================

584D40:  LDR             R0, [R0,#0x14]
584D42:  MOVS            R1, #0
584D44:  VLDR            S0, =0.8
584D48:  VLDR            S2, =-0.8
584D4C:  VLDR            S4, [R0,#8]
584D50:  MOVS            R0, #0
584D52:  VCMPE.F32       S4, S0
584D56:  VMRS            APSR_nzcv, FPSCR
584D5A:  VCMPE.F32       S4, S2
584D5E:  IT GE
584D60:  MOVGE           R1, #1
584D62:  VMRS            APSR_nzcv, FPSCR
584D66:  IT LE
584D68:  MOVLE           R0, #1
584D6A:  ORRS            R0, R1
584D6C:  BX              LR
