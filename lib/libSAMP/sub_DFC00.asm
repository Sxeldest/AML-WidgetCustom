; =========================================================
; Game Engine Function: sub_DFC00
; Address            : 0xDFC00 - 0xDFECA
; =========================================================

DFC00:  PUSH            {R4-R7,LR}
DFC02:  ADD             R7, SP, #0xC
DFC04:  PUSH.W          {R8}
DFC08:  SUB             SP, SP, #0x68
DFC0A:  ADDS            R4, R0, #1
DFC0C:  MOV             R5, R2
DFC0E:  CMP             R4, R1
DFC10:  BEQ.W           loc_DFEAC
DFC14:  MOV             R6, R1
DFC16:  LDRB            R1, [R4]
DFC18:  CMP             R1, #0x7B ; '{'
DFC1A:  BEQ             loc_DFC6C
DFC1C:  CMP             R1, #0x7D ; '}'
DFC1E:  BNE             loc_DFC7A
DFC20:  LDR             R2, [R5,#0xC]
DFC22:  CMP.W           R2, #0xFFFFFFFF
DFC26:  BLE.W           loc_DFEB6
DFC2A:  ADDS            R0, R2, #1
DFC2C:  ADD.W           R8, R5, #0x10
DFC30:  STR             R0, [R5,#0xC]
DFC32:  ADD             R0, SP, #0x78+var_70
DFC34:  MOV             R1, R8
DFC36:  BL              sub_E0290
DFC3A:  LDR             R0, [SP,#0x78+var_68]
DFC3C:  LDR             R6, [R5,#0x10]
DFC3E:  SUBS            R0, #1; switch 15 cases
DFC40:  CMP             R0, #0xE
DFC42:  BHI.W           def_DFC46; jumptable 000DFC46 default case, cases 5,6
DFC46:  TBH.W           [PC,R0,LSL#1]; switch jump
DFC4A:  DCW 0xF; jump table for switch statement
DFC4C:  DCW 0x6C
DFC4E:  DCW 0x6E
DFC50:  DCW 0x71
DFC52:  DCW 0x115
DFC54:  DCW 0x115
DFC56:  DCW 0x74
DFC58:  DCW 0x8B
DFC5A:  DCW 0x90
DFC5C:  DCW 0x92
DFC5E:  DCW 0x95
DFC60:  DCW 0x98
DFC62:  DCW 0x9A
DFC64:  DCW 0x9D
DFC66:  DCW 0xB3
DFC68:  LDR             R1, [SP,#0x78+var_70]; jumptable 000DFC46 case 1
DFC6A:  B               loc_DFCF6
DFC6C:  LDR             R2, [R5,#0x10]
DFC6E:  ADDS            R1, R0, #2
DFC70:  MOV             R0, R4
DFC72:  BL              sub_DFAB8
DFC76:  STR             R0, [R5,#0x10]
DFC78:  B               loc_DFE78
DFC7A:  MOVS            R0, #0
DFC7C:  CMP             R1, #0x3A ; ':'
DFC7E:  STRD.W          R5, R0, [SP,#0x78+var_78]
DFC82:  BNE             loc_DFC96
DFC84:  LDR             R0, [R5,#0xC]
DFC86:  CMP.W           R0, #0xFFFFFFFF
DFC8A:  BLE.W           loc_DFEB6
DFC8E:  ADDS            R1, R0, #1
DFC90:  STR             R1, [R5,#0xC]
DFC92:  STR             R0, [SP,#0x78+var_74]
DFC94:  B               loc_DFCA2
DFC96:  MOV             R2, SP
DFC98:  MOV             R0, R4
DFC9A:  MOV             R1, R6
DFC9C:  BL              sub_E02B4
DFCA0:  MOV             R4, R0
DFCA2:  CMP             R4, R6
DFCA4:  BEQ.W           loc_DFEC0
DFCA8:  LDRB            R0, [R4]
DFCAA:  CMP             R0, #0x3A ; ':'
DFCAC:  BEQ             loc_DFCFE
DFCAE:  CMP             R0, #0x7D ; '}'
DFCB0:  BNE.W           loc_DFEC0
DFCB4:  ADD.W           R8, R5, #0x10
DFCB8:  LDR             R2, [SP,#0x78+var_74]
DFCBA:  ADD             R0, SP, #0x78+s
DFCBC:  MOV             R1, R8
DFCBE:  BL              sub_E0290
DFCC2:  LDR             R2, [SP,#0x78+var_48]
DFCC4:  LDR             R6, [R5,#0x10]
DFCC6:  LDR             R0, [R5,#0x20]
DFCC8:  LDR             R1, [R5,#0x28]
DFCCA:  VLDR            D16, [R5,#0x18]
DFCCE:  STR             R0, [SP,#0x78+var_60]
DFCD0:  SUBS            R0, R2, #1; switch 15 cases
DFCD2:  CMP             R0, #0xE
DFCD4:  STR             R6, [SP,#0x78+var_70]
DFCD6:  STR             R1, [SP,#0x78+var_58]
DFCD8:  VSTR            D16, [SP,#0x78+var_68]
DFCDC:  BHI.W           def_DFC46; jumptable 000DFC46 default case, cases 5,6
DFCE0:  TBB.W           [PC,R0]; switch jump
DFCE4:  DCB 8; jump table for switch statement
DFCE5:  DCB 0x7A
DFCE6:  DCB 0x7F
DFCE7:  DCB 0x85
DFCE8:  DCB 0xC8
DFCE9:  DCB 0xC8
DFCEA:  DCB 0x8B
DFCEB:  DCB 0x91
DFCEC:  DCB 0xA2
DFCED:  DCB 0xA7
DFCEE:  DCB 0xAF
DFCEF:  DCB 0xB7
DFCF0:  DCB 0xBC
DFCF1:  DCB 0xC3
DFCF2:  DCB 0xCF
DFCF3:  ALIGN 2
DFCF4:  LDR             R1, [SP,#0x78+s]; jumptable 000DFCE0 case 1
DFCF6:  MOV             R0, R6
DFCF8:  BL              sub_DCE00
DFCFC:  B               loc_DFE72
DFCFE:  LDR             R1, [SP,#0x78+var_74]
DFD00:  ADDS            R2, R4, #1
DFD02:  MOV             R0, R5
DFD04:  MOV             R3, R6
DFD06:  BL              sub_DFF58
DFD0A:  CMP             R0, R6
DFD0C:  BEQ             loc_DFD18
DFD0E:  MOV             R4, R0
DFD10:  LDRB            R0, [R0]
DFD12:  CMP             R0, #0x7D ; '}'
DFD14:  BEQ.W           loc_DFE78
DFD18:  LDR             R1, =(aUnknownFormatS_0 - 0xDFD20); "unknown format specifier" ...
DFD1A:  MOV             R0, R5; this
DFD1C:  ADD             R1, PC; "unknown format specifier"
DFD1E:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
DFD22:  LDR             R1, [SP,#0x78+var_70]; jumptable 000DFC46 case 2
DFD24:  B               loc_DFDDA
DFD26:  LDRD.W          R2, R3, [SP,#0x78+var_70]; jumptable 000DFC46 case 3
DFD2A:  B               loc_DFDE6
DFD2C:  LDRD.W          R2, R3, [SP,#0x78+var_70]; jumptable 000DFC46 case 4
DFD30:  B               loc_DFDF2
DFD32:  MOVS            R0, #1; jumptable 000DFC46 case 7
DFD34:  LDRB.W          R1, [SP,#0x78+var_70]
DFD38:  STRB.W          R0, [SP,#0x78+var_31]
DFD3C:  MOVS            R0, #0x20 ; ' '
DFD3E:  STR.W           R0, [SP,#0x78+var_38+3]
DFD42:  MOVS            R0, #0
DFD44:  MOV.W           R2, #0xFFFFFFFF
DFD48:  STRH.W          R0, [SP,#0x78+var_38+1]
DFD4C:  STRD.W          R0, R2, [SP,#0x78+var_40]
DFD50:  ADD             R2, SP, #0x78+var_40
DFD52:  STRB.W          R0, [SP,#0x78+var_38]
DFD56:  MOV             R0, R6
DFD58:  MOVS            R3, #0
DFD5A:  BL              sub_DD1E8
DFD5E:  B               loc_DFE72
DFD60:  LDRD.W          R0, R2, [R6,#8]; jumptable 000DFC46 case 8
DFD64:  LDRB.W          R5, [SP,#0x78+var_70]
DFD68:  B               loc_DFE0E
DFD6A:  LDR             R1, [SP,#0x78+var_70]; jumptable 000DFC46 case 9
DFD6C:  B               loc_DFE2A
DFD6E:  VLDR            D16, [SP,#0x78+var_70]; jumptable 000DFC46 case 10
DFD72:  B               loc_DFE36
DFD74:  VLDR            D16, [SP,#0x78+var_70]; jumptable 000DFC46 case 11
DFD78:  B               loc_DFE46
DFD7A:  LDR             R1, [SP,#0x78+var_70]; jumptable 000DFC46 case 12
DFD7C:  B               loc_DFE54
DFD7E:  LDRD.W          R0, R1, [SP,#0x78+var_70]; jumptable 000DFC46 case 13
DFD82:  B               loc_DFE60
DFD84:  MOVS            R0, #1; jumptable 000DFC46 case 14
DFD86:  LDR             R1, [SP,#0x78+var_70]
DFD88:  STRB.W          R0, [SP,#0x78+var_31]
DFD8C:  MOVS            R0, #0x20 ; ' '
DFD8E:  STR.W           R0, [SP,#0x78+var_38+3]
DFD92:  MOVS            R0, #0
DFD94:  MOV.W           R2, #0xFFFFFFFF
DFD98:  STRH.W          R0, [SP,#0x78+var_38+1]
DFD9C:  STRD.W          R0, R2, [SP,#0x78+var_40]
DFDA0:  ADD             R2, SP, #0x78+var_40
DFDA2:  STRB.W          R0, [SP,#0x78+var_38]
DFDA6:  MOV             R0, R6
DFDA8:  MOVS            R3, #0
DFDAA:  BL              sub_DFACC
DFDAE:  B               loc_DFE72
DFDB0:  LDRD.W          LR, R2, [R5,#0x18]; jumptable 000DFC46 case 15
DFDB4:  MOVS            R1, #0
DFDB6:  LDR             R3, [R5,#0x20]
DFDB8:  LDRD.W          R0, R12, [SP,#0x78+var_70]
DFDBC:  STRD.W          LR, R2, [SP,#0x78+var_38]
DFDC0:  ADD             R2, SP, #0x78+var_40
DFDC2:  STR             R1, [SP,#0x78+var_48]
DFDC4:  STRD.W          R1, R1, [SP,#0x78+s]
DFDC8:  STRD.W          R3, R1, [SP,#0x78+var_30]
DFDCC:  ADD             R1, SP, #0x78+s
DFDCE:  LDR             R5, [R5,#0x28]
DFDD0:  STR             R5, [SP,#0x78+var_28]
DFDD2:  STR             R6, [SP,#0x78+var_40]
DFDD4:  BLX             R12
DFDD6:  B               loc_DFEA8
DFDD8:  LDR             R1, [SP,#0x78+s]; jumptable 000DFCE0 case 2
DFDDA:  MOV             R0, R6
DFDDC:  BL              sub_DCF8C
DFDE0:  B               loc_DFE72
DFDE2:  LDRD.W          R2, R3, [SP,#0x78+s]; jumptable 000DFCE0 case 3
DFDE6:  MOV             R0, R6
DFDE8:  BL              sub_DCFF4
DFDEC:  B               loc_DFE72
DFDEE:  LDRD.W          R2, R3, [SP,#0x78+s]; jumptable 000DFCE0 case 4
DFDF2:  MOV             R0, R6
DFDF4:  BL              sub_DD160
DFDF8:  B               loc_DFE72
DFDFA:  LDRB.W          R1, [SP,#0x78+s]; jumptable 000DFCE0 case 7
DFDFE:  ADD             R0, SP, #0x78+var_70
DFE00:  BL              sub_DCD9A
DFE04:  B               loc_DFE72
DFE06:  LDRD.W          R0, R2, [R6,#8]; jumptable 000DFCE0 case 8
DFE0A:  LDRB.W          R5, [SP,#0x78+s]
DFE0E:  ADDS            R1, R0, #1
DFE10:  CMP             R2, R1
DFE12:  BCS             loc_DFE20
DFE14:  LDR             R0, [R6]
DFE16:  LDR             R2, [R0]
DFE18:  MOV             R0, R6
DFE1A:  BLX             R2
DFE1C:  LDR             R0, [R6,#8]
DFE1E:  ADDS            R1, R0, #1
DFE20:  LDR             R2, [R6,#4]
DFE22:  STR             R1, [R6,#8]
DFE24:  STRB            R5, [R2,R0]
DFE26:  B               def_DFC46; jumptable 000DFC46 default case, cases 5,6
DFE28:  LDR             R1, [SP,#0x78+s]; jumptable 000DFCE0 case 9
DFE2A:  MOV             R0, R6
DFE2C:  BL              sub_DE234
DFE30:  B               loc_DFE72
DFE32:  VLDR            D16, [SP,#0x78+s]; jumptable 000DFCE0 case 10
DFE36:  VMOV            R2, R3, D16
DFE3A:  MOV             R0, R6
DFE3C:  BL              sub_DEF2C
DFE40:  B               loc_DFE72
DFE42:  VLDR            D16, [SP,#0x78+s]; jumptable 000DFCE0 case 11
DFE46:  VMOV            R2, R3, D16
DFE4A:  MOV             R0, R6
DFE4C:  BL              sub_DF9F0
DFE50:  B               loc_DFE72
DFE52:  LDR             R1, [SP,#0x78+s]; jumptable 000DFCE0 case 12
DFE54:  MOV             R0, R6; int
DFE56:  BL              sub_DFA8C
DFE5A:  B               loc_DFE72
DFE5C:  LDRD.W          R0, R1, [SP,#0x78+s]; jumptable 000DFCE0 case 13
DFE60:  ADD             R1, R0
DFE62:  MOV             R2, R6
DFE64:  BL              sub_DFAB8
DFE68:  B               loc_DFE72
DFE6A:  LDR             R1, [SP,#0x78+s]; jumptable 000DFCE0 case 14
DFE6C:  ADD             R0, SP, #0x78+var_70
DFE6E:  BL              sub_DCDCC
DFE72:  MOV             R6, R0
DFE74:  STR.W           R6, [R8]; jumptable 000DFC46 default case, cases 5,6
DFE78:  ADDS            R0, R4, #1
DFE7A:  ADD             SP, SP, #0x68 ; 'h'
DFE7C:  POP.W           {R8}
DFE80:  POP             {R4-R7,PC}
DFE82:  ADD             R2, SP, #0x78+var_70; jumptable 000DFCE0 case 15
DFE84:  LDRD.W          R0, R3, [SP,#0x78+s]
DFE88:  ADDS            R2, #8
DFE8A:  STR             R6, [SP,#0x78+var_40]
DFE8C:  VLD1.64         {D16-D17}, [R2]
DFE90:  MOVS            R2, #0
DFE92:  STR             R2, [SP,#0x78+var_14]
DFE94:  STRD.W          R2, R2, [SP,#0x78+var_1C]
DFE98:  ADD             R2, SP, #0x78+var_40
DFE9A:  ADD.W           R5, R2, #8
DFE9E:  VST1.64         {D16-D17}, [R5]!
DFEA2:  STR             R1, [R5]
DFEA4:  ADD             R1, SP, #0x78+var_1C
DFEA6:  BLX             R3
DFEA8:  LDR             R6, [SP,#0x78+var_40]
DFEAA:  B               def_DFC46; jumptable 000DFC46 default case, cases 5,6
DFEAC:  LDR             R1, =(aInvalidFormatS - 0xDFEB4); "invalid format string" ...
DFEAE:  MOV             R0, R5; this
DFEB0:  ADD             R1, PC; "invalid format string"
DFEB2:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
DFEB6:  LDR             R1, =(aCannotSwitchFr - 0xDFEBE); "cannot switch from manual to automatic "... ...
DFEB8:  ADDS            R0, R5, #4; this
DFEBA:  ADD             R1, PC; "cannot switch from manual to automatic "...
DFEBC:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
DFEC0:  LDR             R1, =(aMissingInForma - 0xDFEC8); "missing '}' in format string" ...
DFEC2:  MOV             R0, R5; this
DFEC4:  ADD             R1, PC; "missing '}' in format string"
DFEC6:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
