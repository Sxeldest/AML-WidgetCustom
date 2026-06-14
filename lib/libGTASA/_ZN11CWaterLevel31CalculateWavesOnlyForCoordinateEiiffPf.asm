; =========================================================
; Game Engine Function: _ZN11CWaterLevel31CalculateWavesOnlyForCoordinateEiiffPf
; Address            : 0x5955E0 - 0x5957CA
; =========================================================

5955E0:  PUSH            {R4-R7,LR}
5955E2:  ADD             R7, SP, #0xC
5955E4:  PUSH.W          {R8}
5955E8:  LDR             R4, =(_ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr - 0x5955F8)
5955EA:  CMP             R0, #0
5955EC:  LDR.W           LR, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5955FE)
5955F0:  VMOV            S14, R2
5955F4:  ADD             R4, PC; _ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr
5955F6:  VLDR            S6, =0.0012566
5955FA:  ADD             LR, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5955FC:  VLDR            S8, =0.098175
595600:  LDR.W           R12, [R4]; CWaterLevel::m_nWaterTimeOffset ...
595604:  LDR.W           LR, [LR]; CTimer::m_snTimeInMilliseconds ...
595608:  LDR.W           R8, =(unk_61F25C - 0x59563A)
59560C:  LDR.W           R4, [R12]; CWaterLevel::m_nWaterTimeOffset
595610:  LDR.W           R5, [LR]; CTimer::m_snTimeInMilliseconds
595614:  IT MI
595616:  NEGMI           R0, R0
595618:  VMOV            S0, R0
59561C:  CMP             R1, #0
59561E:  SUB.W           R4, R5, R4
595622:  MOV             R5, #0xD1B71759
59562A:  VCVT.F32.S32    S4, S0
59562E:  UMULL.W         R5, R6, R4, R5
595632:  ADD.W           R0, R0, R0,LSR#31
595636:  ADD             R8, PC; unk_61F25C
595638:  VLDR            S1, =0.0017952
59563C:  MOV.W           R5, R6,LSR#12
595640:  MOVW            R6, #0x1388
595644:  MLS.W           R4, R5, R6, R4
595648:  VMUL.F32        S10, S4, S8
59564C:  LDR             R5, =(_ZN8CWeather8WavynessE_ptr - 0x59565C)
59564E:  MOV.W           R6, #0x1C
595652:  AND.W           R0, R6, R0,LSL#1
595656:  ADD             R0, R8
595658:  ADD             R5, PC; _ZN8CWeather8WavynessE_ptr
59565A:  VLDR            S12, [R0]
59565E:  VMOV            S0, R4
595662:  LDR             R4, =(unk_61F27C - 0x59567A)
595664:  LDR             R0, [R5]; CWeather::Wavyness ...
595666:  VCVT.F32.U32    S2, S0
59566A:  IT MI
59566C:  NEGMI           R1, R1
59566E:  VMOV            S0, R1
595672:  ADD.W           R1, R1, R1,LSR#31
595676:  ADD             R4, PC; unk_61F27C
595678:  VCVT.F32.S32    S0, S0
59567C:  AND.W           R1, R6, R1,LSL#1
595680:  ADD             R1, R4
595682:  VMUL.F32        S2, S2, S6
595686:  VMUL.F32        S6, S0, S8
59568A:  VADD.F32        S2, S10, S2
59568E:  VLDR            S10, [R1]
595692:  VMUL.F32        S10, S12, S10
595696:  VLDR            S12, [R0]
59569A:  LDR             R0, =(_ZN6CMaths11ms_SinTableE_ptr - 0x5956A0)
59569C:  ADD             R0, PC; _ZN6CMaths11ms_SinTableE_ptr
59569E:  VADD.F32        S6, S6, S2
5956A2:  VLDR            S2, =256.0
5956A6:  LDR             R0, [R0]; CMaths::ms_SinTable ...
5956A8:  VMUL.F32        S10, S10, S12
5956AC:  VMUL.F32        S8, S6, S2
5956B0:  VLDR            S6, =6.2832
5956B4:  VADD.F32        S12, S10, S10
5956B8:  VDIV.F32        S8, S8, S6
5956BC:  VCVT.U32.F32    S8, S8
5956C0:  VMUL.F32        S12, S12, S14
5956C4:  VLDR            S14, =0.24166
5956C8:  VMUL.F32        S4, S4, S14
5956CC:  VLDR            S14, =0.12083
5956D0:  VMUL.F32        S14, S0, S14
5956D4:  VMOV            R1, S8
5956D8:  UXTB            R1, R1
5956DA:  ADD.W           R1, R0, R1,LSL#2
5956DE:  VLDR            S8, [R1]
5956E2:  LDR             R1, [R7,#arg_0]
5956E4:  VMUL.F32        S8, S12, S8
5956E8:  VLDR            S12, [R1]
5956EC:  VADD.F32        S8, S12, S8
5956F0:  VSTR            S8, [R1]
5956F4:  LDR.W           R2, [R12]; CWaterLevel::m_nWaterTimeOffset
5956F8:  LDR.W           R4, [LR]; CTimer::m_snTimeInMilliseconds
5956FC:  SUBS            R2, R4, R2
5956FE:  MOV             R4, #0x95CBEC1B
595706:  UMULL.W         R4, R5, R2, R4
59570A:  LSRS            R4, R5, #0xB
59570C:  MOVW            R5, #0xDAC
595710:  MLS.W           R2, R4, R5, R2
595714:  VMOV            S12, R2
595718:  VCVT.F32.U32    S12, S12
59571C:  VMUL.F32        S12, S12, S1
595720:  VLDR            S1, =0.0020944
595724:  VADD.F32        S4, S4, S12
595728:  VMOV            S12, R3
59572C:  VADD.F32        S4, S14, S4
595730:  VMUL.F32        S14, S10, S12
595734:  VMUL.F32        S4, S4, S2
595738:  VDIV.F32        S4, S4, S6
59573C:  VCVT.U32.F32    S4, S4
595740:  VMOV            R2, S4
595744:  UXTB            R2, R2
595746:  ADD.W           R2, R0, R2,LSL#2
59574A:  VLDR            S4, [R2]
59574E:  VMUL.F32        S4, S14, S4
595752:  VLDR            S14, =0.31416
595756:  VMUL.F32        S0, S0, S14
59575A:  VADD.F32        S4, S8, S4
59575E:  VSTR            S4, [R1]
595762:  LDR.W           R2, [R12]; CWaterLevel::m_nWaterTimeOffset
595766:  LDR.W           R3, [LR]; CTimer::m_snTimeInMilliseconds
59576A:  SUBS            R2, R3, R2
59576C:  MOV             R3, #0x57619F1
595774:  UMULL.W         R3, R6, R2, R3
595778:  LSRS            R3, R6, #6
59577A:  MOVW            R6, #0xBB8
59577E:  MLS.W           R2, R3, R6, R2
595782:  VMOV            S8, R2
595786:  VCVT.F32.U32    S8, S8
59578A:  VMUL.F32        S8, S8, S1
59578E:  VADD.F32        S0, S0, S8
595792:  VMUL.F32        S0, S0, S2
595796:  VMOV.F32        S2, #0.5
59579A:  VDIV.F32        S0, S0, S6
59579E:  VCVT.U32.F32    S0, S0
5957A2:  VMUL.F32        S2, S10, S2
5957A6:  VMOV            R2, S0
5957AA:  VMUL.F32        S2, S2, S12
5957AE:  UXTB            R2, R2
5957B0:  ADD.W           R0, R0, R2,LSL#2
5957B4:  VLDR            S0, [R0]
5957B8:  VMUL.F32        S0, S2, S0
5957BC:  VADD.F32        S0, S4, S0
5957C0:  VSTR            S0, [R1]
5957C4:  POP.W           {R8}
5957C8:  POP             {R4-R7,PC}
