; =========================================================
; Game Engine Function: _ZN11CFileLoader15LoadObjectTypesEPKc
; Address            : 0x46710C - 0x4673F4
; =========================================================

46710C:  PUSH            {R4-R7,LR}
46710E:  ADD             R7, SP, #0xC
467110:  PUSH.W          {R8-R11}
467114:  SUB             SP, SP, #0x16C; bool
467116:  MOV             R5, R0
467118:  LDR             R0, =(__stack_chk_guard_ptr - 0x467120)
46711A:  ADR             R1, dword_4673F8; char *
46711C:  ADD             R0, PC; __stack_chk_guard_ptr
46711E:  LDR             R0, [R0]; __stack_chk_guard
467120:  LDR             R0, [R0]
467122:  STR             R0, [SP,#0x188+var_20]
467124:  MOV             R0, R5; this
467126:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
46712A:  MOV             R4, R0
46712C:  ADD.W           R0, SP, #0x188+var_11F; char *
467130:  MOV             R1, R5; char *
467132:  BLX             strcpy
467136:  MOV             R0, R4; this
467138:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
46713C:  CMP             R0, #0
46713E:  BEQ.W           loc_4673D4
467142:  LDR.W           R8, =(aSSFFSSDDDDDDDD+0x63 - 0x467156); "%d %d %s"
467146:  ADD.W           R10, SP, #0x188+var_17C
46714A:  MOV.W           R1, #0xFFFFFFFF
46714E:  MOV.W           R9, #0
467152:  ADD             R8, PC; "%d %d %s"
467154:  STR             R1, [SP,#0x188+var_180]
467156:  B               loc_467182
467158:  LDR             R2, [SP,#0x188+var_180]
46715A:  MOV             R1, R11
46715C:  MOVS            R3, #1
46715E:  B               loc_467166
467160:  MOV             R1, R11; char *
467162:  LDR             R2, [SP,#0x188+var_180]; int
467164:  MOVS            R3, #0; int
467166:  BLX             j__ZN11CFileLoader15LoadCarPathNodeEPKciib; CFileLoader::LoadCarPathNode(char const*,int,int,bool)
46716A:  CMP             R6, #0xC
46716C:  IT EQ
46716E:  MOVEQ.W         R6, #0xFFFFFFFF
467172:  STR             R6, [SP,#0x188+var_180]
467174:  B               def_4671B2; jumptable 004671B2 default case, case 2
467176:  MOV.W           R9, #3
46717A:  B               def_4671B2; jumptable 004671B2 default case, case 2
46717C:  MOV.W           R9, #9
467180:  B               def_4671B2; jumptable 004671B2 default case, case 2
467182:  LDRB            R1, [R0]
467184:  CMP             R1, #0
467186:  IT NE
467188:  CMPNE           R1, #0x23 ; '#'
46718A:  BEQ.W           def_4671B2; jumptable 004671B2 default case, case 2
46718E:  CMP.W           R9, #0
467192:  BEQ             loc_4671D2
467194:  CMP             R1, #0x65 ; 'e'
467196:  ITT EQ
467198:  LDRBEQ          R1, [R0,#1]
46719A:  CMPEQ           R1, #0x6E ; 'n'
46719C:  BNE             loc_4671A6
46719E:  LDRB            R1, [R0,#2]
4671A0:  CMP             R1, #0x64 ; 'd'
4671A2:  BEQ.W           def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
4671A6:  AND.W           R1, R9, #0xF
4671AA:  SUBS            R1, #1; switch 11 cases
4671AC:  CMP             R1, #0xA
4671AE:  BHI.W           def_4671B2; jumptable 004671B2 default case, case 2
4671B2:  TBH.W           [PC,R1,LSL#1]; switch jump
4671B6:  DCW 0xB; jump table for switch statement
4671B8:  DCW 0x109
4671BA:  DCW 0x68
4671BC:  DCW 0x6B
4671BE:  DCW 0x6E
4671C0:  DCW 0x71
4671C2:  DCW 0x74
4671C4:  DCW 0x77
4671C6:  DCW 0x7A
4671C8:  DCW 0x8D
4671CA:  DCW 0x90
4671CC:  BLX             j__ZN11CFileLoader10LoadObjectEPKc; jumptable 004671B2 case 1
4671D0:  B               def_4671B2; jumptable 004671B2 default case, case 2
4671D2:  SUBS            R1, #0x32 ; '2'; switch 70 cases
4671D4:  CMP             R1, #0x45 ; 'E'
4671D6:  BHI.W           def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
4671DA:  TBH.W           [PC,R1,LSL#1]; switch jump
4671DE:  DCW 0x46; jump table for switch statement
4671E0:  DCW 0xF3
4671E2:  DCW 0xF3
4671E4:  DCW 0xF3
4671E6:  DCW 0xF3
4671E8:  DCW 0xF3
4671EA:  DCW 0xF3
4671EC:  DCW 0xF3
4671EE:  DCW 0xF3
4671F0:  DCW 0xF3
4671F2:  DCW 0xF3
4671F4:  DCW 0xF3
4671F6:  DCW 0xF3
4671F8:  DCW 0xF3
4671FA:  DCW 0xF3
4671FC:  DCW 0xF3
4671FE:  DCW 0xF3
467200:  DCW 0xF3
467202:  DCW 0xF3
467204:  DCW 0xF3
467206:  DCW 0xF3
467208:  DCW 0xF3
46720A:  DCW 0xF3
46720C:  DCW 0xF3
46720E:  DCW 0xF3
467210:  DCW 0xF3
467212:  DCW 0xF3
467214:  DCW 0xF3
467216:  DCW 0xF3
467218:  DCW 0xF3
46721A:  DCW 0xF3
46721C:  DCW 0xF3
46721E:  DCW 0xF3
467220:  DCW 0xF3
467222:  DCW 0xF3
467224:  DCW 0xF3
467226:  DCW 0xF3
467228:  DCW 0xF3
46722A:  DCW 0xF3
46722C:  DCW 0xF3
46722E:  DCW 0xF3
467230:  DCW 0xF3
467232:  DCW 0xF3
467234:  DCW 0xF3
467236:  DCW 0xF3
467238:  DCW 0xF3
46723A:  DCW 0xF3
46723C:  DCW 0x7F
46723E:  DCW 0xF3
467240:  DCW 0x8B
467242:  DCW 0xF3
467244:  DCW 0xF3
467246:  DCW 0xF3
467248:  DCW 0xF3
46724A:  DCW 0x97
46724C:  DCW 0xF3
46724E:  DCW 0xF3
467250:  DCW 0xF3
467252:  DCW 0xF3
467254:  DCW 0xF3
467256:  DCW 0xF3
467258:  DCW 0xA3
46725A:  DCW 0xAF
46725C:  DCW 0xF3
46725E:  DCW 0xF3
467260:  DCW 0xF3
467262:  DCW 0xBD
467264:  DCW 0xF3
467266:  DCW 0xF3
467268:  DCW 0xD5
46726A:  LDRB            R1, [R0,#1]; jumptable 004671DA case 50
46726C:  CMP             R1, #0x64 ; 'd'
46726E:  BNE.W           def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
467272:  LDRB            R1, [R0,#2]
467274:  CMP             R1, #0x66 ; 'f'
467276:  ITT EQ
467278:  LDRBEQ          R0, [R0,#3]
46727A:  CMPEQ           R0, #0x78 ; 'x'
46727C:  BNE.W           def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
467280:  MOV.W           R9, #0xA
467284:  B               def_4671B2; jumptable 004671B2 default case, case 2
467286:  BLX             j__ZN11CFileLoader14LoadTimeObjectEPKc; jumptable 004671B2 case 3
46728A:  B               def_4671B2; jumptable 004671B2 default case, case 2
46728C:  BLX             j__ZN11CFileLoader16LoadWeaponObjectEPKc; jumptable 004671B2 case 4
467290:  B               def_4671B2; jumptable 004671B2 default case, case 2
467292:  BLX             j__ZN11CFileLoader15LoadClumpObjectEPKc; jumptable 004671B2 case 5
467296:  B               def_4671B2; jumptable 004671B2 default case, case 2
467298:  BLX             j__ZN11CFileLoader23LoadAnimatedClumpObjectEPKc; jumptable 004671B2 case 6
46729C:  B               def_4671B2; jumptable 004671B2 default case, case 2
46729E:  BLX             j__ZN11CFileLoader17LoadVehicleObjectEPKc; jumptable 004671B2 case 7
4672A2:  B               def_4671B2; jumptable 004671B2 default case, case 2
4672A4:  BLX             j__ZN11CFileLoader13LoadPedObjectEPKc; jumptable 004671B2 case 8
4672A8:  B               def_4671B2; jumptable 004671B2 default case, case 2
4672AA:  LDR             R1, [SP,#0x188+var_180]; jumptable 004671B2 case 9
4672AC:  ADD             R2, SP, #0x188+var_174
4672AE:  ADDS            R6, R1, #1
4672B0:  BEQ             loc_4673A0
4672B2:  LDR             R1, [SP,#0x188+var_17C]
4672B4:  CMP             R1, #2
4672B6:  BEQ.W           loc_467158
4672BA:  CMP             R1, #1
4672BC:  BEQ.W           loc_467160
4672C0:  CMP             R1, #0
4672C2:  BNE.W           loc_46716A
4672C6:  LDR             R2, [SP,#0x188+var_180]; int
4672C8:  MOV             R1, R11; char *
4672CA:  BLX             j__ZN11CFileLoader15LoadPedPathNodeEPKcii; CFileLoader::LoadPedPathNode(char const*,int,int)
4672CE:  B               loc_46716A
4672D0:  BLX             j__ZN11CFileLoader12Load2dEffectEPKc; jumptable 004671B2 case 10
4672D4:  B               def_4671B2; jumptable 004671B2 default case, case 2
4672D6:  BLX             j__ZN11CFileLoader13LoadTXDParentEPKc; jumptable 004671B2 case 11
4672DA:  B               def_4671B2; jumptable 004671B2 default case, case 2
4672DC:  LDRB            R1, [R0,#1]; jumptable 004671DA case 97
4672DE:  CMP             R1, #0x6E ; 'n'
4672E0:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
4672E2:  LDRB            R1, [R0,#2]
4672E4:  CMP             R1, #0x69 ; 'i'
4672E6:  ITT EQ
4672E8:  LDRBEQ          R0, [R0,#3]
4672EA:  CMPEQ           R0, #0x6D ; 'm'
4672EC:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
4672EE:  MOV.W           R9, #6
4672F2:  B               def_4671B2; jumptable 004671B2 default case, case 2
4672F4:  LDRB            R1, [R0,#1]; jumptable 004671DA case 99
4672F6:  CMP             R1, #0x61 ; 'a'
4672F8:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
4672FA:  LDRB            R1, [R0,#2]
4672FC:  CMP             R1, #0x72 ; 'r'
4672FE:  ITT EQ
467300:  LDRBEQ          R0, [R0,#3]
467302:  CMPEQ           R0, #0x73 ; 's'
467304:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
467306:  MOV.W           R9, #7
46730A:  B               def_4671B2; jumptable 004671B2 default case, case 2
46730C:  LDRB            R1, [R0,#1]; jumptable 004671DA case 104
46730E:  CMP             R1, #0x69 ; 'i'
467310:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
467312:  LDRB            R1, [R0,#2]
467314:  CMP             R1, #0x65 ; 'e'
467316:  ITT EQ
467318:  LDRBEQ          R0, [R0,#3]
46731A:  CMPEQ           R0, #0x72 ; 'r'
46731C:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
46731E:  MOV.W           R9, #5
467322:  B               def_4671B2; jumptable 004671B2 default case, case 2
467324:  LDRB            R1, [R0,#1]; jumptable 004671DA case 111
467326:  CMP             R1, #0x62 ; 'b'
467328:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
46732A:  LDRB            R1, [R0,#2]
46732C:  CMP             R1, #0x6A ; 'j'
46732E:  ITT EQ
467330:  LDRBEQ          R0, [R0,#3]
467332:  CMPEQ           R0, #0x73 ; 's'
467334:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
467336:  MOV.W           R9, #1
46733A:  B               def_4671B2; jumptable 004671B2 default case, case 2
46733C:  LDRB            R1, [R0,#1]; jumptable 004671DA case 112
46733E:  CMP             R1, #0x61 ; 'a'
467340:  BEQ             loc_4673B6
467342:  CMP             R1, #0x65 ; 'e'
467344:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
467346:  LDRB            R1, [R0,#2]
467348:  CMP             R1, #0x64 ; 'd'
46734A:  ITT EQ
46734C:  LDRBEQ          R0, [R0,#3]
46734E:  CMPEQ           R0, #0x73 ; 's'
467350:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
467352:  MOV.W           R9, #8
467356:  B               def_4671B2; jumptable 004671B2 default case, case 2
467358:  LDRB            R1, [R0,#1]; jumptable 004671DA case 116
46735A:  CMP             R1, #0x6F ; 'o'
46735C:  BNE             loc_46736C
46735E:  LDRB            R1, [R0,#2]
467360:  CMP             R1, #0x62 ; 'b'
467362:  ITT EQ
467364:  LDRBEQ          R1, [R0,#3]
467366:  CMPEQ           R1, #0x6A ; 'j'
467368:  BEQ.W           loc_467176
46736C:  LDRB            R1, [R0,#1]
46736E:  CMP             R1, #0x78 ; 'x'
467370:  ITT EQ
467372:  LDRBEQ          R1, [R0,#2]
467374:  CMPEQ           R1, #0x64 ; 'd'
467376:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
467378:  LDRB            R0, [R0,#3]
46737A:  MOV.W           R9, #0
46737E:  CMP             R0, #0x70 ; 'p'
467380:  IT EQ
467382:  MOVEQ.W         R9, #0xB
467386:  B               def_4671B2; jumptable 004671B2 default case, case 2
467388:  LDRB            R1, [R0,#1]; jumptable 004671DA case 119
46738A:  CMP             R1, #0x65 ; 'e'
46738C:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
46738E:  LDRB            R1, [R0,#2]
467390:  CMP             R1, #0x61 ; 'a'
467392:  ITT EQ
467394:  LDRBEQ          R0, [R0,#3]
467396:  CMPEQ           R0, #0x70 ; 'p'
467398:  BNE             def_4671DA; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
46739A:  MOV.W           R9, #4
46739E:  B               def_4671B2; jumptable 004671B2 default case, case 2
4673A0:  ADD             R3, SP, #0x188+var_178
4673A2:  STR             R2, [SP,#0x188+var_188]
4673A4:  MOV             R1, R8; format
4673A6:  MOV             R2, R10
4673A8:  BLX             sscanf
4673AC:  MOVS            R0, #0
4673AE:  LDR.W           R11, [SP,#0x188+var_178]
4673B2:  STR             R0, [SP,#0x188+var_180]
4673B4:  B               def_4671B2; jumptable 004671B2 default case, case 2
4673B6:  LDRB            R1, [R0,#2]; unsigned int
4673B8:  CMP             R1, #0x74 ; 't'
4673BA:  ITT EQ
4673BC:  LDRBEQ          R0, [R0,#3]
4673BE:  CMPEQ           R0, #0x68 ; 'h'
4673C0:  BEQ.W           loc_46717C
4673C4:  MOV.W           R9, #0; jumptable 004671DA default case, cases 51-96,98,100-103,105-110,113-115,117,118
4673C8:  MOV             R0, R4; jumptable 004671B2 default case, case 2
4673CA:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
4673CE:  CMP             R0, #0
4673D0:  BNE.W           loc_467182
4673D4:  MOV             R0, R4; this
4673D6:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4673DA:  LDR             R0, =(__stack_chk_guard_ptr - 0x4673E2)
4673DC:  LDR             R1, [SP,#0x188+var_20]
4673DE:  ADD             R0, PC; __stack_chk_guard_ptr
4673E0:  LDR             R0, [R0]; __stack_chk_guard
4673E2:  LDR             R0, [R0]
4673E4:  SUBS            R0, R0, R1
4673E6:  ITTT EQ
4673E8:  ADDEQ           SP, SP, #0x16C
4673EA:  POPEQ.W         {R8-R11}
4673EE:  POPEQ           {R4-R7,PC}
4673F0:  BLX             __stack_chk_fail
