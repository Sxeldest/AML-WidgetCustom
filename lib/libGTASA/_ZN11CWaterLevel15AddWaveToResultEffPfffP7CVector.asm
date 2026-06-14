; =========================================================
; Game Engine Function: _ZN11CWaterLevel15AddWaveToResultEffPfffP7CVector
; Address            : 0x59475C - 0x595556
; =========================================================

59475C:  PUSH            {R4-R7,LR}
59475E:  ADD             R7, SP, #0xC
594760:  PUSH.W          {R8-R11}
594764:  SUB             SP, SP, #4
594766:  VPUSH           {D8-D15}
59476A:  SUB             SP, SP, #0x30
59476C:  VMOV.F32        S16, #0.5
594770:  MOV             R5, R3
594772:  VMOV            S0, R0
594776:  MOV             R11, R2
594778:  MOV             R6, R1
59477A:  VMUL.F32        S18, S0, S16
59477E:  VMOV            R0, S18; x
594782:  BLX.W           floorf
594786:  VMOV            S0, R6
59478A:  MOV             R4, R0
59478C:  VMUL.F32        S20, S0, S16
594790:  VMOV            R0, S20; x
594794:  BLX.W           floorf
594798:  VMOV            S4, R0
59479C:  LDR             R0, [R7,#arg_4]
59479E:  VMOV            S6, R4
5947A2:  VSUB.F32        S0, S20, S4
5947A6:  CMP             R0, #0
5947A8:  VADD.F32        S4, S4, S4
5947AC:  VADD.F32        S8, S6, S6
5947B0:  VSUB.F32        S2, S18, S6
5947B4:  VMOV            S6, R5
5947B8:  VCVT.S32.F32    S12, S4
5947BC:  VLDR            S4, [R7,#arg_0]
5947C0:  VCVT.S32.F32    S8, S8
5947C4:  VADD.F32        S10, S2, S0
5947C8:  VMOV            R1, S12
5947CC:  VMOV            R3, S8
5947D0:  VMOV.F32        S8, #1.0
5947D4:  VCMPE.F32       S10, S8
5947D8:  MOV             R8, R1
5947DA:  MOV             R9, R3
5947DC:  BEQ.W           loc_594B48
5947E0:  VMRS            APSR_nzcv, FPSCR
5947E4:  STR.W           R11, [SP,#0x90+var_8C]
5947E8:  BGE.W           loc_594E7A
5947EC:  LDR.W           R6, =(_ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr - 0x5947FE)
5947F0:  CMP             R3, #0
5947F2:  LDR.W           R5, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x594804)
5947F6:  MOV.W           R11, #0x1C
5947FA:  ADD             R6, PC; _ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr
5947FC:  VLDR            S20, =0.0012566
594800:  ADD             R5, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
594802:  VLDR            S5, =0.098175
594806:  LDR             R6, [R6]; CWaterLevel::m_nWaterTimeOffset ...
594808:  LDR             R5, [R5]; CTimer::m_snTimeInMilliseconds ...
59480A:  VLDR            S11, =0.24166
59480E:  LDR             R6, [R6]; CWaterLevel::m_nWaterTimeOffset
594810:  LDR             R5, [R5]; CTimer::m_snTimeInMilliseconds
594812:  IT MI
594814:  RSBMI.W         R9, R3, #0
594818:  CMP             R1, #0
59481A:  VMOV            S12, R9
59481E:  SUB.W           R5, R5, R6
594822:  MOV             R6, #0x57619F1
59482A:  IT MI
59482C:  RSBMI.W         R8, R1, #0
594830:  UMULL.W         R6, R0, R5, R6
594834:  CMN.W           R3, #2
594838:  MOV             R6, #0x95CBEC1B
594840:  UMULL.W         R6, R4, R5, R6
594844:  VMOV            S14, R8
594848:  LDR.W           R12, =(unk_61F25C - 0x59486C)
59484C:  VLDR            S3, =0.31416
594850:  MOV.W           R6, R0,LSR#6
594854:  MOVW            R0, #0xBB8
594858:  MLS.W           R10, R6, R0, R5
59485C:  MOVW            R6, #0xDAC
594860:  ADD.W           R0, R9, R9,LSR#31
594864:  MOV.W           R4, R4,LSR#11
594868:  ADD             R12, PC; unk_61F25C
59486A:  MLS.W           R6, R4, R6, R5
59486E:  MOV             R4, #0xD1B71759
594876:  UMULL.W         R4, R2, R5, R4
59487A:  AND.W           R0, R11, R0,LSL#1
59487E:  MOVW            R4, #0x1388
594882:  VMOV            S24, R10
594886:  LDR.W           LR, =(unk_61F27C - 0x594896)
59488A:  VMOV            S8, R6
59488E:  VLDR            S15, =0.12083
594892:  ADD             LR, PC; unk_61F27C
594894:  MOV.W           R2, R2,LSR#12
594898:  MLS.W           R2, R2, R4, R5
59489C:  ADD.W           R5, R3, #2
5948A0:  ADD.W           R4, R12, R0
5948A4:  ADD.W           R0, R8, R8,LSR#31
5948A8:  VLDR            S26, [R4]
5948AC:  AND.W           R0, R11, R0,LSL#1
5948B0:  ADD             R0, LR
5948B2:  VMOV            S10, R2
5948B6:  MOV             R2, #0xFFFFFFFE
5948BA:  IT LT
5948BC:  SUBLT           R5, R2, R3
5948BE:  ADDS            R3, R1, #2
5948C0:  CMN.W           R1, #2
5948C4:  VMOV            S7, R5
5948C8:  IT LT
5948CA:  SUBLT           R3, R2, R1
5948CC:  VCVT.F32.S32    S14, S14
5948D0:  VMOV            S1, R3
5948D4:  VLDR            S22, [R0]
5948D8:  VCVT.F32.S32    S12, S12
5948DC:  ADD.W           R0, R3, R3,LSR#31
5948E0:  VCVT.F32.S32    S1, S1
5948E4:  ADD.W           R1, R5, R5,LSR#31
5948E8:  VCVT.F32.U32    S10, S10
5948EC:  AND.W           R0, R11, R0,LSL#1
5948F0:  VCVT.F32.S32    S7, S7
5948F4:  AND.W           R1, R11, R1,LSL#1
5948F8:  VCVT.F32.U32    S8, S8
5948FC:  ADD             R1, R12
5948FE:  VCVT.F32.U32    S24, S24
594902:  ADD             R0, LR
594904:  VMUL.F32        S9, S14, S3
594908:  VMUL.F32        S18, S12, S11
59490C:  VMUL.F32        S12, S12, S5
594910:  VMUL.F32        S10, S10, S20
594914:  VLDR            S20, =0.0017952
594918:  VMUL.F32        S30, S7, S5
59491C:  VMUL.F32        S8, S8, S20
594920:  VLDR            S20, =0.0020944
594924:  VMUL.F32        S7, S7, S11
594928:  VMUL.F32        S20, S24, S20
59492C:  VMUL.F32        S3, S1, S3
594930:  VMUL.F32        S13, S14, S5
594934:  VADD.F32        S12, S12, S10
594938:  VMUL.F32        S11, S1, S15
59493C:  VMUL.F32        S1, S1, S5
594940:  VLDR            S5, [R1]
594944:  VADD.F32        S10, S30, S10
594948:  VMUL.F32        S14, S14, S15
59494C:  VADD.F32        S15, S18, S8
594950:  VLDR            S18, [R0]
594954:  VADD.F32        S8, S7, S8
594958:  LDR.W           R0, =(_ZN8CWeather8WavynessE_ptr - 0x594964)
59495C:  VADD.F32        S9, S9, S20
594960:  ADD             R0, PC; _ZN8CWeather8WavynessE_ptr
594962:  VADD.F32        S7, S13, S12
594966:  VADD.F32        S12, S1, S12
59496A:  VLDR            S1, =256.0
59496E:  VMUL.F32        S28, S26, S22
594972:  LDR             R0, [R0]; CWeather::Wavyness ...
594974:  VMUL.F32        S5, S22, S5
594978:  VMUL.F32        S18, S26, S18
59497C:  VADD.F32        S10, S13, S10
594980:  VLDR            S13, [R0]
594984:  VADD.F32        S8, S14, S8
594988:  LDR.W           R0, =(_ZN6CMaths11ms_SinTableE_ptr - 0x594998)
59498C:  VADD.F32        S11, S11, S15
594990:  VADD.F32        S14, S14, S15
594994:  ADD             R0, PC; _ZN6CMaths11ms_SinTableE_ptr
594996:  VADD.F32        S3, S3, S20
59499A:  VMUL.F32        S9, S9, S1
59499E:  LDR             R0, [R0]; CMaths::ms_SinTable ...
5949A0:  VMUL.F32        S5, S13, S5
5949A4:  VMUL.F32        S15, S28, S13
5949A8:  VMUL.F32        S13, S13, S18
5949AC:  VLDR            S18, =6.2832
5949B0:  VMUL.F32        S7, S7, S1
5949B4:  VMUL.F32        S8, S8, S1
5949B8:  VMUL.F32        S12, S12, S1
5949BC:  VMUL.F32        S14, S14, S1
5949C0:  VMUL.F32        S10, S10, S1
5949C4:  VMUL.F32        S11, S11, S1
5949C8:  VMUL.F32        S1, S3, S1
5949CC:  VDIV.F32        S3, S9, S18
5949D0:  VDIV.F32        S9, S11, S18
5949D4:  VDIV.F32        S10, S10, S18
5949D8:  VDIV.F32        S7, S7, S18
5949DC:  VDIV.F32        S8, S8, S18
5949E0:  VDIV.F32        S12, S12, S18
5949E4:  VCVT.U32.F32    S3, S3
5949E8:  VDIV.F32        S14, S14, S18
5949EC:  VMOV            R1, S3
5949F0:  VCVT.U32.F32    S10, S10
5949F4:  VCVT.U32.F32    S9, S9
5949F8:  VCVT.U32.F32    S3, S7
5949FC:  VCVT.U32.F32    S8, S8
594A00:  VCVT.U32.F32    S12, S12
594A04:  VCVT.U32.F32    S14, S14
594A08:  VDIV.F32        S1, S1, S18
594A0C:  UXTB            R1, R1
594A0E:  ADD.W           R12, R0, R1,LSL#2
594A12:  VMOV            R2, S12
594A16:  VMOV            R6, S8
594A1A:  VMOV            R5, S3
594A1E:  VMOV            R3, S14
594A22:  VMOV            R4, S10
594A26:  VMOV            R1, S9
594A2A:  VADD.F32        S11, S15, S15
594A2E:  VADD.F32        S20, S5, S5
594A32:  VADD.F32        S22, S13, S13
594A36:  VMUL.F32        S26, S5, S16
594A3A:  VMUL.F32        S5, S5, S4
594A3E:  VMUL.F32        S24, S15, S16
594A42:  VMUL.F32        S16, S13, S16
594A46:  VMUL.F32        S11, S11, S6
594A4A:  VMUL.F32        S18, S20, S6
594A4E:  VMUL.F32        S6, S22, S6
594A52:  VMUL.F32        S15, S15, S4
594A56:  VMUL.F32        S13, S13, S4
594A5A:  VMUL.F32        S20, S24, S4
594A5E:  VMUL.F32        S22, S26, S4
594A62:  UXTB            R2, R2
594A64:  VMUL.F32        S4, S16, S4
594A68:  UXTB            R6, R6
594A6A:  ADD.W           R2, R0, R2,LSL#2
594A6E:  UXTB            R5, R5
594A70:  ADD.W           R6, R0, R6,LSL#2
594A74:  ADD.W           R5, R0, R5,LSL#2
594A78:  UXTB            R3, R3
594A7A:  UXTB            R4, R4
594A7C:  VLDR            S12, [R6]
594A80:  UXTB            R1, R1
594A82:  VLDR            S8, [R5]
594A86:  ADD.W           R5, R0, R4,LSL#2
594A8A:  ADD.W           R3, R0, R3,LSL#2
594A8E:  VLDR            S3, [R2]
594A92:  ADD.W           R1, R0, R1,LSL#2
594A96:  VLDR            S10, [R5]
594A9A:  VMUL.F32        S12, S12, S5
594A9E:  VLDR            S14, [R3]
594AA2:  VMUL.F32        S6, S3, S6
594AA6:  VLDR            S3, [R1]
594AAA:  VMUL.F32        S8, S11, S8
594AAE:  VLDR            S5, [R12]
594AB2:  VCVT.U32.F32    S1, S1
594AB6:  VMUL.F32        S10, S10, S18
594ABA:  VLDR            S16, =0.0
594ABE:  VMUL.F32        S14, S15, S14
594AC2:  VMUL.F32        S7, S20, S5
594AC6:  VMUL.F32        S3, S3, S13
594ACA:  VADD.F32        S6, S6, S16
594ACE:  VADD.F32        S8, S8, S16
594AD2:  VMOV            R1, S1
594AD6:  VADD.F32        S10, S10, S16
594ADA:  VMUL.F32        S5, S5, S22
594ADE:  VADD.F32        S6, S3, S6
594AE2:  VADD.F32        S8, S8, S14
594AE6:  VADD.F32        S10, S12, S10
594AEA:  VADD.F32        S8, S8, S7
594AEE:  VADD.F32        S10, S5, S10
594AF2:  UXTB            R1, R1
594AF4:  ADD.W           R0, R0, R1,LSL#2
594AF8:  MOV.W           R1, #0x40000000
594AFC:  VLDR            S12, [R0]
594B00:  LDR             R0, [SP,#0x90+var_8C]
594B02:  VMUL.F32        S4, S12, S4
594B06:  VADD.F32        S4, S4, S6
594B0A:  VSUB.F32        S6, S10, S8
594B0E:  VSUB.F32        S4, S4, S8
594B12:  VMUL.F32        S2, S2, S6
594B16:  VMUL.F32        S0, S0, S4
594B1A:  VADD.F32        S2, S8, S2
594B1E:  B               loc_5951B8
594B20:  DCFS 0.0012566
594B24:  DCFS 0.098175
594B28:  DCFS 0.24166
594B2C:  DCFS 0.31416
594B30:  DCFS 0.12083
594B34:  DCFS 0.0017952
594B38:  DCFS 0.0020944
594B3C:  DCFS 256.0
594B40:  DCFS 6.2832
594B44:  DCFS 0.0
594B48:  VMRS            APSR_nzcv, FPSCR
594B4C:  BGE.W           loc_595204
594B50:  LDR.W           R0, =(_ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr - 0x594B62)
594B54:  CMP             R3, #0
594B56:  LDR.W           R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x594B68)
594B5A:  MOV.W           LR, #0x1C
594B5E:  ADD             R0, PC; _ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr
594B60:  LDR.W           R12, =(unk_61F25C - 0x594B70)
594B64:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
594B66:  VLDR            S1, =0.12083
594B6A:  LDR             R0, [R0]; CWaterLevel::m_nWaterTimeOffset ...
594B6C:  ADD             R12, PC; unk_61F25C
594B6E:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
594B70:  VLDR            S7, =0.098175
594B74:  LDR             R0, [R0]; CWaterLevel::m_nWaterTimeOffset
594B76:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
594B78:  IT MI
594B7A:  RSBMI.W         R9, R3, #0
594B7E:  CMN.W           R3, #2
594B82:  VMOV            S12, R9
594B86:  SUB.W           R6, R2, R0
594B8A:  MOV             R0, #0x57619F1
594B92:  VLDR            S11, =0.31416
594B96:  UMULL.W         R0, R2, R6, R0
594B9A:  VLDR            S15, =0.0020944
594B9E:  MOV             R0, #0xD1B71759
594BA6:  UMULL.W         R0, R5, R6, R0
594BAA:  VLDR            S18, =0.0017952
594BAE:  MOVW            R0, #0xBB8
594BB2:  VLDR            S20, =0.24166
594BB6:  MOV.W           R4, R2,LSR#6
594BBA:  ADD.W           R2, R9, R9,LSR#31
594BBE:  MLS.W           R10, R4, R0, R6
594BC2:  MOVW            R4, #0x1388
594BC6:  AND.W           R2, LR, R2,LSL#1
594BCA:  MOV.W           R5, R5,LSR#12
594BCE:  VLDR            S24, =0.0012566
594BD2:  MLS.W           R4, R5, R4, R6
594BD6:  MOV             R5, #0x95CBEC1B
594BDE:  UMULL.W         R5, R0, R6, R5
594BE2:  MOVW            R5, #0xDAC
594BE6:  VMOV            S28, R10
594BEA:  VMOV            S5, R4
594BEE:  MOV.W           R0, R0,LSR#11
594BF2:  MLS.W           R0, R0, R5, R6
594BF6:  ADD.W           R5, R12, R2
594BFA:  ADD.W           R2, R3, #2
594BFE:  VMOV            S8, R0
594C02:  MOV             R0, #0xFFFFFFFE
594C06:  IT LT
594C08:  SUBLT           R2, R0, R3
594C0A:  ADDS            R3, R1, #2
594C0C:  CMN.W           R1, #2
594C10:  VMOV            S10, R2
594C14:  IT LT
594C16:  SUBLT           R3, R0, R1
594C18:  CMP             R1, #0
594C1A:  IT MI
594C1C:  RSBMI.W         R8, R1, #0
594C20:  VMOV            S3, R3
594C24:  VMOV            S14, R8
594C28:  LDR.W           R1, =(unk_61F27C - 0x594C3C)
594C2C:  ADD.W           R0, R8, R8,LSR#31
594C30:  ADD.W           R6, R2, R2,LSR#31
594C34:  VCVT.F32.S32    S14, S14
594C38:  ADD             R1, PC; unk_61F27C
594C3A:  VCVT.F32.S32    S12, S12
594C3E:  AND.W           R0, LR, R0,LSL#1
594C42:  VCVT.F32.S32    S3, S3
594C46:  ADD             R0, R1
594C48:  VCVT.F32.S32    S10, S10
594C4C:  ADD.W           R2, R3, R3,LSR#31
594C50:  VCVT.F32.U32    S5, S5
594C54:  VCVT.F32.U32    S8, S8
594C58:  AND.W           R2, LR, R2,LSL#1
594C5C:  VCVT.F32.U32    S28, S28
594C60:  ADD             R1, R2
594C62:  VMUL.F32        S9, S14, S1
594C66:  VMUL.F32        S13, S14, S7
594C6A:  VMUL.F32        S14, S14, S11
594C6E:  VMUL.F32        S22, S12, S7
594C72:  VMUL.F32        S26, S10, S7
594C76:  VMUL.F32        S8, S8, S18
594C7A:  VLDR            S18, [R0]
594C7E:  VMUL.F32        S15, S28, S15
594C82:  AND.W           R0, LR, R6,LSL#1
594C86:  VMUL.F32        S10, S10, S20
594C8A:  ADD             R0, R12
594C8C:  VMUL.F32        S12, S12, S20
594C90:  VLDR            S20, [R5]
594C94:  VMUL.F32        S1, S3, S1
594C98:  VMUL.F32        S7, S3, S7
594C9C:  VMUL.F32        S3, S3, S11
594CA0:  VMUL.F32        S5, S5, S24
594CA4:  VADD.F32        S14, S14, S15
594CA8:  VADD.F32        S10, S10, S8
594CAC:  VADD.F32        S8, S12, S8
594CB0:  VLDR            S12, =256.0
594CB4:  VADD.F32        S3, S3, S15
594CB8:  VLDR            S15, =6.2832
594CBC:  VADD.F32        S24, S26, S5
594CC0:  VMUL.F32        S14, S14, S12
594CC4:  VADD.F32        S5, S22, S5
594CC8:  VLDR            S22, [R0]
594CCC:  VADD.F32        S1, S1, S8
594CD0:  LDR.W           R0, =(_ZN8CWeather8WavynessE_ptr - 0x594CE0)
594CD4:  VADD.F32        S10, S9, S10
594CD8:  VADD.F32        S8, S9, S8
594CDC:  ADD             R0, PC; _ZN8CWeather8WavynessE_ptr
594CDE:  VMUL.F32        S26, S20, S18
594CE2:  LDR             R0, [R0]; CWeather::Wavyness ...
594CE4:  VMUL.F32        S18, S18, S22
594CE8:  VDIV.F32        S14, S14, S15
594CEC:  VADD.F32        S11, S13, S5
594CF0:  VLDR            S9, [R0]
594CF4:  VADD.F32        S5, S7, S5
594CF8:  LDR.W           R0, =(_ZN6CMaths11ms_SinTableE_ptr - 0x594D0C)
594CFC:  VADD.F32        S7, S13, S24
594D00:  VLDR            S13, [R1]
594D04:  VMUL.F32        S1, S1, S12
594D08:  ADD             R0, PC; _ZN6CMaths11ms_SinTableE_ptr
594D0A:  VMUL.F32        S8, S8, S12
594D0E:  VMUL.F32        S10, S10, S12
594D12:  LDR             R0, [R0]; CMaths::ms_SinTable ...
594D14:  VCVT.U32.F32    S14, S14
594D18:  VMUL.F32        S11, S11, S12
594D1C:  VMUL.F32        S5, S5, S12
594D20:  VMUL.F32        S7, S7, S12
594D24:  VMUL.F32        S12, S3, S12
594D28:  VDIV.F32        S1, S1, S15
594D2C:  VDIV.F32        S3, S5, S15
594D30:  VDIV.F32        S5, S7, S15
594D34:  VDIV.F32        S8, S8, S15
594D38:  VDIV.F32        S10, S10, S15
594D3C:  VDIV.F32        S7, S11, S15
594D40:  VMOV            R1, S14
594D44:  VCVT.U32.F32    S3, S3
594D48:  VCVT.U32.F32    S1, S1
594D4C:  VCVT.U32.F32    S8, S8
594D50:  VCVT.U32.F32    S5, S5
594D54:  VCVT.U32.F32    S10, S10
594D58:  VCVT.U32.F32    S14, S7
594D5C:  VMUL.F32        S18, S9, S18
594D60:  VMUL.F32        S13, S20, S13
594D64:  VMUL.F32        S20, S26, S9
594D68:  VDIV.F32        S12, S12, S15
594D6C:  UXTB            R1, R1
594D6E:  ADD.W           R1, R0, R1,LSL#2
594D72:  VMOV            R3, S14
594D76:  VLDR            S7, [R1]
594D7A:  VMOV            R6, S5
594D7E:  VMOV            R1, S3
594D82:  VMOV            R2, S10
594D86:  VMUL.F32        S9, S9, S13
594D8A:  VADD.F32        S13, S20, S20
594D8E:  VADD.F32        S22, S18, S18
594D92:  VMUL.F32        S24, S18, S16
594D96:  VMUL.F32        S18, S18, S4
594D9A:  VMUL.F32        S11, S20, S16
594D9E:  VMUL.F32        S15, S20, S4
594DA2:  VADD.F32        S26, S9, S9
594DA6:  VMUL.F32        S13, S13, S6
594DAA:  VMUL.F32        S22, S22, S6
594DAE:  VMUL.F32        S20, S24, S4
594DB2:  VLDR            S24, =0.0
594DB6:  VMUL.F32        S16, S9, S16
594DBA:  VMUL.F32        S11, S11, S4
594DBE:  VMUL.F32        S9, S9, S4
594DC2:  VMUL.F32        S6, S26, S6
594DC6:  UXTB            R3, R3
594DC8:  ADD.W           R3, R0, R3,LSL#2
594DCC:  UXTB            R6, R6
594DCE:  UXTB            R1, R1
594DD0:  VMUL.F32        S4, S16, S4
594DD4:  VLDR            S10, [R3]
594DD8:  ADD.W           R3, R0, R6,LSL#2
594DDC:  ADD.W           R1, R0, R1,LSL#2
594DE0:  UXTB            R2, R2
594DE2:  VLDR            S14, [R3]
594DE6:  VMOV            R3, S8
594DEA:  VLDR            S3, [R1]
594DEE:  VMOV            R1, S1
594DF2:  VMUL.F32        S8, S13, S10
594DF6:  ADD.W           R2, R0, R2,LSL#2
594DFA:  VMUL.F32        S10, S14, S22
594DFE:  VLDR            S14, [R2]
594E02:  VMUL.F32        S6, S3, S6
594E06:  VMUL.F32        S11, S11, S7
594E0A:  VMUL.F32        S14, S14, S18
594E0E:  VMUL.F32        S7, S7, S20
594E12:  VADD.F32        S8, S8, S24
594E16:  VADD.F32        S10, S10, S24
594E1A:  VADD.F32        S6, S6, S24
594E1E:  VADD.F32        S10, S14, S10
594E22:  UXTB            R3, R3
594E24:  UXTB            R1, R1
594E26:  ADD.W           R2, R0, R3,LSL#2
594E2A:  ADD.W           R1, R0, R1,LSL#2
594E2E:  VLDR            S5, [R2]
594E32:  VLDR            S14, [R1]
594E36:  VCVT.U32.F32    S12, S12
594E3A:  VMUL.F32        S5, S15, S5
594E3E:  VMUL.F32        S14, S14, S9
594E42:  VADD.F32        S10, S7, S10
594E46:  VMOV            R1, S12
594E4A:  VADD.F32        S8, S8, S5
594E4E:  VADD.F32        S6, S14, S6
594E52:  VADD.F32        S8, S8, S11
594E56:  VSUB.F32        S10, S10, S8
594E5A:  UXTB            R1, R1
594E5C:  ADD.W           R0, R0, R1,LSL#2
594E60:  VLDR            S12, [R0]
594E64:  VMUL.F32        S4, S12, S4
594E68:  VADD.F32        S4, S4, S6
594E6C:  VMUL.F32        S6, S2, S10
594E70:  VSUB.F32        S2, S4, S8
594E74:  VADD.F32        S4, S8, S6
594E78:  B               loc_595534
594E7A:  LDR.W           R0, =(_ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr - 0x594E8C)
594E7E:  CMP             R1, #0
594E80:  LDR.W           R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x594E92)
594E84:  MOV.W           R10, #0x1C
594E88:  ADD             R0, PC; _ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr
594E8A:  VLDR            S3, =0.098175
594E8E:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
594E90:  VLDR            S15, =0.24166
594E94:  LDR             R0, [R0]; CWaterLevel::m_nWaterTimeOffset ...
594E96:  VSUB.F32        S2, S8, S2
594E9A:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
594E9C:  VSUB.F32        S0, S8, S0
594EA0:  VLDR            S24, =0.0012566
594EA4:  LDR             R0, [R0]; CWaterLevel::m_nWaterTimeOffset
594EA6:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
594EA8:  IT MI
594EAA:  RSBMI.W         R8, R1, #0
594EAE:  CMP             R3, #0
594EB0:  VMOV            S14, R8
594EB4:  SUB.W           R5, R2, R0
594EB8:  MOV             R0, #0x57619F1
594EC0:  IT MI
594EC2:  RSBMI.W         R9, R3, #0
594EC6:  UMULL.W         R0, R2, R5, R0
594ECA:  CMN.W           R3, #2
594ECE:  MOV             R0, #0xD1B71759
594ED6:  UMULL.W         R0, R4, R5, R0
594EDA:  VMOV            S12, R9
594EDE:  MOVW            R0, #0xBB8
594EE2:  VLDR            S26, =0.0017952
594EE6:  MOV.W           R6, R2,LSR#6
594EEA:  MOVW            R2, #0x1388
594EEE:  MLS.W           LR, R6, R0, R5
594EF2:  ADD.W           R0, R8, R8,LSR#31
594EF6:  ADD.W           R6, R3, #2
594EFA:  AND.W           R12, R10, R0,LSL#1
594EFE:  MOV.W           R0, R4,LSR#12
594F02:  MLS.W           R4, R0, R2, R5
594F06:  MOV             R0, #0x95CBEC1B
594F0E:  UMULL.W         R0, R2, R5, R0
594F12:  VLDR            S11, =0.31416
594F16:  VMOV            S28, LR
594F1A:  VLDR            S20, =0.0020944
594F1E:  VLDR            S13, =0.12083
594F22:  VMOV            S7, R4
594F26:  MOV.W           R0, R2,LSR#11
594F2A:  MOVW            R2, #0xDAC
594F2E:  MLS.W           R5, R0, R2, R5
594F32:  ADD.W           R0, R9, R9,LSR#31
594F36:  ADD.W           R2, R1, #2
594F3A:  AND.W           R11, R10, R0,LSL#1
594F3E:  MOV             R0, #0xFFFFFFFE
594F42:  IT LT
594F44:  SUBLT           R6, R0, R3
594F46:  CMN.W           R1, #2
594F4A:  IT LT
594F4C:  SUBLT           R2, R0, R1
594F4E:  VMOV            S5, R6
594F52:  VMOV            S10, R2
594F56:  LDR.W           R0, =(unk_61F25C - 0x594F6A)
594F5A:  VMOV            S1, R5
594F5E:  LDR.W           R1, =(unk_61F27C - 0x594F80)
594F62:  VCVT.F32.S32    S14, S14
594F66:  ADD             R0, PC; unk_61F25C
594F68:  VCVT.F32.S32    S12, S12
594F6C:  ADD.W           R3, R2, R2,LSR#31
594F70:  VCVT.F32.S32    S10, S10
594F74:  ADD.W           R2, R0, R11
594F78:  VCVT.F32.S32    S5, S5
594F7C:  ADD             R1, PC; unk_61F27C
594F7E:  VCVT.F32.U32    S7, S7
594F82:  VCVT.F32.U32    S1, S1
594F86:  VCVT.F32.U32    S28, S28
594F8A:  VMUL.F32        S9, S14, S3
594F8E:  VMUL.F32        S22, S12, S15
594F92:  VMUL.F32        S12, S12, S3
594F96:  VMUL.F32        S15, S5, S15
594F9A:  VMUL.F32        S7, S7, S24
594F9E:  VLDR            S24, [R2]
594FA2:  VMUL.F32        S1, S1, S26
594FA6:  AND.W           R2, R10, R3,LSL#1
594FAA:  VMUL.F32        S26, S10, S3
594FAE:  ADD             R2, R1
594FB0:  VMUL.F32        S3, S5, S3
594FB4:  VMUL.F32        S5, S10, S11
594FB8:  VMUL.F32        S20, S28, S20
594FBC:  VMUL.F32        S18, S14, S11
594FC0:  VLDR            S11, [R2]
594FC4:  ADD.W           R2, R6, R6,LSR#31
594FC8:  VADD.F32        S12, S12, S7
594FCC:  VADD.F32        S15, S15, S1
594FD0:  AND.W           R2, R10, R2,LSL#1
594FD4:  VMUL.F32        S14, S14, S13
594FD8:  VADD.F32        S3, S3, S7
594FDC:  ADD             R0, R2
594FDE:  VMUL.F32        S10, S10, S13
594FE2:  VADD.F32        S5, S5, S20
594FE6:  VLDR            S7, [R0]
594FEA:  ADD.W           R0, R1, R12
594FEE:  VADD.F32        S1, S22, S1
594FF2:  VMUL.F32        S24, S11, S24
594FF6:  VLDR            S13, [R0]
594FFA:  VMUL.F32        S11, S7, S11
594FFE:  LDR.W           R0, =(_ZN8CWeather8WavynessE_ptr - 0x59500E)
595002:  VADD.F32        S14, S14, S15
595006:  VMUL.F32        S7, S7, S13
59500A:  ADD             R0, PC; _ZN8CWeather8WavynessE_ptr
59500C:  VADD.F32        S13, S26, S3
595010:  VADD.F32        S3, S9, S3
595014:  VLDR            S9, =256.0
595018:  LDR             R0, [R0]; CWeather::Wavyness ...
59501A:  VADD.F32        S15, S10, S15
59501E:  VMUL.F32        S5, S5, S9
595022:  VADD.F32        S10, S10, S1
595026:  VLDR            S1, [R0]
59502A:  VADD.F32        S18, S18, S20
59502E:  VADD.F32        S12, S26, S12
595032:  LDR.W           R0, =(_ZN6CMaths11ms_SinTableE_ptr - 0x595042)
595036:  VMUL.F32        S11, S11, S1
59503A:  VMUL.F32        S20, S1, S24
59503E:  ADD             R0, PC; _ZN6CMaths11ms_SinTableE_ptr
595040:  VMUL.F32        S1, S1, S7
595044:  VMUL.F32        S7, S13, S9
595048:  VLDR            S13, =6.2832
59504C:  VMUL.F32        S14, S14, S9
595050:  LDR             R0, [R0]; CMaths::ms_SinTable ...
595052:  VDIV.F32        S5, S5, S13
595056:  VMUL.F32        S12, S12, S9
59505A:  VMUL.F32        S15, S15, S9
59505E:  VMUL.F32        S3, S3, S9
595062:  VMUL.F32        S10, S10, S9
595066:  VDIV.F32        S7, S7, S13
59506A:  VDIV.F32        S14, S14, S13
59506E:  VDIV.F32        S12, S12, S13
595072:  VDIV.F32        S15, S15, S13
595076:  VDIV.F32        S3, S3, S13
59507A:  VCVT.U32.F32    S5, S5
59507E:  VDIV.F32        S10, S10, S13
595082:  VMOV            R1, S5
595086:  VCVT.U32.F32    S7, S7
59508A:  VCVT.U32.F32    S14, S14
59508E:  VCVT.U32.F32    S12, S12
595092:  VCVT.U32.F32    S5, S15
595096:  VCVT.U32.F32    S3, S3
59509A:  VCVT.U32.F32    S10, S10
59509E:  VMUL.F32        S9, S18, S9
5950A2:  VMOV            R4, S7
5950A6:  VADD.F32        S18, S20, S20
5950AA:  VMOV            R5, S12
5950AE:  VMOV            R6, S5
5950B2:  VMOV            R2, S3
5950B6:  VMOV            R3, S10
5950BA:  VDIV.F32        S9, S9, S13
5950BE:  UXTB            R1, R1
5950C0:  ADD.W           R12, R0, R1,LSL#2
5950C4:  UXTB            R4, R4
5950C6:  UXTB            R5, R5
5950C8:  ADD.W           R5, R0, R5,LSL#2
5950CC:  UXTB            R6, R6
5950CE:  UXTB            R2, R2
5950D0:  ADD.W           R6, R0, R6,LSL#2
5950D4:  ADD.W           R2, R0, R2,LSL#2
5950D8:  UXTB            R3, R3
5950DA:  VMOV            R1, S14
5950DE:  VLDR            S10, [R5]
5950E2:  VADD.F32        S22, S11, S11
5950E6:  ADD.W           R5, R0, R4,LSL#2
5950EA:  VADD.F32        S24, S1, S1
5950EE:  ADD.W           R3, R0, R3,LSL#2
5950F2:  VMUL.F32        S13, S18, S6
5950F6:  VLDR            S5, [R2]
5950FA:  VLDR            S12, [R5]
5950FE:  VMUL.F32        S26, S11, S16
595102:  VLDR            S14, [R6]
595106:  VMUL.F32        S28, S20, S16
59510A:  VLDR            S3, [R3]
59510E:  VMUL.F32        S16, S1, S16
595112:  VLDR            S7, [R12]
595116:  VMUL.F32        S11, S11, S4
59511A:  VMUL.F32        S18, S22, S6
59511E:  VMUL.F32        S6, S24, S6
595122:  VMUL.F32        S20, S20, S4
595126:  VMUL.F32        S10, S10, S13
59512A:  VMUL.F32        S1, S1, S4
59512E:  VMUL.F32        S22, S26, S4
595132:  VMUL.F32        S24, S28, S4
595136:  VMUL.F32        S12, S18, S12
59513A:  VMUL.F32        S6, S5, S6
59513E:  VMUL.F32        S4, S16, S4
595142:  VLDR            S16, =0.0
595146:  VMUL.F32        S14, S11, S14
59514A:  VMUL.F32        S3, S3, S20
59514E:  UXTB            R1, R1
595150:  VADD.F32        S10, S10, S16
595154:  ADD.W           R1, R0, R1,LSL#2
595158:  VADD.F32        S12, S12, S16
59515C:  VLDR            S5, [R1]
595160:  VCVT.U32.F32    S9, S9
595164:  VADD.F32        S6, S6, S16
595168:  VMUL.F32        S1, S5, S1
59516C:  VMUL.F32        S5, S22, S7
595170:  VMUL.F32        S7, S7, S24
595174:  VADD.F32        S10, S3, S10
595178:  VADD.F32        S12, S12, S14
59517C:  VMOV            R1, S9
595180:  VADD.F32        S6, S1, S6
595184:  VADD.F32        S10, S7, S10
595188:  VADD.F32        S12, S12, S5
59518C:  UXTB            R1, R1
59518E:  ADD.W           R0, R0, R1,LSL#2
595192:  MOV.W           R1, #0xC0000000
595196:  VLDR            S14, [R0]
59519A:  LDR             R0, [SP,#0x90+var_8C]
59519C:  VMUL.F32        S4, S14, S4
5951A0:  VADD.F32        S4, S4, S6
5951A4:  VSUB.F32        S6, S10, S12
5951A8:  VSUB.F32        S4, S4, S12
5951AC:  VMUL.F32        S2, S2, S6
5951B0:  VMUL.F32        S0, S0, S4
5951B4:  VADD.F32        S2, S12, S2
5951B8:  VADD.F32        S0, S2, S0
5951BC:  VLDR            S2, [R0]
5951C0:  VADD.F32        S0, S2, S0
5951C4:  VSTR            S0, [R0]
5951C8:  MOVS            R0, #0
5951CA:  STR             R0, [SP,#0x90+var_78]
5951CC:  STR             R1, [SP,#0x90+var_7C]
5951CE:  ADD             R2, SP, #0x90+var_88
5951D0:  STR             R1, [SP,#0x90+var_84]
5951D2:  ADD             R1, SP, #0x90+var_7C; CVector *
5951D4:  STR             R0, [SP,#0x90+var_88]
5951D6:  ADD             R0, SP, #0x90+var_70; CVector *
5951D8:  VSTR            S6, [SP,#0x90+var_74]
5951DC:  VSTR            S4, [SP,#0x90+var_80]
5951E0:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5951E4:  LDR             R0, [R7,#arg_4]; this
5951E6:  VLDR            D16, [SP,#0x90+var_70]
5951EA:  LDR             R1, [SP,#0x90+var_68]
5951EC:  STR             R1, [R0,#8]
5951EE:  VSTR            D16, [R0]
5951F2:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5951F6:  B               loc_595548
5951F8:  DCFS 256.0
5951FC:  DCFS 6.2832
595200:  DCFS 0.0
595204:  LDR             R0, =(_ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr - 0x595212)
595206:  CMP             R3, #0
595208:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x595218)
59520A:  MOV.W           LR, #0x1C
59520E:  ADD             R0, PC; _ZN11CWaterLevel18m_nWaterTimeOffsetE_ptr
595210:  STR.W           R11, [SP,#0x90+var_8C]
595214:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
595216:  LDR.W           R12, =(unk_61F25C - 0x595226)
59521A:  LDR             R0, [R0]; CWaterLevel::m_nWaterTimeOffset ...
59521C:  VSUB.F32        S2, S8, S2
595220:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
595222:  ADD             R12, PC; unk_61F25C
595224:  VLDR            S18, =0.0017952
595228:  VSUB.F32        S0, S8, S0
59522C:  LDR             R0, [R0]; CWaterLevel::m_nWaterTimeOffset
59522E:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
595230:  IT MI
595232:  RSBMI.W         R9, R3, #0
595236:  CMN.W           R1, #2
59523A:  VMOV            S14, R9
59523E:  SUB.W           R5, R2, R0
595242:  MOV             R0, #0x57619F1
59524A:  VLDR            S9, =0.0012566
59524E:  UMULL.W         R0, R2, R5, R0
595252:  VLDR            S7, =0.098175
595256:  MOV             R0, #0x95CBEC1B
59525E:  UMULL.W         R0, R6, R5, R0
595262:  VLDR            S11, =0.12083
595266:  MOVW            R0, #0xBB8
59526A:  VLDR            S15, =0.24166
59526E:  MOV.W           R4, R2,LSR#6
595272:  ADD.W           R2, R9, R9,LSR#31
595276:  MLS.W           R11, R4, R0, R5
59527A:  MOVW            R4, #0xDAC
59527E:  AND.W           R2, LR, R2,LSL#1
595282:  MOV.W           R6, R6,LSR#11
595286:  ADD.W           R10, R12, R2
59528A:  MLS.W           R6, R6, R4, R5
59528E:  MOV             R4, #0xD1B71759
595296:  UMULL.W         R4, R0, R5, R4
59529A:  ADD.W           R2, R1, #2
59529E:  MOVW            R4, #0x1388
5952A2:  VMOV            S26, R11
5952A6:  VLDR            S22, [R10]
5952AA:  VMOV            S3, R6
5952AE:  VLDR            S30, =0.0020944
5952B2:  MOV.W           R0, R0,LSR#12
5952B6:  MLS.W           R0, R0, R4, R5
5952BA:  ADD.W           R5, R3, #2
5952BE:  VMOV            S10, R0
5952C2:  MOV             R0, #0xFFFFFFFE
5952C6:  IT LT
5952C8:  SUBLT           R2, R0, R1
5952CA:  CMN.W           R3, #2
5952CE:  IT LT
5952D0:  SUBLT           R5, R0, R3
5952D2:  CMP             R1, #0
5952D4:  IT MI
5952D6:  RSBMI.W         R8, R1, #0
5952DA:  VMOV            S12, R2
5952DE:  VMOV            S1, R8
5952E2:  ADD.W           R4, R2, R2,LSR#31
5952E6:  VMOV            S5, R5
5952EA:  LDR             R1, =(unk_61F27C - 0x5952FC)
5952EC:  VCVT.F32.S32    S1, S1
5952F0:  AND.W           R0, LR, R4,LSL#1
5952F4:  VCVT.F32.S32    S14, S14
5952F8:  ADD             R1, PC; unk_61F27C
5952FA:  VCVT.F32.S32    S5, S5
5952FE:  ADD             R0, R1
595300:  VCVT.F32.S32    S12, S12
595304:  ADD.W           R2, R5, R5,LSR#31
595308:  VCVT.F32.U32    S3, S3
59530C:  VCVT.F32.U32    S10, S10
595310:  AND.W           R2, LR, R2,LSL#1
595314:  VCVT.F32.U32    S26, S26
595318:  ADD             R2, R12
59531A:  VMUL.F32        S28, S1, S11
59531E:  VMUL.F32        S20, S14, S7
595322:  VMUL.F32        S24, S5, S7
595326:  VMUL.F32        S13, S1, S7
59532A:  VMUL.F32        S3, S3, S18
59532E:  VLDR            S18, [R0]
595332:  VMUL.F32        S10, S10, S9
595336:  LDR             R0, =(_ZN8CWeather8WavynessE_ptr - 0x595348)
595338:  VMUL.F32        S9, S18, S22
59533C:  VLDR            S22, =0.31416
595340:  VMUL.F32        S14, S14, S15
595344:  ADD             R0, PC; _ZN8CWeather8WavynessE_ptr
595346:  VMUL.F32        S5, S5, S15
59534A:  VMUL.F32        S11, S12, S11
59534E:  LDR             R0, [R0]; CWeather::Wavyness ...
595350:  VMUL.F32        S7, S12, S7
595354:  VMUL.F32        S12, S12, S22
595358:  VMUL.F32        S15, S26, S30
59535C:  VADD.F32        S24, S24, S10
595360:  VADD.F32        S14, S14, S3
595364:  VADD.F32        S10, S20, S10
595368:  VLDR            S20, [R2]
59536C:  VADD.F32        S3, S5, S3
595370:  VLDR            S5, =256.0
595374:  VMUL.F32        S1, S1, S22
595378:  ADD.W           R2, R8, R8,LSR#31
59537C:  VMUL.F32        S18, S20, S18
595380:  VADD.F32        S12, S12, S15
595384:  AND.W           R2, LR, R2,LSL#1
595388:  VADD.F32        S22, S7, S24
59538C:  ADD             R1, R2
59538E:  VADD.F32        S13, S13, S24
595392:  VADD.F32        S10, S7, S10
595396:  VLDR            S24, [R1]
59539A:  VADD.F32        S7, S28, S3
59539E:  VADD.F32        S14, S11, S14
5953A2:  VADD.F32        S3, S11, S3
5953A6:  VLDR            S11, [R0]
5953AA:  VMUL.F32        S12, S12, S5
5953AE:  LDR             R0, =(_ZN6CMaths11ms_SinTableE_ptr - 0x5953C0)
5953B0:  VADD.F32        S1, S1, S15
5953B4:  VLDR            S15, =6.2832
5953B8:  VMUL.F32        S13, S13, S5
5953BC:  ADD             R0, PC; _ZN6CMaths11ms_SinTableE_ptr
5953BE:  VMUL.F32        S10, S10, S5
5953C2:  VMUL.F32        S7, S7, S5
5953C6:  LDR             R0, [R0]; CMaths::ms_SinTable ...
5953C8:  VMUL.F32        S14, S14, S5
5953CC:  VMUL.F32        S3, S3, S5
5953D0:  VDIV.F32        S12, S12, S15
5953D4:  VMUL.F32        S1, S1, S5
5953D8:  VMUL.F32        S22, S22, S5
5953DC:  VDIV.F32        S5, S13, S15
5953E0:  VDIV.F32        S7, S7, S15
5953E4:  VDIV.F32        S3, S3, S15
5953E8:  VDIV.F32        S10, S10, S15
5953EC:  VDIV.F32        S14, S14, S15
5953F0:  VCVT.U32.F32    S12, S12
5953F4:  VCVT.U32.F32    S5, S5
5953F8:  VCVT.U32.F32    S7, S7
5953FC:  VCVT.U32.F32    S3, S3
595400:  VCVT.U32.F32    S10, S10
595404:  VDIV.F32        S13, S22, S15
595408:  VMOV            R1, S12
59540C:  VCVT.U32.F32    S12, S14
595410:  VMUL.F32        S9, S11, S9
595414:  VCVT.U32.F32    S14, S13
595418:  VMUL.F32        S20, S20, S24
59541C:  VMOV            R6, S10
595420:  VMUL.F32        S18, S18, S11
595424:  VDIV.F32        S1, S1, S15
595428:  UXTB            R1, R1
59542A:  ADD.W           R1, R0, R1,LSL#2
59542E:  UXTB            R6, R6
595430:  VMOV            R2, S12
595434:  VADD.F32        S24, S9, S9
595438:  VMUL.F32        S22, S9, S16
59543C:  VMUL.F32        S9, S9, S4
595440:  VMOV            R3, S14
595444:  VMUL.F32        S26, S18, S16
595448:  VMUL.F32        S11, S11, S20
59544C:  VADD.F32        S20, S18, S18
595450:  VMUL.F32        S24, S24, S6
595454:  VMUL.F32        S15, S18, S4
595458:  VMUL.F32        S18, S22, S4
59545C:  VMUL.F32        S22, S26, S4
595460:  VLDR            S26, =0.0
595464:  VADD.F32        S28, S11, S11
595468:  VMUL.F32        S20, S20, S6
59546C:  VMUL.F32        S16, S11, S16
595470:  VMUL.F32        S11, S11, S4
595474:  UXTB            R2, R2
595476:  VMUL.F32        S6, S28, S6
59547A:  ADD.W           R2, R0, R2,LSL#2
59547E:  VMUL.F32        S4, S16, S4
595482:  VLDR            S14, [R2]
595486:  UXTB            R3, R3
595488:  VMUL.F32        S14, S14, S9
59548C:  VLDR            S9, [R1]
595490:  VMOV            R1, S5
595494:  ADD.W           R3, R0, R3,LSL#2
595498:  VMUL.F32        S13, S9, S18
59549C:  VLDR            S10, [R3]
5954A0:  ADD.W           R3, R0, R6,LSL#2
5954A4:  VMUL.F32        S9, S22, S9
5954A8:  VLDR            S12, [R3]
5954AC:  VMOV            R3, S3
5954B0:  VMUL.F32        S10, S20, S10
5954B4:  VMUL.F32        S12, S12, S24
5954B8:  VADD.F32        S10, S10, S26
5954BC:  VADD.F32        S12, S12, S26
5954C0:  UXTB            R1, R1
5954C2:  VADD.F32        S12, S14, S12
5954C6:  ADD.W           R1, R0, R1,LSL#2
5954CA:  VLDR            S5, [R1]
5954CE:  VMOV            R1, S7
5954D2:  UXTB            R3, R3
5954D4:  ADD.W           R2, R0, R3,LSL#2
5954D8:  VMUL.F32        S6, S5, S6
5954DC:  VLDR            S3, [R2]
5954E0:  VADD.F32        S12, S13, S12
5954E4:  VMUL.F32        S3, S15, S3
5954E8:  VADD.F32        S6, S6, S26
5954EC:  VADD.F32        S10, S10, S3
5954F0:  UXTB            R1, R1
5954F2:  VADD.F32        S10, S10, S9
5954F6:  ADD.W           R1, R0, R1,LSL#2
5954FA:  VLDR            S14, [R1]
5954FE:  VCVT.U32.F32    S1, S1
595502:  LDR.W           R11, [SP,#0x90+var_8C]
595506:  VMUL.F32        S14, S14, S11
59550A:  VSUB.F32        S12, S12, S10
59550E:  VMOV            R1, S1
595512:  VADD.F32        S6, S14, S6
595516:  UXTB            R1, R1
595518:  ADD.W           R0, R0, R1,LSL#2
59551C:  VLDR            S1, [R0]
595520:  VMUL.F32        S4, S1, S4
595524:  VADD.F32        S4, S4, S6
595528:  VMUL.F32        S6, S2, S12
59552C:  VSUB.F32        S2, S4, S10
595530:  VADD.F32        S4, S10, S6
595534:  VMUL.F32        S0, S0, S2
595538:  VLDR            S2, [R11]
59553C:  VADD.F32        S0, S4, S0
595540:  VADD.F32        S0, S2, S0
595544:  VSTR            S0, [R11]
595548:  ADD             SP, SP, #0x30 ; '0'
59554A:  VPOP            {D8-D15}
59554E:  ADD             SP, SP, #4
595550:  POP.W           {R8-R11}
595554:  POP             {R4-R7,PC}
