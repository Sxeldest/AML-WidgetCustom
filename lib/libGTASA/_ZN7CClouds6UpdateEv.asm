; =========================================================
; Game Engine Function: _ZN7CClouds6UpdateEv
; Address            : 0x59EAD8 - 0x59EB64
; =========================================================

59EAD8:  PUSH            {R7,LR}
59EADA:  MOV             R7, SP
59EADC:  LDR             R0, =(TheCamera_ptr - 0x59EAE6)
59EADE:  VLDR            S0, =-0.85
59EAE2:  ADD             R0, PC; TheCamera_ptr
59EAE4:  LDR             R0, [R0]; TheCamera
59EAE6:  VLDR            S2, [R0,#0x14C]
59EAEA:  VADD.F32        S0, S2, S0
59EAEE:  VMOV            R0, S0; x
59EAF2:  BLX.W           sinf
59EAF6:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x59EB06)
59EAF8:  VMOV.F32        S4, #0.5
59EAFC:  LDR             R2, =(_ZN8CWeather4WindE_ptr - 0x59EB0A)
59EAFE:  VMOV            S6, R0
59EB02:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
59EB04:  LDR             R0, =(_ZN7CClouds18IndividualRotationE_ptr - 0x59EB12)
59EB06:  ADD             R2, PC; _ZN8CWeather4WindE_ptr
59EB08:  VLDR            S8, =0.3
59EB0C:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
59EB0E:  ADD             R0, PC; _ZN7CClouds18IndividualRotationE_ptr
59EB10:  LDR             R2, [R2]; CWeather::Wind ...
59EB12:  LDR             R0, [R0]; CClouds::IndividualRotation ...
59EB14:  VLDR            S0, [R1]
59EB18:  VLDR            S2, [R2]
59EB1C:  LDR             R1, =(_ZN7CClouds13CloudRotationE_ptr - 0x59EB26)
59EB1E:  VMUL.F32        S0, S2, S0
59EB22:  ADD             R1, PC; _ZN7CClouds13CloudRotationE_ptr
59EB24:  LDR             R1, [R1]; CClouds::CloudRotation ...
59EB26:  VMUL.F32        S0, S0, S4
59EB2A:  VLDR            S4, =0.001
59EB2E:  VMUL.F32        S4, S6, S4
59EB32:  VLDR            S6, [R0]
59EB36:  VADD.F32        S0, S0, S8
59EB3A:  VLDR            S8, =60.0
59EB3E:  VMUL.F32        S2, S4, S2
59EB42:  VCVT.F32.U32    S4, S6
59EB46:  VLDR            S6, [R1]
59EB4A:  VMUL.F32        S0, S0, S8
59EB4E:  VADD.F32        S2, S6, S2
59EB52:  VADD.F32        S0, S0, S4
59EB56:  VSTR            S2, [R1]
59EB5A:  VCVT.U32.F32    S0, S0
59EB5E:  VSTR            S0, [R0]
59EB62:  POP             {R7,PC}
