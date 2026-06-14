; =========================================================
; Game Engine Function: _ZN10CFormation26GenerateGatherDestinationsEP8CPedListP4CPed
; Address            : 0x548774 - 0x54889A
; =========================================================

548774:  PUSH            {R4-R7,LR}
548776:  ADD             R7, SP, #0xC
548778:  PUSH.W          {R8-R11}
54877C:  SUB             SP, SP, #4
54877E:  VPUSH           {D8-D13}
548782:  SUB             SP, SP, #8
548784:  MOV             R10, R1
548786:  LDR             R1, =(_ZN10CFormation14m_DestinationsE_ptr - 0x548790)
548788:  VMOV.I32        Q8, #0
54878C:  ADD             R1, PC; _ZN10CFormation14m_DestinationsE_ptr
54878E:  LDR             R2, [R1]; CFormation::m_Destinations ...
548790:  MOVS            R1, #0
548792:  STRD.W          R1, R1, [R2,#(dword_9FFA48 - 0x9FF914)]
548796:  STR             R1, [R2]; CFormation::m_Destinations
548798:  ADD.W           R1, R2, #0x124
54879C:  STR             R0, [SP,#0x58+var_54]
54879E:  VST1.32         {D16-D17}, [R1]
5487A2:  ADDW            R1, R10, #0x55C
5487A6:  LDR             R0, [R0]
5487A8:  VLDR            S16, [R1]
5487AC:  SUBS            R1, R0, #1
5487AE:  CMP             R1, #4
5487B0:  BCS             loc_5487BE
5487B2:  ADR             R2, dword_5488A0
5487B4:  ADD.W           R1, R2, R1,LSL#2
5487B8:  VLDR            S18, [R1]
5487BC:  B               loc_5487C6
5487BE:  CMP             R0, #0
5487C0:  BLE             loc_54888C
5487C2:  VMOV.F32        S18, #2.5
5487C6:  VLDR            S0, =1.5708
5487CA:  MOV.W           R11, #0
5487CE:  LDR             R1, =(_ZN10CFormation14m_DestinationsE_ptr - 0x5487DE)
5487D0:  MOVS            R4, #0
5487D2:  VADD.F32        S20, S16, S0
5487D6:  VLDR            S22, =0.0
5487DA:  ADD             R1, PC; _ZN10CFormation14m_DestinationsE_ptr
5487DC:  VLDR            S24, =3.1416
5487E0:  VLDR            S26, =6.2832
5487E4:  LDR.W           R9, [R1]; CFormation::m_Destinations ...
5487E8:  VMOV.F32        S0, S20
5487EC:  CMP             R0, #2
5487EE:  BLT             loc_548814
5487F0:  VMOV            S0, R0
5487F4:  VMOV            S2, R4
5487F8:  VCVT.F32.S32    S0, S0
5487FC:  VCVT.F32.S32    S2, S2
548800:  VDIV.F32        S2, S2, S0
548804:  VDIV.F32        S0, S24, S0
548808:  VMUL.F32        S2, S2, S26
54880C:  VSUB.F32        S2, S2, S16
548810:  VADD.F32        S0, S0, S2
548814:  LDR.W           R1, [R10,#0x14]
548818:  ADD.W           R8, R1, #0x30 ; '0'
54881C:  CMP             R1, #0
54881E:  IT EQ
548820:  ADDEQ.W         R8, R10, #4
548824:  CMP.W           R11, #0x17
548828:  BGT             loc_548886
54882A:  VMOV            R6, S0
54882E:  MOV             R0, R6; x
548830:  BLX             sinf
548834:  MOV             R5, R0
548836:  MOV             R0, R6; x
548838:  BLX             cosf
54883C:  VMOV            S0, R0
548840:  VLDR            S8, [R8,#8]
548844:  VMOV            S2, R5
548848:  VLDR            S4, [R8]
54884C:  VMUL.F32        S0, S18, S0
548850:  VLDR            S6, [R8,#4]
548854:  VMUL.F32        S2, S18, S2
548858:  ADD.W           R0, R11, R11,LSL#1
54885C:  VADD.F32        S8, S8, S22
548860:  ADD.W           R1, R11, #1
548864:  ADD.W           R0, R9, R0,LSL#2
548868:  STR.W           R1, [R9]; CFormation::m_Destinations
54886C:  MOV             R11, R1
54886E:  VADD.F32        S0, S6, S0
548872:  VADD.F32        S2, S4, S2
548876:  VSTR            S2, [R0,#4]
54887A:  VSTR            S0, [R0,#8]
54887E:  VSTR            S8, [R0,#0xC]
548882:  LDR             R0, [SP,#0x58+var_54]
548884:  LDR             R0, [R0]
548886:  ADDS            R4, #1
548888:  CMP             R4, R0
54888A:  BLT             loc_5487E8
54888C:  ADD             SP, SP, #8
54888E:  VPOP            {D8-D13}
548892:  ADD             SP, SP, #4
548894:  POP.W           {R8-R11}
548898:  POP             {R4-R7,PC}
