; =========================================================
; Game Engine Function: sub_101F48
; Address            : 0x101F48 - 0x1024C4
; =========================================================

101F48:  PUSH            {R4-R7,LR}
101F4A:  ADD             R7, SP, #0xC
101F4C:  PUSH.W          {R5-R11}
101F50:  MOV             R8, R0
101F52:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x101F5A)
101F56:  ADD             R0, PC; __stack_chk_guard_ptr
101F58:  LDR             R0, [R0]; __stack_chk_guard
101F5A:  LDR             R0, [R0]
101F5C:  STR             R0, [SP,#0x28+var_20]
101F5E:  LDRD.W          R6, R4, [R8]
101F62:  CMP             R6, R4
101F64:  BEQ.W           loc_1024A6
101F68:  LDRB            R0, [R6]
101F6A:  CMP             R0, #0x4C ; 'L'
101F6C:  BNE.W           loc_1024A6
101F70:  ADDS            R1, R6, #1
101F72:  STR.W           R1, [R8]
101F76:  SUBS            R0, R4, R1
101F78:  BEQ.W           def_101F8A; jumptable 00101F8A default case, cases 66,67,69-83,86-94,96,103,107,112-114,117,118
101F7C:  LDRB            R1, [R1]
101F7E:  SUBS            R1, #0x41 ; 'A'; switch 57 cases
101F80:  CMP             R1, #0x38 ; '8'
101F82:  BHI.W           def_101F8A; jumptable 00101F8A default case, cases 66,67,69-83,86-94,96,103,107,112-114,117,118
101F86:  MOV.W           R11, #0
101F8A:  TBH.W           [PC,R1,LSL#1]; switch jump
101F8E:  DCW 0x39; jump table for switch statement
101F90:  DCW 0x56
101F92:  DCW 0x56
101F94:  DCW 0x86
101F96:  DCW 0x56
101F98:  DCW 0x56
101F9A:  DCW 0x56
101F9C:  DCW 0x56
101F9E:  DCW 0x56
101FA0:  DCW 0x56
101FA2:  DCW 0x56
101FA4:  DCW 0x56
101FA6:  DCW 0x56
101FA8:  DCW 0x56
101FAA:  DCW 0x56
101FAC:  DCW 0x56
101FAE:  DCW 0x56
101FB0:  DCW 0x56
101FB2:  DCW 0x56
101FB4:  DCW 0x28E
101FB6:  DCW 0xA2
101FB8:  DCW 0x56
101FBA:  DCW 0x56
101FBC:  DCW 0x56
101FBE:  DCW 0x56
101FC0:  DCW 0x56
101FC2:  DCW 0x56
101FC4:  DCW 0x56
101FC6:  DCW 0x56
101FC8:  DCW 0x56
101FCA:  DCW 0xD0
101FCC:  DCW 0x56
101FCE:  DCW 0xED
101FD0:  DCW 0xFD
101FD2:  DCW 0x108
101FD4:  DCW 0x117
101FD6:  DCW 0x130
101FD8:  DCW 0x149
101FDA:  DCW 0x56
101FDC:  DCW 0x162
101FDE:  DCW 0x172
101FE0:  DCW 0x182
101FE2:  DCW 0x56
101FE4:  DCW 0x190
101FE6:  DCW 0x19F
101FE8:  DCW 0x1AD
101FEA:  DCW 0x1BD
101FEC:  DCW 0x56
101FEE:  DCW 0x56
101FF0:  DCW 0x56
101FF2:  DCW 0x1CD
101FF4:  DCW 0x1DC
101FF6:  DCW 0x56
101FF8:  DCW 0x56
101FFA:  DCW 0x1EC
101FFC:  DCW 0x1FB
101FFE:  DCW 0x20A
102000:  MOV             R0, R8; jumptable 00101F8A case 65
102002:  BL              sub_FE7F0
102006:  CMP             R0, #0
102008:  BEQ.W           loc_1024A6
10200C:  MOV             R6, R0
10200E:  LDRD.W          R0, R1, [R8]
102012:  CMP             R0, R1
102014:  BEQ.W           loc_1024A6
102018:  LDRB            R1, [R0]
10201A:  CMP             R1, #0x45 ; 'E'
10201C:  BNE.W           loc_1024A6
102020:  ADDS            R0, #1
102022:  STR.W           R0, [R8]
102026:  ADD.W           R0, R8, #0x198
10202A:  MOVS            R1, #0xC
10202C:  BL              sub_FFA98
102030:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13StringLiteralE - 0x10203A); `vtable for'`anonymous namespace'::itanium_demangle::StringLiteral ...
102032:  MOV             R11, R0
102034:  LDR             R0, =0x1010142
102036:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::StringLiteral
102038:  B               loc_10211E
10203A:  MOV             R0, R8; jumptable 00101F8A default case, cases 66,67,69-83,86-94,96,103,107,112-114,117,118
10203C:  BL              sub_FE7F0
102040:  CMP             R0, #0
102042:  BEQ.W           loc_1024A6
102046:  MOV             R6, R0
102048:  MOV             R0, SP
10204A:  MOV             R1, R8
10204C:  MOVS            R2, #0
10204E:  MOV.W           R11, #0
102052:  BL              sub_FE75C
102056:  LDRD.W          R4, R9, [SP,#0x28+var_28]
10205A:  CMP             R4, R9
10205C:  BEQ.W           loc_1024AA; jumptable 00101F8A case 84
102060:  LDRD.W          R0, R1, [R8]
102064:  CMP             R0, R1
102066:  BEQ.W           loc_1024A6
10206A:  LDRB            R1, [R0]
10206C:  CMP             R1, #0x45 ; 'E'
10206E:  BNE.W           loc_1024A6
102072:  ADDS            R0, #1
102074:  STR.W           R0, [R8]
102078:  ADD.W           R0, R8, #0x198
10207C:  MOVS            R1, #0x14
10207E:  BL              sub_FFA98
102082:  MOV             R11, R0
102084:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle15IntegerCastExprE - 0x10208C); `vtable for'`anonymous namespace'::itanium_demangle::IntegerCastExpr ...
102086:  LDR             R0, =0x1010144
102088:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::IntegerCastExpr
10208A:  STRD.W          R6, R4, [R11,#8]
10208E:  ADDS            R1, #8
102090:  STR.W           R9, [R11,#0x10]
102094:  STRD.W          R1, R0, [R11]
102098:  B               loc_1024AA; jumptable 00101F8A case 84
10209A:  LDR             R1, =(aDne - 0x1020A2); jumptable 00101F8A case 68
10209C:  MOV             R0, R8
10209E:  ADD             R1, PC; "DnE"
1020A0:  ADDS            R2, R1, #3
1020A2:  BL              sub_FE18C
1020A6:  CMP             R0, #0
1020A8:  BEQ.W           loc_1024A6
1020AC:  LDR             R0, [SP,#0x28+var_20]
1020AE:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1020B6)
1020B2:  ADD             R1, PC; __stack_chk_guard_ptr
1020B4:  LDR             R1, [R1]; __stack_chk_guard
1020B6:  LDR             R1, [R1]
1020B8:  CMP             R1, R0
1020BA:  BNE.W           loc_1024C0
1020BE:  LDR             R1, =(aNullptr - 0x1020C6); "nullptr" ...
1020C0:  MOV             R0, R8
1020C2:  ADD             R1, PC; "nullptr"
1020C4:  ADD             SP, SP, #0xC
1020C6:  POP.W           {R8-R11}
1020CA:  POP.W           {R4-R7,LR}
1020CE:  B.W             sub_102C10
1020D2:  CMP             R0, #2; jumptable 00101F8A case 85
1020D4:  BCC.W           loc_1024A6
1020D8:  LDRB            R0, [R6,#2]
1020DA:  CMP             R0, #0x6C ; 'l'
1020DC:  BNE.W           loc_1024A6
1020E0:  MOV             R0, R8
1020E2:  MOVS            R1, #0
1020E4:  MOV.W           R11, #0
1020E8:  BL              sub_102C48
1020EC:  CMP             R0, #0
1020EE:  BEQ.W           loc_1024AA; jumptable 00101F8A case 84
1020F2:  MOV             R6, R0
1020F4:  LDRD.W          R0, R1, [R8]
1020F8:  CMP             R0, R1
1020FA:  BEQ.W           loc_1024A6
1020FE:  LDRB            R1, [R0]
102100:  CMP             R1, #0x45 ; 'E'
102102:  BNE.W           loc_1024A6
102106:  ADDS            R0, #1
102108:  STR.W           R0, [R8]
10210C:  ADD.W           R0, R8, #0x198
102110:  MOVS            R1, #0xC
102112:  BL              sub_FFA98
102116:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle10LambdaExprE - 0x102120); `vtable for'`anonymous namespace'::itanium_demangle::LambdaExpr ...
102118:  MOV             R11, R0
10211A:  LDR             R0, =0x1010143
10211C:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::LambdaExpr
10211E:  ADDS            R1, #8
102120:  STR.W           R1, [R11]
102124:  STR.W           R0, [R11,#4]
102128:  STR.W           R6, [R11,#8]
10212C:  B               loc_1024AA; jumptable 00101F8A case 84
10212E:  LDR             R1, =(aZ - 0x102136); jumptable 00101F8A case 95
102130:  MOV             R0, R8
102132:  ADD             R1, PC; "_Z"
102134:  ADDS            R2, R1, #2
102136:  BL              sub_FE18C
10213A:  CMP             R0, #0
10213C:  BEQ.W           loc_1024A6
102140:  MOV             R0, R8
102142:  BL              sub_FE1FC
102146:  CMP             R0, #0
102148:  BEQ.W           loc_1024A6
10214C:  MOV             R11, R0
10214E:  LDRD.W          R0, R1, [R8]
102152:  CMP             R0, R1
102154:  BEQ.W           loc_1024A6
102158:  LDRB            R1, [R0]
10215A:  CMP             R1, #0x45 ; 'E'
10215C:  BNE.W           loc_1024A6
102160:  ADDS            R0, #1
102162:  STR.W           R0, [R8]
102166:  B               loc_1024AA; jumptable 00101F8A case 84
102168:  ADDS            R0, R6, #2; jumptable 00101F8A case 97
10216A:  STR.W           R0, [R8]
10216E:  LDR             R0, [SP,#0x28+var_20]
102170:  LDR             R1, =(__stack_chk_guard_ptr - 0x102176)
102172:  ADD             R1, PC; __stack_chk_guard_ptr
102174:  LDR             R1, [R1]; __stack_chk_guard
102176:  LDR             R1, [R1]
102178:  CMP             R1, R0
10217A:  BNE.W           loc_1024C0
10217E:  LDR             R1, =(aSignedChar - 0x102184); "signed char" ...
102180:  ADD             R1, PC; "signed char"
102182:  ADD.W           R2, R1, #0xB
102186:  B               loc_1023BE
102188:  LDR             R1, =(aB0e - 0x102190); jumptable 00101F8A case 98
10218A:  MOV             R0, R8
10218C:  ADD             R1, PC; "b0E"
10218E:  ADDS            R2, R1, #3
102190:  BL              sub_FE18C
102194:  CMP             R0, #0
102196:  BEQ.W           loc_1023F0
10219A:  MOVS            R0, #0
10219C:  B               loc_102402
10219E:  ADDS            R0, R6, #2; jumptable 00101F8A case 99
1021A0:  STR.W           R0, [R8]
1021A4:  LDR             R0, [SP,#0x28+var_20]
1021A6:  LDR             R1, =(__stack_chk_guard_ptr - 0x1021AC)
1021A8:  ADD             R1, PC; __stack_chk_guard_ptr
1021AA:  LDR             R1, [R1]; __stack_chk_guard
1021AC:  LDR             R1, [R1]
1021AE:  CMP             R1, R0
1021B0:  BNE.W           loc_1024C0
1021B4:  LDR             R1, =(aChar - 0x1021BA); "char" ...
1021B6:  ADD             R1, PC; "char"
1021B8:  ADDS            R2, R1, #4
1021BA:  B               loc_1023BE
1021BC:  ADD.W           R9, R6, #2; jumptable 00101F8A case 100
1021C0:  STR.W           R9, [R8]
1021C4:  SUB.W           R0, R4, R9
1021C8:  CMP             R0, #0x11
1021CA:  BCC.W           loc_1024A6
1021CE:  ADD.W           R10, R6, #0x12
1021D2:  MOVS            R5, #0
1021D4:  MOV.W           R11, #0
1021D8:  CMP             R5, #0x10
1021DA:  BEQ.W           loc_102410
1021DE:  LDRB.W          R0, [R9,R5]
1021E2:  BL              sub_102F84
1021E6:  ADDS            R5, #1
1021E8:  CMP             R0, #0
1021EA:  BNE             loc_1021D8
1021EC:  B               loc_1024AA; jumptable 00101F8A case 84
1021EE:  ADD.W           R9, R6, #2; jumptable 00101F8A case 101
1021F2:  STR.W           R9, [R8]
1021F6:  SUB.W           R0, R4, R9
1021FA:  CMP             R0, #0x11
1021FC:  BCC.W           loc_1024A6
102200:  ADD.W           R10, R6, #0x12
102204:  MOVS            R5, #0
102206:  MOV.W           R11, #0
10220A:  CMP             R5, #0x10
10220C:  BEQ.W           loc_10243C
102210:  LDRB.W          R0, [R9,R5]
102214:  BL              sub_102F84
102218:  ADDS            R5, #1
10221A:  CMP             R0, #0
10221C:  BNE             loc_10220A
10221E:  B               loc_1024AA; jumptable 00101F8A case 84
102220:  ADD.W           R9, R6, #2; jumptable 00101F8A case 102
102224:  STR.W           R9, [R8]
102228:  SUB.W           R0, R4, R9
10222C:  CMP             R0, #9
10222E:  BCC.W           loc_1024A6
102232:  ADD.W           R10, R6, #0xA
102236:  MOVS            R5, #0
102238:  MOV.W           R11, #0
10223C:  CMP             R5, #8
10223E:  BEQ.W           loc_102468
102242:  LDRB.W          R0, [R9,R5]
102246:  BL              sub_102F84
10224A:  ADDS            R5, #1
10224C:  CMP             R0, #0
10224E:  BNE             loc_10223C
102250:  B               loc_1024AA; jumptable 00101F8A case 84
102252:  ADDS            R0, R6, #2; jumptable 00101F8A case 104
102254:  STR.W           R0, [R8]
102258:  LDR             R0, [SP,#0x28+var_20]
10225A:  LDR             R1, =(__stack_chk_guard_ptr - 0x102260)
10225C:  ADD             R1, PC; __stack_chk_guard_ptr
10225E:  LDR             R1, [R1]; __stack_chk_guard
102260:  LDR             R1, [R1]
102262:  CMP             R1, R0
102264:  BNE.W           loc_1024C0
102268:  LDR             R1, =(aUnsignedChar - 0x10226E); "unsigned char" ...
10226A:  ADD             R1, PC; "unsigned char"
10226C:  ADD.W           R2, R1, #0xD
102270:  B               loc_1023BE
102272:  ADDS            R0, R6, #2; jumptable 00101F8A case 105
102274:  STR.W           R0, [R8]
102278:  LDR             R0, [SP,#0x28+var_20]
10227A:  LDR             R1, =(__stack_chk_guard_ptr - 0x102280)
10227C:  ADD             R1, PC; __stack_chk_guard_ptr
10227E:  LDR             R1, [R1]; __stack_chk_guard
102280:  LDR             R1, [R1]
102282:  CMP             R1, R0
102284:  BNE.W           loc_1024C0
102288:  LDR             R1, =(byte_4FDB8 - 0x102290)
10228A:  MOV             R0, R8
10228C:  ADD             R1, PC; byte_4FDB8
10228E:  MOV             R2, R1
102290:  B               loc_1023C0
102292:  ADDS            R0, R6, #2; jumptable 00101F8A case 106
102294:  STR.W           R0, [R8]
102298:  LDR             R0, [SP,#0x28+var_20]
10229A:  LDR             R1, =(__stack_chk_guard_ptr - 0x1022A0)
10229C:  ADD             R1, PC; __stack_chk_guard_ptr
10229E:  LDR             R1, [R1]; __stack_chk_guard
1022A0:  LDR             R1, [R1]
1022A2:  CMP             R1, R0
1022A4:  BNE.W           loc_1024C0
1022A8:  LDR             R1, =(aU - 0x1022AE); "u" ...
1022AA:  ADD             R1, PC; "u"
1022AC:  B               loc_1022C8
1022AE:  ADDS            R0, R6, #2; jumptable 00101F8A case 108
1022B0:  STR.W           R0, [R8]
1022B4:  LDR             R0, [SP,#0x28+var_20]
1022B6:  LDR             R1, =(__stack_chk_guard_ptr - 0x1022BC)
1022B8:  ADD             R1, PC; __stack_chk_guard_ptr
1022BA:  LDR             R1, [R1]; __stack_chk_guard
1022BC:  LDR             R1, [R1]
1022BE:  CMP             R1, R0
1022C0:  BNE.W           loc_1024C0
1022C4:  LDR             R1, =(aL_0 - 0x1022CA); "l" ...
1022C6:  ADD             R1, PC; "l"
1022C8:  ADDS            R2, R1, #1
1022CA:  B               loc_1023BE
1022CC:  ADDS            R0, R6, #2; jumptable 00101F8A case 109
1022CE:  STR.W           R0, [R8]
1022D2:  LDR             R0, [SP,#0x28+var_20]
1022D4:  LDR             R1, =(__stack_chk_guard_ptr - 0x1022DA)
1022D6:  ADD             R1, PC; __stack_chk_guard_ptr
1022D8:  LDR             R1, [R1]; __stack_chk_guard
1022DA:  LDR             R1, [R1]
1022DC:  CMP             R1, R0
1022DE:  BNE.W           loc_1024C0
1022E2:  LDR             R1, =(aUl - 0x1022E8); "ul" ...
1022E4:  ADD             R1, PC; "ul"
1022E6:  B               loc_10239E
1022E8:  ADDS            R0, R6, #2; jumptable 00101F8A case 110
1022EA:  STR.W           R0, [R8]
1022EE:  LDR             R0, [SP,#0x28+var_20]
1022F0:  LDR             R1, =(__stack_chk_guard_ptr - 0x1022F6)
1022F2:  ADD             R1, PC; __stack_chk_guard_ptr
1022F4:  LDR             R1, [R1]; __stack_chk_guard
1022F6:  LDR             R1, [R1]
1022F8:  CMP             R1, R0
1022FA:  BNE.W           loc_1024C0
1022FE:  LDR             R1, =(aInt128 - 0x102304); "__int128" ...
102300:  ADD             R1, PC; "__int128"
102302:  ADD.W           R2, R1, #8
102306:  B               loc_1023BE
102308:  ADDS            R0, R6, #2; jumptable 00101F8A case 111
10230A:  STR.W           R0, [R8]
10230E:  LDR             R0, [SP,#0x28+var_20]
102310:  LDR             R1, =(__stack_chk_guard_ptr - 0x102316)
102312:  ADD             R1, PC; __stack_chk_guard_ptr
102314:  LDR             R1, [R1]; __stack_chk_guard
102316:  LDR             R1, [R1]
102318:  CMP             R1, R0
10231A:  BNE.W           loc_1024C0
10231E:  LDR             R1, =(aUnsignedInt128 - 0x102324); "unsigned __int128" ...
102320:  ADD             R1, PC; "unsigned __int128"
102322:  ADD.W           R2, R1, #0x11
102326:  B               loc_1023BE
102328:  ADDS            R0, R6, #2; jumptable 00101F8A case 115
10232A:  STR.W           R0, [R8]
10232E:  LDR             R0, [SP,#0x28+var_20]
102330:  LDR             R1, =(__stack_chk_guard_ptr - 0x102336)
102332:  ADD             R1, PC; __stack_chk_guard_ptr
102334:  LDR             R1, [R1]; __stack_chk_guard
102336:  LDR             R1, [R1]
102338:  CMP             R1, R0
10233A:  BNE.W           loc_1024C0
10233E:  LDR             R1, =(aShort - 0x102344); "short" ...
102340:  ADD             R1, PC; "short"
102342:  ADDS            R2, R1, #5
102344:  B               loc_1023BE
102346:  ADDS            R0, R6, #2; jumptable 00101F8A case 116
102348:  STR.W           R0, [R8]
10234C:  LDR             R0, [SP,#0x28+var_20]
10234E:  LDR             R1, =(__stack_chk_guard_ptr - 0x102354)
102350:  ADD             R1, PC; __stack_chk_guard_ptr
102352:  LDR             R1, [R1]; __stack_chk_guard
102354:  LDR             R1, [R1]
102356:  CMP             R1, R0
102358:  BNE.W           loc_1024C0
10235C:  LDR             R1, =(aUnsignedShort - 0x102362); "unsigned short" ...
10235E:  ADD             R1, PC; "unsigned short"
102360:  ADD.W           R2, R1, #0xE
102364:  B               loc_1023BE
102366:  ADDS            R0, R6, #2; jumptable 00101F8A case 119
102368:  STR.W           R0, [R8]
10236C:  LDR             R0, [SP,#0x28+var_20]
10236E:  LDR             R1, =(__stack_chk_guard_ptr - 0x102374)
102370:  ADD             R1, PC; __stack_chk_guard_ptr
102372:  LDR             R1, [R1]; __stack_chk_guard
102374:  LDR             R1, [R1]
102376:  CMP             R1, R0
102378:  BNE.W           loc_1024C0
10237C:  LDR             R1, =(aWcharT - 0x102382); "wchar_t" ...
10237E:  ADD             R1, PC; "wchar_t"
102380:  ADDS            R2, R1, #7
102382:  B               loc_1023BE
102384:  ADDS            R0, R6, #2; jumptable 00101F8A case 120
102386:  STR.W           R0, [R8]
10238A:  LDR             R0, [SP,#0x28+var_20]
10238C:  LDR             R1, =(__stack_chk_guard_ptr - 0x102392)
10238E:  ADD             R1, PC; __stack_chk_guard_ptr
102390:  LDR             R1, [R1]; __stack_chk_guard
102392:  LDR             R1, [R1]
102394:  CMP             R1, R0
102396:  BNE.W           loc_1024C0
10239A:  LDR             R1, =(aLl - 0x1023A0); "ll" ...
10239C:  ADD             R1, PC; "ll"
10239E:  ADDS            R2, R1, #2
1023A0:  B               loc_1023BE
1023A2:  ADDS            R0, R6, #2; jumptable 00101F8A case 121
1023A4:  STR.W           R0, [R8]
1023A8:  LDR             R0, [SP,#0x28+var_20]
1023AA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1023B0)
1023AC:  ADD             R1, PC; __stack_chk_guard_ptr
1023AE:  LDR             R1, [R1]; __stack_chk_guard
1023B0:  LDR             R1, [R1]
1023B2:  CMP             R1, R0
1023B4:  BNE.W           loc_1024C0
1023B8:  LDR             R1, =(aUll - 0x1023BE); "ull" ...
1023BA:  ADD             R1, PC; "ull"
1023BC:  ADDS            R2, R1, #3
1023BE:  MOV             R0, R8
1023C0:  ADD             SP, SP, #0xC
1023C2:  POP.W           {R8-R11}
1023C6:  POP.W           {R4-R7,LR}
1023CA:  B.W             sub_102B58
1023CE:  ALIGN 0x10
1023D0:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle13StringLiteralE - 0x10203A
1023D4:  DCD 0x1010142
1023D8:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle15IntegerCastExprE - 0x10208C
1023DC:  DCD 0x1010144
1023E0:  DCD aDne - 0x1020A2
1023E4:  DCD aNullptr - 0x1020C6
1023E8:  DCD _ZTVN12_GLOBAL__N_116itanium_demangle10LambdaExprE - 0x102120
1023EC:  DCD 0x1010143
1023F0:  LDR             R1, =(aB1e - 0x1023F8); "b1E" ...
1023F2:  MOV             R0, R8
1023F4:  ADD             R1, PC; "b1E"
1023F6:  ADDS            R2, R1, #3
1023F8:  BL              sub_FE18C
1023FC:  CMP             R0, #0
1023FE:  BEQ             loc_1024A6
102400:  MOVS            R0, #1
102402:  STR             R0, [SP,#0x28+var_28]
102404:  MOV             R1, SP
102406:  MOV             R0, R8
102408:  BL              sub_102BE0
10240C:  MOV             R11, R0
10240E:  B               loc_1024AA; jumptable 00101F8A case 84
102410:  STR.W           R10, [R8]
102414:  CMP             R10, R4
102416:  BEQ             loc_1024A6
102418:  LDRB.W          R0, [R10]
10241C:  CMP             R0, #0x45 ; 'E'
10241E:  BNE             loc_1024A6
102420:  ADD.W           R0, R6, #0x13
102424:  STR.W           R0, [R8]
102428:  ADD.W           R0, R8, #0x198
10242C:  MOVS            R1, #0x10
10242E:  BL              sub_FFA98
102432:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle16FloatLiteralImplIdEE - 0x10243C); `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<double> ...
102434:  MOV             R11, R0
102436:  LDR             R0, =0x1010147
102438:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<double>
10243A:  B               loc_102492
10243C:  STR.W           R10, [R8]
102440:  CMP             R10, R4
102442:  BEQ             loc_1024A6
102444:  LDRB.W          R0, [R10]
102448:  CMP             R0, #0x45 ; 'E'
10244A:  BNE             loc_1024A6
10244C:  ADD.W           R0, R6, #0x13
102450:  STR.W           R0, [R8]
102454:  ADD.W           R0, R8, #0x198
102458:  MOVS            R1, #0x10
10245A:  BL              sub_FFA98
10245E:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle16FloatLiteralImplIeEE - 0x102468); `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<long double> ...
102460:  MOV             R11, R0
102462:  LDR             R0, =0x1010148
102464:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<long double>
102466:  B               loc_102492
102468:  STR.W           R10, [R8]
10246C:  CMP             R10, R4
10246E:  BEQ             loc_1024A6
102470:  LDRB.W          R0, [R10]
102474:  CMP             R0, #0x45 ; 'E'
102476:  BNE             loc_1024A6
102478:  ADD.W           R0, R6, #0xB
10247C:  STR.W           R0, [R8]
102480:  ADD.W           R0, R8, #0x198
102484:  MOVS            R1, #0x10
102486:  BL              sub_FFA98
10248A:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle16FloatLiteralImplIfEE - 0x102494); `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<float> ...
10248C:  MOV             R11, R0
10248E:  LDR             R0, =0x1010146
102490:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::FloatLiteralImpl<float>
102492:  ADDS            R1, #8
102494:  STR.W           R1, [R11]
102498:  STR.W           R0, [R11,#4]
10249C:  STR.W           R9, [R11,#8]
1024A0:  STR.W           R10, [R11,#0xC]
1024A4:  B               loc_1024AA; jumptable 00101F8A case 84
1024A6:  MOV.W           R11, #0
1024AA:  LDR             R0, [SP,#0x28+var_20]; jumptable 00101F8A case 84
1024AC:  LDR             R1, =(__stack_chk_guard_ptr - 0x1024B2)
1024AE:  ADD             R1, PC; __stack_chk_guard_ptr
1024B0:  LDR             R1, [R1]; __stack_chk_guard
1024B2:  LDR             R1, [R1]
1024B4:  CMP             R1, R0
1024B6:  ITTT EQ
1024B8:  MOVEQ           R0, R11
1024BA:  POPEQ.W         {R1-R3,R8-R11}
1024BE:  POPEQ           {R4-R7,PC}
1024C0:  BLX             __stack_chk_fail
