; =========================================================
; Game Engine Function: alBufferSubDataSOFT
; Address            : 0x23FEF0 - 0x24035C
; =========================================================

23FEF0:  PUSH            {R4-R7,LR}
23FEF2:  ADD             R7, SP, #0xC
23FEF4:  PUSH.W          {R8-R11}
23FEF8:  SUB             SP, SP, #0x1C
23FEFA:  MOV             R11, R3
23FEFC:  MOV             R10, R2
23FEFE:  MOV             R5, R1
23FF00:  MOV             R6, R0
23FF02:  LDR             R4, [R7,#arg_0]
23FF04:  BLX             j_GetContextRef
23FF08:  MOV             R9, R0
23FF0A:  CMP.W           R9, #0
23FF0E:  BEQ             loc_23FF7E
23FF10:  LDR.W           R0, [R9,#0x88]
23FF14:  MOV             R1, R6
23FF16:  ADDS            R0, #0x40 ; '@'
23FF18:  BLX             j_LookupUIntMapKey
23FF1C:  CBZ             R0, loc_23FF86
23FF1E:  ORR.W           R1, R4, R11
23FF22:  CMP             R1, #0
23FF24:  BLT             loc_23FFC4
23FF26:  LDR.W           R1, =(dword_5FCDE0 - 0x23FF2E)
23FF2A:  ADD             R1, PC; dword_5FCDE0
23FF2C:  ADDS            R3, R1, #4
23FF2E:  MOVS            R1, #0
23FF30:  LDR.W           R2, [R3,#-4]
23FF34:  CMP             R2, R5
23FF36:  BEQ             loc_240002
23FF38:  ADDS            R1, #1
23FF3A:  ADDS            R3, #0xC
23FF3C:  CMP             R1, #0x24 ; '$'
23FF3E:  BCC             loc_23FF30
23FF40:  LDR.W           R0, =(TrapALError_ptr - 0x23FF48)
23FF44:  ADD             R0, PC; TrapALError_ptr
23FF46:  LDR             R0, [R0]; TrapALError
23FF48:  LDRB            R0, [R0]
23FF4A:  CMP             R0, #0
23FF4C:  ITT NE
23FF4E:  MOVNE           R0, #5; sig
23FF50:  BLXNE           raise
23FF54:  LDREX.W         R0, [R9,#0x50]
23FF58:  CMP             R0, #0
23FF5A:  BNE.W           loc_240236
23FF5E:  ADD.W           R0, R9, #0x50 ; 'P'
23FF62:  MOVW            R1, #0xA002
23FF66:  DMB.W           ISH
23FF6A:  STREX.W         R2, R1, [R0]
23FF6E:  CMP             R2, #0
23FF70:  BEQ.W           loc_24023A
23FF74:  LDREX.W         R2, [R0]
23FF78:  CMP             R2, #0
23FF7A:  BEQ             loc_23FF6A
23FF7C:  B               loc_240236
23FF7E:  ADD             SP, SP, #0x1C
23FF80:  POP.W           {R8-R11}
23FF84:  POP             {R4-R7,PC}
23FF86:  LDR.W           R0, =(TrapALError_ptr - 0x23FF8E)
23FF8A:  ADD             R0, PC; TrapALError_ptr
23FF8C:  LDR             R0, [R0]; TrapALError
23FF8E:  LDRB            R0, [R0]
23FF90:  CMP             R0, #0
23FF92:  ITT NE
23FF94:  MOVNE           R0, #5; sig
23FF96:  BLXNE           raise
23FF9A:  LDREX.W         R0, [R9,#0x50]
23FF9E:  CMP             R0, #0
23FFA0:  BNE.W           loc_240236
23FFA4:  ADD.W           R0, R9, #0x50 ; 'P'
23FFA8:  MOVW            R1, #0xA001
23FFAC:  DMB.W           ISH
23FFB0:  STREX.W         R2, R1, [R0]
23FFB4:  CMP             R2, #0
23FFB6:  BEQ.W           loc_24023A
23FFBA:  LDREX.W         R2, [R0]
23FFBE:  CMP             R2, #0
23FFC0:  BEQ             loc_23FFB0
23FFC2:  B               loc_240236
23FFC4:  LDR.W           R0, =(TrapALError_ptr - 0x23FFCC)
23FFC8:  ADD             R0, PC; TrapALError_ptr
23FFCA:  LDR             R0, [R0]; TrapALError
23FFCC:  LDRB            R0, [R0]
23FFCE:  CMP             R0, #0
23FFD0:  ITT NE
23FFD2:  MOVNE           R0, #5; sig
23FFD4:  BLXNE           raise
23FFD8:  LDREX.W         R0, [R9,#0x50]
23FFDC:  CMP             R0, #0
23FFDE:  BNE.W           loc_240236
23FFE2:  ADD.W           R0, R9, #0x50 ; 'P'
23FFE6:  MOVW            R1, #0xA003
23FFEA:  DMB.W           ISH
23FFEE:  STREX.W         R2, R1, [R0]
23FFF2:  CMP             R2, #0
23FFF4:  BEQ.W           loc_24023A
23FFF8:  LDREX.W         R2, [R0]
23FFFC:  CMP             R2, #0
23FFFE:  BEQ             loc_23FFEE
240000:  B               loc_240236
240002:  STR             R4, [SP,#0x38+var_24]
240004:  ADD.W           R5, R0, #0x34 ; '4'
240008:  LDR             R1, [R3]
24000A:  STR             R1, [SP,#0x38+var_28]
24000C:  LDR             R1, [R3,#4]
24000E:  STR             R1, [SP,#0x38+var_2C]
240010:  DMB.W           ISH
240014:  STR             R0, [SP,#0x38+var_20]
240016:  LDREX.W         R0, [R5]
24001A:  ADDS            R1, R0, #1
24001C:  STREX.W         R2, R1, [R5]
240020:  CMP             R2, #0
240022:  BNE             loc_240016
240024:  CMP             R0, #0
240026:  DMB.W           ISH
24002A:  BNE             loc_24006C
24002C:  DMB.W           ISH
240030:  MOVS            R1, #1
240032:  LDR             R0, [SP,#0x38+var_20]
240034:  ADD.W           R6, R0, #0x38 ; '8'
240038:  LDREX.W         R0, [R6]
24003C:  STREX.W         R2, R1, [R6]
240040:  CMP             R2, #0
240042:  BNE             loc_240038
240044:  CMP             R0, #1
240046:  DMB.W           ISH
24004A:  BNE             loc_24006C
24004C:  MOV.W           R8, #1
240050:  BLX             sched_yield
240054:  DMB.W           ISH
240058:  LDREX.W         R0, [R6]
24005C:  STREX.W         R1, R8, [R6]
240060:  CMP             R1, #0
240062:  BNE             loc_240058
240064:  CMP             R0, #1
240066:  DMB.W           ISH
24006A:  BEQ             loc_240050
24006C:  DMB.W           ISH
240070:  MOVS            R1, #1
240072:  LDR             R0, [SP,#0x38+var_20]
240074:  ADD.W           R6, R0, #0x40 ; '@'
240078:  LDREX.W         R0, [R6]
24007C:  STREX.W         R2, R1, [R6]
240080:  CMP             R2, #0
240082:  BNE             loc_240078
240084:  CMP             R0, #1
240086:  DMB.W           ISH
24008A:  BNE             loc_2400AA
24008C:  MOVS            R4, #1
24008E:  BLX             sched_yield
240092:  DMB.W           ISH
240096:  LDREX.W         R0, [R6]
24009A:  STREX.W         R1, R4, [R6]
24009E:  CMP             R1, #0
2400A0:  BNE             loc_240096
2400A2:  CMP             R0, #1
2400A4:  DMB.W           ISH
2400A8:  BEQ             loc_24008E
2400AA:  LDR.W           R12, [SP,#0x38+var_20]
2400AE:  MOVW            R3, #0x140C
2400B2:  LDRD.W          R1, R0, [R12,#0x18]
2400B6:  CMP             R0, R3
2400B8:  SUB.W           R2, R1, #0x1500
2400BC:  BNE             loc_2400CC
2400BE:  CMP             R2, #7
2400C0:  BCS             loc_2400DA
2400C2:  LDR             R3, =(unk_60A660 - 0x2400C8)
2400C4:  ADD             R3, PC; unk_60A660
2400C6:  LDR.W           R4, [R3,R2,LSL#2]
2400CA:  B               loc_2400DC
2400CC:  CMP             R2, #6
2400CE:  BHI             loc_2400E0
2400D0:  LDR             R3, =(unk_60A680 - 0x2400D6)
2400D2:  ADD             R3, PC; unk_60A680
2400D4:  LDR.W           R2, [R3,R2,LSL#2]
2400D8:  B               loc_2400E2
2400DA:  MOVS            R4, #0
2400DC:  MOV             R8, R10
2400DE:  B               loc_2400FC
2400E0:  MOVS            R2, #0
2400E2:  SUB.W           R3, R0, #0x1400
2400E6:  CMP             R3, #0xB
2400E8:  BHI             loc_2400F4
2400EA:  LDR             R4, =(unk_60A6A0 - 0x2400F0)
2400EC:  ADD             R4, PC; unk_60A6A0
2400EE:  LDR.W           R3, [R4,R3,LSL#2]
2400F2:  B               loc_2400F6
2400F4:  MOVS            R3, #0
2400F6:  MOV             R8, R10
2400F8:  MUL.W           R4, R3, R2
2400FC:  LDRD.W          R2, R10, [SP,#0x38+var_28]
240100:  CMP             R2, R1
240102:  ITT EQ
240104:  LDREQ           R1, [SP,#0x38+var_2C]
240106:  CMPEQ           R1, R0
240108:  BEQ             loc_24018C
24010A:  MOVS            R0, #0
24010C:  DMB.W           ISH
240110:  LDREX.W         R1, [R6]
240114:  STREX.W         R1, R0, [R6]
240118:  CMP             R1, #0
24011A:  BNE             loc_240110
24011C:  DMB.W           ISH
240120:  DMB.W           ISH
240124:  LDREX.W         R0, [R5]
240128:  SUBS            R1, R0, #1
24012A:  STREX.W         R2, R1, [R5]
24012E:  CMP             R2, #0
240130:  BNE             loc_240124
240132:  CMP             R0, #1
240134:  DMB.W           ISH
240138:  BNE             loc_240154
24013A:  ADD.W           R0, R12, #0x38 ; '8'
24013E:  MOVS            R1, #0
240140:  DMB.W           ISH
240144:  LDREX.W         R2, [R0]
240148:  STREX.W         R2, R1, [R0]
24014C:  CMP             R2, #0
24014E:  BNE             loc_240144
240150:  DMB.W           ISH
240154:  LDR             R0, =(TrapALError_ptr - 0x24015A)
240156:  ADD             R0, PC; TrapALError_ptr
240158:  LDR             R0, [R0]; TrapALError
24015A:  LDRB            R0, [R0]
24015C:  CMP             R0, #0
24015E:  ITT NE
240160:  MOVNE           R0, #5; sig
240162:  BLXNE           raise
240166:  LDREX.W         R0, [R9,#0x50]
24016A:  CMP             R0, #0
24016C:  BNE             loc_240236
24016E:  ADD.W           R0, R9, #0x50 ; 'P'
240172:  MOVW            R1, #0xA002
240176:  DMB.W           ISH
24017A:  STREX.W         R2, R1, [R0]
24017E:  CMP             R2, #0
240180:  BEQ             loc_24023A
240182:  LDREX.W         R2, [R0]
240186:  CMP             R2, #0
240188:  BEQ             loc_24017A
24018A:  B               loc_240236
24018C:  LDR.W           R0, [R12,#0x20]
240190:  CMP             R0, R11
240192:  ITT GE
240194:  SUBGE.W         R0, R0, R11
240198:  CMPGE           R0, R10
24019A:  BLT             loc_2401BA
24019C:  MOV             R0, R11
24019E:  MOV             R1, R4
2401A0:  BLX             __aeabi_uidivmod
2401A4:  LDR.W           R12, [SP,#0x38+var_20]
2401A8:  CBNZ            R1, loc_2401BA
2401AA:  MOV             R0, R10
2401AC:  MOV             R1, R4
2401AE:  BLX             __aeabi_uidivmod
2401B2:  LDR.W           R12, [SP,#0x38+var_20]
2401B6:  CMP             R1, #0
2401B8:  BEQ             loc_24024E
2401BA:  MOVS            R0, #0
2401BC:  DMB.W           ISH
2401C0:  LDREX.W         R1, [R6]
2401C4:  STREX.W         R1, R0, [R6]
2401C8:  CMP             R1, #0
2401CA:  BNE             loc_2401C0
2401CC:  DMB.W           ISH
2401D0:  DMB.W           ISH
2401D4:  LDREX.W         R0, [R5]
2401D8:  SUBS            R1, R0, #1
2401DA:  STREX.W         R2, R1, [R5]
2401DE:  CMP             R2, #0
2401E0:  BNE             loc_2401D4
2401E2:  CMP             R0, #1
2401E4:  DMB.W           ISH
2401E8:  BNE             loc_240204
2401EA:  ADD.W           R0, R12, #0x38 ; '8'
2401EE:  MOVS            R1, #0
2401F0:  DMB.W           ISH
2401F4:  LDREX.W         R2, [R0]
2401F8:  STREX.W         R2, R1, [R0]
2401FC:  CMP             R2, #0
2401FE:  BNE             loc_2401F4
240200:  DMB.W           ISH
240204:  LDR             R0, =(TrapALError_ptr - 0x24020A)
240206:  ADD             R0, PC; TrapALError_ptr
240208:  LDR             R0, [R0]; TrapALError
24020A:  LDRB            R0, [R0]
24020C:  CMP             R0, #0
24020E:  ITT NE
240210:  MOVNE           R0, #5; sig
240212:  BLXNE           raise
240216:  LDREX.W         R0, [R9,#0x50]
24021A:  CBNZ            R0, loc_240236
24021C:  ADD.W           R0, R9, #0x50 ; 'P'
240220:  MOVW            R1, #0xA003
240224:  DMB.W           ISH
240228:  STREX.W         R2, R1, [R0]
24022C:  CBZ             R2, loc_24023A
24022E:  LDREX.W         R2, [R0]
240232:  CMP             R2, #0
240234:  BEQ             loc_240228
240236:  CLREX.W
24023A:  DMB.W           ISH
24023E:  MOV             R0, R9
240240:  ADD             SP, SP, #0x1C
240242:  POP.W           {R8-R11}
240246:  POP.W           {R4-R7,LR}
24024A:  B.W             ALCcontext_DecRef
24024E:  LDR.W           R0, [R12,#0x10]
240252:  SUB.W           R0, R0, #0x1500
240256:  CMP             R0, #6
240258:  BHI             loc_240264
24025A:  LDR             R2, =(unk_60A680 - 0x240260)
24025C:  ADD             R2, PC; unk_60A680
24025E:  LDR.W           R0, [R2,R0,LSL#2]
240262:  B               loc_240266
240264:  MOVS            R0, #0
240266:  STR             R0, [SP,#0x38+var_24]
240268:  LDR.W           R0, [R12,#0x14]
24026C:  STR             R0, [SP,#0x38+var_28]
24026E:  SUB.W           R0, R0, #0x1400
240272:  CMP             R0, #6
240274:  BHI             loc_240280
240276:  LDR             R2, =(unk_60A580 - 0x24027C)
240278:  ADD             R2, PC; unk_60A580
24027A:  LDR.W           R0, [R2,R0,LSL#2]
24027E:  B               loc_240282
240280:  MOVS            R0, #0
240282:  STR             R0, [SP,#0x38+var_30]
240284:  LDR             R0, [SP,#0x38+var_2C]
240286:  SUB.W           R0, R0, #0x1400; switch 13 cases
24028A:  CMP             R0, #0xC
24028C:  BHI             def_240290; jumptable 00240290 default case
24028E:  MOVS            R3, #1
240290:  TBB.W           [PC,R0]; switch jump
240294:  DCB 0x22; jump table for switch statement
240295:  DCB 0x22
240296:  DCB 9
240297:  DCB 9
240298:  DCB 7
240299:  DCB 7
24029A:  DCB 7
24029B:  DCB 0xD
24029C:  DCB 0xB
24029D:  DCB 0xB
24029E:  DCB 0x22
24029F:  DCB 0x22
2402A0:  DCB 0xF
2402A1:  ALIGN 2
2402A2:  MOVS            R3, #4; jumptable 00240290 cases 5124-5126
2402A4:  B               loc_2402D8; jumptable 00240290 cases 5120,5121,5130,5131
2402A6:  MOVS            R3, #2; jumptable 00240290 cases 5122,5123
2402A8:  B               loc_2402D8; jumptable 00240290 cases 5120,5121,5130,5131
2402AA:  MOVS            R3, #3; jumptable 00240290 cases 5128,5129
2402AC:  B               loc_2402D8; jumptable 00240290 cases 5120,5121,5130,5131
2402AE:  MOVS            R3, #8; jumptable 00240290 case 5127
2402B0:  B               loc_2402D8; jumptable 00240290 cases 5120,5121,5130,5131
2402B2:  MOVW            R0, #0x8E39; jumptable 00240290 case 5132
2402B6:  MOV             R1, R4
2402B8:  MOVT            R0, #0x38E3
2402BC:  SMMUL.W         R0, R11, R0
2402C0:  ASRS            R2, R0, #3
2402C2:  ADD.W           R0, R2, R0,LSR#31
2402C6:  ADD.W           R11, R0, R0,LSL#6
2402CA:  MOV             R0, R10
2402CC:  BLX             __aeabi_uidiv
2402D0:  ADD.W           R0, R0, R0,LSL#6
2402D4:  B               loc_2402F6
2402D6:  MOVS            R3, #0; jumptable 00240290 default case
2402D8:  MOV             R0, R11; jumptable 00240290 cases 5120,5121,5130,5131
2402DA:  MOV             R1, R3
2402DC:  MOV             R4, R3
2402DE:  BLX             __aeabi_uidiv
2402E2:  MOV             R2, R0
2402E4:  MOV             R1, R4
2402E6:  MOV             R0, R10
2402E8:  LDR             R4, [SP,#0x38+var_24]
2402EA:  MOV             R11, R2
2402EC:  BLX             __aeabi_uidiv
2402F0:  MOV             R1, R4
2402F2:  BLX             __aeabi_uidiv
2402F6:  LDR             R1, [SP,#0x38+var_20]
2402F8:  LDR             R2, [SP,#0x38+var_30]
2402FA:  LDR             R1, [R1]
2402FC:  MLA.W           R1, R11, R2, R1
240300:  LDR             R2, [SP,#0x38+var_24]
240302:  STRD.W          R2, R0, [SP,#0x38+var_38]
240306:  LDR             R3, [SP,#0x38+var_2C]
240308:  MOV             R2, R8
24030A:  MOV             R0, R1
24030C:  LDR             R1, [SP,#0x38+var_28]
24030E:  BL              sub_2404D8
240312:  MOVS            R0, #0
240314:  DMB.W           ISH
240318:  LDREX.W         R1, [R6]
24031C:  STREX.W         R1, R0, [R6]
240320:  CMP             R1, #0
240322:  BNE             loc_240318
240324:  DMB.W           ISH
240328:  DMB.W           ISH
24032C:  LDREX.W         R0, [R5]
240330:  SUBS            R1, R0, #1
240332:  STREX.W         R2, R1, [R5]
240336:  CMP             R2, #0
240338:  BNE             loc_24032C
24033A:  DMB.W           ISH
24033E:  CMP             R0, #1
240340:  LDR             R0, [SP,#0x38+var_20]
240342:  BNE.W           loc_24023E
240346:  ADDS            R0, #0x38 ; '8'
240348:  MOVS            R1, #0
24034A:  DMB.W           ISH
24034E:  LDREX.W         R2, [R0]
240352:  STREX.W         R2, R1, [R0]
240356:  CMP             R2, #0
240358:  BNE             loc_24034E
24035A:  B               loc_24023A
