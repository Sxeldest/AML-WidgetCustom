; =========================================================
; Game Engine Function: _ZN13CEventScannerC2Ev
; Address            : 0x4BFA34 - 0x4BFB10
; =========================================================

4BFA34:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CEventScanner::CEventScanner(void)'
4BFA36:  ADD             R7, SP, #8
4BFA38:  LDR             R2, =(_ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr - 0x4BFA48)
4BFA3A:  VMOV.I32        Q8, #0
4BFA3E:  MOV             R4, R0
4BFA40:  VMOV.F32        Q9, #25.0
4BFA44:  ADD             R2, PC; _ZN20CPedAttractorManager18ms_fSearchDistanceE_ptr
4BFA46:  ADD.W           R3, R4, #0x30 ; '0'
4BFA4A:  MOVS            R0, #0
4BFA4C:  MOV.W           LR, #1
4BFA50:  LDR             R2, [R2]; CPedAttractorManager::ms_fSearchDistance ...
4BFA52:  MOVS            R1, #0
4BFA54:  STRH            R0, [R4,#0x18]
4BFA56:  MOVT            R1, #0x41C8
4BFA5A:  STRH            R0, [R4,#0xC]
4BFA5C:  VLDR            S0, [R2]
4BFA60:  ADD.W           R2, R4, #0x5C ; '\'
4BFA64:  STRD.W          R0, R0, [R4,#4]
4BFA68:  VMUL.F32        S0, S0, S0
4BFA6C:  STRH            R0, [R4,#0x28]
4BFA6E:  STRD.W          R0, R0, [R4,#0x10]
4BFA72:  STRB.W          LR, [R4,#0x1C]
4BFA76:  STR             R0, [R4,#0x2C]
4BFA78:  VST1.32         {D16-D17}, [R3]
4BFA7C:  ADD.W           R3, R4, #0x84
4BFA80:  LDR.W           R12, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4BFA8E)
4BFA84:  STR             R0, [R4,#0x40]
4BFA86:  VST1.32         {D16-D17}, [R2]
4BFA8A:  ADD             R12, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4BFA8C:  STRD.W          R0, R0, [R4,#0x20]
4BFA90:  VST1.32         {D18-D19}, [R3]!
4BFA94:  STR             R0, [R4,#0x44]
4BFA96:  STRD.W          R1, R1, [R4,#0x98]
4BFA9A:  VSTR            S0, [R3]
4BFA9E:  ADD.W           R3, R4, #0x6C ; 'l'
4BFAA2:  LDR.W           R2, [R12]; CTimer::m_snTimeInMilliseconds ...
4BFAA6:  VST1.32         {D16-D17}, [R3]
4BFAAA:  ADD.W           R3, R4, #0x48 ; 'H'
4BFAAE:  VST1.32         {D16-D17}, [R3]
4BFAB2:  VSTR            S0, [R4,#0xA0]
4BFAB6:  STR             R0, [R4,#0x58]
4BFAB8:  STRD.W          R0, R0, [R4,#0x7C]
4BFABC:  STRD.W          R1, R1, [R4,#0xA4]
4BFAC0:  STRH.W          R0, [R4,#0xB4]
4BFAC4:  STRD.W          R0, R0, [R4,#0xAC]
4BFAC8:  STRH.W          LR, [R4,#0xB8]
4BFACC:  STRH.W          R0, [R4,#0xC4]
4BFAD0:  STRB.W          R0, [R4,#0xBA]
4BFAD4:  STRD.W          R0, R0, [R4,#0xBC]
4BFAD8:  STRH.W          R0, [R4,#0xD0]
4BFADC:  STRD.W          R0, R0, [R4,#0xC8]
4BFAE0:  LDR             R5, [R2]; CTimer::m_snTimeInMilliseconds
4BFAE2:  BLX             rand
4BFAE6:  UXTH            R0, R0
4BFAE8:  VLDR            S2, =0.000015259
4BFAEC:  VMOV            S0, R0
4BFAF0:  VCVT.F32.S32    S0, S0
4BFAF4:  VMUL.F32        S0, S0, S2
4BFAF8:  VLDR            S2, =3000.0
4BFAFC:  VMUL.F32        S0, S0, S2
4BFB00:  VCVT.S32.F32    S0, S0
4BFB04:  VMOV            R0, S0
4BFB08:  ADD             R0, R5
4BFB0A:  STR             R0, [R4]
4BFB0C:  MOV             R0, R4
4BFB0E:  POP             {R4,R5,R7,PC}
