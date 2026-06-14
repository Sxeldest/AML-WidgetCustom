; =========================================================
; Game Engine Function: _ZN10CTimeCycle6AddOneER4CBoxsifff
; Address            : 0x42086C - 0x4208EC
; =========================================================

42086C:  PUSH            {R4,R6,R7,LR}
42086E:  ADD             R7, SP, #8
420870:  VMOV.F32        S10, #4.0
420874:  VLDR            S2, [R7,#arg_4]
420878:  VLDR            S0, =32.0
42087C:  VMOV            S8, R3
420880:  LDR.W           R12, =(_ZN10CTimeCycle10m_NumBoxesE_ptr - 0x420890)
420884:  VMUL.F32        S0, S2, S0
420888:  VLD1.32         {D16-D17}, [R0]!
42088C:  ADD             R12, PC; _ZN10CTimeCycle10m_NumBoxesE_ptr
42088E:  LDR.W           LR, =(_ZN10CTimeCycle8m_aBoxesE_ptr - 0x4208A6)
420892:  LDR.W           R12, [R12]; CTimeCycle::m_NumBoxes ...
420896:  VCMPE.F32       S2, S10
42089A:  VLDR            S6, =0.01
42089E:  VMRS            APSR_nzcv, FPSCR
4208A2:  ADD             LR, PC; _ZN10CTimeCycle8m_aBoxesE_ptr
4208A4:  LDR.W           R4, [R12]; CTimeCycle::m_NumBoxes
4208A8:  VMUL.F32        S6, S8, S6
4208AC:  VLDR            D18, [R0]
4208B0:  VCVT.U32.F32    S0, S0
4208B4:  LDR.W           R0, [LR]; CTimeCycle::m_aBoxes ...
4208B8:  ADD.W           R3, R4, R4,LSL#2
4208BC:  VLDR            S4, [R7,#arg_0]
4208C0:  ADD.W           R0, R0, R3,LSL#3
4208C4:  STRH            R1, [R0,#0x18]
4208C6:  VMOV            R1, S0
4208CA:  STR             R2, [R0,#0x1C]
4208CC:  IT GT
4208CE:  MOVGT           R1, #0xFFFFFF80
4208D2:  STRB            R1, [R0,#0x1A]
4208D4:  VSTR            S6, [R0,#0x20]
4208D8:  VSTR            S4, [R0,#0x24]
4208DC:  VST1.32         {D16-D17}, [R0]!
4208E0:  VSTR            D18, [R0]
4208E4:  ADDS            R0, R4, #1
4208E6:  STR.W           R0, [R12]; CTimeCycle::m_NumBoxes
4208EA:  POP             {R4,R6,R7,PC}
