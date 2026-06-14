; =========================================================
; Game Engine Function: sub_215C48
; Address            : 0x215C48 - 0x2165F4
; =========================================================

215C48:  PUSH            {R4-R7,LR}
215C4A:  ADD             R7, SP, #0xC
215C4C:  PUSH.W          {R8}
215C50:  SUB             SP, SP, #0x18
215C52:  MOV             R4, R0
215C54:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x215C5C)
215C58:  ADD             R0, PC; __stack_chk_guard_ptr
215C5A:  LDR             R0, [R0]; __stack_chk_guard
215C5C:  LDR             R0, [R0]
215C5E:  STR             R0, [SP,#0x28+var_14]
215C60:  MOVS            R0, #0
215C62:  LDRD.W          R1, R2, [R4]
215C66:  STR             R0, [SP,#0x28+var_24]
215C68:  SUBS            R0, R2, R1
215C6A:  BEQ.W           def_215C7A; jumptable 00215C7A default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
215C6E:  LDRB            R3, [R1]
215C70:  SUB.W           R5, R3, #0x41 ; 'A'; switch 58 cases
215C74:  CMP             R5, #0x39 ; '9'
215C76:  BHI.W           def_215C7A; jumptable 00215C7A default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
215C7A:  TBH.W           [PC,R5,LSL#1]; switch jump
215C7E:  DCW 0x6E; jump table for switch statement
215C80:  DCW 0x182
215C82:  DCW 0x84
215C84:  DCW 0x98
215C86:  DCW 0x182
215C88:  DCW 0xCE
215C8A:  DCW 0xD2
215C8C:  DCW 0x182
215C8E:  DCW 0x182
215C90:  DCW 0x182
215C92:  DCW 0x3A
215C94:  DCW 0x182
215C96:  DCW 0xEE
215C98:  DCW 0x182
215C9A:  DCW 0x116
215C9C:  DCW 0x121
215C9E:  DCW 0x182
215CA0:  DCW 0x13C
215CA2:  DCW 0x14D
215CA4:  DCW 0x173
215CA6:  DCW 0x6A
215CA8:  DCW 0x3A
215CAA:  DCW 0x182
215CAC:  DCW 0x182
215CAE:  DCW 0x182
215CB0:  DCW 0x182
215CB2:  DCW 0x182
215CB4:  DCW 0x182
215CB6:  DCW 0x182
215CB8:  DCW 0x182
215CBA:  DCW 0x182
215CBC:  DCW 0x182
215CBE:  DCW 0x191
215CC0:  DCW 0x19F
215CC2:  DCW 0x1AD
215CC4:  DCW 0x1BB
215CC6:  DCW 0x1C7
215CC8:  DCW 0x1DC
215CCA:  DCW 0x1EA
215CCC:  DCW 0x1FF
215CCE:  DCW 0x20D
215CD0:  DCW 0x21B
215CD2:  DCW 0x182
215CD4:  DCW 0x230
215CD6:  DCW 0x265
215CD8:  DCW 0x27A
215CDA:  DCW 0x28F
215CDC:  DCW 0x182
215CDE:  DCW 0x182
215CE0:  DCW 0x3A
215CE2:  DCW 0x2A4
215CE4:  DCW 0x2B9
215CE6:  DCW 0x2CE
215CE8:  DCW 0x2DF
215CEA:  DCW 0x2F4
215CEC:  DCW 0x309
215CEE:  DCW 0x31E
215CF0:  DCW 0x332
215CF2:  SUB.W           R2, R3, #0x72 ; 'r'; jumptable 00215C7A cases 75,86,114
215CF6:  CLZ.W           R2, R2
215CFA:  LSRS            R2, R2, #5
215CFC:  CMP             R0, R2
215CFE:  BLS             loc_215D10
215D00:  MOVS            R6, #1
215D02:  LDRB            R5, [R1,R2]
215D04:  CMP             R3, #0x72 ; 'r'
215D06:  IT EQ
215D08:  MOVEQ           R6, #2
215D0A:  CMP             R5, #0x56 ; 'V'
215D0C:  IT EQ
215D0E:  MOVEQ           R2, R6
215D10:  CMP             R0, R2
215D12:  BLS             loc_215D1C
215D14:  LDRB            R3, [R1,R2]
215D16:  CMP             R3, #0x4B ; 'K'
215D18:  IT EQ
215D1A:  ADDEQ           R2, #1
215D1C:  CMP             R0, R2
215D1E:  BLS             loc_215D52; jumptable 00215C7A case 85
215D20:  LDRB            R3, [R1,R2]
215D22:  CMP             R3, #0x46 ; 'F'
215D24:  BEQ.W           loc_215E1A; jumptable 00215C7A case 70
215D28:  CMP             R3, #0x44 ; 'D'
215D2A:  BNE             loc_215D52; jumptable 00215C7A case 85
215D2C:  ADDS            R2, #1
215D2E:  CMP             R0, R2
215D30:  BLS             loc_215D52; jumptable 00215C7A case 85
215D32:  LDRB            R0, [R1,R2]
215D34:  SUB.W           R1, R0, #0x6F ; 'o'
215D38:  CMP             R1, #9
215D3A:  BHI             loc_215D4C
215D3C:  MOVS            R2, #1
215D3E:  LSL.W           R1, R2, R1
215D42:  MOVW            R2, #0x301
215D46:  TST             R1, R2
215D48:  BNE.W           loc_215E1A; jumptable 00215C7A case 70
215D4C:  CMP             R0, #0x4F ; 'O'
215D4E:  BEQ.W           loc_215E1A; jumptable 00215C7A case 70
215D52:  MOV             R0, R4; jumptable 00215C7A case 85
215D54:  BL              sub_21CFAC
215D58:  B               loc_215F88
215D5A:  CMP             R1, R2; jumptable 00215C7A case 65
215D5C:  BEQ.W           loc_2165EE
215D60:  ADDS            R0, R1, #1
215D62:  STR             R0, [R4]
215D64:  CMP             R2, R0
215D66:  BEQ.W           loc_216350
215D6A:  LDRB            R0, [R0]
215D6C:  SUB.W           R2, R0, #0x3A ; ':'
215D70:  CMN.W           R2, #0xA
215D74:  BCS.W           loc_216368
215D78:  CMP             R0, #0x5F ; '_'
215D7A:  BNE.W           loc_216350
215D7E:  ADDS            R0, R1, #2
215D80:  MOV.W           R8, #0
215D84:  B               loc_216394
215D86:  ADDS            R0, R1, #1; jumptable 00215C7A case 67
215D88:  STR             R0, [R4]
215D8A:  MOV             R0, R4
215D8C:  BL              sub_215C48
215D90:  CMP             R0, #0
215D92:  BEQ.W           loc_2164A2
215D96:  MOV             R5, R0
215D98:  ADD.W           R0, R4, #0x198
215D9C:  MOVS            R1, #0x14
215D9E:  BL              sub_216EF0
215DA2:  LDR             R2, =(aComplex - 0x215DAA); " complex" ...
215DA4:  LDR             R1, =0x1010105
215DA6:  ADD             R2, PC; " complex"
215DA8:  ADD.W           R3, R2, #8
215DAC:  B               loc_215E48
215DAE:  CMP             R0, #2; jumptable 00215C7A case 68
215DB0:  BCC.W           loc_2164A2
215DB4:  LDRB            R0, [R1,#1]
215DB6:  SUB.W           R2, R0, #0x4F ; 'O'; switch 42 cases
215DBA:  MOVS            R0, #0
215DBC:  CMP             R2, #0x29 ; ')'
215DBE:  BHI.W           def_215DC2; jumptable 00215DC2 default case, cases 80-83,85-96,98,103,106-109,113,114
215DC2:  TBH.W           [PC,R2,LSL#1]; switch jump
215DC6:  DCW 0x2A; jump table for switch statement
215DC8:  DCW 0x36F
215DCA:  DCW 0x36F
215DCC:  DCW 0x36F
215DCE:  DCW 0x36F
215DD0:  DCW 0x2FE
215DD2:  DCW 0x36F
215DD4:  DCW 0x36F
215DD6:  DCW 0x36F
215DD8:  DCW 0x36F
215DDA:  DCW 0x36F
215DDC:  DCW 0x36F
215DDE:  DCW 0x36F
215DE0:  DCW 0x36F
215DE2:  DCW 0x36F
215DE4:  DCW 0x36F
215DE6:  DCW 0x36F
215DE8:  DCW 0x36F
215DEA:  DCW 0x302
215DEC:  DCW 0x36F
215DEE:  DCW 0x30E
215DF0:  DCW 0x31A
215DF2:  DCW 0x326
215DF4:  DCW 0x332
215DF6:  DCW 0x36F
215DF8:  DCW 0x33E
215DFA:  DCW 0x34A
215DFC:  DCW 0x36F
215DFE:  DCW 0x36F
215E00:  DCW 0x36F
215E02:  DCW 0x36F
215E04:  DCW 0x356
215E06:  DCW 0x2A
215E08:  DCW 0x362
215E0A:  DCW 0x36F
215E0C:  DCW 0x36F
215E0E:  DCW 0x37C
215E10:  DCW 0x2FE
215E12:  DCW 0x388
215E14:  DCW 0x3A1
215E16:  DCW 0x2A
215E18:  DCW 0x2A
215E1A:  MOV             R0, R4; jumptable 00215C7A case 70
215E1C:  BL              sub_21CD74
215E20:  B               loc_215F88
215E22:  ADDS            R0, R1, #1; jumptable 00215C7A case 71
215E24:  STR             R0, [R4]
215E26:  MOV             R0, R4
215E28:  BL              sub_215C48
215E2C:  CMP             R0, #0
215E2E:  BEQ.W           loc_2164A2
215E32:  MOV             R5, R0
215E34:  ADD.W           R0, R4, #0x198
215E38:  MOVS            R1, #0x14
215E3A:  BL              sub_216EF0
215E3E:  LDR             R2, =(aImaginary - 0x215E46); " imaginary" ...
215E40:  LDR             R1, =0x1010105
215E42:  ADD             R2, PC; " imaginary"
215E44:  ADD.W           R3, R2, #0xA
215E48:  LDR             R6, =(_ZTVN12_GLOBAL__N_116itanium_demangle20PostfixQualifiedTypeE - 0x215E4E); `vtable for'`anonymous namespace'::itanium_demangle::PostfixQualifiedType ...
215E4A:  ADD             R6, PC; `vtable for'`anonymous namespace'::itanium_demangle::PostfixQualifiedType
215E4C:  ADDS            R6, #8
215E4E:  STR             R6, [R0]
215E50:  STR             R1, [R0,#4]
215E52:  STR             R5, [R0,#8]
215E54:  STR             R2, [R0,#0xC]
215E56:  STR             R3, [R0,#0x10]
215E58:  B               loc_216238
215E5A:  CMP             R1, R2; jumptable 00215C7A case 77
215E5C:  BEQ.W           loc_2165EE
215E60:  ADDS            R0, R1, #1
215E62:  STR             R0, [R4]
215E64:  MOV             R0, R4
215E66:  BL              sub_215C48
215E6A:  CMP             R0, #0
215E6C:  BEQ.W           loc_2165EE
215E70:  MOV             R6, R0
215E72:  MOV             R0, R4
215E74:  BL              sub_215C48
215E78:  CMP             R0, #0
215E7A:  BEQ.W           loc_2165EE
215E7E:  MOV             R8, R0
215E80:  ADD.W           R0, R4, #0x198
215E84:  MOVS            R1, #0x10
215E86:  BL              sub_216EF0
215E8A:  MOV             R5, R0
215E8C:  MOVW            R0, #0x101
215E90:  STRH            R0, [R5,#6]
215E92:  MOVS            R0, #0xD
215E94:  STRB            R0, [R5,#4]
215E96:  STRD.W          R6, R8, [R5,#8]
215E9A:  LDR             R0, =(_ZTVN12_GLOBAL__N_116itanium_demangle19PointerToMemberTypeE - 0x215EA0); `vtable for'`anonymous namespace'::itanium_demangle::PointerToMemberType ...
215E9C:  ADD             R0, PC; `vtable for'`anonymous namespace'::itanium_demangle::PointerToMemberType
215E9E:  ADDS            R0, #8
215EA0:  STR             R0, [R5]
215EA2:  LDRB.W          R0, [R8,#5]
215EA6:  STRB            R0, [R5,#5]
215EA8:  B               loc_2165F0
215EAA:  ADDS            R0, R1, #1; jumptable 00215C7A case 79
215EAC:  STR             R0, [R4]
215EAE:  MOV             R0, R4
215EB0:  BL              sub_215C48
215EB4:  CMP             R0, #0
215EB6:  STR             R0, [SP,#0x28+var_1C]
215EB8:  BEQ.W           loc_2164A2
215EBC:  MOVS            R0, #1
215EBE:  B               loc_215F0A
215EC0:  ADDS            R0, R1, #1; jumptable 00215C7A case 80
215EC2:  STR             R0, [R4]
215EC4:  MOV             R0, R4
215EC6:  BL              sub_215C48
215ECA:  CMP             R0, #0
215ECC:  BEQ.W           loc_2164A2
215ED0:  MOV             R5, R0
215ED2:  ADD.W           R0, R4, #0x198
215ED6:  MOVS            R1, #0xC
215ED8:  BL              sub_216EF0
215EDC:  MOVW            R1, #0x101
215EE0:  STR             R5, [R0,#8]
215EE2:  STRH            R1, [R0,#6]
215EE4:  MOVS            R1, #0xB
215EE6:  STRB            R1, [R0,#4]
215EE8:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle11PointerTypeE - 0x215EEE); `vtable for'`anonymous namespace'::itanium_demangle::PointerType ...
215EEA:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::PointerType
215EEC:  ADDS            R1, #8
215EEE:  STR             R1, [R0]
215EF0:  LDRB            R1, [R5,#5]
215EF2:  STRB            R1, [R0,#5]
215EF4:  B               loc_216238
215EF6:  ADDS            R0, R1, #1; jumptable 00215C7A case 82
215EF8:  STR             R0, [R4]
215EFA:  MOV             R0, R4
215EFC:  BL              sub_215C48
215F00:  CMP             R0, #0
215F02:  STR             R0, [SP,#0x28+var_1C]
215F04:  BEQ.W           loc_2164A2
215F08:  MOVS            R0, #0
215F0A:  STR             R0, [SP,#0x28+var_20]
215F0C:  ADD             R1, SP, #0x28+var_1C
215F0E:  ADD             R2, SP, #0x28+var_20
215F10:  MOV             R0, R4
215F12:  BL              sub_21D204
215F16:  B               loc_216238
215F18:  CMP             R0, #2; jumptable 00215C7A case 83
215F1A:  BCC             def_215C7A; jumptable 00215C7A default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
215F1C:  LDRB            R0, [R1,#1]
215F1E:  CBZ             R0, def_215C7A; jumptable 00215C7A default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
215F20:  CMP             R0, #0x74 ; 't'
215F22:  BEQ             def_215C7A; jumptable 00215C7A default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
215F24:  MOV             R0, R4
215F26:  BL              sub_21700C
215F2A:  CMP             R0, #0
215F2C:  STR             R0, [SP,#0x28+var_1C]
215F2E:  BEQ.W           def_215DC2; jumptable 00215DC2 default case, cases 80-83,85-96,98,103,106-109,113,114
215F32:  LDRB.W          R1, [R4,#0x184]
215F36:  CMP             R1, #0
215F38:  BEQ.W           def_215DC2; jumptable 00215DC2 default case, cases 80-83,85-96,98,103,106-109,113,114
215F3C:  LDRD.W          R1, R2, [R4]
215F40:  CMP             R2, R1
215F42:  BEQ.W           def_215DC2; jumptable 00215DC2 default case, cases 80-83,85-96,98,103,106-109,113,114
215F46:  LDRB            R1, [R1]
215F48:  CMP             R1, #0x49 ; 'I'
215F4A:  BNE.W           def_215DC2; jumptable 00215DC2 default case, cases 80-83,85-96,98,103,106-109,113,114
215F4E:  MOV             R0, R4
215F50:  MOVS            R1, #0
215F52:  BL              sub_217130
215F56:  CMP             R0, #0
215F58:  STR             R0, [SP,#0x28+var_20]
215F5A:  BEQ.W           loc_2164A2
215F5E:  ADD             R1, SP, #0x28+var_1C
215F60:  ADD             R2, SP, #0x28+var_20
215F62:  B               loc_216348
215F64:  CMP             R0, #2; jumptable 00215C7A case 84
215F66:  BCC.W           loc_21630A
215F6A:  LDRB            R0, [R1,#1]
215F6C:  SUBS            R0, #0x65 ; 'e'
215F6E:  CMP             R0, #0x10
215F70:  BHI.W           loc_21630A
215F74:  MOVS            R1, #1
215F76:  LSL.W           R0, R1, R0
215F7A:  LDR             R1, =0x14001
215F7C:  TST             R0, R1
215F7E:  BEQ.W           loc_21630A
215F82:  MOV             R0, R4; jumptable 00215C7A default case, cases 66,69,72-74,76,78,81,87-96,107,112,113
215F84:  BL              sub_21D14C
215F88:  MOV             R5, R0
215F8A:  STR             R0, [SP,#0x28+var_24]
215F8C:  CMP             R5, #0
215F8E:  BEQ.W           loc_2164A2
215F92:  ADD.W           R0, R4, #0x94
215F96:  ADD             R1, SP, #0x28+var_24
215F98:  BL              sub_216CEC
215F9C:  LDR             R0, [SP,#0x28+var_24]
215F9E:  B               def_215DC2; jumptable 00215DC2 default case, cases 80-83,85-96,98,103,106-109,113,114
215FA0:  ADDS            R0, R1, #1; jumptable 00215C7A case 97
215FA2:  STR             R0, [R4]
215FA4:  LDR             R0, [SP,#0x28+var_14]
215FA6:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x215FAE)
215FAA:  ADD             R1, PC; __stack_chk_guard_ptr
215FAC:  LDR             R1, [R1]; __stack_chk_guard
215FAE:  LDR             R1, [R1]
215FB0:  CMP             R1, R0
215FB2:  BNE.W           loc_2164BA
215FB6:  LDR             R1, =(aSignedChar - 0x215FBC); "signed char" ...
215FB8:  ADD             R1, PC; "signed char"
215FBA:  B               loc_216026
215FBC:  ADDS            R0, R1, #1; jumptable 00215C7A case 98
215FBE:  STR             R0, [R4]
215FC0:  LDR             R0, [SP,#0x28+var_14]
215FC2:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x215FCA)
215FC6:  ADD             R1, PC; __stack_chk_guard_ptr
215FC8:  LDR             R1, [R1]; __stack_chk_guard
215FCA:  LDR             R1, [R1]
215FCC:  CMP             R1, R0
215FCE:  BNE.W           loc_2164BA
215FD2:  LDR             R1, =(aBool - 0x215FD8); "bool" ...
215FD4:  ADD             R1, PC; "bool"
215FD6:  B               loc_216256
215FD8:  ADDS            R0, R1, #1; jumptable 00215C7A case 99
215FDA:  STR             R0, [R4]
215FDC:  LDR             R0, [SP,#0x28+var_14]
215FDE:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x215FE6)
215FE2:  ADD             R1, PC; __stack_chk_guard_ptr
215FE4:  LDR             R1, [R1]; __stack_chk_guard
215FE6:  LDR             R1, [R1]
215FE8:  CMP             R1, R0
215FEA:  BNE.W           loc_2164BA
215FEE:  LDR             R1, =(aChar - 0x215FF4); "char" ...
215FF0:  ADD             R1, PC; "char"
215FF2:  B               loc_216256
215FF4:  ADDS            R0, R1, #1; jumptable 00215C7A case 100
215FF6:  STR             R0, [R4]
215FF8:  ADD.W           R0, R4, #0x198
215FFC:  MOVS            R1, #0x10
215FFE:  BL              sub_216EF0
216002:  LDR             R2, =(aDouble - 0x21600A); "double" ...
216004:  LDR             R1, =0x1010107
216006:  ADD             R2, PC; "double"
216008:  ADDS            R3, R2, #6
21600A:  B               loc_2162D2
21600C:  ADDS            R0, R1, #1; jumptable 00215C7A case 101
21600E:  STR             R0, [R4]
216010:  LDR             R0, [SP,#0x28+var_14]
216012:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21601A)
216016:  ADD             R1, PC; __stack_chk_guard_ptr
216018:  LDR             R1, [R1]; __stack_chk_guard
21601A:  LDR             R1, [R1]
21601C:  CMP             R1, R0
21601E:  BNE.W           loc_2164BA
216022:  LDR             R1, =(aLongDouble - 0x216028); "long double" ...
216024:  ADD             R1, PC; "long double"
216026:  MOV             R0, R4
216028:  ADD             SP, SP, #0x18
21602A:  POP.W           {R8}
21602E:  POP.W           {R4-R7,LR}
216032:  B.W             sub_21C0F4
216036:  ADDS            R0, R1, #1; jumptable 00215C7A case 102
216038:  STR             R0, [R4]
21603A:  LDR             R0, [SP,#0x28+var_14]
21603C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x216044)
216040:  ADD             R1, PC; __stack_chk_guard_ptr
216042:  LDR             R1, [R1]; __stack_chk_guard
216044:  LDR             R1, [R1]
216046:  CMP             R1, R0
216048:  BNE.W           loc_2164BA
21604C:  LDR             R1, =(aFloat - 0x216052); "float" ...
21604E:  ADD             R1, PC; "float"
216050:  B               loc_2161E0
216052:  ADDS            R0, R1, #1; jumptable 00215C7A case 103
216054:  STR             R0, [R4]
216056:  LDR             R0, [SP,#0x28+var_14]
216058:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x216060)
21605C:  ADD             R1, PC; __stack_chk_guard_ptr
21605E:  LDR             R1, [R1]; __stack_chk_guard
216060:  LDR             R1, [R1]
216062:  CMP             R1, R0
216064:  BNE.W           loc_2164BA
216068:  LDR             R1, =(aFloat128 - 0x21606E); "__float128" ...
21606A:  ADD             R1, PC; "__float128"
21606C:  MOV             R0, R4
21606E:  ADD             SP, SP, #0x18
216070:  POP.W           {R8}
216074:  POP.W           {R4-R7,LR}
216078:  B.W             sub_21C020
21607C:  ADDS            R0, R1, #1; jumptable 00215C7A case 104
21607E:  STR             R0, [R4]
216080:  LDR             R0, [SP,#0x28+var_14]
216082:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21608A)
216086:  ADD             R1, PC; __stack_chk_guard_ptr
216088:  LDR             R1, [R1]; __stack_chk_guard
21608A:  LDR             R1, [R1]
21608C:  CMP             R1, R0
21608E:  BNE.W           loc_2164BA
216092:  LDR             R1, =(aUnsignedChar - 0x216098); "unsigned char" ...
216094:  ADD             R1, PC; "unsigned char"
216096:  B               loc_216162
216098:  ADDS            R0, R1, #1; jumptable 00215C7A case 105
21609A:  STR             R0, [R4]
21609C:  LDR             R0, [SP,#0x28+var_14]
21609E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2160A6)
2160A2:  ADD             R1, PC; __stack_chk_guard_ptr
2160A4:  LDR             R1, [R1]; __stack_chk_guard
2160A6:  LDR             R1, [R1]
2160A8:  CMP             R1, R0
2160AA:  BNE.W           loc_2164BA
2160AE:  LDR             R1, =(aInt - 0x2160B4); "int" ...
2160B0:  ADD             R1, PC; "int"
2160B2:  B               loc_2162FA
2160B4:  ADDS            R0, R1, #1; jumptable 00215C7A case 106
2160B6:  STR             R0, [R4]
2160B8:  LDR             R0, [SP,#0x28+var_14]
2160BA:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2160C2)
2160BE:  ADD             R1, PC; __stack_chk_guard_ptr
2160C0:  LDR             R1, [R1]; __stack_chk_guard
2160C2:  LDR             R1, [R1]
2160C4:  CMP             R1, R0
2160C6:  BNE.W           loc_2164BA
2160CA:  LDR             R1, =(aUnsignedInt - 0x2160D2); "unsigned int" ...
2160CC:  MOV             R0, R4
2160CE:  ADD             R1, PC; "unsigned int"
2160D0:  ADD             SP, SP, #0x18
2160D2:  POP.W           {R8}
2160D6:  POP.W           {R4-R7,LR}
2160DA:  B.W             sub_21C164
2160DE:  ADDS            R0, R1, #1; jumptable 00215C7A case 108
2160E0:  STR             R0, [R4]
2160E2:  LDR             R0, [SP,#0x28+var_14]
2160E4:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2160EC)
2160E8:  ADD             R1, PC; __stack_chk_guard_ptr
2160EA:  LDR             R1, [R1]; __stack_chk_guard
2160EC:  LDR             R1, [R1]
2160EE:  CMP             R1, R0
2160F0:  BNE.W           loc_2164BA
2160F4:  LDR             R1, =(aLong - 0x2160FA); "long" ...
2160F6:  ADD             R1, PC; "long"
2160F8:  B               loc_216256
2160FA:  ALIGN 4
2160FC:  DCD aComplex - 0x215DAA
216100:  DCD 0x1010105
216104:  DCD aImaginary - 0x215E46
216108:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle20PostfixQualifiedTypeE - 0x215E4E
21610C:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle19PointerToMemberTypeE - 0x215EA0
216110:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle11PointerTypeE - 0x215EEE
216114:  DCD 0x14001
216118:  DCD aSignedChar - 0x215FBC
21611C:  DCD aBool - 0x215FD8
216120:  DCD aChar - 0x215FF4
216124:  DCD aDouble - 0x21600A
216128:  DCD 0x1010107
21612C:  DCD aLongDouble - 0x216028
216130:  DCD aFloat - 0x216052
216134:  DCD aFloat128 - 0x21606E
216138:  DCD aUnsignedChar - 0x216098
21613C:  DCD aInt - 0x2160B4
216140:  DCD aUnsignedInt - 0x2160D2
216144:  DCD aLong - 0x2160FA
216148:  ADDS            R0, R1, #1; jumptable 00215C7A case 109
21614A:  STR             R0, [R4]
21614C:  LDR             R0, [SP,#0x28+var_14]
21614E:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x216156)
216152:  ADD             R1, PC; __stack_chk_guard_ptr
216154:  LDR             R1, [R1]; __stack_chk_guard
216156:  LDR             R1, [R1]
216158:  CMP             R1, R0
21615A:  BNE.W           loc_2164BA
21615E:  LDR             R1, =(aUnsignedLong - 0x216164); "unsigned long" ...
216160:  ADD             R1, PC; "unsigned long"
216162:  MOV             R0, R4
216164:  ADD             SP, SP, #0x18
216166:  POP.W           {R8}
21616A:  POP.W           {R4-R7,LR}
21616E:  B.W             sub_21D0DC
216172:  ADDS            R0, R1, #1; jumptable 00215C7A case 110
216174:  STR             R0, [R4]
216176:  LDR             R0, [SP,#0x28+var_14]
216178:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x216180)
21617C:  ADD             R1, PC; __stack_chk_guard_ptr
21617E:  LDR             R1, [R1]; __stack_chk_guard
216180:  LDR             R1, [R1]
216182:  CMP             R1, R0
216184:  BNE.W           loc_2164BA
216188:  LDR             R1, =(aInt128 - 0x21618E); "__int128" ...
21618A:  ADD             R1, PC; "__int128"
21618C:  MOV             R0, R4
21618E:  ADD             SP, SP, #0x18
216190:  POP.W           {R8}
216194:  POP.W           {R4-R7,LR}
216198:  B.W             sub_21D114
21619C:  ADDS            R0, R1, #1; jumptable 00215C7A case 111
21619E:  STR             R0, [R4]
2161A0:  LDR             R0, [SP,#0x28+var_14]
2161A2:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2161AA)
2161A6:  ADD             R1, PC; __stack_chk_guard_ptr
2161A8:  LDR             R1, [R1]; __stack_chk_guard
2161AA:  LDR             R1, [R1]
2161AC:  CMP             R1, R0
2161AE:  BNE.W           loc_2164BA
2161B2:  LDR             R1, =(aUnsignedInt128 - 0x2161BA); "unsigned __int128" ...
2161B4:  MOV             R0, R4
2161B6:  ADD             R1, PC; "unsigned __int128"
2161B8:  ADD             SP, SP, #0x18
2161BA:  POP.W           {R8}
2161BE:  POP.W           {R4-R7,LR}
2161C2:  B.W             sub_21C0BC
2161C6:  ADDS            R0, R1, #1; jumptable 00215C7A case 115
2161C8:  STR             R0, [R4]
2161CA:  LDR             R0, [SP,#0x28+var_14]
2161CC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2161D4)
2161D0:  ADD             R1, PC; __stack_chk_guard_ptr
2161D2:  LDR             R1, [R1]; __stack_chk_guard
2161D4:  LDR             R1, [R1]
2161D6:  CMP             R1, R0
2161D8:  BNE.W           loc_2164BA
2161DC:  LDR             R1, =(aShort - 0x2161E2); "short" ...
2161DE:  ADD             R1, PC; "short"
2161E0:  MOV             R0, R4
2161E2:  ADD             SP, SP, #0x18
2161E4:  POP.W           {R8}
2161E8:  POP.W           {R4-R7,LR}
2161EC:  B.W             sub_219F4C
2161F0:  ADDS            R0, R1, #1; jumptable 00215C7A case 116
2161F2:  STR             R0, [R4]
2161F4:  LDR             R0, [SP,#0x28+var_14]
2161F6:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x2161FE)
2161FA:  ADD             R1, PC; __stack_chk_guard_ptr
2161FC:  LDR             R1, [R1]; __stack_chk_guard
2161FE:  LDR             R1, [R1]
216200:  CMP             R1, R0
216202:  BNE.W           loc_2164BA
216206:  LDR             R1, =(aUnsignedShort - 0x21620C); "unsigned short" ...
216208:  ADD             R1, PC; "unsigned short"
21620A:  MOV             R0, R4
21620C:  ADD             SP, SP, #0x18
21620E:  POP.W           {R8}
216212:  POP.W           {R4-R7,LR}
216216:  B.W             sub_21C12C
21621A:  ADDS            R0, R1, #1; jumptable 00215C7A case 117
21621C:  STR             R0, [R4]
21621E:  ADD             R0, SP, #0x28+var_1C
216220:  MOV             R1, R4
216222:  BL              sub_21C7E4
216226:  LDRD.W          R0, R1, [SP,#0x28+var_1C]
21622A:  CMP             R0, R1
21622C:  BEQ.W           loc_2164A2
216230:  ADD             R1, SP, #0x28+var_1C
216232:  MOV             R0, R4
216234:  BL              sub_21B664
216238:  STR             R0, [SP,#0x28+var_24]
21623A:  B               loc_215F92
21623C:  ADDS            R0, R1, #1; jumptable 00215C7A case 118
21623E:  STR             R0, [R4]
216240:  LDR             R0, [SP,#0x28+var_14]
216242:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21624A)
216246:  ADD             R1, PC; __stack_chk_guard_ptr
216248:  LDR             R1, [R1]; __stack_chk_guard
21624A:  LDR             R1, [R1]
21624C:  CMP             R1, R0
21624E:  BNE.W           loc_2164BA
216252:  LDR             R1, =(aVoid - 0x216258); "void" ...
216254:  ADD             R1, PC; "void"
216256:  MOV             R0, R4
216258:  ADD             SP, SP, #0x18
21625A:  POP.W           {R8}
21625E:  POP.W           {R4-R7,LR}
216262:  B.W             sub_2179C0
216266:  ADDS            R0, R1, #1; jumptable 00215C7A case 119
216268:  STR             R0, [R4]
21626A:  LDR             R0, [SP,#0x28+var_14]
21626C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x216274)
216270:  ADD             R1, PC; __stack_chk_guard_ptr
216272:  LDR             R1, [R1]; __stack_chk_guard
216274:  LDR             R1, [R1]
216276:  CMP             R1, R0
216278:  BNE.W           loc_2164BA
21627C:  LDR             R1, =(aWcharT - 0x216282); "wchar_t" ...
21627E:  ADD             R1, PC; "wchar_t"
216280:  MOV             R0, R4
216282:  ADD             SP, SP, #0x18
216284:  POP.W           {R8}
216288:  POP.W           {R4-R7,LR}
21628C:  B.W             sub_21A068
216290:  ADDS            R0, R1, #1; jumptable 00215C7A case 120
216292:  STR             R0, [R4]
216294:  LDR             R0, [SP,#0x28+var_14]
216296:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x21629E)
21629A:  ADD             R1, PC; __stack_chk_guard_ptr
21629C:  LDR             R1, [R1]; __stack_chk_guard
21629E:  LDR             R1, [R1]
2162A0:  CMP             R1, R0
2162A2:  BNE.W           loc_2164BA
2162A6:  LDR             R1, =(aLongLong - 0x2162AC); "long long" ...
2162A8:  ADD             R1, PC; "long long"
2162AA:  MOV             R0, R4
2162AC:  ADD             SP, SP, #0x18
2162AE:  POP.W           {R8}
2162B2:  POP.W           {R4-R7,LR}
2162B6:  B.W             sub_21C058
2162BA:  ADDS            R0, R1, #1; jumptable 00215C7A case 121
2162BC:  STR             R0, [R4]
2162BE:  ADD.W           R0, R4, #0x198
2162C2:  MOVS            R1, #0x10
2162C4:  BL              sub_216EF0
2162C8:  LDR             R2, =(aUnsignedLongLo - 0x2162D0); "unsigned long long" ...
2162CA:  LDR             R1, =0x1010107
2162CC:  ADD             R2, PC; "unsigned long long"
2162CE:  ADD.W           R3, R2, #0x12
2162D2:  LDR             R4, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x2162D8); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
2162D4:  ADD             R4, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
2162D6:  ADDS            R4, #8
2162D8:  STR             R4, [R0]
2162DA:  STR             R1, [R0,#4]
2162DC:  STR             R2, [R0,#8]
2162DE:  STR             R3, [R0,#0xC]
2162E0:  B               def_215DC2; jumptable 00215DC2 default case, cases 80-83,85-96,98,103,106-109,113,114
2162E2:  ADDS            R0, R1, #1; jumptable 00215C7A case 122
2162E4:  STR             R0, [R4]
2162E6:  LDR             R0, [SP,#0x28+var_14]
2162E8:  LDR             R1, =(__stack_chk_guard_ptr - 0x2162EE)
2162EA:  ADD             R1, PC; __stack_chk_guard_ptr
2162EC:  LDR             R1, [R1]; __stack_chk_guard
2162EE:  LDR             R1, [R1]
2162F0:  CMP             R1, R0
2162F2:  BNE.W           loc_2164BA
2162F6:  LDR             R1, =(asc_8CB3B - 0x2162FC); "..." ...
2162F8:  ADD             R1, PC; "..."
2162FA:  MOV             R0, R4
2162FC:  ADD             SP, SP, #0x18
2162FE:  POP.W           {R8}
216302:  POP.W           {R4-R7,LR}
216306:  B.W             sub_217430
21630A:  MOV             R0, R4
21630C:  BL              sub_2174C8
216310:  CMP             R0, #0
216312:  STR             R0, [SP,#0x28+var_24]
216314:  BEQ.W           loc_2164A2
216318:  LDRB.W          R0, [R4,#0x184]
21631C:  CMP             R0, #0
21631E:  BEQ.W           loc_215F92
216322:  LDRD.W          R0, R1, [R4]
216326:  CMP             R1, R0
216328:  BEQ.W           loc_215F92
21632C:  LDRB            R0, [R0]
21632E:  CMP             R0, #0x49 ; 'I'
216330:  BNE.W           loc_215F92
216334:  MOV             R0, R4
216336:  MOVS            R1, #0
216338:  BL              sub_217130
21633C:  CMP             R0, #0
21633E:  STR             R0, [SP,#0x28+var_1C]
216340:  BEQ.W           loc_2164A2
216344:  ADD             R1, SP, #0x28+var_24
216346:  ADD             R2, SP, #0x28+var_1C
216348:  MOV             R0, R4
21634A:  BL              sub_2173BC
21634E:  B               loc_216238
216350:  MOV             R0, R4
216352:  BL              sub_217B38
216356:  CMP             R0, #0
216358:  BEQ.W           loc_2165EE
21635C:  MOV             R8, R0
21635E:  LDRD.W          R0, R1, [R4]
216362:  CMP             R0, R1
216364:  BNE             loc_21638A
216366:  B               loc_2165EE
216368:  ADD             R6, SP, #0x28+var_1C
21636A:  MOV             R1, R4
21636C:  MOVS            R2, #0
21636E:  MOVS            R5, #0
216370:  MOV             R0, R6
216372:  BL              sub_215BB4
216376:  MOV             R0, R4
216378:  MOV             R1, R6
21637A:  BL              sub_21D4A0
21637E:  MOV             R8, R0
216380:  LDRD.W          R0, R1, [R4]
216384:  CMP             R0, R1
216386:  BEQ.W           loc_2165F0
21638A:  LDRB            R1, [R0]
21638C:  CMP             R1, #0x5F ; '_'
21638E:  BNE.W           loc_2165EE
216392:  ADDS            R0, #1
216394:  STR             R0, [R4]
216396:  MOV             R0, R4
216398:  BL              sub_215C48
21639C:  CMP             R0, #0
21639E:  BEQ.W           loc_2165EE
2163A2:  MOV             R6, R0
2163A4:  ADD.W           R0, R4, #0x198
2163A8:  MOVS            R1, #0x10
2163AA:  BL              sub_216EF0
2163AE:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle9ArrayTypeE - 0x2163B8); `vtable for'`anonymous namespace'::itanium_demangle::ArrayType ...
2163B0:  MOV             R5, R0
2163B2:  LDR             R0, =0x100000E
2163B4:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ArrayType
2163B6:  STRD.W          R6, R8, [R5,#8]
2163BA:  ADDS            R1, #8
2163BC:  STRD.W          R1, R0, [R5]
2163C0:  B               loc_2165F0
2163C2:  MOV             R0, R4; jumptable 00215DC2 cases 84,116
2163C4:  BL              sub_21767C
2163C8:  B               loc_215F88
2163CA:  ADDS            R0, R1, #2; jumptable 00215DC2 case 97
2163CC:  STR             R0, [R4]
2163CE:  LDR             R0, [SP,#0x28+var_14]
2163D0:  LDR             R1, =(__stack_chk_guard_ptr - 0x2163D6)
2163D2:  ADD             R1, PC; __stack_chk_guard_ptr
2163D4:  LDR             R1, [R1]; __stack_chk_guard
2163D6:  LDR             R1, [R1]
2163D8:  CMP             R1, R0
2163DA:  BNE             loc_2164BA
2163DC:  LDR             R1, =(aAuto - 0x2163E2); "auto" ...
2163DE:  ADD             R1, PC; "auto"
2163E0:  B               loc_216256
2163E2:  ADDS            R0, R1, #2; jumptable 00215DC2 case 99
2163E4:  STR             R0, [R4]
2163E6:  LDR             R0, [SP,#0x28+var_14]
2163E8:  LDR             R1, =(__stack_chk_guard_ptr - 0x2163EE)
2163EA:  ADD             R1, PC; __stack_chk_guard_ptr
2163EC:  LDR             R1, [R1]; __stack_chk_guard
2163EE:  LDR             R1, [R1]
2163F0:  CMP             R1, R0
2163F2:  BNE             loc_2164BA
2163F4:  LDR             R1, =(aDecltypeAuto - 0x2163FA); "decltype(auto)" ...
2163F6:  ADD             R1, PC; "decltype(auto)"
2163F8:  B               loc_21620A
2163FA:  ADDS            R0, R1, #2; jumptable 00215DC2 case 100
2163FC:  STR             R0, [R4]
2163FE:  LDR             R0, [SP,#0x28+var_14]
216400:  LDR             R1, =(__stack_chk_guard_ptr - 0x216406)
216402:  ADD             R1, PC; __stack_chk_guard_ptr
216404:  LDR             R1, [R1]; __stack_chk_guard
216406:  LDR             R1, [R1]
216408:  CMP             R1, R0
21640A:  BNE             loc_2164BA
21640C:  LDR             R1, =(aDecimal64 - 0x216412); "decimal64" ...
21640E:  ADD             R1, PC; "decimal64"
216410:  B               loc_2162AA
216412:  ADDS            R0, R1, #2; jumptable 00215DC2 case 101
216414:  STR             R0, [R4]
216416:  LDR             R0, [SP,#0x28+var_14]
216418:  LDR             R1, =(__stack_chk_guard_ptr - 0x21641E)
21641A:  ADD             R1, PC; __stack_chk_guard_ptr
21641C:  LDR             R1, [R1]; __stack_chk_guard
21641E:  LDR             R1, [R1]
216420:  CMP             R1, R0
216422:  BNE             loc_2164BA
216424:  LDR             R1, =(aDecimal128 - 0x21642A); "decimal128" ...
216426:  ADD             R1, PC; "decimal128"
216428:  B               loc_21606C
21642A:  ADDS            R0, R1, #2; jumptable 00215DC2 case 102
21642C:  STR             R0, [R4]
21642E:  LDR             R0, [SP,#0x28+var_14]
216430:  LDR             R1, =(__stack_chk_guard_ptr - 0x216436)
216432:  ADD             R1, PC; __stack_chk_guard_ptr
216434:  LDR             R1, [R1]; __stack_chk_guard
216436:  LDR             R1, [R1]
216438:  CMP             R1, R0
21643A:  BNE             loc_2164BA
21643C:  LDR             R1, =(aDecimal32 - 0x216442); "decimal32" ...
21643E:  ADD             R1, PC; "decimal32"
216440:  B               loc_2162AA
216442:  ADDS            R0, R1, #2; jumptable 00215DC2 case 104
216444:  STR             R0, [R4]
216446:  LDR             R0, [SP,#0x28+var_14]
216448:  LDR             R1, =(__stack_chk_guard_ptr - 0x21644E)
21644A:  ADD             R1, PC; __stack_chk_guard_ptr
21644C:  LDR             R1, [R1]; __stack_chk_guard
21644E:  LDR             R1, [R1]
216450:  CMP             R1, R0
216452:  BNE             loc_2164BA
216454:  LDR             R1, =(aDecimal16 - 0x21645A); "decimal16" ...
216456:  ADD             R1, PC; "decimal16"
216458:  B               loc_2162AA
21645A:  ADDS            R0, R1, #2; jumptable 00215DC2 case 105
21645C:  STR             R0, [R4]
21645E:  LDR             R0, [SP,#0x28+var_14]
216460:  LDR             R1, =(__stack_chk_guard_ptr - 0x216466)
216462:  ADD             R1, PC; __stack_chk_guard_ptr
216464:  LDR             R1, [R1]; __stack_chk_guard
216466:  LDR             R1, [R1]
216468:  CMP             R1, R0
21646A:  BNE             loc_2164BA
21646C:  LDR             R1, =(aChar32T - 0x216472); "char32_t" ...
21646E:  ADD             R1, PC; "char32_t"
216470:  B               loc_21618C
216472:  ADDS            R0, R1, #2; jumptable 00215DC2 case 110
216474:  STR             R0, [R4]
216476:  LDR             R0, [SP,#0x28+var_14]
216478:  LDR             R1, =(__stack_chk_guard_ptr - 0x21647E)
21647A:  ADD             R1, PC; __stack_chk_guard_ptr
21647C:  LDR             R1, [R1]; __stack_chk_guard
21647E:  LDR             R1, [R1]
216480:  CMP             R1, R0
216482:  BNE             loc_2164BA
216484:  LDR             R1, =(aStdNullptrT - 0x21648A); "std::nullptr_t" ...
216486:  ADD             R1, PC; "std::nullptr_t"
216488:  B               loc_21620A
21648A:  ADDS            R0, R1, #2; jumptable 00215DC2 case 112
21648C:  STR             R0, [R4]
21648E:  MOV             R0, R4
216490:  BL              sub_215C48
216494:  STR             R0, [SP,#0x28+var_1C]
216496:  CBZ             R0, loc_2164A2
216498:  ADD             R1, SP, #0x28+var_1C
21649A:  MOV             R0, R4
21649C:  BL              sub_219E84
2164A0:  B               loc_216238
2164A2:  MOVS            R0, #0
2164A4:  LDR             R1, [SP,#0x28+var_14]; jumptable 00215DC2 default case, cases 80-83,85-96,98,103,106-109,113,114
2164A6:  LDR             R2, =(__stack_chk_guard_ptr - 0x2164AC)
2164A8:  ADD             R2, PC; __stack_chk_guard_ptr
2164AA:  LDR             R2, [R2]; __stack_chk_guard
2164AC:  LDR             R2, [R2]
2164AE:  CMP             R2, R1
2164B0:  ITTT EQ
2164B2:  ADDEQ           SP, SP, #0x18
2164B4:  POPEQ.W         {R8}
2164B8:  POPEQ           {R4-R7,PC}
2164BA:  BLX             __stack_chk_fail
2164BE:  ADDS            R0, R1, #2; jumptable 00215DC2 case 115
2164C0:  STR             R0, [R4]
2164C2:  LDR             R0, [SP,#0x28+var_14]
2164C4:  LDR             R1, =(__stack_chk_guard_ptr - 0x2164CA)
2164C6:  ADD             R1, PC; __stack_chk_guard_ptr
2164C8:  LDR             R1, [R1]; __stack_chk_guard
2164CA:  LDR             R1, [R1]
2164CC:  CMP             R1, R0
2164CE:  BNE             loc_2164BA
2164D0:  LDR             R1, =(aChar16T - 0x2164D6); "char16_t" ...
2164D2:  ADD             R1, PC; "char16_t"
2164D4:  B               loc_21618C
2164D6:  ADDS            R0, R1, #2; jumptable 00215DC2 case 117
2164D8:  STR             R0, [R4]
2164DA:  LDR             R0, [SP,#0x28+var_14]
2164DC:  LDR             R1, =(__stack_chk_guard_ptr - 0x2164E2)
2164DE:  ADD             R1, PC; __stack_chk_guard_ptr
2164E0:  LDR             R1, [R1]; __stack_chk_guard
2164E2:  LDR             R1, [R1]
2164E4:  CMP             R1, R0
2164E6:  BNE             loc_2164BA
2164E8:  LDR             R1, =(aChar8T - 0x2164EE); "char8_t" ...
2164EA:  ADD             R1, PC; "char8_t"
2164EC:  B               loc_216280
2164EE:  ALIGN 0x10
2164F0:  DCD aUnsignedLong - 0x216164
2164F4:  DCD aInt128 - 0x21618E
2164F8:  DCD aUnsignedInt128 - 0x2161BA
2164FC:  DCD aShort - 0x2161E2
216500:  DCD aUnsignedShort - 0x21620C
216504:  DCD aVoid - 0x216258
216508:  LDR             R1, =(aDv_1 - 0x216510); jumptable 00215DC2 case 118
21650A:  MOV             R0, R4
21650C:  ADD             R1, PC; "Dv"
21650E:  ADDS            R2, R1, #2
216510:  BL              sub_2155E4
216514:  CMP             R0, #0
216516:  BEQ             loc_2165EE
216518:  LDRD.W          R0, R1, [R4]
21651C:  CMP             R1, R0
21651E:  BEQ             loc_2165AA
216520:  LDRB            R1, [R0]
216522:  CMP             R1, #0x31 ; '1'
216524:  BCC             loc_2165AA
216526:  CMP             R1, #0x39 ; '9'
216528:  BHI             loc_21657A
21652A:  ADD             R6, SP, #0x28+var_1C
21652C:  MOV             R1, R4
21652E:  MOVS            R2, #0
216530:  MOVS            R5, #0
216532:  MOV             R0, R6
216534:  BL              sub_215BB4
216538:  MOV             R0, R4
21653A:  MOV             R1, R6
21653C:  BL              sub_21D4A0
216540:  MOV             R6, R0
216542:  STR             R0, [SP,#0x28+var_20]
216544:  LDRD.W          R0, R1, [R4]
216548:  CMP             R0, R1
21654A:  BEQ             loc_2165F0
21654C:  LDRB            R2, [R0]
21654E:  CMP             R2, #0x5F ; '_'
216550:  BNE             loc_2165EE
216552:  ADDS            R2, R0, #1
216554:  STR             R2, [R4]
216556:  CMP             R2, R1
216558:  BEQ             loc_2165DE
21655A:  LDRB            R1, [R2]
21655C:  CMP             R1, #0x70 ; 'p'
21655E:  BNE             loc_2165DE
216560:  ADDS            R0, #2
216562:  STR             R0, [R4]
216564:  ADD.W           R0, R4, #0x198
216568:  MOVS            R1, #0xC
21656A:  BL              sub_216EF0
21656E:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle15PixelVectorTypeE - 0x216578); `vtable for'`anonymous namespace'::itanium_demangle::PixelVectorType ...
216570:  MOV             R5, R0
216572:  LDR             R0, =0x101011A
216574:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::PixelVectorType
216576:  STR             R6, [R5,#8]
216578:  B               loc_2163BA
21657A:  CMP             R1, #0x5F ; '_'
21657C:  BNE             loc_2165AA
21657E:  ADDS            R0, #1
216580:  STR             R0, [R4]
216582:  MOV             R0, R4
216584:  BL              sub_215C48
216588:  MOVS            R5, #0
21658A:  CBZ             R0, loc_2165F0
21658C:  MOV             R6, R0
21658E:  ADD.W           R0, R4, #0x198
216592:  MOVS            R1, #0x10
216594:  BL              sub_216EF0
216598:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle10VectorTypeE - 0x2165A0); `vtable for'`anonymous namespace'::itanium_demangle::VectorType ...
21659A:  LDR             R1, =0x1010119
21659C:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::VectorType
21659E:  STRD.W          R6, R5, [R0,#8]
2165A2:  ADDS            R2, #8
2165A4:  STRD.W          R2, R1, [R0]
2165A8:  B               loc_2165DA
2165AA:  MOV             R0, R4
2165AC:  BL              sub_217B38
2165B0:  STR             R0, [SP,#0x28+var_1C]
2165B2:  CBZ             R0, loc_2165EE
2165B4:  LDRD.W          R0, R1, [R4]
2165B8:  CMP             R0, R1
2165BA:  BEQ             loc_2165EE
2165BC:  LDRB            R1, [R0]
2165BE:  CMP             R1, #0x5F ; '_'
2165C0:  BNE             loc_2165EE
2165C2:  ADDS            R0, #1
2165C4:  STR             R0, [R4]
2165C6:  MOV             R0, R4
2165C8:  BL              sub_215C48
2165CC:  STR             R0, [SP,#0x28+var_20]
2165CE:  CBZ             R0, loc_2165EE
2165D0:  ADD             R1, SP, #0x28+var_20
2165D2:  ADD             R2, SP, #0x28+var_1C
2165D4:  MOV             R0, R4
2165D6:  BL              sub_21D4D0
2165DA:  MOV             R5, R0
2165DC:  B               loc_2165F0
2165DE:  MOV             R0, R4
2165E0:  BL              sub_215C48
2165E4:  STR             R0, [SP,#0x28+var_1C]
2165E6:  CBZ             R0, loc_2165EE
2165E8:  ADD             R1, SP, #0x28+var_1C
2165EA:  ADD             R2, SP, #0x28+var_20
2165EC:  B               loc_2165D4
2165EE:  MOVS            R5, #0
2165F0:  STR             R5, [SP,#0x28+var_24]
2165F2:  B               loc_215F8C
