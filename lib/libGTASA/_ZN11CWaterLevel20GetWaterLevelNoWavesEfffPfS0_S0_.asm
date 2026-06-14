; =========================================================
; Game Engine Function: _ZN11CWaterLevel20GetWaterLevelNoWavesEfffPfS0_S0_
; Address            : 0x595890 - 0x595A34
; =========================================================

595890:  PUSH            {R4-R7,LR}
595892:  ADD             R7, SP, #0xC
595894:  PUSH.W          {R8-R11}
595898:  SUB             SP, SP, #4
59589A:  VPUSH           {D8-D9}
59589E:  SUB             SP, SP, #0x18
5958A0:  MOV             R6, R0
5958A2:  VLDR            S16, =500.0
5958A6:  VMOV            S0, R6
5958AA:  MOV             R9, R3
5958AC:  VMOV.F32        S18, #6.0
5958B0:  MOV             R8, R2
5958B2:  VDIV.F32        S0, S0, S16
5958B6:  MOV             R5, R1
5958B8:  VADD.F32        S0, S0, S18
5958BC:  VMOV            R0, S0; x
5958C0:  BLX.W           floorf
5958C4:  VMOV            S0, R5
5958C8:  MOV             R4, R0
5958CA:  VDIV.F32        S0, S0, S16
5958CE:  VADD.F32        S0, S0, S18
5958D2:  VMOV            R0, S0; x
5958D6:  BLX.W           floorf
5958DA:  VMOV            S0, R0
5958DE:  LDR.W           R10, [R7,#arg_4]
5958E2:  VMOV            S2, R4
5958E6:  LDR.W           R11, [R7,#arg_0]
5958EA:  VCVT.S32.F32    S0, S0
5958EE:  VCVT.S32.F32    S2, S2
5958F2:  VMOV            R0, S2
5958F6:  CMP             R0, #0xB
5958F8:  ITT LS
5958FA:  VMOVLS          R1, S0
5958FE:  CMPLS           R1, #0xC
595900:  BCC             loc_595926
595902:  MOVS            R0, #0
595904:  CMP.W           R11, #0
595908:  STR.W           R0, [R9]
59590C:  ITT NE
59590E:  MOVNE.W         R0, #0x3F800000
595912:  STRNE.W         R0, [R11]
595916:  CMP.W           R10, #0
59591A:  ITT NE
59591C:  MOVNE           R0, #0
59591E:  STRNE.W         R0, [R10]
595922:  MOVS            R0, #1
595924:  B               loc_595A26
595926:  LDR             R2, =(_ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr - 0x595930)
595928:  ADD.W           R0, R0, R0,LSL#1
59592C:  ADD             R2, PC; _ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr
59592E:  LDR             R2, [R2]; CWaterLevel::m_QuadsAndTrianglesInEachBlock ...
595930:  ADD.W           R0, R2, R0,LSL#3
595934:  LDRH.W          R2, [R0,R1,LSL#1]
595938:  MOVS            R1, #3
59593A:  MOVS            R0, #0
59593C:  CMP.W           R1, R2,LSR#14
595940:  BEQ             loc_595972
595942:  LSRS            R1, R2, #0xE
595944:  CMP             R1, #2
595946:  BEQ             loc_595A02
595948:  CMP             R1, #1
59594A:  BNE             loc_595A26
59594C:  LDR             R0, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x59595C)
59594E:  BFC.W           R2, #0xE, #0x12
595952:  MOV             R3, R8
595954:  STRD.W          R9, R11, [SP,#0x48+var_48]
595958:  ADD             R0, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
59595A:  ADD.W           R1, R2, R2,LSL#2
59595E:  MOV             R2, R5
595960:  STR.W           R10, [SP,#0x48+var_40]
595964:  LDR             R0, [R0]; CWaterLevel::m_aQuads ...
595966:  ADD.W           R0, R0, R1,LSL#1
59596A:  MOV             R1, R6
59596C:  BLX             j__ZN11CWaterLevel23TestQuadToGetWaterLevelEP10CWaterQuadfffPfS2_S2_; CWaterLevel::TestQuadToGetWaterLevel(CWaterQuad *,float,float,float,float *,float *,float *)
595970:  B               loc_595A26
595972:  LDR             R1, =(_ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr - 0x59597C)
595974:  BFC.W           R2, #0xE, #0x12
595978:  ADD             R1, PC; _ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr
59597A:  LDR             R1, [R1]; CWaterLevel::m_QuadsAndTrianglesList ...
59597C:  LDRH.W          R1, [R1,R2,LSL#1]
595980:  CMP.W           R0, R1,LSR#14
595984:  BEQ             loc_595A26
595986:  LDR             R0, =(_ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr - 0x59598E)
595988:  LSRS            R3, R1, #0xE
59598A:  ADD             R0, PC; _ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr
59598C:  LDR             R0, [R0]; CWaterLevel::m_QuadsAndTrianglesList ...
59598E:  ADD.W           R0, R0, R2,LSL#1
595992:  ADDS            R4, R0, #2
595994:  LDR             R0, =(_ZN11CWaterLevel12m_aTrianglesE_ptr - 0x59599A)
595996:  ADD             R0, PC; _ZN11CWaterLevel12m_aTrianglesE_ptr
595998:  LDR             R0, [R0]; CWaterLevel::m_aTriangles ...
59599A:  STR             R0, [SP,#0x48+var_34]
59599C:  LDR             R0, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x5959A2)
59599E:  ADD             R0, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
5959A0:  LDR             R0, [R0]; CWaterLevel::m_aQuads ...
5959A2:  STR             R0, [SP,#0x48+var_38]
5959A4:  AND.W           R0, R3, #3
5959A8:  CMP             R0, #2
5959AA:  BEQ             loc_5959D4
5959AC:  CMP             R0, #1
5959AE:  BNE             loc_5959F2
5959B0:  BFC.W           R1, #0xE, #0x12
5959B4:  STRD.W          R9, R11, [SP,#0x48+var_48]
5959B8:  MOV             R2, R5
5959BA:  MOV             R3, R8
5959BC:  ADD.W           R0, R1, R1,LSL#2
5959C0:  LDR             R1, [SP,#0x48+var_38]
5959C2:  STR.W           R10, [SP,#0x48+var_40]
5959C6:  ADD.W           R0, R1, R0,LSL#1
5959CA:  MOV             R1, R6
5959CC:  BLX             j__ZN11CWaterLevel23TestQuadToGetWaterLevelEP10CWaterQuadfffPfS2_S2_; CWaterLevel::TestQuadToGetWaterLevel(CWaterQuad *,float,float,float,float *,float *,float *)
5959D0:  CBZ             R0, loc_5959F2
5959D2:  B               loc_595A24
5959D4:  STRD.W          R9, R11, [SP,#0x48+var_48]
5959D8:  BFC.W           R1, #0xE, #0x12
5959DC:  LDR             R0, [SP,#0x48+var_34]
5959DE:  MOV             R2, R5
5959E0:  MOV             R3, R8
5959E2:  STR.W           R10, [SP,#0x48+var_40]
5959E6:  ADD.W           R0, R0, R1,LSL#3
5959EA:  MOV             R1, R6
5959EC:  BLX.W           j__ZN11CWaterLevel27TestTriangleToGetWaterLevelEP14CWaterTrianglefffPfS2_S2_; CWaterLevel::TestTriangleToGetWaterLevel(CWaterTriangle *,float,float,float,float *,float *,float *)
5959F0:  CBNZ            R0, loc_595A24
5959F2:  LDRH.W          R1, [R4],#2
5959F6:  MOVS            R0, #0
5959F8:  LSRS            R3, R1, #0xE
5959FA:  CMP.W           R0, R1,LSR#14
5959FE:  BNE             loc_5959A4
595A00:  B               loc_595A26
595A02:  LDR             R0, =(_ZN11CWaterLevel12m_aTrianglesE_ptr - 0x595A10)
595A04:  BFC.W           R2, #0xE, #0x12
595A08:  MOV             R1, R6
595A0A:  MOV             R3, R8
595A0C:  ADD             R0, PC; _ZN11CWaterLevel12m_aTrianglesE_ptr
595A0E:  STRD.W          R9, R11, [SP,#0x48+var_48]
595A12:  STR.W           R10, [SP,#0x48+var_40]
595A16:  LDR             R0, [R0]; CWaterLevel::m_aTriangles ...
595A18:  ADD.W           R0, R0, R2,LSL#3
595A1C:  MOV             R2, R5
595A1E:  BLX.W           j__ZN11CWaterLevel27TestTriangleToGetWaterLevelEP14CWaterTrianglefffPfS2_S2_; CWaterLevel::TestTriangleToGetWaterLevel(CWaterTriangle *,float,float,float,float *,float *,float *)
595A22:  B               loc_595A26
595A24:  MOVS            R0, #1
595A26:  ADD             SP, SP, #0x18
595A28:  VPOP            {D8-D9}
595A2C:  ADD             SP, SP, #4
595A2E:  POP.W           {R8-R11}
595A32:  POP             {R4-R7,PC}
