; =========================================================
; Game Engine Function: _ZN9C3dMarker27SetZCoordinateIfNotUpToDateEf
; Address            : 0x5C34B4 - 0x5C34EC
; =========================================================

5C34B4:  VLDR            S0, [R0,#0x30]
5C34B8:  LDRH.W          R2, [R0,#0x84]
5C34BC:  VCVT.S32.F32    S0, S0
5C34C0:  VMOV            R3, S0
5C34C4:  UXTH            R3, R3
5C34C6:  CMP             R2, R3
5C34C8:  BNE             loc_5C34E2
5C34CA:  VLDR            S0, [R0,#0x34]
5C34CE:  LDRH.W          R2, [R0,#0x86]
5C34D2:  VCVT.S32.F32    S0, S0
5C34D6:  VMOV            R3, S0
5C34DA:  UXTH            R3, R3
5C34DC:  CMP             R2, R3
5C34DE:  IT EQ
5C34E0:  BXEQ            LR
5C34E2:  VMOV            S0, R1
5C34E6:  VSTR            S0, [R0,#0x38]
5C34EA:  BX              LR
