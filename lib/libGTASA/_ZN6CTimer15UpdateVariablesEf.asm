; =========================================================
; Game Engine Function: _ZN6CTimer15UpdateVariablesEf
; Address            : 0x420E08 - 0x420EE4
; =========================================================

420E08:  PUSH            {R4,R5,R7,LR}
420E0A:  ADD             R7, SP, #8
420E0C:  LDR             R1, =(timerDef_ptr - 0x420E18)
420E0E:  VMOV            S2, R0
420E12:  LDR             R0, =(_ZN6CTimer32m_snTimeInMillisecondsNonClippedE_ptr - 0x420E1E)
420E14:  ADD             R1, PC; timerDef_ptr
420E16:  LDR.W           R12, =(_ZN10CSpecialFX15bSnapShotActiveE_ptr - 0x420E24)
420E1A:  ADD             R0, PC; _ZN6CTimer32m_snTimeInMillisecondsNonClippedE_ptr
420E1C:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x420E28)
420E1E:  LDR             R1, [R1]; timerDef
420E20:  ADD             R12, PC; _ZN10CSpecialFX15bSnapShotActiveE_ptr
420E22:  LDR             R3, [R0]; CTimer::m_snTimeInMillisecondsNonClipped ...
420E24:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
420E26:  LDR             R5, =(_ZN6CTimer11m_UserPauseE_ptr - 0x420E30)
420E28:  VLDR            S0, [R1,#4]
420E2C:  ADD             R5, PC; _ZN6CTimer11m_UserPauseE_ptr
420E2E:  LDR.W           LR, =(_ZN6CTimer22ms_fTimeStepNonClippedE_ptr - 0x420E40)
420E32:  VCVT.F32.U32    S0, S0
420E36:  VLDR            S4, [R3]
420E3A:  LDR             R0, [R2]; CTimer::m_snTimeInMilliseconds ...
420E3C:  ADD             LR, PC; _ZN6CTimer22ms_fTimeStepNonClippedE_ptr
420E3E:  VCVT.F32.U32    S4, S4
420E42:  LDR             R2, [R5]; CTimer::m_UserPause ...
420E44:  LDR.W           R1, [R12]; CSpecialFX::bSnapShotActive ...
420E48:  LDR             R4, =(_ZN6CTimer11m_CodePauseE_ptr - 0x420E52)
420E4A:  LDR.W           R5, [LR]; CTimer::ms_fTimeStepNonClipped ...
420E4E:  ADD             R4, PC; _ZN6CTimer11m_CodePauseE_ptr
420E50:  VDIV.F32        S2, S2, S0
420E54:  LDR             R4, [R4]; CTimer::m_CodePause ...
420E56:  VMOV.F32        S0, #20.0
420E5A:  VADD.F32        S4, S2, S4
420E5E:  VDIV.F32        S0, S2, S0
420E62:  VCVT.U32.F32    S4, S4
420E66:  LDRB.W          R12, [R1]; CSpecialFX::bSnapShotActive
420E6A:  LDRB.W          LR, [R2]; CTimer::m_UserPause
420E6E:  VCVT.U32.F32    S2, S2
420E72:  LDRB            R2, [R4]; CTimer::m_CodePause
420E74:  VMOV            R4, S2
420E78:  VLDR            S2, =0.01
420E7C:  VCMPE.F32       S0, S2
420E80:  CMP.W           R4, #0x12C
420E84:  IT CS
420E86:  MOVCS.W         R4, #0x12C
420E8A:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds
420E8C:  VMRS            APSR_nzcv, FPSCR
420E90:  ADD             R1, R4
420E92:  STR             R1, [R0]; CTimer::m_snTimeInMilliseconds
420E94:  VSTR            S4, [R3]
420E98:  VSTR            S0, [R5]
420E9C:  BGE             loc_420EBE
420E9E:  ORR.W           R0, R2, LR
420EA2:  ORR.W           R0, R0, R12
420EA6:  LSLS            R0, R0, #0x18
420EA8:  BNE             loc_420EBE
420EAA:  LDR             R0, =(_ZN6CTimer22ms_fTimeStepNonClippedE_ptr - 0x420EB8)
420EAC:  VMOV            D0, D1
420EB0:  MOVW            R1, #0xD70A
420EB4:  ADD             R0, PC; _ZN6CTimer22ms_fTimeStepNonClippedE_ptr
420EB6:  MOVT            R1, #0x3C23
420EBA:  LDR             R0, [R0]; CTimer::ms_fTimeStepNonClipped ...
420EBC:  STR             R1, [R0]; CTimer::ms_fTimeStepNonClipped
420EBE:  VMOV.F32        S2, #3.0
420EC2:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x420ECE)
420EC4:  LDR             R1, =(_ZN6CTimer15ms_fOldTimeStepE_ptr - 0x420ED0)
420EC6:  VLDR            S4, =0.00001
420ECA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
420ECC:  ADD             R1, PC; _ZN6CTimer15ms_fOldTimeStepE_ptr
420ECE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
420ED0:  LDR             R1, [R1]; CTimer::ms_fOldTimeStep ...
420ED2:  VMIN.F32        D16, D0, D1
420ED6:  LDR             R2, [R0]; CTimer::ms_fTimeStep
420ED8:  STR             R2, [R1]; CTimer::ms_fOldTimeStep
420EDA:  VMAX.F32        D0, D16, D2
420EDE:  VSTR            S0, [R0]
420EE2:  POP             {R4,R5,R7,PC}
