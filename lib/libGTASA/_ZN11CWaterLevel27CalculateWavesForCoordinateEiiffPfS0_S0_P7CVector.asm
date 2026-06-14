; =========================================================
; Game Engine Function: _ZN11CWaterLevel27CalculateWavesForCoordinateEiiffPfS0_S0_P7CVector
; Address            : 0x5986C8 - 0x598A44
; =========================================================

5986C8:  PUSH            {R4-R7,LR}
5986CA:  ADD             R7, SP, #0xC
5986CC:  PUSH.W          {R8}
5986D0:  VPUSH           {D8}
5986D4:  LDR             R4, =(_ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr - 0x5986E4)
5986D6:  CMP             R0, #0
5986D8:  LDR.W           LR, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5986EA)
5986DC:  VMOV            S1, R2
5986E0:  ADD             R4, PC; _ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr
5986E2:  VLDR            S4, =0.0012566
5986E6:  ADD             LR, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5986E8:  VLDR            S12, =0.098175
5986EC:  LDR.W           R12, [R4]; CWaterLevel::m_nWaterTimeOffset ...
5986F0:  LDR.W           LR, [LR]; CTimer::m_snTimeInMilliseconds ...
5986F4:  LDR.W           R8, =(unk_61F25C - 0x598726)
5986F8:  LDR.W           R4, [R12]; CWaterLevel::m_nWaterTimeOffset
5986FC:  LDR.W           R5, [LR]; CTimer::m_snTimeInMilliseconds
598700:  IT MI
598702:  NEGMI           R0, R0
598704:  VMOV            S0, R0
598708:  CMP             R1, #0
59870A:  SUB.W           R4, R5, R4
59870E:  MOV             R5, #0xD1B71759
598716:  VCVT.F32.S32    S10, S0
59871A:  UMULL.W         R5, R6, R4, R5
59871E:  ADD.W           R0, R0, R0,LSR#31
598722:  ADD             R8, PC; unk_61F25C
598724:  VLDR            S16, =0.0
598728:  MOV.W           R5, R6,LSR#12
59872C:  MOVW            R6, #0x1388
598730:  MLS.W           R4, R5, R6, R4
598734:  VMUL.F32        S6, S10, S12
598738:  MOV.W           R6, #0x1C
59873C:  AND.W           R0, R6, R0,LSL#1
598740:  LDR             R5, =(_ZN8CWeather8WavynessE_ptr - 0x598748)
598742:  ADD             R0, R8
598744:  ADD             R5, PC; _ZN8CWeather8WavynessE_ptr
598746:  VLDR            S14, [R0]
59874A:  VMOV            S0, R4
59874E:  LDR             R4, =(unk_61F27C - 0x598766)
598750:  LDR             R0, [R5]; CWeather::Wavyness ...
598752:  VCVT.F32.U32    S2, S0
598756:  IT MI
598758:  NEGMI           R1, R1
59875A:  VMOV            S0, R1
59875E:  ADD.W           R1, R1, R1,LSR#31
598762:  ADD             R4, PC; unk_61F27C
598764:  VCVT.F32.S32    S0, S0
598768:  AND.W           R1, R6, R1,LSL#1
59876C:  ADD             R1, R4
59876E:  LDR             R4, [R7,#arg_C]
598770:  VLDR            S8, [R1]
598774:  VMUL.F32        S2, S2, S4
598778:  VMUL.F32        S8, S14, S8
59877C:  VMUL.F32        S4, S0, S12
598780:  VADD.F32        S2, S6, S2
598784:  VADD.F32        S4, S4, S2
598788:  VLDR            S2, =256.0
59878C:  VMUL.F32        S6, S4, S2
598790:  VLDR            S4, =6.2832
598794:  VDIV.F32        S14, S6, S4
598798:  VLDR            S6, [R0]
59879C:  LDR             R0, =(_ZN6CMaths11ms_SinTableE_ptr - 0x5987A6)
59879E:  VMUL.F32        S6, S8, S6
5987A2:  ADD             R0, PC; _ZN6CMaths11ms_SinTableE_ptr
5987A4:  LDR             R0, [R0]; CMaths::ms_SinTable ...
5987A6:  VADD.F32        S8, S6, S6
5987AA:  VMUL.F32        S1, S8, S1
5987AE:  VCVT.U32.F32    S8, S14
5987B2:  VMUL.F32        S12, S1, S12
5987B6:  VMOV            R1, S8
5987BA:  UXTB            R1, R1
5987BC:  ADD.W           R1, R0, R1,LSL#2
5987C0:  VLDR            S8, [R1]
5987C4:  LDR             R1, [R7,#arg_0]
5987C6:  VMUL.F32        S3, S1, S8
5987CA:  VLDR            S8, =64.0
5987CE:  VLDR            S1, =0.0017952
5987D2:  VADD.F32        S14, S14, S8
5987D6:  VLDR            S5, [R1]
5987DA:  VADD.F32        S3, S5, S3
5987DE:  VCVT.U32.F32    S14, S14
5987E2:  VSTR            S3, [R1]
5987E6:  VMOV            R2, S14
5987EA:  UXTB            R2, R2
5987EC:  ADD.W           R2, R0, R2,LSL#2
5987F0:  VLDR            S14, [R2]
5987F4:  MOV.W           R2, #0x3F800000
5987F8:  STR             R2, [R4,#8]
5987FA:  VNMUL.F32       S12, S12, S14
5987FE:  VLDR            S14, =0.24166
598802:  VMUL.F32        S10, S10, S14
598806:  VSTR            S12, [R4]
59880A:  VSTR            S12, [R4,#4]
59880E:  LDR.W           R2, [R12]; CWaterLevel::m_nWaterTimeOffset
598812:  LDR.W           R5, [LR]; CTimer::m_snTimeInMilliseconds
598816:  SUBS            R2, R5, R2
598818:  MOV             R5, #0x95CBEC1B
598820:  UMULL.W         R5, R6, R2, R5
598824:  LSRS            R5, R6, #0xB
598826:  MOVW            R6, #0xDAC
59882A:  MLS.W           R2, R5, R6, R2
59882E:  VMOV            S12, R2
598832:  VCVT.F32.U32    S12, S12
598836:  VMUL.F32        S12, S12, S1
59883A:  VLDR            S1, =0.12083
59883E:  VMUL.F32        S1, S0, S1
598842:  VADD.F32        S10, S10, S12
598846:  VMOV            S12, R3
59884A:  VADD.F32        S10, S1, S10
59884E:  VMUL.F32        S1, S6, S12
598852:  VMUL.F32        S10, S10, S2
598856:  VMUL.F32        S14, S1, S14
59885A:  VDIV.F32        S10, S10, S4
59885E:  VCVT.U32.F32    S3, S10
598862:  VLDR            S5, [R1]
598866:  VADD.F32        S10, S10, S8
59886A:  VMOV            R2, S3
59886E:  UXTB            R2, R2
598870:  ADD.W           R2, R0, R2,LSL#2
598874:  VLDR            S3, [R2]
598878:  VCVT.U32.F32    S10, S10
59887C:  VMUL.F32        S3, S1, S3
598880:  VMOV            R2, S10
598884:  VADD.F32        S3, S5, S3
598888:  VSTR            S3, [R1]
59888C:  VLDR            S3, [R4,#8]
598890:  VLDR            S1, [R4,#4]
598894:  VADD.F32        S3, S3, S16
598898:  UXTB            R2, R2
59889A:  ADD.W           R2, R0, R2,LSL#2
59889E:  VLDR            S10, [R2]
5988A2:  VMUL.F32        S10, S14, S10
5988A6:  VLDR            S14, [R4]
5988AA:  VADD.F32        S14, S10, S14
5988AE:  VADD.F32        S10, S10, S1
5988B2:  VLDR            S1, =0.0020944
5988B6:  VSTR            S14, [R4]
5988BA:  VSTR            S10, [R4,#4]
5988BE:  VSTR            S3, [R4,#8]
5988C2:  LDR.W           R2, [R12]; CWaterLevel::m_nWaterTimeOffset
5988C6:  LDR.W           R3, [LR]; CTimer::m_snTimeInMilliseconds
5988CA:  VLDR            S14, =0.31416
5988CE:  SUBS            R2, R3, R2
5988D0:  MOV             R3, #0x57619F1
5988D8:  VMUL.F32        S0, S0, S14
5988DC:  UMULL.W         R3, R6, R2, R3
5988E0:  LSRS            R3, R6, #6
5988E2:  MOVW            R6, #0xBB8
5988E6:  MLS.W           R2, R3, R6, R2
5988EA:  VMOV            S10, R2
5988EE:  VCVT.F32.U32    S10, S10
5988F2:  VMUL.F32        S10, S10, S1
5988F6:  VADD.F32        S0, S0, S10
5988FA:  VMUL.F32        S0, S0, S2
5988FE:  VMOV.F32        S2, #0.5
598902:  VDIV.F32        S0, S0, S4
598906:  VCVT.U32.F32    S4, S0
59890A:  VMUL.F32        S2, S6, S2
59890E:  VLDR            S6, [R1]
598912:  VADD.F32        S0, S0, S8
598916:  VMOV            R2, S4
59891A:  VMUL.F32        S2, S2, S12
59891E:  UXTB            R2, R2
598920:  ADD.W           R2, R0, R2,LSL#2
598924:  VLDR            S4, [R2]
598928:  VCVT.U32.F32    S0, S0
59892C:  VMUL.F32        S4, S2, S4
598930:  VMUL.F32        S2, S2, S14
598934:  VADD.F32        S4, S6, S4
598938:  VSTR            S4, [R1]
59893C:  VMOV            R1, S0
598940:  VLDR            S4, [R4,#4]
598944:  VLDR            S6, [R4,#8]
598948:  VADD.F32        S4, S4, S16
59894C:  VADD.F32        S6, S6, S16
598950:  UXTB            R1, R1
598952:  ADD.W           R0, R0, R1,LSL#2
598956:  VLDR            S0, [R0]
59895A:  MOV             R0, R4; this
59895C:  VMUL.F32        S0, S2, S0
598960:  VLDR            S2, [R4]
598964:  VADD.F32        S0, S0, S2
598968:  VSTR            S0, [R4]
59896C:  VSTR            S4, [R4,#4]
598970:  VSTR            S6, [R4,#8]
598974:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
598978:  VLDR            S0, =0.577
59897C:  VLDR            S2, [R4]
598980:  VLDR            S4, [R4,#4]
598984:  VMUL.F32        S2, S2, S0
598988:  VLDR            S6, [R4,#8]
59898C:  VMUL.F32        S4, S4, S0
598990:  LDR             R0, [R7,#arg_4]
598992:  VMUL.F32        S6, S6, S0
598996:  LDR             R1, [R7,#arg_8]
598998:  VADD.F32        S2, S2, S4
59899C:  VLDR            S4, =0.65
5989A0:  VADD.F32        S2, S2, S6
5989A4:  VMAX.F32        D1, D1, D8
5989A8:  VMUL.F32        S2, S2, S4
5989AC:  VLDR            S4, =0.27
5989B0:  VADD.F32        S2, S2, S4
5989B4:  VSTR            S2, [R0]
5989B8:  VLDR            S2, [R4]
5989BC:  VLDR            S4, [R4,#4]
5989C0:  VMUL.F32        S2, S2, S0
5989C4:  VLDR            S6, [R4,#8]
5989C8:  VMUL.F32        S4, S4, S0
5989CC:  LDR             R0, =(_ZN8CWeather8SunGlareE_ptr - 0x5989D6)
5989CE:  VMUL.F32        S0, S6, S0
5989D2:  ADD             R0, PC; _ZN8CWeather8SunGlareE_ptr
5989D4:  LDR             R0, [R0]; CWeather::SunGlare ...
5989D6:  VADD.F32        S2, S2, S4
5989DA:  VMOV.F32        S4, #8.0
5989DE:  VADD.F32        S0, S2, S0
5989E2:  VMOV.F32        S2, #-5.0
5989E6:  VMUL.F32        S4, S0, S4
5989EA:  VADD.F32        S2, S4, S2
5989EE:  VLDR            S4, =0.99
5989F2:  VCMPE.F32       S2, S4
5989F6:  VMRS            APSR_nzcv, FPSCR
5989FA:  VCMPE.F32       S2, #0.0
5989FE:  IT GT
598A00:  VMOVGT.F32      S16, S4
598A04:  VMRS            APSR_nzcv, FPSCR
598A08:  VCMPE.F32       S2, S4
598A0C:  IT LT
598A0E:  VMOVLT.F32      S4, S16
598A12:  VMRS            APSR_nzcv, FPSCR
598A16:  VCMPE.F32       S2, #0.0
598A1A:  IT GT
598A1C:  VMOVGT.F32      S2, S4
598A20:  VMRS            APSR_nzcv, FPSCR
598A24:  IT LT
598A26:  VMOVLT.F32      S2, S4
598A2A:  VSTR            S0, [R1]
598A2E:  VLDR            S0, [R0]
598A32:  VMUL.F32        S0, S0, S2
598A36:  VSTR            S0, [R1]
598A3A:  VPOP            {D8}
598A3E:  POP.W           {R8}
598A42:  POP             {R4-R7,PC}
