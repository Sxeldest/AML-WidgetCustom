; =========================================================
; Game Engine Function: _ZN9CIplStore18LoadIplBoundingBoxEiPhi
; Address            : 0x280CA4 - 0x28107A
; =========================================================

280CA4:  PUSH            {R4-R7,LR}
280CA6:  ADD             R7, SP, #0xC
280CA8:  PUSH.W          {R8-R11}
280CAC:  SUB             SP, SP, #4
280CAE:  VPUSH           {D8}
280CB2:  SUB             SP, SP, #0x28
280CB4:  MOV             R10, R0
280CB6:  LDR.W           R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280CC0)
280CBA:  MOV             R5, R1
280CBC:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
280CBE:  LDR             R0, [R0]; CIplStore::ms_pPool ...
280CC0:  LDR             R0, [R0]; CIplStore::ms_pPool
280CC2:  STRD.W          R2, R5, [SP,#0x50+var_30]
280CC6:  LDR             R1, [R0,#4]
280CC8:  LDRSB.W         R1, [R1,R10]
280CCC:  CMP             R1, #0
280CCE:  BLT             loc_280CDA
280CD0:  MOVS            R1, #0x34 ; '4'
280CD2:  LDR             R0, [R0]
280CD4:  MLA.W           R4, R10, R1, R0
280CD8:  B               loc_280CDC
280CDA:  MOVS            R4, #0
280CDC:  LDRSH.W         R0, [R4,#0x2A]
280CE0:  ADDS            R1, R0, #1
280CE2:  BEQ             loc_280CEE
280CE4:  LDR             R1, =(unk_6DFDA8 - 0x280CEA)
280CE6:  ADD             R1, PC; unk_6DFDA8
280CE8:  LDR.W           R0, [R1,R0,LSL#2]
280CEC:  B               loc_280CF0
280CEE:  MOVS            R0, #0
280CF0:  LDR             R1, =(aBnry - 0x280CFC); "bnry"
280CF2:  MOVS            R2, #4; size_t
280CF4:  STR             R0, [SP,#0x50+var_48]
280CF6:  MOV             R0, R5; char *
280CF8:  ADD             R1, PC; "bnry"
280CFA:  BLX             strncmp
280CFE:  CMP             R0, #0
280D00:  BEQ.W           loc_280ED6
280D04:  ADD             R0, SP, #0x50+var_2C; this
280D06:  ADD             R1, SP, #0x50+var_30; unsigned __int8 **
280D08:  BLX             j__ZN11CFileLoader8LoadLineEPPhRi; CFileLoader::LoadLine(uchar **,int &)
280D0C:  CMP             R0, #0
280D0E:  BEQ.W           loc_28106A
280D12:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x280D22)
280D14:  ADD.W           R9, SP, #0x50+var_2C
280D18:  ADD             R6, SP, #0x50+var_30
280D1A:  VLDR            S16, =150.0
280D1E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
280D20:  MOV.W           R11, #0
280D24:  MOVS            R5, #0
280D26:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
280D28:  STR             R1, [SP,#0x50+var_44]
280D2A:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280D30)
280D2C:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
280D2E:  LDR.W           R8, [R1]; CIplStore::ms_pPool ...
280D32:  LDR             R1, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x280D38)
280D34:  ADD             R1, PC; _ZN6CPools13ms_pDummyPoolE_ptr
280D36:  LDR             R1, [R1]; CPools::ms_pDummyPool ...
280D38:  STR             R1, [SP,#0x50+var_50]
280D3A:  LDR             R1, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x280D40)
280D3C:  ADD             R1, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
280D3E:  LDR             R1, [R1]; CPools::ms_pBuildingPool ...
280D40:  STR             R1, [SP,#0x50+var_4C]
280D42:  LDRB            R1, [R0]
280D44:  CMP             R1, #0
280D46:  IT NE
280D48:  CMPNE           R1, #0x23 ; '#'
280D4A:  BEQ.W           loc_280EC6
280D4E:  CBZ             R5, loc_280D9C
280D50:  CMP             R1, #0x65 ; 'e'
280D52:  BNE             loc_280D60
280D54:  LDRB            R1, [R0,#1]
280D56:  CMP             R1, #0x6E ; 'n'
280D58:  ITT EQ
280D5A:  LDRBEQ          R1, [R0,#2]; char *
280D5C:  CMPEQ           R1, #0x64 ; 'd'
280D5E:  BEQ             loc_280DB8
280D60:  CMP             R5, #1
280D62:  BNE.W           loc_280EC6
280D66:  BLX             j__ZN11CFileLoader18LoadObjectInstanceEPKc; CFileLoader::LoadObjectInstance(char const*)
280D6A:  MOV             R5, R0
280D6C:  LDR             R0, [R5,#0x34]
280D6E:  STRH.W          R10, [R5,#0x38]
280D72:  ADDS            R1, R0, #1
280D74:  BEQ             loc_280DBC
280D76:  LDR             R1, [SP,#0x50+var_48]
280D78:  LDR.W           R0, [R1,R0,LSL#2]
280D7C:  STR             R0, [R5,#0x34]
280D7E:  LDRB.W          R1, [R0,#0x3B]
280D82:  ADDS            R1, #1
280D84:  STRB.W          R1, [R0,#0x3B]
280D88:  LDR             R0, =(dword_6DFDA4 - 0x280D8E)
280D8A:  ADD             R0, PC; dword_6DFDA4
280D8C:  LDR             R0, [R0]
280D8E:  CBZ             R0, loc_280DC0
280D90:  LDR             R1, =(dword_6DFDA4 - 0x280D9A)
280D92:  STR.W           R5, [R0],#4
280D96:  ADD             R1, PC; dword_6DFDA4
280D98:  STR             R0, [R1]
280D9A:  B               loc_280DC0
280D9C:  CMP             R1, #0x69 ; 'i'
280D9E:  BNE             loc_280DB8
280DA0:  LDRB            R1, [R0,#1]
280DA2:  CMP             R1, #0x6E ; 'n'
280DA4:  BNE             loc_280DB8
280DA6:  LDRB            R1, [R0,#2]
280DA8:  CMP             R1, #0x73 ; 's'
280DAA:  BNE             loc_280DB8
280DAC:  LDRB            R0, [R0,#3]
280DAE:  MOVS            R5, #0
280DB0:  CMP             R0, #0x74 ; 't'
280DB2:  IT EQ
280DB4:  MOVEQ           R5, #1
280DB6:  B               loc_280EC6
280DB8:  MOVS            R5, #0
280DBA:  B               loc_280EC6
280DBC:  STR.W           R11, [R5,#0x34]
280DC0:  LDRSH.W         R0, [R5,#0x26]
280DC4:  LDR             R1, [SP,#0x50+var_44]
280DC6:  LDR.W           R0, [R1,R0,LSL#2]
280DCA:  VLDR            S0, [R0,#0x30]
280DCE:  VCMPE.F32       S0, S16
280DD2:  VMRS            APSR_nzcv, FPSCR
280DD6:  ITT GT
280DD8:  MOVGT           R0, #1
280DDA:  STRBGT.W        R0, [R4,#0x31]
280DDE:  LDR             R0, [R5]
280DE0:  LDR             R1, [R0,#8]
280DE2:  MOV             R0, R5
280DE4:  BLX             R1
280DE6:  LDR.W           R0, [R8]; CIplStore::ms_pPool
280DEA:  LDR             R1, [R0,#4]
280DEC:  LDRSB.W         R1, [R1,R10]
280DF0:  CMP             R1, #0
280DF2:  BLT             loc_280DFE
280DF4:  LDR             R0, [R0]
280DF6:  MOVS            R1, #0x34 ; '4'
280DF8:  MLA.W           R0, R10, R1, R0
280DFC:  B               loc_280E00
280DFE:  MOVS            R0, #0
280E00:  LDRB.W          R1, [R5,#0x3A]
280E04:  AND.W           R1, R1, #7
280E08:  CMP             R1, #5
280E0A:  BEQ             loc_280E3A
280E0C:  CMP             R1, #1
280E0E:  BNE             loc_280E62
280E10:  LDR             R1, [SP,#0x50+var_4C]
280E12:  MOV             R2, #0xEEEEEEEF
280E1A:  LDR             R1, [R1]
280E1C:  LDR             R1, [R1]
280E1E:  SUBS            R1, R5, R1
280E20:  ASRS            R1, R1, #2
280E22:  MULS            R1, R2
280E24:  LDRSH.W         R2, [R0,#0x22]
280E28:  CMP             R1, R2
280E2A:  IT LT
280E2C:  STRHLT          R1, [R0,#0x22]
280E2E:  LDRSH.W         R2, [R0,#0x24]
280E32:  CMP             R1, R2
280E34:  IT GT
280E36:  STRHGT          R1, [R0,#0x24]
280E38:  B               loc_280E62
280E3A:  LDR             R1, [SP,#0x50+var_50]
280E3C:  MOV             R2, #0xEEEEEEEF
280E44:  LDR             R1, [R1]
280E46:  LDR             R1, [R1]
280E48:  SUBS            R1, R5, R1
280E4A:  ASRS            R1, R1, #2
280E4C:  MULS            R1, R2
280E4E:  LDRSH.W         R2, [R0,#0x26]
280E52:  CMP             R1, R2
280E54:  IT LT
280E56:  STRHLT          R1, [R0,#0x26]
280E58:  LDRSH.W         R2, [R0,#0x28]
280E5C:  CMP             R1, R2
280E5E:  IT GT
280E60:  STRHGT          R1, [R0,#0x28]
280E62:  LDR             R0, [R5]
280E64:  MOV             R1, R5
280E66:  LDR             R2, [R0,#0x28]
280E68:  ADD             R0, SP, #0x50+var_40
280E6A:  BLX             R2
280E6C:  VLDR            S2, [R4]
280E70:  MOVS            R5, #1
280E72:  VLDR            S0, [SP,#0x50+var_40]
280E76:  VCMPE.F32       S0, S2
280E7A:  VMRS            APSR_nzcv, FPSCR
280E7E:  IT LT
280E80:  VSTRLT          S0, [R4]
280E84:  VLDR            S0, [SP,#0x50+var_38]
280E88:  VLDR            S2, [R4,#8]
280E8C:  VCMPE.F32       S0, S2
280E90:  VMRS            APSR_nzcv, FPSCR
280E94:  IT GT
280E96:  VSTRGT          S0, [R4,#8]
280E9A:  VLDR            S0, [SP,#0x50+var_34]
280E9E:  VLDR            S2, [R4,#0xC]
280EA2:  VCMPE.F32       S0, S2
280EA6:  VMRS            APSR_nzcv, FPSCR
280EAA:  IT LT
280EAC:  VSTRLT          S0, [R4,#0xC]
280EB0:  VLDR            S0, [SP,#0x50+var_3C]
280EB4:  VLDR            S2, [R4,#4]
280EB8:  VCMPE.F32       S0, S2
280EBC:  VMRS            APSR_nzcv, FPSCR
280EC0:  IT GT
280EC2:  VSTRGT          S0, [R4,#4]
280EC6:  MOV             R0, R9; this
280EC8:  MOV             R1, R6; unsigned __int8 **
280ECA:  BLX             j__ZN11CFileLoader8LoadLineEPPhRi; CFileLoader::LoadLine(uchar **,int &)
280ECE:  CMP             R0, #0
280ED0:  BNE.W           loc_280D42
280ED4:  B               loc_28106A
280ED6:  LDRSH.W         R0, [R5,#4]
280EDA:  CMP             R0, #1
280EDC:  BLT.W           loc_28106A
280EE0:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x280EF0)
280EE2:  MOV.W           R8, #1
280EE6:  LDR             R0, [R5,#0x1C]
280EE8:  MOV.W           R9, #0
280EEC:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
280EEE:  VLDR            S16, =150.0
280EF2:  ADD             R0, R5
280EF4:  STR             R0, [R5,#0x1C]
280EF6:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
280EF8:  STR             R1, [SP,#0x50+var_44]
280EFA:  LDR             R1, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280F00)
280EFC:  ADD             R1, PC; _ZN9CIplStore8ms_pPoolE_ptr
280EFE:  LDR.W           R11, [R1]; CIplStore::ms_pPool ...
280F02:  LDR             R1, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x280F08)
280F04:  ADD             R1, PC; _ZN6CPools13ms_pDummyPoolE_ptr
280F06:  LDR             R1, [R1]; CPools::ms_pDummyPool ...
280F08:  STR             R1, [SP,#0x50+var_4C]
280F0A:  LDR             R1, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x280F10)
280F0C:  ADD             R1, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
280F0E:  LDR             R1, [R1]; CPools::ms_pBuildingPool ...
280F10:  STR             R1, [SP,#0x50+var_50]
280F12:  B               loc_280F1E
280F14:  ADD.W           R8, R8, #1
280F18:  LDR             R0, [R5,#0x1C]
280F1A:  ADD.W           R9, R9, #0x28 ; '('
280F1E:  ADD             R0, R9
280F20:  MOVS            R1, #0
280F22:  BLX             j__ZN11CFileLoader18LoadObjectInstanceEP19CFileObjectInstancePKc; CFileLoader::LoadObjectInstance(CFileObjectInstance *,char const*)
280F26:  MOV             R6, R0
280F28:  LDR             R0, [R6,#0x34]
280F2A:  STRH.W          R10, [R6,#0x38]
280F2E:  ADDS            R1, R0, #1
280F30:  BEQ             loc_280F58
280F32:  LDR             R1, [SP,#0x50+var_48]
280F34:  LDR.W           R0, [R1,R0,LSL#2]
280F38:  STR             R0, [R6,#0x34]
280F3A:  LDRB.W          R1, [R0,#0x3B]
280F3E:  ADDS            R1, #1
280F40:  STRB.W          R1, [R0,#0x3B]
280F44:  LDR             R0, =(dword_6DFDA4 - 0x280F4A)
280F46:  ADD             R0, PC; dword_6DFDA4
280F48:  LDR             R0, [R0]
280F4A:  CBZ             R0, loc_280F5C
280F4C:  LDR             R1, =(dword_6DFDA4 - 0x280F56)
280F4E:  STR.W           R6, [R0],#4
280F52:  ADD             R1, PC; dword_6DFDA4
280F54:  STR             R0, [R1]
280F56:  B               loc_280F5C
280F58:  MOVS            R0, #0
280F5A:  STR             R0, [R6,#0x34]
280F5C:  LDRSH.W         R0, [R6,#0x26]
280F60:  LDR             R1, [SP,#0x50+var_44]
280F62:  LDR.W           R0, [R1,R0,LSL#2]
280F66:  VLDR            S0, [R0,#0x30]
280F6A:  VCMPE.F32       S0, S16
280F6E:  VMRS            APSR_nzcv, FPSCR
280F72:  ITT GT
280F74:  MOVGT           R0, #1
280F76:  STRBGT.W        R0, [R4,#0x31]
280F7A:  LDR             R0, [R6]
280F7C:  LDR             R1, [R0,#8]
280F7E:  MOV             R0, R6
280F80:  BLX             R1
280F82:  LDR.W           R0, [R11]; CIplStore::ms_pPool
280F86:  LDR             R1, [R0,#4]
280F88:  LDRSB.W         R1, [R1,R10]
280F8C:  CMP             R1, #0
280F8E:  BLT             loc_280F9A
280F90:  LDR             R0, [R0]
280F92:  MOVS            R1, #0x34 ; '4'
280F94:  MLA.W           R0, R10, R1, R0
280F98:  B               loc_280F9C
280F9A:  MOVS            R0, #0
280F9C:  LDRB.W          R1, [R6,#0x3A]
280FA0:  AND.W           R1, R1, #7
280FA4:  CMP             R1, #5
280FA6:  BEQ             loc_280FD6
280FA8:  CMP             R1, #1
280FAA:  BNE             loc_280FFE
280FAC:  LDR             R1, [SP,#0x50+var_50]
280FAE:  MOV             R2, #0xEEEEEEEF
280FB6:  LDR             R1, [R1]
280FB8:  LDR             R1, [R1]
280FBA:  SUBS            R1, R6, R1
280FBC:  ASRS            R1, R1, #2
280FBE:  MULS            R1, R2
280FC0:  LDRSH.W         R2, [R0,#0x22]
280FC4:  CMP             R1, R2
280FC6:  IT LT
280FC8:  STRHLT          R1, [R0,#0x22]
280FCA:  LDRSH.W         R2, [R0,#0x24]
280FCE:  CMP             R1, R2
280FD0:  IT GT
280FD2:  STRHGT          R1, [R0,#0x24]
280FD4:  B               loc_280FFE
280FD6:  LDR             R1, [SP,#0x50+var_4C]
280FD8:  MOV             R2, #0xEEEEEEEF
280FE0:  LDR             R1, [R1]
280FE2:  LDR             R1, [R1]
280FE4:  SUBS            R1, R6, R1
280FE6:  ASRS            R1, R1, #2
280FE8:  MULS            R1, R2
280FEA:  LDRSH.W         R2, [R0,#0x26]
280FEE:  CMP             R1, R2
280FF0:  IT LT
280FF2:  STRHLT          R1, [R0,#0x26]
280FF4:  LDRSH.W         R2, [R0,#0x28]
280FF8:  CMP             R1, R2
280FFA:  IT GT
280FFC:  STRHGT          R1, [R0,#0x28]
280FFE:  LDR             R0, [R6]
281000:  MOV             R1, R6
281002:  LDR             R2, [R0,#0x28]
281004:  ADD             R0, SP, #0x50+var_40
281006:  BLX             R2
281008:  VLDR            S2, [R4]
28100C:  VLDR            S0, [SP,#0x50+var_40]
281010:  VCMPE.F32       S0, S2
281014:  VMRS            APSR_nzcv, FPSCR
281018:  IT LT
28101A:  VSTRLT          S0, [R4]
28101E:  VLDR            S0, [SP,#0x50+var_38]
281022:  VLDR            S2, [R4,#8]
281026:  VCMPE.F32       S0, S2
28102A:  VMRS            APSR_nzcv, FPSCR
28102E:  IT GT
281030:  VSTRGT          S0, [R4,#8]
281034:  VLDR            S0, [SP,#0x50+var_34]
281038:  VLDR            S2, [R4,#0xC]
28103C:  VCMPE.F32       S0, S2
281040:  VMRS            APSR_nzcv, FPSCR
281044:  IT LT
281046:  VSTRLT          S0, [R4,#0xC]
28104A:  VLDR            S0, [SP,#0x50+var_3C]
28104E:  VLDR            S2, [R4,#4]
281052:  VCMPE.F32       S0, S2
281056:  VMRS            APSR_nzcv, FPSCR
28105A:  IT GT
28105C:  VSTRGT          S0, [R4,#4]
281060:  LDRSH.W         R0, [R5,#4]
281064:  CMP             R8, R0
281066:  BCC.W           loc_280F14
28106A:  MOVS            R0, #1
28106C:  ADD             SP, SP, #0x28 ; '('
28106E:  VPOP            {D8}
281072:  ADD             SP, SP, #4
281074:  POP.W           {R8-R11}
281078:  POP             {R4-R7,PC}
