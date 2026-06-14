; =========================================================
; Game Engine Function: sub_DFF58
; Address            : 0xDFF58 - 0xE0274
; =========================================================

DFF58:  PUSH            {R4-R7,LR}
DFF5A:  ADD             R7, SP, #0xC
DFF5C:  PUSH.W          {R8-R10}
DFF60:  SUB             SP, SP, #0x50
DFF62:  ADD.W           R8, R0, #0x10
DFF66:  MOV             R6, R0
DFF68:  ADD             R0, SP, #0x68+s
DFF6A:  MOV             R5, R2
DFF6C:  MOV             R2, R1
DFF6E:  MOV             R1, R8
DFF70:  MOV             R4, R3
DFF72:  BL              sub_E0290
DFF76:  LDR             R0, [SP,#0x68+var_28]
DFF78:  CMP             R0, #0xF
DFF7A:  BNE             loc_DFF9A
DFF7C:  LDR.W           R1, [R6,#4]!
DFF80:  LDRD.W          R0, R3, [SP,#0x68+s]
DFF84:  LDR             R2, [R6,#4]
DFF86:  SUBS            R1, R1, R5
DFF88:  ADD             R1, R2
DFF8A:  MOV             R2, R8
DFF8C:  STRD.W          R5, R1, [R6]
DFF90:  MOV             R1, R6
DFF92:  BLX             R3
DFF94:  LDR.W           R9, [R6]
DFF98:  B               loc_E024C
DFF9A:  MOVS            R1, #1
DFF9C:  STRD.W          R8, R0, [SP,#0x68+var_48]
DFFA0:  ADDS            R0, R6, #4
DFFA2:  STRB.W          R1, [SP,#0x68+var_31]
DFFA6:  MOVS            R1, #0x20 ; ' '
DFFA8:  STR             R0, [SP,#0x68+var_4C]
DFFAA:  ADD.W           R10, SP, #0x68+var_40
DFFAE:  SUBS            R0, R4, R5
DFFB0:  STR.W           R1, [SP,#0x68+var_38+3]
DFFB4:  MOVS            R1, #0
DFFB6:  MOV.W           R2, #0xFFFFFFFF
DFFBA:  CMP             R0, #2
DFFBC:  STRH.W          R1, [SP,#0x68+var_38+1]
DFFC0:  STRB.W          R1, [SP,#0x68+var_38]
DFFC4:  STRD.W          R1, R2, [SP,#0x68+var_40]
DFFC8:  STR.W           R10, [SP,#0x68+var_50]
DFFCC:  BLT             loc_DFFF4
DFFCE:  MOV             R9, R5
DFFD0:  LDRB.W          R0, [R9,#1]!
DFFD4:  CMP             R0, #0x7D ; '}'
DFFD6:  BNE             loc_DFFF4
DFFD8:  LDRB            R0, [R5]
DFFDA:  AND.W           R1, R0, #0xDF
DFFDE:  SUBS            R1, #0x5B ; '['
DFFE0:  CMN.W           R1, #0x1A
DFFE4:  BCC             loc_DFFF4
DFFE6:  CMP             R0, #0x4C ; 'L'
DFFE8:  BEQ             loc_DFFF4
DFFEA:  BL              sub_E0498
DFFEE:  CMP             R0, #0
DFFF0:  BNE             loc_E00D4
DFFF2:  B               loc_E026A
DFFF4:  CMP             R5, R4
DFFF6:  BEQ.W           loc_E0256
DFFFA:  ADD             R2, SP, #0x68+var_50
DFFFC:  MOV             R0, R5
DFFFE:  MOV             R1, R4
E0000:  BL              sub_E0524
E0004:  CMP             R0, R4
E0006:  BEQ.W           loc_E0256
E000A:  MOV             R5, R0
E000C:  LDRB            R0, [R0]
E000E:  CMP             R0, #0x20 ; ' '
E0010:  BEQ             loc_E001E
E0012:  CMP             R0, #0x2B ; '+'
E0014:  BEQ             loc_E0022
E0016:  CMP             R0, #0x2D ; '-'
E0018:  BNE             loc_E002C
E001A:  MOVS            R1, #1
E001C:  B               loc_E0024
E001E:  MOVS            R1, #3
E0020:  B               loc_E0024
E0022:  MOVS            R1, #2
E0024:  ADD             R0, SP, #0x68+var_50
E0026:  BL              sub_E05B4
E002A:  ADDS            R5, #1
E002C:  CMP             R5, R4
E002E:  BEQ.W           loc_E0256
E0032:  LDRB            R0, [R5]
E0034:  CMP             R0, #0x23 ; '#'
E0036:  BNE             loc_E005A
E0038:  LDR             R0, [SP,#0x68+var_44]
E003A:  SUBS            R0, #1
E003C:  CMP             R0, #0xB
E003E:  BCS.W           loc_E0260
E0042:  LDR             R0, [SP,#0x68+var_50]
E0044:  ADDS            R5, #1
E0046:  CMP             R5, R4
E0048:  LDRH.W          R1, [R0,#9]
E004C:  ORR.W           R1, R1, #0x80
E0050:  STRH.W          R1, [R0,#9]
E0054:  BEQ.W           loc_E0256
E0058:  LDRB            R0, [R5]
E005A:  CMP             R0, #0x30 ; '0'
E005C:  BNE             loc_E006C
E005E:  ADD             R0, SP, #0x68+var_50
E0060:  BL              sub_E060C
E0064:  ADDS            R5, #1
E0066:  CMP             R5, R4
E0068:  BEQ.W           loc_E0256
E006C:  ADD             R2, SP, #0x68+var_50
E006E:  MOV             R0, R5
E0070:  MOV             R1, R4
E0072:  BL              sub_E0648
E0076:  CMP             R0, R4
E0078:  BEQ.W           loc_E0256
E007C:  MOV             R9, R0
E007E:  LDRB            R0, [R0]
E0080:  CMP             R0, #0x2E ; '.'
E0082:  BNE             loc_E0098
E0084:  ADD             R2, SP, #0x68+var_50
E0086:  MOV             R0, R9
E0088:  MOV             R1, R4
E008A:  BL              sub_E06D8
E008E:  CMP             R0, R4
E0090:  BEQ.W           loc_E0256
E0094:  MOV             R9, R0
E0096:  LDRB            R0, [R0]
E0098:  CMP             R0, #0x4C ; 'L'
E009A:  BNE             loc_E00B8
E009C:  LDR             R0, [SP,#0x68+var_44]
E009E:  SUBS            R0, #1
E00A0:  CMP             R0, #0xB
E00A2:  BCS.W           loc_E0260
E00A6:  LDR             R0, [SP,#0x68+var_50]
E00A8:  ADD.W           R9, R9, #1
E00AC:  LDRH.W          R1, [R0,#9]
E00B0:  ORR.W           R1, R1, #0x100
E00B4:  STRH.W          R1, [R0,#9]
E00B8:  CMP             R9, R4
E00BA:  BEQ.W           loc_E0256
E00BE:  LDRB.W          R0, [R9]
E00C2:  CMP             R0, #0x7D ; '}'
E00C4:  BEQ             loc_E00D8
E00C6:  BL              sub_E0498
E00CA:  CMP             R0, #0
E00CC:  BEQ.W           loc_E026A
E00D0:  ADD.W           R9, R9, #1
E00D4:  LDR             R1, [SP,#0x68+var_50]
E00D6:  STRB            R0, [R1,#8]
E00D8:  CMP             R9, R4
E00DA:  BEQ.W           loc_E0256
E00DE:  LDRB.W          R0, [R9]
E00E2:  CMP             R0, #0x7D ; '}'
E00E4:  BNE.W           loc_E0256
E00E8:  LDR             R1, [SP,#0x68+var_28]
E00EA:  LDR             R0, [R6,#0x10]; int
E00EC:  SUBS            R1, #1; switch 14 cases
E00EE:  CMP             R1, #0xD
E00F0:  BHI.W           def_E00F6; jumptable 000E00F6 default case, cases 5,6
E00F4:  LDR             R3, [R6,#0x28]
E00F6:  TBB.W           [PC,R1]; switch jump
E00FA:  DCB 7; jump table for switch statement
E00FB:  DCB 0x11
E00FC:  DCB 0x1F
E00FD:  DCB 0x2D
E00FE:  DCB 0xA7
E00FF:  DCB 0xA7
E0100:  DCB 0x3D
E0101:  DCB 0x43
E0102:  DCB 0x49
E0103:  DCB 0x55
E0104:  DCB 0x66
E0105:  DCB 0x77
E0106:  DCB 0x7C
E0107:  DCB 0x8E
E0108:  LDR             R1, [SP,#0x68+s]; jumptable 000E00F6 case 1
E010A:  CMP.W           R1, #0xFFFFFFFF
E010E:  BLE.W           loc_E0220
E0112:  LDRH.W          R2, [SP,#0x68+var_38+1]
E0116:  LDR             R4, =(unk_91DB0 - 0xE011C)
E0118:  ADD             R4, PC; unk_91DB0
E011A:  B               loc_E0126
E011C:  LDRH.W          R2, [SP,#0x68+var_38+1]; jumptable 000E00F6 case 2
E0120:  LDR             R4, =(unk_91DB0 - 0xE0128)
E0122:  LDR             R1, [SP,#0x68+s]
E0124:  ADD             R4, PC; unk_91DB0
E0126:  MOVS            R6, #0x1C
E0128:  AND.W           R2, R6, R2,LSR#2
E012C:  LDR             R2, [R4,R2]
E012E:  STR             R3, [SP,#0x68+var_68]
E0130:  ADD             R3, SP, #0x68+var_40
E0132:  BL              sub_DD260
E0136:  B               def_E00F6; jumptable 000E00F6 default case, cases 5,6
E0138:  LDRD.W          R2, R1, [SP,#0x68+s]; jumptable 000E00F6 case 3
E013C:  CMP.W           R1, #0xFFFFFFFF
E0140:  BLE             loc_E022A
E0142:  LDRH.W          R6, [SP,#0x68+var_38+1]
E0146:  MOVS            R5, #0x1C
E0148:  LDR             R4, =(unk_91DB0 - 0xE014E)
E014A:  ADD             R4, PC; unk_91DB0
E014C:  AND.W           R6, R5, R6,LSR#2
E0150:  LDR             R6, [R4,R6]
E0152:  B               loc_E0238
E0154:  LDRH.W          R6, [SP,#0x68+var_38+1]; jumptable 000E00F6 case 4
E0158:  LDRD.W          R2, R1, [SP,#0x68+s]
E015C:  LDR             R4, =(unk_91DB0 - 0xE016C)
E015E:  STRD.W          R10, R3, [SP,#0x68+var_60]
E0162:  MOVS            R3, #0x1C
E0164:  AND.W           R3, R3, R6,LSR#2
E0168:  ADD             R4, PC; unk_91DB0
E016A:  MOVS            R6, #0
E016C:  LDR             R3, [R4,R3]
E016E:  STRD.W          R3, R6, [SP,#0x68+var_68]
E0172:  B               loc_E0242
E0174:  LDRB.W          R1, [SP,#0x68+s]; jumptable 000E00F6 case 7
E0178:  ADD             R2, SP, #0x68+var_40
E017A:  BL              sub_DD1E8
E017E:  B               def_E00F6; jumptable 000E00F6 default case, cases 5,6
E0180:  LDRB.W          R1, [SP,#0x68+s]; jumptable 000E00F6 case 8
E0184:  ADD             R2, SP, #0x68+var_40; int
E0186:  BL              sub_E1510
E018A:  B               def_E00F6; jumptable 000E00F6 default case, cases 5,6
E018C:  LDRD.W          R2, R6, [SP,#0x68+var_40]; jumptable 000E00F6 case 9
E0190:  LDR             R1, [SP,#0x68+s]
E0192:  LDRD.W          R5, R4, [SP,#0x68+var_38]
E0196:  STR             R3, [SP,#0x68+var_60]
E0198:  MOV             R3, R6
E019A:  STRD.W          R5, R4, [SP,#0x68+var_68]
E019E:  BL              sub_E15D8
E01A2:  B               def_E00F6; jumptable 000E00F6 default case, cases 5,6
E01A4:  VLDR            D16, [SP,#0x68+s]; jumptable 000E00F6 case 10
E01A8:  LDRD.W          R6, R5, [SP,#0x68+var_40]
E01AC:  VMOV            R2, R12, D16
E01B0:  LDRD.W          R4, R1, [SP,#0x68+var_38]
E01B4:  STR             R3, [SP,#0x68+var_58]
E01B6:  STRD.W          R6, R5, [SP,#0x68+var_68]
E01BA:  STRD.W          R4, R1, [SP,#0x68+var_60]
E01BE:  MOV             R3, R12
E01C0:  BL              sub_E22B8
E01C4:  B               def_E00F6; jumptable 000E00F6 default case, cases 5,6
E01C6:  VLDR            D16, [SP,#0x68+s]; jumptable 000E00F6 case 11
E01CA:  LDRD.W          R6, R5, [SP,#0x68+var_40]
E01CE:  VMOV            R2, R12, D16
E01D2:  LDRD.W          R4, R1, [SP,#0x68+var_38]
E01D6:  STR             R3, [SP,#0x68+var_58]
E01D8:  STRD.W          R6, R5, [SP,#0x68+var_68]
E01DC:  STRD.W          R4, R1, [SP,#0x68+var_60]
E01E0:  MOV             R3, R12
E01E2:  BL              sub_E24C0
E01E6:  B               def_E00F6; jumptable 000E00F6 default case, cases 5,6
E01E8:  LDR             R1, [SP,#0x68+s]; jumptable 000E00F6 case 12
E01EA:  ADD             R2, SP, #0x68+var_40
E01EC:  BL              sub_E26C8
E01F0:  B               def_E00F6; jumptable 000E00F6 default case, cases 5,6
E01F2:  LDRB.W          R1, [SP,#0x68+var_38]; jumptable 000E00F6 case 13
E01F6:  CMP             R1, #0x12
E01F8:  BHI             loc_E026A
E01FA:  MOVS            R2, #1
E01FC:  LSL.W           R1, R2, R1
E0200:  MOVS            R2, #0x50001
E0206:  TST             R1, R2
E0208:  BEQ             loc_E026A
E020A:  LDRD.W          R1, R2, [SP,#0x68+s]
E020E:  ADD             R3, SP, #0x68+var_40
E0210:  BL              sub_E2768
E0214:  B               def_E00F6; jumptable 000E00F6 default case, cases 5,6
E0216:  LDR             R1, [SP,#0x68+s]; jumptable 000E00F6 case 14
E0218:  ADD             R2, SP, #0x68+var_40
E021A:  BL              sub_DFACC
E021E:  B               def_E00F6; jumptable 000E00F6 default case, cases 5,6
E0220:  MOVS            R2, #0x2D ; '-'
E0222:  NEGS            R1, R1
E0224:  MOVT            R2, #0x100
E0228:  B               loc_E012E
E022A:  MOVS            R6, #0
E022C:  NEGS            R2, R2
E022E:  SBC.W           R1, R6, R1
E0232:  MOVS            R6, #0x100002D
E0238:  MOVS            R5, #0
E023A:  STRD.W          R10, R3, [SP,#0x68+var_60]
E023E:  STRD.W          R6, R5, [SP,#0x68+var_68]
E0242:  MOV             R3, R1
E0244:  BL              sub_E0BA0
E0248:  STR.W           R0, [R8]; jumptable 000E00F6 default case, cases 5,6
E024C:  MOV             R0, R9
E024E:  ADD             SP, SP, #0x50 ; 'P'
E0250:  POP.W           {R8-R10}
E0254:  POP             {R4-R7,PC}
E0256:  LDR             R1, =(aMissingInForma - 0xE025E); "missing '}' in format string" ...
E0258:  MOV             R0, R6; this
E025A:  ADD             R1, PC; "missing '}' in format string"
E025C:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E0260:  LDR             R1, =(aFormatSpecifie - 0xE0268); "format specifier requires numeric argum"... ...
E0262:  ADD             R0, SP, #0x68+var_1C; this
E0264:  ADD             R1, PC; "format specifier requires numeric argum"...
E0266:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E026A:  LDR             R1, =(aInvalidTypeSpe - 0xE0272); "invalid type specifier" ...
E026C:  ADD             R0, SP, #0x68+var_1C; this
E026E:  ADD             R1, PC; "invalid type specifier"
E0270:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
