; =========================================================
; Game Engine Function: _ZN11CWaterLevel26FindNearestWaterAndItsFlowEv
; Address            : 0x596770 - 0x596BDE
; =========================================================

596770:  LDR.W           R0, =(TheCamera_ptr - 0x59677C)
596774:  VLDR            S4, =3000.0
596778:  ADD             R0, PC; TheCamera_ptr
59677A:  LDR             R1, [R0]; TheCamera
59677C:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
59677E:  ADD.W           R0, R2, #0x30 ; '0'
596782:  CMP             R2, #0
596784:  IT EQ
596786:  ADDEQ           R0, R1, #4
596788:  VLDR            S0, [R0,#4]
59678C:  VCMPE.F32       S0, S4
596790:  VMRS            APSR_nzcv, FPSCR
596794:  BGE.W           loc_596B9C
596798:  VLDR            S2, [R0]
59679C:  VLDR            S6, =-3000.0
5967A0:  VCMPE.F32       S2, S6
5967A4:  VMRS            APSR_nzcv, FPSCR
5967A8:  BLE.W           loc_596B9C
5967AC:  VCMPE.F32       S2, S4
5967B0:  VMRS            APSR_nzcv, FPSCR
5967B4:  BGE.W           loc_596B9C
5967B8:  VCMPE.F32       S0, S6
5967BC:  VMRS            APSR_nzcv, FPSCR
5967C0:  BLE.W           loc_596B9C
5967C4:  PUSH            {R4-R7,LR}
5967C6:  ADD             R7, SP, #0x14+var_8
5967C8:  PUSH.W          {R8-R11}
5967CC:  SUB             SP, SP, #4
5967CE:  VPUSH           {D8}
5967D2:  SUB             SP, SP, #0x40 ; '@'
5967D4:  LDR.W           R0, =(_ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr - 0x5967DC)
5967D8:  ADD             R0, PC; _ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr
5967DA:  LDR             R0, [R0]; CWaterLevel::m_nNumOfWaterQuads ...
5967DC:  LDR.W           R10, [R0]; CWaterLevel::m_nNumOfWaterQuads
5967E0:  CMP.W           R10, #1
5967E4:  BLT.W           loc_596BBA
5967E8:  LDR.W           R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x5967F8)
5967EC:  MOV.W           R12, #0
5967F0:  LDR.W           R3, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x596802)
5967F4:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
5967F6:  VLDR            S4, =0.0
5967FA:  VLDR            S12, =1.0e7
5967FE:  ADD             R3, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
596800:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
596802:  VMOV.F32        S8, S4
596806:  LDR.W           R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x596814)
59680A:  VMOV.F32        S10, S12
59680E:  STR             R0, [SP,#0x70+var_34]
596810:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
596812:  LDR.W           R1, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x59681E)
596816:  LDR             R2, [R3]; CWaterLevel::m_aVertices ...
596818:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
59681A:  ADD             R1, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
59681C:  LDR.W           R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x596826)
596820:  STR             R0, [SP,#0x70+var_54]
596822:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
596824:  LDR.W           R3, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x596830)
596828:  LDR             R1, [R1]; CWaterLevel::m_aQuads ...
59682A:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
59682C:  ADD             R3, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
59682E:  LDR.W           R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x59683A)
596832:  ADDS            R1, #4
596834:  STR             R0, [SP,#0x70+var_58]
596836:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
596838:  LDR             R3, [R3]; CWaterLevel::m_aVertices ...
59683A:  VLDR            S6, =0.015625
59683E:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
596840:  LDR.W           R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x59684A)
596844:  STR             R0, [SP,#0x70+var_5C]
596846:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
596848:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
59684A:  LDR.W           R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x596854)
59684E:  STR             R0, [SP,#0x70+var_60]
596850:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
596852:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
596854:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x59685C)
596856:  STR             R0, [SP,#0x70+var_64]
596858:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
59685A:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
59685C:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x596864)
59685E:  STR             R0, [SP,#0x70+var_68]
596860:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
596862:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
596864:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x59686C)
596866:  STR             R0, [SP,#0x70+var_6C]
596868:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
59686A:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
59686C:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x596874)
59686E:  STR             R0, [SP,#0x70+var_70]
596870:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
596872:  LDR.W           R11, [R6]; CWaterLevel::m_aVertices ...
596876:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x59687C)
596878:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
59687A:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
59687C:  LDR             R6, =(_ZN11CWaterLevel21m_CurrentDesiredFlowXE_ptr - 0x596884)
59687E:  STR             R0, [SP,#0x70+var_38]
596880:  ADD             R6, PC; _ZN11CWaterLevel21m_CurrentDesiredFlowXE_ptr
596882:  LDR             R0, [R6]; CWaterLevel::m_CurrentDesiredFlowX ...
596884:  LDR             R6, =(_ZN11CWaterLevel21m_CurrentDesiredFlowYE_ptr - 0x59688C)
596886:  STR             R0, [SP,#0x70+var_3C]
596888:  ADD             R6, PC; _ZN11CWaterLevel21m_CurrentDesiredFlowYE_ptr
59688A:  LDR             R0, [R6]; CWaterLevel::m_CurrentDesiredFlowY ...
59688C:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x596894)
59688E:  STR             R0, [SP,#0x70+var_40]
596890:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
596892:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
596894:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x59689C)
596896:  STR             R0, [SP,#0x70+var_44]
596898:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
59689A:  LDR             R0, [R6]; CWaterLevel::m_aVertices ...
59689C:  STR             R0, [SP,#0x70+var_48]
59689E:  STRD.W          R3, R2, [SP,#0x70+var_50]
5968A2:  LDRSH.W         LR, [R1,#-4]; CWaterLevel::m_aQuads
5968A6:  ADD.W           R4, LR, LR,LSL#2
5968AA:  LDRSH.W         R6, [R2,R4,LSL#2]
5968AE:  VMOV            S14, R6
5968B2:  VCVT.F32.S32    S1, S14
5968B6:  VCMPE.F32       S2, S1
5968BA:  VMRS            APSR_nzcv, FPSCR
5968BE:  BGE             loc_5968C6
5968C0:  VSUB.F32        S14, S1, S2
5968C4:  B               loc_5968EE
5968C6:  LDRSH.W         R6, [R1,#-2]
5968CA:  LDR             R0, [SP,#0x70+var_48]
5968CC:  ADD.W           R6, R6, R6,LSL#2
5968D0:  LDRSH.W         R6, [R0,R6,LSL#2]
5968D4:  VMOV            S14, R6
5968D8:  VCVT.F32.S32    S3, S14
5968DC:  VMOV.F32        S14, S4
5968E0:  VCMPE.F32       S2, S3
5968E4:  VMRS            APSR_nzcv, FPSCR
5968E8:  IT GT
5968EA:  VSUBGT.F32      S14, S2, S3
5968EE:  ADD.W           R6, R3, R4,LSL#2
5968F2:  LDRSH.W         R6, [R6,#2]
5968F6:  VMOV            S3, R6
5968FA:  VCVT.F32.S32    S3, S3
5968FE:  VCMPE.F32       S0, S3
596902:  VMRS            APSR_nzcv, FPSCR
596906:  BGE             loc_596924
596908:  VSUB.F32        S5, S3, S0
59690C:  B               loc_596950
59690E:  ALIGN 0x10
596910:  DCFS 3000.0
596914:  DCFS -3000.0
596918:  DCFS 0.0
59691C:  DCFS 1.0e7
596920:  DCFS 0.015625
596924:  LDRSH.W         R6, [R1]
596928:  LDR             R0, [SP,#0x70+var_44]
59692A:  ADD.W           R6, R6, R6,LSL#2
59692E:  ADD.W           R6, R0, R6,LSL#2
596932:  LDRSH.W         R6, [R6,#2]
596936:  VMOV            S5, R6
59693A:  VCVT.F32.S32    S7, S5
59693E:  VMOV.F32        S5, S4
596942:  VCMPE.F32       S0, S7
596946:  VMRS            APSR_nzcv, FPSCR
59694A:  IT GT
59694C:  VSUBGT.F32      S5, S0, S7
596950:  VMUL.F32        S5, S5, S5
596954:  VMUL.F32        S14, S14, S14
596958:  VADD.F32        S14, S14, S5
59695C:  VSQRT.F32       S14, S14
596960:  VCMPE.F32       S14, S10
596964:  VMRS            APSR_nzcv, FPSCR
596968:  BGE             loc_596A30
59696A:  LDR             R0, [SP,#0x70+var_34]
59696C:  ADD.W           R6, R0, R4,LSL#2
596970:  VLDR            S5, [R6,#8]
596974:  VCMP.F32        S5, #0.0
596978:  VMRS            APSR_nzcv, FPSCR
59697C:  BNE             loc_596A22
59697E:  LDR             R0, [SP,#0x70+var_58]
596980:  ADD.W           R6, R0, R4,LSL#2
596984:  VLDR            S5, [R6,#0xC]
596988:  VCMP.F32        S5, #0.0
59698C:  VMRS            APSR_nzcv, FPSCR
596990:  BNE             loc_596A22
596992:  LDRSH.W         R6, [R1,#-2]
596996:  LDR             R0, [SP,#0x70+var_5C]
596998:  ADD.W           R6, R6, R6,LSL#2
59699C:  ADD.W           R5, R0, R6,LSL#2
5969A0:  VLDR            S5, [R5,#8]
5969A4:  VCMP.F32        S5, #0.0
5969A8:  VMRS            APSR_nzcv, FPSCR
5969AC:  BNE             loc_596A22
5969AE:  LDR             R0, [SP,#0x70+var_60]
5969B0:  ADD.W           R5, R0, R6,LSL#2
5969B4:  VLDR            S5, [R5,#0xC]
5969B8:  VCMP.F32        S5, #0.0
5969BC:  VMRS            APSR_nzcv, FPSCR
5969C0:  BNE             loc_596A22
5969C2:  LDRSH.W         R5, [R1]
5969C6:  LDR             R0, [SP,#0x70+var_64]
5969C8:  ADD.W           R6, R5, R5,LSL#2
5969CC:  ADD.W           R5, R0, R6,LSL#2
5969D0:  VLDR            S5, [R5,#8]
5969D4:  VCMP.F32        S5, #0.0
5969D8:  VMRS            APSR_nzcv, FPSCR
5969DC:  BNE             loc_596A22
5969DE:  LDR             R0, [SP,#0x70+var_68]
5969E0:  ADD.W           R5, R0, R6,LSL#2
5969E4:  VLDR            S5, [R5,#0xC]
5969E8:  VCMP.F32        S5, #0.0
5969EC:  VMRS            APSR_nzcv, FPSCR
5969F0:  BNE             loc_596A22
5969F2:  LDRSH.W         R5, [R1,#2]
5969F6:  LDR             R0, [SP,#0x70+var_6C]
5969F8:  ADD.W           R6, R5, R5,LSL#2
5969FC:  ADD.W           R5, R0, R6,LSL#2
596A00:  VLDR            S5, [R5,#8]
596A04:  VCMP.F32        S5, #0.0
596A08:  VMRS            APSR_nzcv, FPSCR
596A0C:  BNE             loc_596A22
596A0E:  LDR             R0, [SP,#0x70+var_70]
596A10:  ADD.W           R5, R0, R6,LSL#2
596A14:  VLDR            S5, [R5,#0xC]
596A18:  VCMP.F32        S5, #0.0
596A1C:  VMRS            APSR_nzcv, FPSCR
596A20:  BEQ             loc_596A30
596A22:  VMOV.F32        S10, S14
596A26:  LDR             R0, [SP,#0x70+var_54]
596A28:  ADD.W           R4, R0, R4,LSL#2
596A2C:  VLDR            S8, [R4,#4]
596A30:  VCMPE.F32       S14, S12
596A34:  VMRS            APSR_nzcv, FPSCR
596A38:  BGE.W           loc_596B8E
596A3C:  MOV             R4, R1
596A3E:  MOV             R9, R1
596A40:  LDRSH.W         R5, [R4,#-2]!
596A44:  VSUB.F32        S3, S0, S3
596A48:  LDRSH.W         R6, [R9,#2]!
596A4C:  VSUB.F32        S1, S2, S1
596A50:  LDRSH.W         R2, [R1]
596A54:  ADD.W           R5, R5, R5,LSL#2
596A58:  ADD.W           R6, R6, R6,LSL#2
596A5C:  ADD.W           R8, R11, R5,LSL#2
596A60:  LDRSH.W         R5, [R11,R5,LSL#2]
596A64:  LDRSH.W         R0, [R11,R6,LSL#2]
596A68:  ADD.W           R6, R11, R6,LSL#2
596A6C:  LDRSH.W         R3, [R8,#2]
596A70:  ADD.W           R2, R2, R2,LSL#2
596A74:  LDRSH.W         R6, [R6,#2]
596A78:  VMOV            S7, R5
596A7C:  VMUL.F32        S3, S3, S3
596A80:  VMOV            S5, R3
596A84:  VMOV            S12, R6
596A88:  LDRSH.W         R6, [R11,R2,LSL#2]
596A8C:  ADD.W           R2, R11, R2,LSL#2
596A90:  VCVT.F32.S32    S12, S12
596A94:  VCVT.F32.S32    S5, S5
596A98:  VCVT.F32.S32    S7, S7
596A9C:  LDRSH.W         R2, [R2,#2]
596AA0:  VMUL.F32        S1, S1, S1
596AA4:  VMOV            S9, R0
596AA8:  VMOV            S11, R2
596AAC:  VMOV            S13, R6
596AB0:  VSUB.F32        S12, S0, S12
596AB4:  VSUB.F32        S5, S0, S5
596AB8:  VSUB.F32        S7, S2, S7
596ABC:  VCVT.F32.S32    S9, S9
596AC0:  VCVT.F32.S32    S11, S11
596AC4:  VCVT.F32.S32    S13, S13
596AC8:  VMUL.F32        S16, S12, S12
596ACC:  VMUL.F32        S15, S5, S5
596AD0:  VMUL.F32        S7, S7, S7
596AD4:  VADD.F32        S5, S1, S3
596AD8:  VSUB.F32        S11, S0, S11
596ADC:  VSUB.F32        S13, S2, S13
596AE0:  VSUB.F32        S9, S2, S9
596AE4:  VADD.F32        S12, S7, S15
596AE8:  VMUL.F32        S11, S11, S11
596AEC:  VMUL.F32        S13, S13, S13
596AF0:  VMUL.F32        S9, S9, S9
596AF4:  VCMPE.F32       S5, S12
596AF8:  VMRS            APSR_nzcv, FPSCR
596AFC:  VADD.F32        S1, S13, S11
596B00:  VADD.F32        S3, S9, S16
596B04:  ITT LT
596B06:  VCMPELT.F32     S5, S1
596B0A:  VMRSLT          APSR_nzcv, FPSCR
596B0E:  BGE             loc_596B1A
596B10:  VCMPE.F32       S5, S3
596B14:  VMRS            APSR_nzcv, FPSCR
596B18:  BLT             loc_596B42
596B1A:  VCMPE.F32       S1, S3
596B1E:  VMRS            APSR_nzcv, FPSCR
596B22:  VCMPE.F32       S12, S3
596B26:  IT LT
596B28:  MOVLT           R9, R1
596B2A:  VMRS            APSR_nzcv, FPSCR
596B2E:  VCMPE.F32       S12, S1
596B32:  IT GE
596B34:  MOVGE           R4, R9
596B36:  VMRS            APSR_nzcv, FPSCR
596B3A:  IT GE
596B3C:  MOVGE           R4, R9
596B3E:  LDRSH.W         LR, [R4]
596B42:  LDRD.W          R3, R2, [SP,#0x70+var_50]
596B46:  ADD.W           R0, LR, LR,LSL#2
596B4A:  LDR             R6, [SP,#0x70+var_38]
596B4C:  UXTH.W          R4, LR
596B50:  ADD.W           R0, R6, R0,LSL#2
596B54:  LDRSB.W         R0, [R0,#0x10]
596B58:  VMOV            S12, R0
596B5C:  VCVT.F32.S32    S12, S12
596B60:  LDR             R0, [SP,#0x70+var_3C]
596B62:  VMUL.F32        S12, S12, S6
596B66:  VSTR            S12, [R0]
596B6A:  SXTH            R0, R4
596B6C:  ADD.W           R0, R0, R0,LSL#2
596B70:  ADD.W           R0, R6, R0,LSL#2
596B74:  LDRSB.W         R0, [R0,#0x11]
596B78:  VMOV            S12, R0
596B7C:  VCVT.F32.S32    S12, S12
596B80:  LDR             R0, [SP,#0x70+var_40]
596B82:  VMUL.F32        S12, S12, S6
596B86:  VSTR            S12, [R0]
596B8A:  VMOV.F32        S12, S14
596B8E:  ADD.W           R12, R12, #1
596B92:  ADDS            R1, #0xA
596B94:  CMP             R12, R10
596B96:  BLT.W           loc_5968A2
596B9A:  B               loc_596BC2
596B9C:  LDR             R0, =(TheCamera_ptr - 0x596BA8)
596B9E:  MOVS            R3, #0
596BA0:  LDR             R1, =(_ZN11CWaterLevel21m_CurrentDesiredFlowXE_ptr - 0x596BAA)
596BA2:  LDR             R2, =(_ZN11CWaterLevel21m_CurrentDesiredFlowYE_ptr - 0x596BAC)
596BA4:  ADD             R0, PC; TheCamera_ptr
596BA6:  ADD             R1, PC; _ZN11CWaterLevel21m_CurrentDesiredFlowXE_ptr
596BA8:  ADD             R2, PC; _ZN11CWaterLevel21m_CurrentDesiredFlowYE_ptr
596BAA:  LDR             R0, [R0]; TheCamera
596BAC:  LDR             R1, [R1]; CWaterLevel::m_CurrentDesiredFlowX ...
596BAE:  LDR             R2, [R2]; CWaterLevel::m_CurrentDesiredFlowY ...
596BB0:  STRD.W          R3, R3, [R0,#(dword_952088 - 0x951FA8)]
596BB4:  STR             R3, [R1]; CWaterLevel::m_CurrentDesiredFlowX
596BB6:  STR             R3, [R2]; CWaterLevel::m_CurrentDesiredFlowY
596BB8:  BX              LR
596BBA:  VLDR            S10, =1.0e7
596BBE:  VLDR            S8, =0.0
596BC2:  LDR             R0, =(TheCamera_ptr - 0x596BC8)
596BC4:  ADD             R0, PC; TheCamera_ptr
596BC6:  LDR             R0, [R0]; TheCamera
596BC8:  VSTR            S10, [R0,#0xE0]
596BCC:  VSTR            S8, [R0,#0xE4]
596BD0:  ADD             SP, SP, #0x40 ; '@'
596BD2:  VPOP            {D8}
596BD6:  ADD             SP, SP, #4
596BD8:  POP.W           {R8-R11}
596BDC:  POP             {R4-R7,PC}
