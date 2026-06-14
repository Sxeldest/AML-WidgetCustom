; =========================================================
; Game Engine Function: _ZN17CAttractorScanner5ClearEv
; Address            : 0x4BAF20 - 0x4BAF80
; =========================================================

4BAF20:  LDR             R1, =(_ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr - 0x4BAF32)
4BAF22:  VMOV.I32        Q9, #0
4BAF26:  VMOV.F32        Q8, #25.0
4BAF2A:  ADD.W           R2, R0, #0x40 ; '@'
4BAF2E:  ADD             R1, PC; _ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr
4BAF30:  MOVS            R3, #0
4BAF32:  LDR             R1, [R1]; CPedAttractorManager::ms_fSearchDistance ...
4BAF34:  VLDR            S0, [R1]
4BAF38:  ADD.W           R1, R0, #0x18
4BAF3C:  VMUL.F32        S0, S0, S0
4BAF40:  VST1.32         {D18-D19}, [R1]
4BAF44:  ADD.W           R1, R0, #0x68 ; 'h'
4BAF48:  VST1.32         {D16-D17}, [R1]!
4BAF4C:  VST1.32         {D18-D19}, [R2]!
4BAF50:  STR             R3, [R2]
4BAF52:  VSTR            S0, [R1]
4BAF56:  ADD.W           R1, R0, #0x54 ; 'T'
4BAF5A:  VST1.32         {D18-D19}, [R1]
4BAF5E:  ADD.W           R1, R0, #0x30 ; '0'
4BAF62:  VST1.32         {D18-D19}, [R1]
4BAF66:  MOVS            R1, #0x41C80000
4BAF6C:  VSTR            S0, [R0,#0x84]
4BAF70:  STRD.W          R3, R3, [R0,#0x28]
4BAF74:  STRD.W          R1, R1, [R0,#0x7C]
4BAF78:  STR             R3, [R0,#0x64]
4BAF7A:  STRD.W          R1, R1, [R0,#0x88]
4BAF7E:  BX              LR
