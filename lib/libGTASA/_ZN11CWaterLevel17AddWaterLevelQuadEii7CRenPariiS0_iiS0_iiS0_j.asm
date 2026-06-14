; =========================================================
; Game Engine Function: _ZN11CWaterLevel17AddWaterLevelQuadEii7CRenPariiS0_iiS0_iiS0_j
; Address            : 0x5938FC - 0x593B4E
; =========================================================

5938FC:  PUSH            {R4-R7,LR}
5938FE:  ADD             R7, SP, #0xC
593900:  PUSH.W          {R8-R11}
593904:  SUB             SP, SP, #0x44
593906:  LDR             R6, [R7,#arg_8]
593908:  LDR.W           R10, [R7,#arg_38]
59390C:  LDR             R5, [R7,#arg_20]
59390E:  CMP             R0, R6
593910:  IT EQ
593912:  CMPEQ           R0, R5
593914:  BNE             loc_59391C
593916:  CMP             R0, R10
593918:  BEQ.W           loc_593B46
59391C:  LDR.W           R11, [R7,#arg_C]
593920:  LDR             R4, [R7,#arg_3C]
593922:  LDR.W           R9, [R7,#arg_24]
593926:  CMP             R1, R11
593928:  IT EQ
59392A:  CMPEQ           R1, R9
59392C:  BNE             loc_593934
59392E:  CMP             R1, R4
593930:  BEQ.W           loc_593B46
593934:  LDRD.W          R4, R12, [R7,#arg_0]
593938:  STRD.W          R4, R12, [SP,#0x60+var_60]
59393C:  BLX             j__ZN11CWaterLevel19AddWaterLevelVertexEii7CRenPar; CWaterLevel::AddWaterLevelVertex(int,int,CRenPar)
593940:  MOV             R8, R0
593942:  STR             R0, [SP,#0x60+var_2C]
593944:  LDR             R0, [R7,#arg_18]
593946:  MOV             R1, R11
593948:  STR             R0, [SP,#0x60+var_60]
59394A:  LDR             R0, [R7,#arg_1C]
59394C:  STR             R0, [SP,#0x60+var_5C]
59394E:  MOV             R0, R6
593950:  STR.W           R8, [SP,#0x60+var_54]
593954:  LDRD.W          R2, R3, [R7,#arg_10]
593958:  BLX             j__ZN11CWaterLevel19AddWaterLevelVertexEii7CRenPar; CWaterLevel::AddWaterLevelVertex(int,int,CRenPar)
59395C:  MOV             R4, R0
59395E:  LDR             R0, [R7,#arg_30]
593960:  STR             R0, [SP,#0x60+var_60]
593962:  MOV             R1, R9
593964:  LDR             R0, [R7,#arg_34]
593966:  STR             R0, [SP,#0x60+var_5C]
593968:  MOV             R0, R5
59396A:  STR             R4, [SP,#0x60+var_28]
59396C:  LDRD.W          R2, R3, [R7,#arg_28]
593970:  BLX             j__ZN11CWaterLevel19AddWaterLevelVertexEii7CRenPar; CWaterLevel::AddWaterLevelVertex(int,int,CRenPar)
593974:  MOV             R9, R0
593976:  LDR             R0, [R7,#arg_48]
593978:  STR             R0, [SP,#0x60+var_60]
59397A:  ADD.W           R3, R7, #0x44 ; 'D'
59397E:  LDR             R0, [R7,#arg_4C]
593980:  STR             R0, [SP,#0x60+var_5C]
593982:  MOV             R0, R10
593984:  STR.W           R9, [SP,#0x60+var_24]
593988:  LDM             R3, {R1-R3}
59398A:  BLX             j__ZN11CWaterLevel19AddWaterLevelVertexEii7CRenPar; CWaterLevel::AddWaterLevelVertex(int,int,CRenPar)
59398E:  LDR             R1, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x5939A0)
593990:  ADD.W           R2, R8, R8,LSL#2
593994:  ADD.W           R3, R9, R9,LSL#2
593998:  ADD.W           R12, SP, #0x60+var_2C
59399C:  ADD             R1, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
59399E:  STR             R0, [SP,#0x60+var_20]
5939A0:  STR             R4, [SP,#0x60+var_50]
5939A2:  MOV.W           R8, #0
5939A6:  LDR             R5, [R1]; CWaterLevel::m_aVertices ...
5939A8:  ADD.W           R1, R4, R4,LSL#2
5939AC:  ADD.W           R1, R5, R1,LSL#2
5939B0:  ADD.W           R3, R5, R3,LSL#2
5939B4:  LDRH.W          LR, [R1,#2]
5939B8:  ADD.W           R1, R5, R2,LSL#2
5939BC:  LDRH            R6, [R1,#2]
5939BE:  SXTH.W          R2, LR
5939C2:  SXTH.W          R10, R6
5939C6:  CMP             R10, R2
5939C8:  MOV.W           R2, #0
5939CC:  IT GE
5939CE:  MOVGE           R2, #1
5939D0:  LDRSH.W         R1, [R3,#2]
5939D4:  LDR.W           R4, [R12,R2,LSL#2]
5939D8:  ADD.W           R3, R0, R0,LSL#2
5939DC:  STR             R0, [SP,#0x60+var_40]
5939DE:  ADD.W           R3, R5, R3,LSL#2
5939E2:  STR.W           R9, [SP,#0x60+var_44]
5939E6:  ADD.W           R4, R4, R4,LSL#2
5939EA:  LDRSH.W         R0, [R3,#2]
5939EE:  MOVS            R3, #3
5939F0:  ADD.W           R4, R5, R4,LSL#2
5939F4:  STR             R0, [SP,#0x60+var_48]
5939F6:  CMP             R1, R0
5939F8:  LDRSH.W         R11, [R4,#2]
5939FC:  MOV             R4, R1
5939FE:  STR             R4, [SP,#0x60+var_4C]
593A00:  IT LT
593A02:  MOVLT           R3, #2
593A04:  LDR.W           R9, [R12,R3,LSL#2]
593A08:  MOVS            R4, #0
593A0A:  ADD.W           R0, R9, R9,LSL#2
593A0E:  ADD.W           R0, R5, R0,LSL#2
593A12:  LDRSH.W         R0, [R0,#2]
593A16:  CMP             R11, R0
593A18:  IT LT
593A1A:  MOVLT           R3, R2
593A1C:  LDR.W           R0, [R12,R3,LSL#2]
593A20:  ADD.W           R12, SP, #0x60+var_3C
593A24:  ADD.W           R0, R0, R0,LSL#2
593A28:  ADD.W           R0, R5, R0,LSL#2
593A2C:  LDRH            R5, [R0,#2]
593A2E:  MOV             R0, R12
593A30:  CMP             R6, R5
593A32:  IT NE
593A34:  ADDNE           R0, #8
593A36:  LDR             R1, [SP,#0x60+var_54]
593A38:  STR             R1, [R0]
593A3A:  ITE EQ
593A3C:  MOVEQ           R4, #1
593A3E:  MOVNE.W         R8, #1
593A42:  CMP             LR, R5
593A44:  BNE             loc_593A5A
593A46:  LDR             R0, [SP,#0x60+var_50]
593A48:  STR.W           R0, [R12,R4,LSL#2]
593A4C:  UXTH.W          R0, R10
593A50:  MOVS            R4, #1
593A52:  CMP             R0, R5
593A54:  IT EQ
593A56:  MOVEQ           R4, #2
593A58:  B               loc_593A74
593A5A:  ORR.W           R0, R8, #2
593A5E:  LDR             R1, [SP,#0x60+var_50]
593A60:  MOV.W           R8, #2
593A64:  STR.W           R1, [R12,R0,LSL#2]
593A68:  UXTH.W          R0, R10
593A6C:  CMP             R0, R5
593A6E:  IT EQ
593A70:  MOVEQ.W         R8, #1
593A74:  LDR             R0, [SP,#0x60+var_4C]
593A76:  UXTH            R0, R0
593A78:  CMP             R0, R5
593A7A:  BNE             loc_593A86
593A7C:  LDR             R0, [SP,#0x60+var_44]
593A7E:  STR.W           R0, [R12,R4,LSL#2]
593A82:  ADDS            R4, #1
593A84:  B               loc_593A92
593A86:  ADD.W           R0, R12, R8,LSL#2
593A8A:  LDR             R2, [SP,#0x60+var_44]
593A8C:  ADD.W           R8, R8, #1
593A90:  STR             R2, [R0,#8]
593A92:  LDR             R0, [SP,#0x60+var_48]
593A94:  LDR             R3, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x593AAA)
593A96:  UXTH            R0, R0
593A98:  CMP             R0, R5
593A9A:  IT NE
593A9C:  ADDNE.W         R4, R8, #2
593AA0:  LDR             R0, [SP,#0x60+var_40]
593AA2:  STR.W           R0, [R12,R4,LSL#2]
593AA6:  ADD             R3, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
593AA8:  LDRD.W          R2, R0, [SP,#0x60+var_3C]
593AAC:  LDR             R1, [R3]; CWaterLevel::m_aVertices ...
593AAE:  ADD.W           R3, R0, R0,LSL#2
593AB2:  ADD.W           R6, R2, R2,LSL#2
593AB6:  LDRSH.W         R3, [R1,R3,LSL#2]
593ABA:  LDRSH.W         R1, [R1,R6,LSL#2]
593ABE:  CMP             R1, R3
593AC0:  BLE             loc_593ACE
593AC2:  SXTH.W          LR, R2
593AC6:  STR             R0, [SP,#0x60+var_3C]
593AC8:  STR.W           LR, [SP,#0x60+var_38]
593ACC:  B               loc_593AD2
593ACE:  MOV             LR, R0
593AD0:  MOV             R0, R2
593AD2:  LDR             R6, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x593ADC)
593AD4:  LDRD.W          R5, R3, [SP,#0x60+var_34]
593AD8:  ADD             R6, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
593ADA:  ADD.W           R4, R3, R3,LSL#2
593ADE:  LDR.W           R12, [R7,#arg_50]
593AE2:  LDR             R6, [R6]; CWaterLevel::m_aVertices ...
593AE4:  ADD.W           R2, R5, R5,LSL#2
593AE8:  LDRSH.W         R4, [R6,R4,LSL#2]
593AEC:  LDRSH.W         R2, [R6,R2,LSL#2]
593AF0:  CMP             R2, R4
593AF2:  BLE             loc_593AFC
593AF4:  SXTH            R6, R5
593AF6:  STR             R3, [SP,#0x60+var_34]
593AF8:  STR             R6, [SP,#0x60+var_30]
593AFA:  B               loc_593B00
593AFC:  MOV             R6, R3
593AFE:  MOV             R3, R5
593B00:  LDR             R2, =(_ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr - 0x593B0C)
593B02:  TST.W           R12, #1
593B06:  LDR             R5, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x593B0E)
593B08:  ADD             R2, PC; _ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr
593B0A:  ADD             R5, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
593B0C:  LDR             R2, [R2]; CWaterLevel::m_nNumOfWaterQuads ...
593B0E:  LDR             R5, [R5]; CWaterLevel::m_aQuads ...
593B10:  LDR             R4, [R2]; CWaterLevel::m_nNumOfWaterQuads
593B12:  ADD.W           R1, R4, R4,LSL#2
593B16:  STRH.W          R0, [R5,R1,LSL#1]
593B1A:  ADD.W           R0, R5, R1,LSL#1
593B1E:  STRH.W          LR, [R0,#2]
593B22:  LDRB            R1, [R0,#8]
593B24:  STRH            R3, [R0,#4]
593B26:  BIC.W           R1, R1, #3
593B2A:  STRH            R6, [R0,#6]
593B2C:  IT EQ
593B2E:  ORREQ.W         R1, R1, #2
593B32:  TST.W           R12, #2
593B36:  AND.W           R3, R1, #0xFA
593B3A:  IT NE
593B3C:  ORRNE.W         R3, R1, #4
593B40:  STRB            R3, [R0,#8]
593B42:  ADDS            R0, R4, #1
593B44:  STR             R0, [R2]; CWaterLevel::m_nNumOfWaterQuads
593B46:  ADD             SP, SP, #0x44 ; 'D'
593B48:  POP.W           {R8-R11}
593B4C:  POP             {R4-R7,PC}
