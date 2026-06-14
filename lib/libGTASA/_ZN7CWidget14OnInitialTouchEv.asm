; =========================================================
; Game Engine Function: _ZN7CWidget14OnInitialTouchEv
; Address            : 0x2B385C - 0x2B389E
; =========================================================

2B385C:  ADD.W           R2, R0, #0x50 ; 'P'
2B3860:  LDR             R1, =(_ZN7CWidget7m_fTimeE_ptr - 0x2B3870)
2B3862:  VLD1.32         {D16-D17}, [R2]
2B3866:  MOVS            R2, #0
2B3868:  ADD.W           R3, R0, #0x60 ; '`'
2B386C:  ADD             R1, PC; _ZN7CWidget7m_fTimeE_ptr
2B386E:  STR             R2, [R0,#0x44]
2B3870:  MOVS            R2, #1
2B3872:  STRB.W          R2, [R0,#0x48]
2B3876:  VLD1.32         {D18-D19}, [R3]
2B387A:  ADD.W           R3, R0, #0x64 ; 'd'
2B387E:  LDR             R2, [R0,#0x70]
2B3880:  VST1.32         {D18-D19}, [R3]
2B3884:  STR             R2, [R0,#0x74]
2B3886:  ADD.W           R2, R0, #0x54 ; 'T'
2B388A:  LDR             R1, [R1]; CWidget::m_fTime ...
2B388C:  VST1.32         {D16-D17}, [R2]
2B3890:  VLDR            D16, [R1]
2B3894:  VCVT.F32.F64    S0, D16
2B3898:  VSTR            S0, [R0,#0x50]
2B389C:  BX              LR
