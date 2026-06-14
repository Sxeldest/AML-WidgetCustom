; =========================================================
; Game Engine Function: _ZN13CEventScanner5ClearEv
; Address            : 0x4BFF50 - 0x4BFFB2
; =========================================================

4BFF50:  LDR             R1, =(_ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr - 0x4BFF62)
4BFF52:  VMOV.I32        Q9, #0
4BFF56:  VMOV.F32        Q8, #25.0
4BFF5A:  ADD.W           R2, R0, #0x5C ; '\'
4BFF5E:  ADD             R1, PC; _ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr
4BFF60:  MOVS            R3, #0
4BFF62:  LDR             R1, [R1]; CPedAttractorManager::ms_fSearchDistance ...
4BFF64:  VLDR            S0, [R1]
4BFF68:  ADD.W           R1, R0, #0x34 ; '4'
4BFF6C:  VMUL.F32        S0, S0, S0
4BFF70:  VST1.32         {D18-D19}, [R1]
4BFF74:  ADD.W           R1, R0, #0x84
4BFF78:  VST1.32         {D16-D17}, [R1]!
4BFF7C:  VST1.32         {D18-D19}, [R2]!
4BFF80:  STR             R3, [R2]
4BFF82:  VSTR            S0, [R1]
4BFF86:  ADD.W           R1, R0, #0x70 ; 'p'
4BFF8A:  VST1.32         {D18-D19}, [R1]
4BFF8E:  ADD.W           R1, R0, #0x4C ; 'L'
4BFF92:  VST1.32         {D18-D19}, [R1]
4BFF96:  MOVS            R1, #0x41C80000
4BFF9C:  VSTR            S0, [R0,#0xA0]
4BFFA0:  STRD.W          R3, R3, [R0,#0x44]
4BFFA4:  STRD.W          R1, R1, [R0,#0x98]
4BFFA8:  STR.W           R3, [R0,#0x80]
4BFFAC:  STRD.W          R1, R1, [R0,#0xA4]
4BFFB0:  BX              LR
