; =========================================================
; Game Engine Function: _ZN17CAttractorScannerC2Ev
; Address            : 0x4BAEAC - 0x4BAF1A
; =========================================================

4BAEAC:  LDR             R2, =(_ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr - 0x4BAEBA); Alternative name is 'CAttractorScanner::CAttractorScanner(void)'
4BAEAE:  MOVS            R1, #0
4BAEB0:  VMOV.I32        Q9, #0
4BAEB4:  MOVS            R3, #1
4BAEB6:  ADD             R2, PC; _ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr
4BAEB8:  STRH            R1, [R0,#0xC]
4BAEBA:  STRB            R3, [R0]
4BAEBC:  ADD.W           R3, R0, #0x14
4BAEC0:  LDR             R2, [R2]; CPedAttractorManager::ms_fSearchDistance ...
4BAEC2:  VMOV.F32        Q8, #25.0
4BAEC6:  VST1.32         {D18-D19}, [R3]
4BAECA:  MOVS            R3, #0x41C80000
4BAED0:  VLDR            S0, [R2]
4BAED4:  ADD.W           R2, R0, #0x40 ; '@'
4BAED8:  STR             R1, [R0,#0x10]
4BAEDA:  VMUL.F32        S0, S0, S0
4BAEDE:  VST1.32         {D18-D19}, [R2]
4BAEE2:  ADD.W           R2, R0, #0x68 ; 'h'
4BAEE6:  STRD.W          R1, R1, [R0,#4]
4BAEEA:  VST1.32         {D16-D17}, [R2]!
4BAEEE:  STRD.W          R1, R1, [R0,#0x24]
4BAEF2:  STRD.W          R3, R3, [R0,#0x7C]
4BAEF6:  VSTR            S0, [R2]
4BAEFA:  ADD.W           R2, R0, #0x50 ; 'P'
4BAEFE:  VST1.32         {D18-D19}, [R2]
4BAF02:  ADD.W           R2, R0, #0x2C ; ','
4BAF06:  VST1.32         {D18-D19}, [R2]
4BAF0A:  VSTR            S0, [R0,#0x84]
4BAF0E:  STR             R1, [R0,#0x3C]
4BAF10:  STRD.W          R1, R1, [R0,#0x60]
4BAF14:  STRD.W          R3, R3, [R0,#0x88]
4BAF18:  BX              LR
