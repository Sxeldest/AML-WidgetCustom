; =========================================================
; Game Engine Function: _ZN11CWaterLevel25FillQuadsAndTrianglesListEv
; Address            : 0x593C98 - 0x593FE0
; =========================================================

593C98:  PUSH            {R4-R7,LR}
593C9A:  ADD             R7, SP, #0xC
593C9C:  PUSH.W          {R8-R11}
593CA0:  SUB             SP, SP, #0x4C
593CA2:  LDR             R0, =(_ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr - 0x593CAA)
593CA4:  LDR             R2, =(_ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr - 0x593CAE)
593CA6:  ADD             R0, PC; _ZN11CWaterLevel22m_nNumOfWaterTrianglesE_ptr
593CA8:  LDR             R3, =(_ZN11CWaterLevel8m_aQuadsE_ptr - 0x593CB4)
593CAA:  ADD             R2, PC; _ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr
593CAC:  LDR             R1, =(_ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr - 0x593CB6)
593CAE:  LDR             R0, [R0]; CWaterLevel::m_nNumOfWaterTriangles ...
593CB0:  ADD             R3, PC; _ZN11CWaterLevel8m_aQuadsE_ptr
593CB2:  ADD             R1, PC; _ZN11CWaterLevel18m_nNumOfWaterQuadsE_ptr
593CB4:  VLDR            S0, =-3000.0
593CB8:  VLDR            S2, =500.0
593CBC:  LDR.W           R11, [R0]; CWaterLevel::m_nNumOfWaterTriangles
593CC0:  LDR             R0, [R2]; CWaterLevel::m_QuadsAndTrianglesInEachBlock ...
593CC2:  LDR             R2, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x593CCA)
593CC4:  STR             R0, [SP,#0x68+var_50]
593CC6:  ADD             R2, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
593CC8:  LDR             R0, [R3]; CWaterLevel::m_aQuads ...
593CCA:  STR             R0, [SP,#0x68+var_54]
593CCC:  LDR             R0, [R2]; CWaterLevel::m_aVertices ...
593CCE:  LDR             R2, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x593CD6)
593CD0:  STR             R0, [SP,#0x68+var_3C]
593CD2:  ADD             R2, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
593CD4:  LDR             R3, =(_ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr - 0x593CDE)
593CD6:  LDR             R1, [R1]; CWaterLevel::m_nNumOfWaterQuads ...
593CD8:  LDR             R0, [R2]; CWaterLevel::m_aVertices ...
593CDA:  ADD             R3, PC; _ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr
593CDC:  LDR             R2, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x593CE4)
593CDE:  STR             R0, [SP,#0x68+var_20]
593CE0:  ADD             R2, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
593CE2:  LDR.W           R12, [R1]; CWaterLevel::m_nNumOfWaterQuads
593CE6:  MOVS            R1, #0
593CE8:  LDR             R0, [R2]; CWaterLevel::m_aVertices ...
593CEA:  LDR             R2, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x593CF2)
593CEC:  STR             R0, [SP,#0x68+var_24]
593CEE:  ADD             R2, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
593CF0:  LDR             R0, [R2]; CWaterLevel::m_aVertices ...
593CF2:  LDR             R2, =(_ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr - 0x593CFA)
593CF4:  STR             R0, [SP,#0x68+var_38]
593CF6:  ADD             R2, PC; _ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr
593CF8:  LDR             R0, [R2]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList ...
593CFA:  LDR             R2, =(_ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr - 0x593D02)
593CFC:  STR             R0, [SP,#0x68+var_58]
593CFE:  ADD             R2, PC; _ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr
593D00:  LDR             R0, [R3]; CWaterLevel::m_QuadsAndTrianglesList ...
593D02:  STR             R0, [SP,#0x68+var_5C]
593D04:  LDR             R0, [R2]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList ...
593D06:  LDR             R2, =(_ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr - 0x593D0E)
593D08:  LDR             R3, =(_ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr - 0x593D12)
593D0A:  ADD             R2, PC; _ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr
593D0C:  STR             R0, [SP,#0x68+var_4C]
593D0E:  ADD             R3, PC; _ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr
593D10:  LDR             R0, [R2]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList ...
593D12:  LDR             R2, =(_ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr - 0x593D1A)
593D14:  STR             R0, [SP,#0x68+var_64]
593D16:  ADD             R2, PC; _ZN11CWaterLevel30m_QuadsAndTrianglesInEachBlockE_ptr
593D18:  LDR             R0, [R3]; CWaterLevel::m_QuadsAndTrianglesList ...
593D1A:  STR             R0, [SP,#0x68+var_68]
593D1C:  LDR             R0, [R2]; CWaterLevel::m_QuadsAndTrianglesInEachBlock ...
593D1E:  LDR             R2, =(_ZN11CWaterLevel12m_aTrianglesE_ptr - 0x593D26)
593D20:  LDR             R3, =(_ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr - 0x593D2A)
593D22:  ADD             R2, PC; _ZN11CWaterLevel12m_aTrianglesE_ptr
593D24:  STR             R0, [SP,#0x68+var_60]
593D26:  ADD             R3, PC; _ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr
593D28:  LDR.W           R10, [R2]; CWaterLevel::m_aTriangles ...
593D2C:  LDR             R2, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x593D32)
593D2E:  ADD             R2, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
593D30:  LDR.W           LR, [R2]; CWaterLevel::m_aVertices ...
593D34:  LDR             R2, =(_ZN11CWaterLevel11m_aVerticesE_ptr - 0x593D3A)
593D36:  ADD             R2, PC; _ZN11CWaterLevel11m_aVerticesE_ptr
593D38:  LDR.W           R8, [R2]; CWaterLevel::m_aVertices ...
593D3C:  LDR             R2, =(_ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr - 0x593D42)
593D3E:  ADD             R2, PC; _ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr
593D40:  LDR             R0, [R2]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList ...
593D42:  LDR             R2, =(_ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr - 0x593D4A)
593D44:  STR             R0, [SP,#0x68+var_30]
593D46:  ADD             R2, PC; _ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr
593D48:  LDR             R0, [R3]; CWaterLevel::m_QuadsAndTrianglesList ...
593D4A:  STR             R0, [SP,#0x68+var_34]
593D4C:  LDR             R0, [R2]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList ...
593D4E:  LDR             R2, =(_ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr - 0x593D56)
593D50:  LDR             R3, =(_ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr - 0x593D5A)
593D52:  ADD             R2, PC; _ZN11CWaterLevel33m_ElementsOnQuadsAndTrianglesListE_ptr
593D54:  STR             R0, [SP,#0x68+var_28]
593D56:  ADD             R3, PC; _ZN11CWaterLevel23m_QuadsAndTrianglesListE_ptr
593D58:  LDR             R0, [R2]; CWaterLevel::m_ElementsOnQuadsAndTrianglesList ...
593D5A:  STR             R0, [SP,#0x68+var_44]
593D5C:  LDR             R0, [R3]; CWaterLevel::m_QuadsAndTrianglesList ...
593D5E:  STR             R0, [SP,#0x68+var_48]
593D60:  MOV.W           R0, #0x1F4
593D64:  STR             R1, [SP,#0x68+var_40]
593D66:  MUL.W           R2, R1, R0
593D6A:  VMOV            S4, R2
593D6E:  MOVS            R2, #0
593D70:  VCVT.F32.S32    S4, S4
593D74:  VADD.F32        S4, S4, S0
593D78:  VADD.F32        S6, S4, S2
593D7C:  MOV.W           R0, #0x1F4
593D80:  STR             R2, [SP,#0x68+var_2C]
593D82:  MULS            R2, R0
593D84:  MOVS            R1, #0
593D86:  CMP.W           R12, #1
593D8A:  VMOV            S8, R2
593D8E:  VCVT.F32.S32    S8, S8
593D92:  VADD.F32        S8, S8, S0
593D96:  VADD.F32        S10, S8, S2
593D9A:  BLT             loc_593E9A
593D9C:  LDR             R0, [SP,#0x68+var_40]
593D9E:  MOV.W           R9, #0
593DA2:  ADD.W           R2, R0, R0,LSL#1
593DA6:  LDR             R0, [SP,#0x68+var_50]
593DA8:  ADD.W           R2, R0, R2,LSL#3
593DAC:  LDR             R0, [SP,#0x68+var_2C]
593DAE:  ADD.W           R4, R2, R0,LSL#1
593DB2:  LDR             R0, [SP,#0x68+var_54]
593DB4:  LDR             R2, [SP,#0x68+var_3C]
593DB6:  ADDS            R3, R0, #2
593DB8:  LDRSH.W         R5, [R3]
593DBC:  ADD.W           R5, R5, R5,LSL#2
593DC0:  LDRSH.W         R5, [R2,R5,LSL#2]
593DC4:  VMOV            S12, R5
593DC8:  VCVT.F32.S32    S12, S12
593DCC:  VCMPE.F32       S4, S12
593DD0:  VMRS            APSR_nzcv, FPSCR
593DD4:  BGE             loc_593E90
593DD6:  LDRSH.W         R5, [R3,#-2]
593DDA:  LDR             R0, [SP,#0x68+var_20]
593DDC:  ADD.W           R6, R5, R5,LSL#2
593DE0:  LDRSH.W         R5, [R0,R6,LSL#2]
593DE4:  VMOV            S12, R5
593DE8:  VCVT.F32.S32    S12, S12
593DEC:  VCMPE.F32       S6, S12
593DF0:  VMRS            APSR_nzcv, FPSCR
593DF4:  BLE             loc_593E90
593DF6:  LDRSH.W         R5, [R3,#2]
593DFA:  LDR             R0, [SP,#0x68+var_24]
593DFC:  ADD.W           R5, R5, R5,LSL#2
593E00:  ADD.W           R5, R0, R5,LSL#2
593E04:  LDRSH.W         R5, [R5,#2]
593E08:  VMOV            S12, R5
593E0C:  VCVT.F32.S32    S12, S12
593E10:  VCMPE.F32       S8, S12
593E14:  VMRS            APSR_nzcv, FPSCR
593E18:  BGE             loc_593E90
593E1A:  LDR             R0, [SP,#0x68+var_38]
593E1C:  ADD.W           R5, R0, R6,LSL#2
593E20:  LDRSH.W         R5, [R5,#2]
593E24:  VMOV            S12, R5
593E28:  VCVT.F32.S32    S12, S12
593E2C:  VCMPE.F32       S10, S12
593E30:  VMRS            APSR_nzcv, FPSCR
593E34:  BLE             loc_593E90
593E36:  LDRH            R5, [R4]
593E38:  MOV.W           R0, #0xFFFFFFFF
593E3C:  ADD.W           R6, R0, R5,LSR#14
593E40:  CMP             R6, #2
593E42:  BCS             loc_593E64
593E44:  LDR             R0, [SP,#0x68+var_58]
593E46:  ORR.W           R2, R9, #0x4000
593E4A:  LDR             R6, [R0]
593E4C:  LDR             R0, [SP,#0x68+var_5C]
593E4E:  STRH.W          R5, [R0,R6,LSL#1]
593E52:  ADD.W           R5, R0, R6,LSL#1
593E56:  MOVS            R0, #3
593E58:  STRH            R2, [R5,#2]
593E5A:  ORR.W           R2, R6, #0xC000
593E5E:  STRH            R1, [R5,#4]
593E60:  STRH            R2, [R4]
593E62:  B               loc_593E88
593E64:  LSRS            R5, R5, #0xE
593E66:  BNE             loc_593E70
593E68:  ORR.W           R5, R9, #0x4000
593E6C:  STRH            R5, [R4]
593E6E:  B               loc_593E90
593E70:  LDR             R0, [SP,#0x68+var_64]
593E72:  ORR.W           R5, R9, #0x4000
593E76:  LDR             R6, [R0]
593E78:  LDR             R0, [SP,#0x68+var_68]
593E7A:  ADD.W           R2, R0, R6,LSL#1
593E7E:  STRH.W          R1, [R0,R6,LSL#1]
593E82:  MOVS            R0, #1
593E84:  STRH.W          R5, [R2,#-2]
593E88:  ADDS            R2, R0, R6
593E8A:  LDR             R0, [SP,#0x68+var_4C]
593E8C:  STR             R2, [R0]
593E8E:  LDR             R2, [SP,#0x68+var_3C]
593E90:  ADD.W           R9, R9, #1
593E94:  ADDS            R3, #0xA
593E96:  CMP             R12, R9
593E98:  BNE             loc_593DB8
593E9A:  CMP.W           R11, #1
593E9E:  MOV.W           R9, #0
593EA2:  BLT.W           loc_593FC4
593EA6:  LDR             R0, [SP,#0x68+var_40]
593EA8:  ADD.W           R2, R0, R0,LSL#1
593EAC:  LDR             R0, [SP,#0x68+var_60]
593EAE:  ADD.W           R2, R0, R2,LSL#3
593EB2:  LDR             R0, [SP,#0x68+var_2C]
593EB4:  ADD.W           R3, R2, R0,LSL#1
593EB8:  MOVS            R2, #0
593EBA:  ADD.W           R5, R10, R2,LSL#3
593EBE:  LDRSH.W         R6, [R5,#2]
593EC2:  ADD.W           R6, R6, R6,LSL#2
593EC6:  LDRSH.W         R6, [LR,R6,LSL#2]
593ECA:  VMOV            S12, R6
593ECE:  VCVT.F32.S32    S12, S12
593ED2:  VCMPE.F32       S4, S12
593ED6:  VMRS            APSR_nzcv, FPSCR
593EDA:  BGE             loc_593FBC
593EDC:  LDRSH.W         R6, [R10,R2,LSL#3]
593EE0:  LDRSH.W         R5, [R5,#4]
593EE4:  ADD.W           R0, R6, R6,LSL#2
593EE8:  UXTH            R4, R5
593EEA:  ADD.W           R5, R5, R5,LSL#2
593EEE:  UXTH            R6, R6
593EF0:  ADD.W           R1, LR, R0,LSL#2
593EF4:  ADD.W           R5, LR, R5,LSL#2
593EF8:  LDRSH.W         R1, [R1,#2]
593EFC:  LDRSH.W         R5, [R5,#2]
593F00:  CMP             R1, R5
593F02:  MOV             R1, R4
593F04:  IT GT
593F06:  MOVGT           R1, R6
593F08:  IT LT
593F0A:  MOVLT           R4, R6
593F0C:  SXTH            R4, R4
593F0E:  SXTH            R1, R1
593F10:  ADD.W           R4, R4, R4,LSL#2
593F14:  ADD.W           R1, R1, R1,LSL#2
593F18:  LDRSH.W         R0, [R8,R0,LSL#2]
593F1C:  ADD.W           R4, R8, R4,LSL#2
593F20:  ADD.W           R1, R8, R1,LSL#2
593F24:  LDRSH.W         R4, [R4,#2]
593F28:  LDRSH.W         R1, [R1,#2]
593F2C:  VMOV            S12, R4
593F30:  VCVT.F32.S32    S1, S12
593F34:  VMOV            S12, R1
593F38:  VCVT.F32.S32    S14, S12
593F3C:  VMOV            S12, R0
593F40:  VCVT.F32.S32    S12, S12
593F44:  VCMPE.F32       S10, S1
593F48:  VMRS            APSR_nzcv, FPSCR
593F4C:  BLE             loc_593FBC
593F4E:  VCMPE.F32       S8, S14
593F52:  VMRS            APSR_nzcv, FPSCR
593F56:  BGE             loc_593FBC
593F58:  VCMPE.F32       S6, S12
593F5C:  VMRS            APSR_nzcv, FPSCR
593F60:  BLE             loc_593FBC
593F62:  LDRH            R5, [R3]
593F64:  MOV.W           R0, #0xFFFFFFFF
593F68:  ADD.W           R0, R0, R5,LSR#14
593F6C:  CMP             R0, #2
593F6E:  BCS             loc_593F92
593F70:  LDR             R0, [SP,#0x68+var_30]
593F72:  ORR.W           R1, R2, #0x8000
593F76:  LDR             R6, [R0]
593F78:  LDR             R0, [SP,#0x68+var_34]
593F7A:  STRH.W          R5, [R0,R6,LSL#1]
593F7E:  ADD.W           R0, R0, R6,LSL#1
593F82:  MOVS            R5, #3
593F84:  STRH            R1, [R0,#2]
593F86:  STRH.W          R9, [R0,#4]
593F8A:  ORR.W           R0, R6, #0xC000
593F8E:  STRH            R0, [R3]
593F90:  B               loc_593FB6
593F92:  LSRS            R0, R5, #0xE
593F94:  BNE             loc_593F9E
593F96:  ORR.W           R0, R2, #0x8000
593F9A:  STRH            R0, [R3]
593F9C:  B               loc_593FBC
593F9E:  LDR             R0, [SP,#0x68+var_44]
593FA0:  MOVS            R5, #1
593FA2:  ORR.W           R1, R2, #0x8000
593FA6:  LDR             R6, [R0]
593FA8:  LDR             R0, [SP,#0x68+var_48]
593FAA:  STRH.W          R9, [R0,R6,LSL#1]
593FAE:  ADD.W           R0, R0, R6,LSL#1
593FB2:  STRH.W          R1, [R0,#-2]
593FB6:  LDR             R1, [SP,#0x68+var_28]
593FB8:  ADDS            R0, R5, R6
593FBA:  STR             R0, [R1]
593FBC:  ADDS            R2, #1
593FBE:  CMP             R11, R2
593FC0:  BNE.W           loc_593EBA
593FC4:  LDR             R2, [SP,#0x68+var_2C]
593FC6:  ADDS            R2, #1
593FC8:  CMP             R2, #0xC
593FCA:  BNE.W           loc_593D7C
593FCE:  LDR             R1, [SP,#0x68+var_40]
593FD0:  ADDS            R1, #1
593FD2:  CMP             R1, #0xC
593FD4:  BNE.W           loc_593D60
593FD8:  ADD             SP, SP, #0x4C ; 'L'
593FDA:  POP.W           {R8-R11}
593FDE:  POP             {R4-R7,PC}
