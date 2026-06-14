; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands1800To1899Ei
; Address            : 0x330034 - 0x332216
; =========================================================

330034:  PUSH            {R4-R7,LR}
330036:  ADD             R7, SP, #0xC
330038:  PUSH.W          {R8-R11}
33003C:  SUB             SP, SP, #4
33003E:  VPUSH           {D8-D14}
330042:  SUB             SP, SP, #0x90; float
330044:  MOV             R10, R0
330046:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x33004E)
33004A:  ADD             R0, PC; __stack_chk_guard_ptr
33004C:  LDR             R0, [R0]; __stack_chk_guard
33004E:  LDR             R0, [R0]
330050:  STR             R0, [SP,#0xE8+var_5C]
330052:  SUB.W           R0, R1, #0x708; switch 100 cases
330056:  CMP             R0, #0x63 ; 'c'
330058:  BHI.W           def_330066; jumptable 00330066 default case, cases 1875,1878,1879,1896,1897
33005C:  MOVW            R6, #0xFBB8
330060:  MOVS            R4, #0
330062:  MOVT            R6, #0xFFFF
330066:  TBH.W           [PC,R0,LSL#1]; switch jump
33006A:  DCW 0x69; jump table for switch statement
33006C:  DCW 0x91
33006E:  DCW 0xC0
330070:  DCW 0xC7
330072:  DCW 0xE6
330074:  DCW 0x10B
330076:  DCW 0x122
330078:  DCW 0x142
33007A:  DCW 0x17B
33007C:  DCW 0x10C4
33007E:  DCW 0x10C4
330080:  DCW 0x19A
330082:  DCW 0x1C7
330084:  DCW 0x1E6
330086:  DCW 0x205
330088:  DCW 0x26E
33008A:  DCW 0x10C4
33008C:  DCW 0x28D
33008E:  DCW 0x293
330090:  DCW 0x10C4
330092:  DCW 0x10C4
330094:  DCW 0x10C4
330096:  DCW 0x2B2
330098:  DCW 0x2CE
33009A:  DCW 0x10C4
33009C:  DCW 0x10C4
33009E:  DCW 0x10C4
3300A0:  DCW 0x2EB
3300A2:  DCW 0x30A
3300A4:  DCW 0x10C4
3300A6:  DCW 0x337
3300A8:  DCW 0x356
3300AA:  DCW 0x10C4
3300AC:  DCW 0x375
3300AE:  DCW 0x391
3300B0:  DCW 0x3B1
3300B2:  DCW 0x3D1
3300B4:  DCW 0x64
3300B6:  DCW 0x64
3300B8:  DCW 0x3E3
3300BA:  DCW 0x40B
3300BC:  DCW 0x42A
3300BE:  DCW 0x449
3300C0:  DCW 0x476
3300C2:  DCW 0x4C1
3300C4:  DCW 0x4CB
3300C6:  DCW 0x4F5
3300C8:  DCW 0x525
3300CA:  DCW 0x10C4
3300CC:  DCW 0x10C4
3300CE:  DCW 0x10C4
3300D0:  DCW 0x544
3300D2:  DCW 0x566
3300D4:  DCW 0x10C4
3300D6:  DCW 0x585
3300D8:  DCW 0x63C
3300DA:  DCW 0x10C4
3300DC:  DCW 0x6FE
3300DE:  DCW 0x718
3300E0:  DCW 0x733
3300E2:  DCW 0x10C4
3300E4:  DCW 0x845
3300E6:  DCW 0x864
3300E8:  DCW 0x878
3300EA:  DCW 0x10C4
3300EC:  DCW 0x88C
3300EE:  DCW 0x8B8
3300F0:  DCW 0x8F0
3300F2:  DCW 0x9AB
3300F4:  DCW 0x9D4
3300F6:  DCW 0x9F7
3300F8:  DCW 0xA14
3300FA:  DCW 0xA30
3300FC:  DCW 0xA51
3300FE:  DCW 0xA7A
330100:  DCW 0xA80
330102:  DCW 0xA83
330104:  DCW 0xA8B
330106:  DCW 0xA80
330108:  DCW 0xA80
33010A:  DCW 0x10C4
33010C:  DCW 0x10C4
33010E:  DCW 0xAC1
330110:  DCW 0xADF
330112:  DCW 0xAF0
330114:  DCW 0xB07
330116:  DCW 0xB12
330118:  DCW 0xB1D
33011A:  DCW 0xB29
33011C:  DCW 0xB39
33011E:  DCW 0xB47
330120:  DCW 0xB6B
330122:  DCW 0x10C4
330124:  DCW 0x10C4
330126:  DCW 0x10C4
330128:  DCW 0xB89; int
33012A:  DCW 0xA80
33012C:  DCW 0xA80
33012E:  DCW 0xBBA
330130:  DCW 0xBE3
330132:  MOV             R0, R10; jumptable 00330066 cases 1837,1838
330134:  BLX             j__ZN14CRunningScript29FlameInAngledAreaCheckCommandEi; CRunningScript::FlameInAngledAreaCheckCommand(int)
330138:  B.W             loc_3321F0
33013C:  MOV             R0, R10; jumptable 00330066 case 1800
33013E:  MOVS            R1, #2; __int16
330140:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330144:  LDR.W           R0, =(ScriptParams_ptr - 0x33014E)
330148:  MOVS            R1, #7; int
33014A:  ADD             R0, PC; ScriptParams_ptr
33014C:  LDR             R0, [R0]; ScriptParams
33014E:  LDR             R0, [R0]; this
330150:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
330154:  MOV             R4, R0
330156:  CMP             R4, #0x13
330158:  BHI.W           loc_3321F0
33015C:  LDR.W           R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x330168)
330160:  LDR.W           R1, =(ScriptParams_ptr - 0x33016A)
330164:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
330166:  ADD             R1, PC; ScriptParams_ptr
330168:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
33016A:  LDR             R1, [R1]; ScriptParams
33016C:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
33016E:  LDR             R5, [R1,#(dword_81A90C - 0x81A908)]
330170:  CMP             R0, #0
330172:  BNE.W           loc_3311CE
330176:  MOVW            R0, #0xF1C0; unsigned int
33017A:  BLX             _Znwj; operator new(uint)
33017E:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
330182:  LDR.W           R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x33018A)
330186:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
330188:  B.W             loc_3311CA
33018C:  MOV             R0, R10; jumptable 00330066 case 1801
33018E:  MOVS            R1, #9; __int16
330190:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330194:  LDR.W           R0, =(ScriptParams_ptr - 0x33019E)
330198:  MOVS            R1, #7; int
33019A:  ADD             R0, PC; ScriptParams_ptr
33019C:  LDR             R5, [R0]; ScriptParams
33019E:  LDR             R0, [R5]; this
3301A0:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3301A4:  ADD.W           R6, R5, #0xC
3301A8:  MOV             R4, R0
3301AA:  LDRD.W          R8, R9, [R5,#(dword_81A90C - 0x81A908)]
3301AE:  CMP             R4, #0x13
3301B0:  LDM             R6, {R0-R3,R6}
3301B2:  LDR             R5, [R5,#(dword_81A928 - 0x81A908)]
3301B4:  STRD.W          R0, R1, [SP,#0xE8+var_B0]
3301B8:  STRD.W          R3, R2, [SP,#0xE8+var_B8]
3301BC:  STRD.W          R5, R6, [SP,#0xE8+var_80]
3301C0:  BHI.W           loc_3321F0
3301C4:  LDR.W           R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x3301CC)
3301C8:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
3301CA:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
3301CC:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
3301CE:  CMP             R0, #0
3301D0:  BNE.W           loc_331234
3301D4:  MOVW            R0, #0xF1C0; unsigned int
3301D8:  BLX             _Znwj; operator new(uint)
3301DC:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
3301E0:  LDR.W           R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x3301E8)
3301E4:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
3301E6:  B.W             loc_331230
3301EA:  MOV             R0, R10; jumptable 00330066 case 1802
3301EC:  MOVW            R1, #0x70A; int
3301F0:  BLX             j__ZN14CRunningScript22ScriptTaskPickUpObjectEi; CRunningScript::ScriptTaskPickUpObject(int)
3301F4:  B.W             loc_3321F0
3301F8:  MOV             R0, R10; jumptable 00330066 case 1803
3301FA:  MOVS            R1, #2; __int16
3301FC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330200:  LDR.W           R0, =(ScriptParams_ptr - 0x330208)
330204:  ADD             R0, PC; ScriptParams_ptr
330206:  LDR             R0, [R0]; ScriptParams
330208:  LDR             R1, [R0]
33020A:  CMP             R1, #0
33020C:  BLT.W           loc_3318AA
330210:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33021C)
330214:  UXTB            R3, R1
330216:  LSRS            R1, R1, #8
330218:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33021A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33021C:  LDR             R0, [R0]; CPools::ms_pPedPool
33021E:  LDR             R2, [R0,#4]
330220:  LDRB            R2, [R2,R1]
330222:  CMP             R2, R3
330224:  BNE.W           loc_3318AA
330228:  MOVW            R2, #0x7CC
33022C:  LDR             R0, [R0]
33022E:  MLA.W           R6, R1, R2, R0
330232:  B.W             loc_3318AC
330236:  MOV             R0, R10; jumptable 00330066 case 1804
330238:  MOVS            R1, #1; __int16
33023A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33023E:  LDR.W           R0, =(ScriptParams_ptr - 0x330250)
330242:  MOVW            R2, #0xA2C
330246:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330252)
33024A:  MOVS            R4, #0
33024C:  ADD             R0, PC; ScriptParams_ptr
33024E:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330250:  LDR             R0, [R0]; ScriptParams
330252:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
330254:  LDR             R0, [R0]
330256:  LDR             R1, [R1]; CPools::ms_pVehiclePool
330258:  LSRS            R0, R0, #8
33025A:  MUL.W           R3, R0, R2
33025E:  LDR             R1, [R1]
330260:  MLA.W           R0, R0, R2, R1
330264:  LDR             R1, [R1,R3]
330266:  LDR.W           R2, [R0,#0x42C]
33026A:  ORR.W           R2, R2, #0x200000
33026E:  STR.W           R2, [R0,#0x42C]
330272:  LDR.W           R3, [R1,#0xA8]
330276:  MOVS            R1, #0
330278:  MOVS            R2, #1
33027A:  BLX             R3
33027C:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
330280:  MOV             R0, R10; jumptable 00330066 case 1805
330282:  MOVS            R1, #1; __int16
330284:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330288:  LDR.W           R0, =(ScriptParams_ptr - 0x33029A)
33028C:  MOV.W           R2, #0x194; bool
330290:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x33029C)
330294:  MOVS            R4, #0
330296:  ADD             R0, PC; ScriptParams_ptr
330298:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
33029A:  LDR             R0, [R0]; ScriptParams
33029C:  LDR             R1, [R1]; CWorld::Players ...
33029E:  LDR             R0, [R0]
3302A0:  MULS            R0, R2
3302A2:  LDR             R0, [R1,R0]; this
3302A4:  MOVS            R1, #0; CPlayerPed *
3302A6:  BLX             j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
3302AA:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
3302AE:  MOV             R0, R10; jumptable 00330066 case 1806
3302B0:  MOVS            R1, #3; __int16
3302B2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3302B6:  LDR.W           R0, =(ScriptParams_ptr - 0x3302C6)
3302BA:  MOVW            R3, #0xA2C
3302BE:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3302C8)
3302C2:  ADD             R0, PC; ScriptParams_ptr
3302C4:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3302C6:  LDR             R0, [R0]; ScriptParams
3302C8:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3302CA:  LDR             R2, [R0]
3302CC:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3302CE:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
3302D0:  LSRS            R2, R2, #8
3302D2:  LDR             R1, [R1]
3302D4:  MLA.W           R1, R2, R3, R1
3302D8:  LDRB.W          R2, [R1,#0x3BE]
3302DC:  SUBS            R2, #0x39 ; '9'
3302DE:  UXTB            R2, R2
3302E0:  CMP             R2, #2
3302E2:  ITTT CS
3302E4:  ADDWCS          R2, R1, #0x3BE
3302E8:  MOVCS           R3, #0x23 ; '#'
3302EA:  STRBCS          R3, [R2]
3302EC:  B               loc_3306C2
3302EE:  MOV             R0, R10; jumptable 00330066 case 1807
3302F0:  MOVS            R1, #4; __int16
3302F2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3302F6:  LDR.W           R0, =(ScriptParams_ptr - 0x330308)
3302FA:  MOVW            R3, #0xA2C
3302FE:  VLDR            S0, =3.1416
330302:  MOVS            R4, #0
330304:  ADD             R0, PC; ScriptParams_ptr
330306:  LDR             R2, [R0]; ScriptParams
330308:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330314)
33030C:  VLDR            S2, [R2,#4]
330310:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330312:  LDR             R1, [R2]
330314:  VMUL.F32        S0, S2, S0
330318:  VLDR            S2, =180.0
33031C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33031E:  LSRS            R1, R1, #8
330320:  LDR             R0, [R0]; CPools::ms_pVehiclePool
330322:  VDIV.F32        S0, S0, S2
330326:  LDR             R0, [R0]
330328:  MLA.W           R0, R1, R3, R0
33032C:  LDRB.W          R3, [R0,#0x3BE]
330330:  LDRD.W          R1, R2, [R2,#(dword_81A910 - 0x81A908)]
330334:  SUBS            R3, #0x39 ; '9'
330336:  UXTB            R3, R3
330338:  CMP             R3, #2
33033A:  ITTT CS
33033C:  ADDWCS          R3, R0, #0x3BE
330340:  MOVCS           R6, #0x24 ; '$'
330342:  STRBCS          R6, [R3]
330344:  STR.W           R1, [R0,#0x9C4]
330348:  STR.W           R2, [R0,#0x9BC]
33034C:  ADDW            R1, R0, #0x9CC
330350:  ADDW            R0, R0, #0x9C8
330354:  VSTR            S0, [R1]
330358:  VSTR            S0, [R0]
33035C:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
330360:  MOV             R0, R10; jumptable 00330066 case 1808
330362:  MOVS            R1, #4; __int16
330364:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330368:  LDR.W           R0, =(ScriptParams_ptr - 0x330374)
33036C:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330376)
330370:  ADD             R0, PC; ScriptParams_ptr
330372:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330374:  LDR             R0, [R0]; ScriptParams
330376:  LDR             R2, [R1]; CPools::ms_pVehiclePool ...
330378:  LDR             R1, [R0]
33037A:  LDR             R0, [R2]; CPools::ms_pVehiclePool
33037C:  CMP             R1, #0
33037E:  BLT.W           loc_3318E6
330382:  LDR             R2, [R0,#4]
330384:  UXTB            R3, R1
330386:  LSRS            R1, R1, #8
330388:  LDRB            R2, [R2,R1]
33038A:  CMP             R2, R3
33038C:  BNE.W           loc_3318E6
330390:  MOVW            R2, #0xA2C
330394:  LDR             R3, [R0]
330396:  MLA.W           R6, R1, R2, R3
33039A:  B.W             loc_3318E8
33039E:  MOV             R0, R10; jumptable 00330066 case 1811
3303A0:  MOVS            R1, #0xA; __int16
3303A2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3303A6:  LDR.W           R0, =(ScriptParams_ptr - 0x3303AE)
3303AA:  ADD             R0, PC; ScriptParams_ptr
3303AC:  LDR             R2, [R0]; ScriptParams
3303AE:  ADD.W           R6, R2, #8
3303B2:  LDRD.W          R12, R1, [R2]
3303B6:  CMP             R1, #0
3303B8:  LDM             R6, {R0,R3,R6}
3303BA:  LDR             R5, [R2,#(dword_81A91C - 0x81A908)]
3303BC:  LDRD.W          R11, R8, [R2,#(dword_81A924 - 0x81A908)]
3303C0:  VLDR            S16, [R2,#0x18]
3303C4:  LDR             R4, [R2,#(dword_81A92C - 0x81A908)]
3303C6:  STRD.W          R3, R6, [SP,#0xE8+var_B8]
3303CA:  STR             R5, [SP,#0xE8+var_B0]
3303CC:  STR             R4, [SP,#0xE8+var_BC]
3303CE:  BLT.W           loc_331872
3303D2:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3303DE)
3303D6:  UXTB            R6, R1
3303D8:  LSRS            R1, R1, #8
3303DA:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
3303DC:  LDR             R2, [R2]; CPools::ms_pPedPool ...
3303DE:  LDR             R2, [R2]; CPools::ms_pPedPool
3303E0:  LDR             R3, [R2,#4]
3303E2:  LDRB            R3, [R3,R1]
3303E4:  CMP             R3, R6
3303E6:  BNE.W           loc_331872
3303EA:  MOVW            R3, #0x7CC
3303EE:  LDR             R2, [R2]
3303F0:  MLA.W           R9, R1, R3, R2
3303F4:  B.W             loc_331876
3303F8:  MOV             R0, R10; jumptable 00330066 case 1812
3303FA:  MOVS            R1, #2; __int16
3303FC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330400:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330410)
330404:  MOVW            R3, #0xA2C
330408:  LDR.W           R0, =(ScriptParams_ptr - 0x330412)
33040C:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33040E:  ADD             R0, PC; ScriptParams_ptr
330410:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
330412:  LDR             R0, [R0]; ScriptParams
330414:  LDRD.W          R2, R0, [R0]
330418:  CMP             R0, #0
33041A:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33041C:  MOV.W           R2, R2,LSR#8
330420:  LDR             R1, [R1]
330422:  MLA.W           R1, R2, R3, R1
330426:  LDRH.W          R2, [R1,#0x3DF]
33042A:  BIC.W           R3, R2, #0x10
33042E:  IT NE
330430:  ORRNE.W         R3, R2, #0x10
330434:  B               loc_330B2E
330436:  MOV             R0, R10; jumptable 00330066 case 1813
330438:  MOVS            R1, #2; __int16
33043A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33043E:  LDR.W           R0, =(ScriptParams_ptr - 0x330446)
330442:  ADD             R0, PC; ScriptParams_ptr
330444:  LDR             R0, [R0]; ScriptParams
330446:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]; CVehicle *
330448:  CMP             R1, #0
33044A:  BLT.W           loc_33191C
33044E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33045A)
330452:  UXTB            R3, R1
330454:  LSRS            R1, R1, #8
330456:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330458:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33045A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33045C:  LDR             R2, [R0,#4]
33045E:  LDRB            R2, [R2,R1]
330460:  CMP             R2, R3
330462:  BNE.W           loc_33191C
330466:  MOVW            R2, #0xA2C
33046A:  LDR             R0, [R0]
33046C:  MLA.W           R0, R1, R2, R0
330470:  B.W             loc_33191E
330474:  MOV             R0, R10; jumptable 00330066 case 1814
330476:  MOVS            R1, #7; __int16
330478:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33047C:  LDR.W           R0, =(ScriptParams_ptr - 0x330488)
330480:  VLDR            S2, =-100.0
330484:  ADD             R0, PC; ScriptParams_ptr
330486:  LDR             R0, [R0]; ScriptParams
330488:  VLDR            S0, [R0,#8]
33048C:  VLDR            S16, [R0]
330490:  VCMPE.F32       S0, S2
330494:  VLDR            S18, [R0,#4]
330498:  VMRS            APSR_nzcv, FPSCR
33049C:  BGT             loc_3304AE
33049E:  VMOV            R0, S16; this
3304A2:  VMOV            R1, S18; float
3304A6:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
3304AA:  VMOV            S0, R0
3304AE:  LDR.W           R0, =(ScriptParams_ptr - 0x3304B6)
3304B2:  ADD             R0, PC; ScriptParams_ptr
3304B4:  LDR             R1, [R0]; ScriptParams
3304B6:  LDR             R0, [R1,#(dword_81A918 - 0x81A908)]
3304B8:  VLDR            S2, [R1,#0xC]
3304BC:  CMP.W           R0, #0xFFFFFFFF
3304C0:  BGT             loc_3304D6
3304C2:  LDR.W           R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x3304CC)
3304C6:  NEGS            R0, R0
3304C8:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
3304CA:  RSB.W           R0, R0, R0,LSL#3
3304CE:  LDR             R1, [R1]; CTheScripts::UsedObjectArray ...
3304D0:  ADD.W           R0, R1, R0,LSL#2
3304D4:  LDR             R0, [R0,#0x18]; this
3304D6:  VMOV            R2, S2; CVector *
3304DA:  MOVS            R1, #1
3304DC:  MOVS            R5, #0
3304DE:  VSTR            S18, [SP,#0xE8+var_B8+4]
3304E2:  VSTR            S16, [SP,#0xE8+var_B8]
3304E6:  MOVS            R3, #0; float
3304E8:  VSTR            S0, [SP,#0xE8+var_B0]
3304EC:  STRD.W          R5, R5, [SP,#0xE8+var_E8]; bool
3304F0:  STRD.W          R5, R1, [SP,#0xE8+var_E0]; bool
3304F4:  STR             R1, [SP,#0xE8+var_D8]; bool
3304F6:  ADD             R1, SP, #0xE8+var_B8; int
3304F8:  BLX             j__ZN6CWorld23FindNearestObjectOfTypeEiRK7CVectorfbbbbbb; CWorld::FindNearestObjectOfType(int,CVector const&,float,bool,bool,bool,bool,bool,bool)
3304FC:  CMP             R0, #0
3304FE:  BEQ.W           loc_330AAC
330502:  LDRB.W          R1, [R0,#0x3A]
330506:  AND.W           R1, R1, #7
33050A:  CMP             R1, #4
33050C:  BNE.W           loc_332030
330510:  LDR.W           R1, =(ScriptParams_ptr - 0x33051A)
330514:  LDR             R2, [R0,#0x1C]
330516:  ADD             R1, PC; ScriptParams_ptr
330518:  LDRB.W          R0, [R0,#0x145]
33051C:  AND.W           R2, R2, #0x280
330520:  LDR             R1, [R1]; ScriptParams
330522:  EORS.W          R2, R2, #0x80
330526:  LDRD.W          R3, R1, [R1,#(dword_81A91C - 0x81A908)]
33052A:  IT NE
33052C:  MOVNE           R2, #1
33052E:  CMP             R1, #0
330530:  IT NE
330532:  MOVNE           R1, #1
330534:  CMP             R3, #0
330536:  IT NE
330538:  MOVNE           R3, #1
33053A:  ANDS            R1, R2
33053C:  AND.W           R0, R3, R0,LSR#2
330540:  ORR.W           R5, R0, R1
330544:  B               loc_330AAC
330546:  MOV             R0, R10; jumptable 00330066 case 1815
330548:  MOVS            R1, #1; __int16
33054A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33054E:  LDR.W           R0, =(ScriptParams_ptr - 0x330556)
330552:  ADD             R0, PC; ScriptParams_ptr
330554:  LDR             R0, [R0]; ScriptParams
330556:  LDR             R1, [R0]; CPed *
330558:  CMP             R1, #0
33055A:  BLT.W           loc_331926
33055E:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33056A)
330562:  UXTB            R3, R1
330564:  LSRS            R1, R1, #8; bool
330566:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
330568:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33056A:  LDR             R0, [R0]; CPools::ms_pPedPool
33056C:  LDR             R2, [R0,#4]
33056E:  LDRB            R2, [R2,R1]
330570:  CMP             R2, R3
330572:  BNE.W           loc_331926
330576:  MOVW            R2, #0x7CC
33057A:  LDR             R0, [R0]
33057C:  MLA.W           R0, R1, R2, R0
330580:  B.W             loc_331928
330584:  MOVS            R0, #0; jumptable 00330066 case 1817
330586:  MOVS            R4, #0
330588:  BLX             j__ZN14CConversations25DoneSettingUpConversationEb; CConversations::DoneSettingUpConversation(bool)
33058C:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
330590:  MOV             R0, R10; jumptable 00330066 case 1818
330592:  MOVS            R1, #1; __int16
330594:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330598:  LDR.W           R0, =(ScriptParams_ptr - 0x3305A0)
33059C:  ADD             R0, PC; ScriptParams_ptr
33059E:  LDR             R0, [R0]; ScriptParams
3305A0:  LDR             R1, [R0]
3305A2:  CMP             R1, #0
3305A4:  BLT.W           loc_331930
3305A8:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3305B4)
3305AC:  UXTB            R3, R1
3305AE:  LSRS            R1, R1, #8
3305B0:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3305B2:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3305B4:  LDR             R0, [R0]; CPools::ms_pPedPool
3305B6:  LDR             R2, [R0,#4]
3305B8:  LDRB            R2, [R2,R1]
3305BA:  CMP             R2, R3
3305BC:  BNE.W           loc_331930
3305C0:  MOVW            R2, #0x7CC
3305C4:  LDR             R0, [R0]
3305C6:  MLA.W           R5, R1, R2, R0
3305CA:  B.W             loc_331932
3305CE:  MOV             R0, R10; jumptable 00330066 case 1822
3305D0:  MOVS            R1, #1; __int16
3305D2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3305D6:  LDR.W           R0, =(ScriptParams_ptr - 0x3305E6)
3305DA:  MOV.W           R3, #0x1A4
3305DE:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3305E8)
3305E2:  ADD             R0, PC; ScriptParams_ptr
3305E4:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3305E6:  LDR             R0, [R0]; ScriptParams
3305E8:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
3305EA:  LDR             R2, [R0]
3305EC:  LDR             R1, [R1]; CPools::ms_pObjectPool
3305EE:  LSRS            R2, R2, #8
3305F0:  LDR             R1, [R1]
3305F2:  MLA.W           R1, R2, R3, R1
3305F6:  VLDR            S0, [R1,#0x158]
3305FA:  VCVT.S32.F32    S0, S0
3305FE:  VSTR            S0, [R0]
330602:  B.W             loc_3321E8
330606:  MOV             R0, R10; jumptable 00330066 case 1823
330608:  MOVS            R1, #2; __int16
33060A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33060E:  LDR.W           R0, =(ScriptParams_ptr - 0x33061C)
330612:  MOVS            R4, #0
330614:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33061E)
330618:  ADD             R0, PC; ScriptParams_ptr
33061A:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33061C:  LDR             R0, [R0]; ScriptParams
33061E:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
330620:  LDR             R2, [R0]
330622:  VLDR            S0, [R0,#4]
330626:  LDR             R0, [R1]; CPools::ms_pObjectPool
330628:  VCVT.F32.S32    S0, S0
33062C:  LSRS            R1, R2, #8
33062E:  MOV.W           R2, #0x1A4
330632:  LDR             R0, [R0]
330634:  MLA.W           R0, R1, R2, R0
330638:  VSTR            S0, [R0,#0x158]
33063C:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
330640:  MOV             R0, R10; jumptable 00330066 case 1827
330642:  MOVS            R1, #2; __int16
330644:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330648:  LDR.W           R0, =(ScriptParams_ptr - 0x330650)
33064C:  ADD             R0, PC; ScriptParams_ptr
33064E:  LDR             R0, [R0]; ScriptParams
330650:  LDR             R1, [R0]
330652:  CMP             R1, #0
330654:  BLT.W           loc_33194A
330658:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x330664)
33065C:  UXTB            R3, R1
33065E:  LSRS            R1, R1, #8
330660:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
330662:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
330664:  LDR             R0, [R0]; CPools::ms_pObjectPool
330666:  LDR             R2, [R0,#4]
330668:  LDRB            R2, [R2,R1]
33066A:  CMP             R2, R3
33066C:  BNE.W           loc_33194A
330670:  MOV.W           R2, #0x1A4
330674:  LDR             R0, [R0]
330676:  MLA.W           R5, R1, R2, R0
33067A:  B.W             loc_33194C
33067E:  MOV             R0, R10; jumptable 00330066 case 1828
330680:  MOVS            R1, #3; __int16
330682:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330686:  LDR.W           R0, =(ScriptParams_ptr - 0x330696)
33068A:  MOVW            R3, #0xA2C
33068E:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330698)
330692:  ADD             R0, PC; ScriptParams_ptr
330694:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330696:  LDR             R0, [R0]; ScriptParams
330698:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33069A:  LDR             R2, [R0]
33069C:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33069E:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
3306A0:  LSRS            R2, R2, #8
3306A2:  LDR             R1, [R1]
3306A4:  MLA.W           R1, R2, R3, R1
3306A8:  LDRB.W          R2, [R1,#0x3BE]
3306AC:  SUBS            R2, #0x39 ; '9'
3306AE:  UXTB            R2, R2
3306B0:  CMP             R2, #2
3306B2:  ITTT CS
3306B4:  ADDWCS          R2, R1, #0x3BE
3306B8:  MOVCS           R3, #0x17
3306BA:  STRBCS          R3, [R2]
3306BC:  MOVS            R2, #0x64 ; 'd'
3306BE:  STRB.W          R2, [R1,#0x3D4]
3306C2:  STR.W           R0, [R1,#0x9C4]
3306C6:  B.W             loc_3321F0
3306CA:  ALIGN 4
3306CC:  DCFS 3.1416
3306D0:  DCFS 180.0
3306D4:  DCFS -100.0
3306D8:  MOV             R0, R10; jumptable 00330066 case 1830
3306DA:  MOVS            R1, #4; __int16
3306DC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3306E0:  LDR.W           R0, =(ScriptParams_ptr - 0x3306EC)
3306E4:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3306EE)
3306E8:  ADD             R0, PC; ScriptParams_ptr
3306EA:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3306EC:  LDR             R0, [R0]; ScriptParams
3306EE:  LDR             R2, [R1]; CPools::ms_pVehiclePool ...
3306F0:  LDR             R1, [R0]
3306F2:  LDR             R0, [R2]; CPools::ms_pVehiclePool
3306F4:  CMP             R1, #0
3306F6:  BLT.W           loc_3319F2
3306FA:  LDR             R2, [R0,#4]
3306FC:  UXTB            R3, R1
3306FE:  LSRS            R1, R1, #8
330700:  LDRB            R2, [R2,R1]
330702:  CMP             R2, R3
330704:  BNE.W           loc_3319F2
330708:  MOVW            R2, #0xA2C
33070C:  LDR             R3, [R0]
33070E:  MLA.W           R6, R1, R2, R3
330712:  B.W             loc_3319F4
330716:  MOV             R0, R10; jumptable 00330066 case 1831
330718:  MOVS            R1, #4; __int16
33071A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33071E:  LDR.W           R0, =(ScriptParams_ptr - 0x33072A)
330722:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33072C)
330726:  ADD             R0, PC; ScriptParams_ptr
330728:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33072A:  LDR             R0, [R0]; ScriptParams
33072C:  LDR             R2, [R1]; CPools::ms_pVehiclePool ...
33072E:  LDR             R1, [R0]
330730:  LDR             R0, [R2]; CPools::ms_pVehiclePool
330732:  CMP             R1, #0
330734:  BLT.W           loc_331A28
330738:  LDR             R2, [R0,#4]
33073A:  UXTB            R3, R1
33073C:  LSRS            R1, R1, #8
33073E:  LDRB            R2, [R2,R1]
330740:  CMP             R2, R3
330742:  BNE.W           loc_331A28
330746:  MOVW            R2, #0xA2C
33074A:  LDR             R3, [R0]
33074C:  MLA.W           R6, R1, R2, R3
330750:  B.W             loc_331A2A
330754:  MOV             R0, R10; jumptable 00330066 case 1833
330756:  MOVS            R1, #2; __int16
330758:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33075C:  LDR.W           R0, =(ScriptParams_ptr - 0x330764)
330760:  ADD             R0, PC; ScriptParams_ptr
330762:  LDR             R0, [R0]; ScriptParams
330764:  LDRD.W          R5, R0, [R0]
330768:  CMP             R0, #1
33076A:  BLT.W           loc_331E98
33076E:  MOVS            R0, #dword_20; this
330770:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
330774:  MOV.W           R1, #0xFFFFFFFF; int
330778:  MOV             R6, R0
33077A:  BLX             j__ZN26CTaskComplexUseMobilePhoneC2Ei; CTaskComplexUseMobilePhone::CTaskComplexUseMobilePhone(int)
33077E:  MOV             R0, R10
330780:  MOV             R1, R5
330782:  MOV             R2, R6
330784:  MOVW            R3, #0x729
330788:  B.W             loc_3320AE
33078C:  MOV             R0, R10; jumptable 00330066 case 1834
33078E:  MOVS            R1, #2; __int16
330790:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330794:  LDR.W           R0, =(ScriptParams_ptr - 0x33079C)
330798:  ADD             R0, PC; ScriptParams_ptr
33079A:  LDR             R0, [R0]; ScriptParams
33079C:  LDRD.W          R8, R0, [R0]
3307A0:  CMP             R0, #0
3307A2:  BLT.W           loc_331A5E
3307A6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3307B2)
3307AA:  UXTB            R3, R0
3307AC:  LSRS            R0, R0, #8
3307AE:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3307B0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3307B2:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3307B4:  LDR             R2, [R1,#4]
3307B6:  LDRB            R2, [R2,R0]
3307B8:  CMP             R2, R3
3307BA:  BNE.W           loc_331A5E
3307BE:  MOVW            R2, #0xA2C
3307C2:  LDR             R1, [R1]
3307C4:  MLA.W           R6, R0, R2, R1
3307C8:  B.W             loc_331A60
3307CC:  MOV             R0, R10; jumptable 00330066 case 1835
3307CE:  MOVS            R1, #3; __int16
3307D0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3307D4:  LDR.W           R0, =(ScriptParams_ptr - 0x3307DC)
3307D8:  ADD             R0, PC; ScriptParams_ptr
3307DA:  LDR             R0, [R0]; ScriptParams
3307DC:  LDRD.W          R8, R0, [R0]
3307E0:  CMP             R0, #0
3307E2:  BLT.W           loc_331A86
3307E6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3307F2)
3307EA:  UXTB            R3, R0
3307EC:  LSRS            R0, R0, #8
3307EE:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3307F0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3307F2:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3307F4:  LDR             R2, [R1,#4]
3307F6:  LDRB            R2, [R2,R0]
3307F8:  CMP             R2, R3
3307FA:  BNE.W           loc_331A86
3307FE:  MOVW            R2, #0xA2C
330802:  LDR             R1, [R1]
330804:  MLA.W           R9, R0, R2, R1
330808:  B.W             loc_331A8A
33080C:  MOV             R0, R10; jumptable 00330066 case 1836
33080E:  MOVS            R1, #1; __int16
330810:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330814:  LDR.W           R0, =(ScriptParams_ptr - 0x33081C)
330818:  ADD             R0, PC; ScriptParams_ptr
33081A:  LDR             R0, [R0]; ScriptParams
33081C:  LDR             R0, [R0]
33081E:  CMP             R0, #0
330820:  BEQ.W           loc_331EC2
330824:  MOVS            R0, #0; this
330826:  MOVS            R4, #0
330828:  BLX             j__ZN10CStreaming15DisableCopBikesEb; CStreaming::DisableCopBikes(bool)
33082C:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
330830:  MOV             R0, R10; jumptable 00330066 case 1839
330832:  MOVS            R1, #7; __int16
330834:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330838:  LDR.W           R0, =(ScriptParams_ptr - 0x330844)
33083C:  LDR.W           R12, =(_ZN11CTheScripts9StuckCarsE_ptr - 0x330846)
330840:  ADD             R0, PC; ScriptParams_ptr
330842:  ADD             R12, PC; _ZN11CTheScripts9StuckCarsE_ptr
330844:  LDR             R0, [R0]; ScriptParams
330846:  LDM.W           R0, {R1-R3,R5}; unsigned int
33084A:  LDRD.W          R4, R6, [R0,#(dword_81A918 - 0x81A908)]
33084E:  CMP             R6, #0
330850:  LDRSB.W         LR, [R0,#(dword_81A920 - 0x81A908)]
330854:  IT NE
330856:  MOVNE           R6, #1
330858:  CMP             R4, #0
33085A:  LDR.W           R0, [R12]; this
33085E:  IT NE
330860:  MOVNE           R4, #1
330862:  CMP             R5, #0
330864:  MOV.W           R12, #1
330868:  IT NE
33086A:  MOVNE           R5, #1
33086C:  STRD.W          R12, R5, [SP,#0xE8+var_E8]; unsigned __int8
330870:  ADD.W           R12, SP, #0xE8+var_E0
330874:  STM.W           R12, {R4,R6,LR}
330878:  BLX             j__ZN14CStuckCarCheck13AddCarToCheckEifjhhhha; CStuckCarCheck::AddCarToCheck(int,float,uint,uchar,uchar,uchar,uchar,signed char)
33087C:  B.W             loc_3321F0
330880:  MOV             R0, R10; jumptable 00330066 case 1840
330882:  MOVS            R1, #2; __int16
330884:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330888:  LDR.W           R0, =(ScriptParams_ptr - 0x330890)
33088C:  ADD             R0, PC; ScriptParams_ptr
33088E:  LDR             R0, [R0]; ScriptParams
330890:  LDR             R1, [R0]
330892:  CMP             R1, #0
330894:  BLT.W           loc_331AA4
330898:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3308A4)
33089C:  UXTB            R3, R1
33089E:  LSRS            R1, R1, #8
3308A0:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3308A2:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3308A4:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3308A6:  LDR             R2, [R0,#4]
3308A8:  LDRB            R2, [R2,R1]
3308AA:  CMP             R2, R3
3308AC:  BNE.W           loc_331AA4
3308B0:  MOVW            R2, #0xA2C
3308B4:  LDR             R0, [R0]
3308B6:  MLA.W           R1, R1, R2, R0
3308BA:  B.W             loc_331AA6
3308BE:  MOV             R0, R10; jumptable 00330066 case 1841
3308C0:  MOVS            R1, #2; __int16
3308C2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3308C6:  LDR.W           R0, =(ScriptParams_ptr - 0x3308CE)
3308CA:  ADD             R0, PC; ScriptParams_ptr
3308CC:  LDR             R0, [R0]; ScriptParams
3308CE:  LDR             R1, [R0]
3308D0:  CMP             R1, #0
3308D2:  BLT.W           loc_331ACA
3308D6:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3308E2)
3308DA:  UXTB            R3, R1
3308DC:  LSRS            R1, R1, #8
3308DE:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3308E0:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3308E2:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3308E4:  LDR             R2, [R0,#4]
3308E6:  LDRB            R2, [R2,R1]
3308E8:  CMP             R2, R3
3308EA:  BNE.W           loc_331ACA
3308EE:  MOVW            R2, #0xA2C
3308F2:  LDR             R0, [R0]
3308F4:  MLA.W           R5, R1, R2, R0
3308F8:  B.W             loc_331ACC
3308FC:  MOV             R0, R10; jumptable 00330066 case 1842
3308FE:  MOVS            R1, #1; __int16
330900:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330904:  LDR.W           R0, =(ScriptParams_ptr - 0x330912)
330908:  MOVS            R1, #0
33090A:  LDR.W           R2, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x330914)
33090E:  ADD             R0, PC; ScriptParams_ptr
330910:  ADD             R2, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
330912:  LDR             R0, [R0]; ScriptParams
330914:  LDR             R2, [R2]; CTheScripts::SuppressedVehicleModels ...
330916:  LDR             R0, [R0]
330918:  LDR.W           R3, [R2,R1,LSL#2]
33091C:  CMP             R3, R0
33091E:  BEQ.W           loc_3321F0
330922:  ADDS            R1, #1
330924:  CMP             R1, #0x28 ; '('
330926:  BCC             loc_330918
330928:  LDR.W           R1, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x330934)
33092C:  LDR.W           R3, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x330936)
330930:  ADD             R1, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
330932:  ADD             R3, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
330934:  LDR             R2, [R1]; CTheScripts::SuppressedVehicleModels ...
330936:  MOVS            R1, #0
330938:  LDR             R3, [R3]; CTheScripts::SuppressedVehicleModels ...
33093A:  LDR             R2, [R2]; CTheScripts::SuppressedVehicleModels
33093C:  ADDS            R5, R2, #1
33093E:  IT NE
330940:  ADDNE           R1, #1
330942:  CMP             R5, #0
330944:  UXTB            R6, R1
330946:  ADD.W           R2, R3, R6,LSL#2
33094A:  BEQ             loc_330950
33094C:  CMP             R6, #0x28 ; '('
33094E:  BCC             loc_33093A
330950:  STR             R0, [R2]
330952:  B.W             loc_3321F0
330956:  MOV             R0, R10; jumptable 00330066 case 1843
330958:  MOVS            R1, #1; __int16
33095A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33095E:  LDR.W           R2, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x33096E)
330962:  MOV.W           R3, #0xFFFFFFFF
330966:  LDR.W           R0, =(ScriptParams_ptr - 0x330974)
33096A:  ADD             R2, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
33096C:  LDR.W           R1, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x33097A)
330970:  ADD             R0, PC; ScriptParams_ptr
330972:  LDR.W           R12, [R2]; CTheScripts::SuppressedVehicleModels ...
330976:  ADD             R1, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
330978:  LDR.W           R2, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x330982)
33097C:  LDR             R0, [R0]; ScriptParams
33097E:  ADD             R2, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
330980:  LDR             R1, [R1]; CTheScripts::SuppressedVehicleModels ...
330982:  LDR             R6, [R2]; CTheScripts::SuppressedVehicleModels ...
330984:  VLD1.32         {D16[]-D17[]}, [R0@32]
330988:  MOVS            R0, #0
33098A:  LDR.W           R2, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x330992)
33098E:  ADD             R2, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
330990:  LDR             R5, [R2]; CTheScripts::SuppressedVehicleModels ...
330992:  LDR.W           R2, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x33099A)
330996:  ADD             R2, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
330998:  LDR             R2, [R2]; CTheScripts::SuppressedVehicleModels ...
33099A:  ADD.W           R4, R1, R0,LSL#2
33099E:  VLD1.32         {D18-D19}, [R4]
3309A2:  VCEQ.I32        Q9, Q9, Q8
3309A6:  VMOVN.I32       D18, Q9
3309AA:  VMOV.U16        R4, D18[0]
3309AE:  LSLS            R4, R4, #0x1F
3309B0:  VMOV.U16        R4, D18[1]
3309B4:  IT NE
3309B6:  STRNE.W         R3, [R12,R0,LSL#2]
3309BA:  LSLS            R4, R4, #0x1F
3309BC:  ITT NE
3309BE:  ADDNE.W         R4, R6, R0,LSL#2
3309C2:  STRNE           R3, [R4,#4]
3309C4:  VMOV.U16        R4, D18[2]
3309C8:  LSLS            R4, R4, #0x1F
3309CA:  ITT NE
3309CC:  ADDNE.W         R4, R5, R0,LSL#2
3309D0:  STRNE           R3, [R4,#8]
3309D2:  VMOV.U16        R4, D18[3]
3309D6:  LSLS            R4, R4, #0x1F
3309D8:  ITT NE
3309DA:  ADDNE.W         R4, R2, R0,LSL#2
3309DE:  STRNE           R3, [R4,#0xC]
3309E0:  ADDS            R0, #4
3309E2:  MOVS            R4, #0
3309E4:  CMP             R0, #0x28 ; '('
3309E6:  BNE             loc_33099A
3309E8:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
3309EC:  LDR.W           R0, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x3309F8); jumptable 00330066 case 1844
3309F0:  MOVS            R1, #0xA0
3309F2:  MOVS            R2, #0xFF
3309F4:  ADD             R0, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
3309F6:  LDR             R0, [R0]; CTheScripts::SuppressedVehicleModels ...
3309F8:  BLX             j___aeabi_memset8_0
3309FC:  B.W             loc_3321F0
330A00:  MOV             R0, R10; jumptable 00330066 case 1845
330A02:  MOVS            R1, #1; __int16
330A04:  MOVS            R4, #1
330A06:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330A0A:  LDR.W           R0, =(ScriptParams_ptr - 0x330A14)
330A0E:  MOVS            R5, #0
330A10:  ADD             R0, PC; ScriptParams_ptr
330A12:  LDR             R0, [R0]; ScriptParams
330A14:  LDR             R0, [R0]
330A16:  CMP             R0, #0x53 ; 'S'
330A18:  BNE             loc_330A3E
330A1A:  LDR.W           R1, =(_ZN6CCheat23m_nLastScriptBypasstimeE_ptr - 0x330A22)
330A1E:  ADD             R1, PC; _ZN6CCheat23m_nLastScriptBypasstimeE_ptr
330A20:  LDR             R1, [R1]; CCheat::m_nLastScriptBypasstime ...
330A22:  LDR             R1, [R1]; CCheat::m_nLastScriptBypasstime
330A24:  CBZ             R1, loc_330A3E
330A26:  LDR.W           R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x330A30)
330A2A:  MOVS            R5, #0
330A2C:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
330A2E:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
330A30:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
330A32:  SUBS            R1, R2, R1
330A34:  MOVW            R2, #0x1388
330A38:  CMP             R1, R2
330A3A:  IT CC
330A3C:  MOVCC           R5, #1
330A3E:  LDR.W           R2, =(PS2Keyboard_ptr - 0x330A4C)
330A42:  UXTH            R1, R0; unsigned __int16
330A44:  ADR.W           R3, aUsedInScript; "Used in script"
330A48:  ADD             R2, PC; PS2Keyboard_ptr
330A4A:  LDR             R0, [R2]; PS2Keyboard ; this
330A4C:  MOVS            R2, #1; unsigned __int8
330A4E:  BLX             j__ZN11CPCKeyboard10GetKeyDownEthPc; CPCKeyboard::GetKeyDown(ushort,uchar,char *)
330A52:  B               loc_330AA6
330A54:  MOV             R0, R10; jumptable 00330066 case 1846
330A56:  MOVS            R1, #1; __int16
330A58:  MOVS            R4, #1
330A5A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330A5E:  LDR.W           R0, =(ScriptParams_ptr - 0x330A68)
330A62:  MOVS            R5, #0
330A64:  ADD             R0, PC; ScriptParams_ptr
330A66:  LDR             R0, [R0]; ScriptParams
330A68:  LDR             R0, [R0]
330A6A:  CMP             R0, #0x53 ; 'S'
330A6C:  BNE             loc_330A92
330A6E:  LDR.W           R1, =(_ZN6CCheat23m_nLastScriptBypasstimeE_ptr - 0x330A76)
330A72:  ADD             R1, PC; _ZN6CCheat23m_nLastScriptBypasstimeE_ptr
330A74:  LDR             R1, [R1]; CCheat::m_nLastScriptBypasstime ...
330A76:  LDR             R1, [R1]; CCheat::m_nLastScriptBypasstime
330A78:  CBZ             R1, loc_330A92
330A7A:  LDR.W           R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x330A84)
330A7E:  MOVS            R5, #0
330A80:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
330A82:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
330A84:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
330A86:  SUBS            R1, R2, R1
330A88:  MOVW            R2, #0x1388
330A8C:  CMP             R1, R2
330A8E:  IT CC
330A90:  MOVCC           R5, #1
330A92:  LDR.W           R2, =(PS2Keyboard_ptr - 0x330AA0)
330A96:  UXTH            R1, R0; unsigned __int16
330A98:  ADR.W           R3, aUsedInScript; "Used in script"
330A9C:  ADD             R2, PC; PS2Keyboard_ptr
330A9E:  LDR             R0, [R2]; PS2Keyboard ; this
330AA0:  MOVS            R2, #1; unsigned __int8
330AA2:  BLX             j__ZN11CPCKeyboard14GetKeyJustDownEthPc; CPCKeyboard::GetKeyJustDown(ushort,uchar,char *)
330AA6:  CMP             R0, #0
330AA8:  IT NE
330AAA:  MOVNE           R5, R4
330AAC:  MOV             R0, R10
330AAE:  MOV             R1, R5
330AB0:  B.W             loc_331FC2
330AB4:  MOV             R0, R10; jumptable 00330066 case 1847
330AB6:  MOVS            R1, #2; __int16
330AB8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330ABC:  LDR.W           R0, =(ScriptParams_ptr - 0x330AC4)
330AC0:  ADD             R0, PC; ScriptParams_ptr
330AC2:  LDR             R0, [R0]; ScriptParams
330AC4:  LDR             R0, [R0]
330AC6:  CMP             R0, #0
330AC8:  BLT.W           loc_331B08
330ACC:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x330AD8)
330AD0:  UXTB            R3, R0
330AD2:  LSRS            R0, R0, #8
330AD4:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
330AD6:  LDR             R1, [R1]; CPools::ms_pPedPool ...
330AD8:  LDR             R1, [R1]; CPools::ms_pPedPool
330ADA:  LDR             R2, [R1,#4]
330ADC:  LDRB            R2, [R2,R0]
330ADE:  CMP             R2, R3
330AE0:  BNE.W           loc_331B08
330AE4:  MOVW            R2, #0x7CC
330AE8:  LDR             R1, [R1]
330AEA:  MLA.W           R5, R0, R2, R1
330AEE:  B.W             loc_331B0A
330AF2:  MOV             R0, R10; jumptable 00330066 case 1851
330AF4:  MOVS            R1, #2; __int16
330AF6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330AFA:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330B0A)
330AFE:  MOVW            R3, #0xA2C
330B02:  LDR.W           R0, =(ScriptParams_ptr - 0x330B0C)
330B06:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330B08:  ADD             R0, PC; ScriptParams_ptr
330B0A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
330B0C:  LDR             R0, [R0]; ScriptParams
330B0E:  LDRD.W          R2, R0, [R0]
330B12:  CMP             R0, #0
330B14:  LDR             R1, [R1]; CPools::ms_pVehiclePool
330B16:  MOV.W           R2, R2,LSR#8
330B1A:  LDR             R1, [R1]
330B1C:  MLA.W           R1, R2, R3, R1
330B20:  LDRH.W          R2, [R1,#0x3DF]
330B24:  ORR.W           R3, R2, #0x40 ; '@'
330B28:  IT NE
330B2A:  BICNE.W         R3, R2, #0x40 ; '@'
330B2E:  STRH.W          R3, [R1,#0x3DF]
330B32:  B.W             loc_3321F0
330B36:  MOV             R0, R10; jumptable 00330066 case 1852
330B38:  MOVS            R1, #2; __int16
330B3A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330B3E:  LDR.W           R0, =(ScriptParams_ptr - 0x330B46)
330B42:  ADD             R0, PC; ScriptParams_ptr
330B44:  LDR             R0, [R0]; ScriptParams
330B46:  LDR             R1, [R0]
330B48:  CMP             R1, #0
330B4A:  BLT.W           loc_331C00
330B4E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330B5A)
330B52:  UXTB            R3, R1
330B54:  LSRS            R1, R1, #8
330B56:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330B58:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
330B5A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
330B5C:  LDR             R2, [R0,#4]
330B5E:  LDRB            R2, [R2,R1]
330B60:  CMP             R2, R3
330B62:  BNE.W           loc_331C00
330B66:  MOVW            R2, #0xA2C
330B6A:  LDR             R0, [R0]
330B6C:  MLA.W           R1, R1, R2, R0
330B70:  B.W             loc_331C02
330B74:  MOV             R0, R10; jumptable 00330066 case 1854
330B76:  MOVS            R1, #5; __int16
330B78:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330B7C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330B84)
330B80:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330B82:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
330B84:  LDR             R0, [R0]; CPools::ms_pVehiclePool
330B86:  LDR             R1, [R0,#8]
330B88:  CMP             R1, #0
330B8A:  BEQ.W           loc_331ECA
330B8E:  LDR.W           R2, =(ScriptParams_ptr - 0x330B9C)
330B92:  SUBS            R6, R1, #1
330B94:  VLDR            S22, =9999.9
330B98:  ADD             R2, PC; ScriptParams_ptr
330B9A:  LDR             R2, [R2]; ScriptParams
330B9C:  VLDR            S16, [R2,#0xC]
330BA0:  VLDR            D9, [R2,#4]
330BA4:  VLDR            S20, [R2]
330BA8:  MOVW            R2, #0xA2C
330BAC:  MUL.W           R4, R1, R2
330BB0:  ADD             R1, SP, #0xE8+var_B8
330BB2:  ORR.W           R1, R1, #4
330BB6:  STR             R1, [SP,#0xE8+var_C4]
330BB8:  MOV.W           R1, #0xFFFFFFFF
330BBC:  STR             R1, [SP,#0xE8+var_C0]
330BBE:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330BC6)
330BC2:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330BC4:  LDR.W           R11, [R1]; CPools::ms_pVehiclePool ...
330BC8:  LDR.W           R1, =(ScriptParams_ptr - 0x330BD0)
330BCC:  ADD             R1, PC; ScriptParams_ptr
330BCE:  LDR             R1, [R1]; ScriptParams
330BD0:  STR             R1, [SP,#0xE8+var_BC]
330BD2:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330BDA)
330BD6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330BD8:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
330BDA:  STR             R1, [SP,#0xE8+var_C8]
330BDC:  B               loc_330BE8
330BDE:  SUBS            R6, #1
330BE0:  LDR.W           R0, [R11]; CPools::ms_pVehiclePool
330BE4:  SUBW            R4, R4, #0xA2C
330BE8:  LDR             R1, [R0,#4]
330BEA:  LDRSB           R1, [R1,R6]
330BEC:  CMP             R1, #0
330BEE:  BLT             loc_330CD6
330BF0:  LDR.W           R9, [R0]
330BF4:  ADD.W           R8, R9, R4
330BF8:  SUBW            R5, R8, #0xA2C
330BFC:  CMP             R5, #0
330BFE:  BEQ             loc_330CD6
330C00:  MOV             R0, R5; this
330C02:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
330C06:  CMP             R0, #1
330C08:  BEQ             loc_330C14
330C0A:  MOV             R0, R5; this
330C0C:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
330C10:  CMP             R0, #2
330C12:  BNE             loc_330CD6
330C14:  MOV             R0, #0xFFFFFA00
330C1C:  LDRB.W          R0, [R8,R0]
330C20:  LSLS            R0, R0, #0x1F
330C22:  BNE             loc_330CD6
330C24:  MOV             R0, #0xFFFFFBB8
330C2C:  ADD             R0, R9
330C2E:  ADD.W           R8, R0, R4
330C32:  MOV             R0, #0xFFFFFA42
330C3A:  LDRSH.W         R1, [R8,R0]
330C3E:  LDR             R0, [SP,#0xE8+var_BC]
330C40:  LDR             R0, [R0,#0x10]
330C42:  CMP             R0, R1
330C44:  BEQ             loc_330C4C
330C46:  CMP.W           R0, #0xFFFFFFFF
330C4A:  BGT             loc_330CD6
330C4C:  MOV             R0, R5; this
330C4E:  BLX             j__ZNK8CVehicle12CanBeDeletedEv; CVehicle::CanBeDeleted(void)
330C52:  CMP             R0, #0
330C54:  BEQ             loc_330CD6
330C56:  MOV             R0, #0xFFFFFA30
330C5E:  LDR.W           R0, [R8,R0]
330C62:  ADD.W           R1, R0, #0x30 ; '0'
330C66:  CMP             R0, #0
330C68:  IT EQ
330C6A:  SUBEQ.W         R1, R8, #0x5E0
330C6E:  VLDR            D16, [R1]
330C72:  VSTR            D16, [SP,#0xE8+var_B8]
330C76:  VLDR            S0, [SP,#0xE8+var_B8]
330C7A:  LDR             R0, [R1,#8]
330C7C:  VSUB.F32        S0, S0, S20
330C80:  STR             R0, [SP,#0xE8+var_B0]
330C82:  LDR             R0, [SP,#0xE8+var_C4]
330C84:  VLDR            D16, [R0]
330C88:  VSUB.F32        D16, D16, D9
330C8C:  VMUL.F32        S0, S0, S0
330C90:  VMUL.F32        D1, D16, D16
330C94:  VADD.F32        S0, S0, S2
330C98:  VADD.F32        S0, S0, S3
330C9C:  VSQRT.F32       S0, S0
330CA0:  VCMPE.F32       S0, S16
330CA4:  VMRS            APSR_nzcv, FPSCR
330CA8:  ITT LT
330CAA:  VCMPELT.F32     S0, S22
330CAE:  VMRSLT          APSR_nzcv, FPSCR
330CB2:  BGE             loc_330CD6
330CB4:  LDR             R0, [SP,#0xE8+var_C8]
330CB6:  MOV             R2, #0xBFE6D523
330CBE:  VMOV.F32        S22, S0
330CC2:  LDR             R0, [R0]
330CC4:  LDRD.W          R1, R0, [R0]
330CC8:  SUBS            R1, R5, R1
330CCA:  ASRS            R1, R1, #2
330CCC:  MULS            R1, R2
330CCE:  LDRB            R0, [R0,R1]
330CD0:  ORR.W           R0, R0, R1,LSL#8
330CD4:  STR             R0, [SP,#0xE8+var_C0]
330CD6:  CMP             R6, #0
330CD8:  BNE.W           loc_330BDE
330CDC:  LDR             R1, [SP,#0xE8+var_C0]
330CDE:  B.W             loc_331ECE
330CE2:  MOV             R0, R10; jumptable 00330066 case 1855
330CE4:  MOVS            R1, #7; __int16
330CE6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330CEA:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x330CF0)
330CEC:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
330CEE:  LDR             R0, [R0]; CPools::ms_pPedPool ...
330CF0:  LDR             R0, [R0]; CPools::ms_pPedPool
330CF2:  LDR             R1, [R0,#8]
330CF4:  CMP             R1, #0
330CF6:  BEQ.W           loc_331EDA
330CFA:  LDR             R2, =(ScriptParams_ptr - 0x330D06)
330CFC:  SUBS            R5, R1, #1
330CFE:  VLDR            S22, =9999.9
330D02:  ADD             R2, PC; ScriptParams_ptr
330D04:  LDR             R2, [R2]; ScriptParams
330D06:  VLDR            S16, [R2,#0xC]
330D0A:  VLDR            D9, [R2,#4]
330D0E:  VLDR            S20, [R2]
330D12:  MOVW            R2, #0x7CC
330D16:  MULS            R2, R1
330D18:  ADD             R1, SP, #0xE8+var_B8
330D1A:  ORR.W           R1, R1, #4
330D1E:  STR             R1, [SP,#0xE8+var_C8]
330D20:  MOV.W           R1, #0xFFFFFFFF
330D24:  STR             R1, [SP,#0xE8+var_BC]
330D26:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x330D30)
330D28:  SUB.W           R4, R2, #0x384
330D2C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
330D2E:  LDR.W           R11, [R1]; CPools::ms_pPedPool ...
330D32:  LDR             R1, =(ScriptParams_ptr - 0x330D38)
330D34:  ADD             R1, PC; ScriptParams_ptr
330D36:  LDR             R1, [R1]; ScriptParams
330D38:  STR             R1, [SP,#0xE8+var_C4]
330D3A:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x330D40)
330D3C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
330D3E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
330D40:  STR             R1, [SP,#0xE8+var_CC]
330D42:  B               loc_330D4E
330D44:  SUBS            R5, #1
330D46:  LDR.W           R0, [R11]; CPools::ms_pPedPool
330D4A:  SUBW            R4, R4, #0x7CC
330D4E:  LDR             R1, [R0,#4]
330D50:  LDRSB           R1, [R1,R5]
330D52:  CMP             R1, #0
330D54:  BLT             loc_330E34
330D56:  LDR             R0, [R0]
330D58:  ADD.W           R9, R0, R4
330D5C:  CMP.W           R9, #0x448
330D60:  BEQ             loc_330E34
330D62:  LDRB            R1, [R0,R4]
330D64:  CMP             R1, #1
330D66:  BNE             loc_330E34
330D68:  ADD             R0, R6
330D6A:  ADD.W           R8, R0, R4
330D6E:  LDRB.W          R0, [R8,#0x1D]
330D72:  LSLS            R0, R0, #0x1C
330D74:  ITT PL
330D76:  LDRBPL.W        R0, [R9,#0x40]
330D7A:  MOVSPL.W        R0, R0,LSL#28
330D7E:  BMI             loc_330E34
330D80:  ADD.W           R1, R9, R6; CPed *
330D84:  MOV             R0, R10; this
330D86:  STR             R1, [SP,#0xE8+var_C0]
330D88:  BLX             j__ZN14CRunningScript9IsPedDeadEP4CPed; CRunningScript::IsPedDead(CPed *)
330D8C:  CMP             R0, #0
330D8E:  BNE             loc_330E34
330D90:  LDR             R0, [SP,#0xE8+var_C4]
330D92:  LDR.W           R1, [R9,#0x154]; unsigned int
330D96:  LDRD.W          R2, R3, [R0,#0x10]; int
330D9A:  LDR             R0, [R0,#0x18]
330D9C:  STR             R0, [SP,#0xE8+var_E8]; int
330D9E:  MOV             R0, R10; this
330DA0:  BLX             j__ZN14CRunningScript21ThisIsAValidRandomPedEjiii; CRunningScript::ThisIsAValidRandomPed(uint,int,int,int)
330DA4:  CMP             R0, #1
330DA6:  BNE             loc_330E34
330DA8:  LDR             R0, [SP,#0xE8+var_C0]; this
330DAA:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
330DAE:  CMP             R0, #0
330DB0:  BNE             loc_330E34
330DB2:  MOV             R0, #0xFFFFFBCC
330DBA:  LDR.W           R0, [R9,R0]
330DBE:  ADD.W           R1, R0, #0x30 ; '0'
330DC2:  CMP             R0, #0
330DC4:  IT EQ
330DC6:  ADDEQ.W         R1, R8, #4
330DCA:  VLDR            D16, [R1]
330DCE:  VSTR            D16, [SP,#0xE8+var_B8]
330DD2:  VLDR            S0, [SP,#0xE8+var_B8]
330DD6:  LDR             R0, [R1,#8]
330DD8:  VSUB.F32        S0, S0, S20
330DDC:  STR             R0, [SP,#0xE8+var_B0]
330DDE:  LDR             R0, [SP,#0xE8+var_C8]
330DE0:  VLDR            D16, [R0]
330DE4:  VSUB.F32        D16, D16, D9
330DE8:  VMUL.F32        S0, S0, S0
330DEC:  VMUL.F32        D1, D16, D16
330DF0:  VADD.F32        S0, S0, S2
330DF4:  VADD.F32        S0, S0, S3
330DF8:  VSQRT.F32       S0, S0
330DFC:  VCMPE.F32       S0, S16
330E00:  VMRS            APSR_nzcv, FPSCR
330E04:  ITT LT
330E06:  VCMPELT.F32     S0, S22
330E0A:  VMRSLT          APSR_nzcv, FPSCR
330E0E:  BGE             loc_330E34
330E10:  LDR             R0, [SP,#0xE8+var_CC]
330E12:  VMOV.F32        S22, S0
330E16:  LDR             R0, [R0]
330E18:  LDRD.W          R1, R0, [R0]
330E1C:  LDR             R2, [SP,#0xE8+var_C0]
330E1E:  SUBS            R1, R2, R1
330E20:  MOV             R2, #0xBED87F3B
330E28:  ASRS            R1, R1, #2
330E2A:  MULS            R1, R2
330E2C:  LDRB            R0, [R0,R1]
330E2E:  ORR.W           R0, R0, R1,LSL#8
330E32:  STR             R0, [SP,#0xE8+var_BC]
330E34:  CMP             R5, #0
330E36:  BNE.W           loc_330D44
330E3A:  LDR             R4, [SP,#0xE8+var_BC]
330E3C:  CMP             R4, #0
330E3E:  BLT.W           loc_3321E0
330E42:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x330E4C)
330E44:  LSRS            R1, R4, #8
330E46:  UXTB            R3, R4
330E48:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
330E4A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
330E4C:  LDR             R0, [R0]; CPools::ms_pPedPool
330E4E:  LDR             R2, [R0,#4]
330E50:  LDRB            R2, [R2,R1]
330E52:  CMP             R2, R3
330E54:  BNE.W           loc_3321B8
330E58:  MOVW            R2, #0x7CC
330E5C:  LDR             R0, [R0]
330E5E:  MLA.W           R0, R1, R2, R0
330E62:  B.W             loc_3321BA
330E66:  MOV             R0, R10; jumptable 00330066 case 1857
330E68:  MOVS            R1, #1; __int16
330E6A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330E6E:  LDR             R0, =(ScriptParams_ptr - 0x330E7C)
330E70:  MOVW            R2, #0x7CC
330E74:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x330E7E)
330E76:  MOVS            R4, #0
330E78:  ADD             R0, PC; ScriptParams_ptr
330E7A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
330E7C:  LDR             R0, [R0]; ScriptParams
330E7E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
330E80:  LDR             R0, [R0]
330E82:  LDR             R1, [R1]; CPools::ms_pPedPool
330E84:  LSRS            R0, R0, #8
330E86:  LDR             R1, [R1]
330E88:  MLA.W           R0, R0, R2, R1
330E8C:  MOVS            R1, #0
330E8E:  LDR.W           R0, [R0,#0x44C]
330E92:  CMP             R0, #0x3F ; '?'
330E94:  IT EQ
330E96:  MOVEQ           R1, #1
330E98:  B               loc_33166E
330E9A:  MOV             R0, R10; jumptable 00330066 case 1858
330E9C:  MOVS            R1, #2; __int16
330E9E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330EA2:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330EB0)
330EA4:  MOVW            R3, #0xA2C
330EA8:  LDR             R0, =(ScriptParams_ptr - 0x330EB2)
330EAA:  MOVS            R4, #0
330EAC:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330EAE:  ADD             R0, PC; ScriptParams_ptr
330EB0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
330EB2:  LDR             R0, [R0]; ScriptParams
330EB4:  LDRD.W          R2, R0, [R0]
330EB8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
330EBA:  LSRS            R2, R2, #8
330EBC:  LDR             R1, [R1]
330EBE:  MLA.W           R1, R2, R3, R1
330EC2:  STR.W           R0, [R1,#0x9AC]
330EC6:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
330ECA:  ALIGN 4
330ECC:  DCFS 9999.9
330ED0:  MOV             R0, R10; jumptable 00330066 case 1859
330ED2:  MOVS            R1, #6; __int16
330ED4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
330ED8:  LDR             R0, =(ScriptParams_ptr - 0x330EDE)
330EDA:  ADD             R0, PC; ScriptParams_ptr
330EDC:  LDR             R0, [R0]; ScriptParams
330EDE:  LDR             R1, [R0]
330EE0:  CMP             R1, #0
330EE2:  BLT.W           loc_331C28
330EE6:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x330EF0)
330EE8:  UXTB            R3, R1
330EEA:  LSRS            R1, R1, #8
330EEC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
330EEE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
330EF0:  LDR             R0, [R0]; CPools::ms_pVehiclePool
330EF2:  LDR             R2, [R0,#4]
330EF4:  LDRB            R2, [R2,R1]
330EF6:  CMP             R2, R3
330EF8:  BNE.W           loc_331C28
330EFC:  MOVW            R2, #0xA2C
330F00:  LDR             R0, [R0]
330F02:  MLA.W           R4, R1, R2, R0
330F06:  B.W             loc_331C2A
330F0A:  ALIGN 4
330F0C:  DCD __stack_chk_guard_ptr - 0x33004E
330F10:  DCD ScriptParams_ptr - 0x33014E
330F14:  DCD _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x330168
330F18:  DCD ScriptParams_ptr - 0x33016A
330F1C:  DCD _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x33018A
330F20:  DCD ScriptParams_ptr - 0x33019E
330F24:  DCD _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x3301CC
330F28:  DCD _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x3301E8
330F2C:  DCD ScriptParams_ptr - 0x330208
330F30:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33021C
330F34:  DCD ScriptParams_ptr - 0x330250
330F38:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330252
330F3C:  DCD ScriptParams_ptr - 0x33029A
330F40:  DCD _ZN6CWorld7PlayersE_ptr - 0x33029C
330F44:  DCD ScriptParams_ptr - 0x3302C6
330F48:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3302C8
330F4C:  DCD ScriptParams_ptr - 0x330308
330F50:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330314
330F54:  DCD ScriptParams_ptr - 0x330374
330F58:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330376
330F5C:  DCD ScriptParams_ptr - 0x3303AE
330F60:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3303DE
330F64:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330410
330F68:  DCD ScriptParams_ptr - 0x330412
330F6C:  DCD ScriptParams_ptr - 0x330446
330F70:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33045A
330F74:  DCD ScriptParams_ptr - 0x330488
330F78:  DCD ScriptParams_ptr - 0x3304B6
330F7C:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x3304CC
330F80:  DCD ScriptParams_ptr - 0x33051A
330F84:  DCD ScriptParams_ptr - 0x330556
330F88:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x33056A
330F8C:  DCD ScriptParams_ptr - 0x3305A0
330F90:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3305B4
330F94:  DCD ScriptParams_ptr - 0x3305E6
330F98:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x3305E8
330F9C:  DCD ScriptParams_ptr - 0x33061C
330FA0:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33061E
330FA4:  DCD ScriptParams_ptr - 0x330650
330FA8:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x330664
330FAC:  DCD ScriptParams_ptr - 0x330696
330FB0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330698
330FB4:  DCD ScriptParams_ptr - 0x3306EC
330FB8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3306EE
330FBC:  DCD ScriptParams_ptr - 0x33072A
330FC0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33072C
330FC4:  DCD ScriptParams_ptr - 0x330764
330FC8:  DCD ScriptParams_ptr - 0x33079C
330FCC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3307B2
330FD0:  DCD ScriptParams_ptr - 0x3307DC
330FD4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3307F2
330FD8:  DCD ScriptParams_ptr - 0x33081C
330FDC:  DCD ScriptParams_ptr - 0x330844
330FE0:  DCD _ZN11CTheScripts9StuckCarsE_ptr - 0x330846
330FE4:  DCD ScriptParams_ptr - 0x330890
330FE8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3308A4
330FEC:  DCD ScriptParams_ptr - 0x3308CE
330FF0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3308E2
330FF4:  DCD ScriptParams_ptr - 0x330912
330FF8:  DCD _ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x330914
330FFC:  DCD _ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x330934
331000:  DCD _ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x330936
331004:  DCD _ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x33096E
331008:  DCD ScriptParams_ptr - 0x330974
33100C:  DCD _ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x33097A
331010:  DCD _ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x330982
331014:  DCD _ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x330992
331018:  DCD _ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x33099A
33101C:  DCD _ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x3309F8
331020:  DCD ScriptParams_ptr - 0x330A14
331024:  DCD _ZN6CCheat23m_nLastScriptBypasstimeE_ptr - 0x330A22
331028:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x330A30
33102C:  DCD PS2Keyboard_ptr - 0x330A4C
331030:  DCB "Used in script",0
33103F:  DCB 0
331040:  DCD ScriptParams_ptr - 0x330A68
331044:  DCD _ZN6CCheat23m_nLastScriptBypasstimeE_ptr - 0x330A76
331048:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x330A84
33104C:  DCD PS2Keyboard_ptr - 0x330AA0
331050:  DCD ScriptParams_ptr - 0x330AC4
331054:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x330AD8
331058:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330B0A
33105C:  DCD ScriptParams_ptr - 0x330B0C
331060:  DCD ScriptParams_ptr - 0x330B46
331064:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330B5A
331068:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330B84
33106C:  DCD ScriptParams_ptr - 0x330B9C
331070:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330BC6
331074:  DCD ScriptParams_ptr - 0x330BD0
331078:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330BDA
33107C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x330CF0
331080:  DCD ScriptParams_ptr - 0x330D06
331084:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x330D30
331088:  DCD ScriptParams_ptr - 0x330D38
33108C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x330D40
331090:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x330E4C
331094:  DCD ScriptParams_ptr - 0x330E7C
331098:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x330E7E
33109C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330EB0
3310A0:  DCD ScriptParams_ptr - 0x330EB2
3310A4:  DCD ScriptParams_ptr - 0x330EDE
3310A8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x330EF0
3310AC:  DCD ScriptParams_ptr - 0x331104
3310B0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x331118
3310B4:  DCD ScriptParams_ptr - 0x331142
3310B8:  DCD ScriptParams_ptr - 0x33116A
3310BC:  DCD ScriptParams_ptr - 0x331194
3310C0:  DCD _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x3311AE
3310C4:  DCD ScriptParams_ptr - 0x3311B0
3310C8:  DCD _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x3311CC
3310CC:  DCD ScriptParams_ptr - 0x3311EC
3310D0:  DCD _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x33121A
3310D4:  DCD _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x331232
3310D8:  DCD ScriptParams_ptr - 0x33125A
3310DC:  DCD RsGlobal_ptr - 0x331292
3310E0:  DCFS 1.3333
3310E4:  DCFS 640.0
3310E8:  DCFS 448.0
3310EC:  DCFS 3.1416
3310F0:  DCFS 180.0
3310F4:  MOV             R0, R10; jumptable 00330066 case 1861
3310F6:  MOVS            R1, #1; __int16
3310F8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3310FC:  LDR.W           R0, =(ScriptParams_ptr - 0x331104)
331100:  ADD             R0, PC; ScriptParams_ptr
331102:  LDR             R0, [R0]; ScriptParams
331104:  LDR             R1, [R0]
331106:  CMP             R1, #0
331108:  BLT.W           loc_331C60
33110C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x331118)
331110:  UXTB            R3, R1
331112:  LSRS            R1, R1, #8
331114:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
331116:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
331118:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33111A:  LDR             R2, [R0,#4]
33111C:  LDRB            R2, [R2,R1]
33111E:  CMP             R2, R3
331120:  BNE.W           loc_331C60
331124:  MOVW            R2, #0xA2C
331128:  LDR             R0, [R0]
33112A:  MLA.W           R5, R1, R2, R0
33112E:  B.W             loc_331C62
331132:  MOV             R0, R10; jumptable 00330066 case 1862
331134:  MOVS            R1, #3; __int16
331136:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33113A:  LDR.W           R0, =(ScriptParams_ptr - 0x331142)
33113E:  ADD             R0, PC; ScriptParams_ptr
331140:  LDR             R0, [R0]; ScriptParams
331142:  LDRD.W          R4, R5, [R0]
331146:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]; this
331148:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
33114C:  MOV             R2, R0; int
33114E:  MOV             R0, R4; this
331150:  MOV             R1, R5; int
331152:  BLX             j__ZN8CPedType24SetPedTypeAsAcquaintanceEiij; CPedType::SetPedTypeAsAcquaintance(int,int,uint)
331156:  B.W             loc_3321F0
33115A:  MOV             R0, R10; jumptable 00330066 case 1863
33115C:  MOVS            R1, #3; __int16
33115E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331162:  LDR.W           R0, =(ScriptParams_ptr - 0x33116A)
331166:  ADD             R0, PC; ScriptParams_ptr
331168:  LDR             R0, [R0]; ScriptParams
33116A:  LDRD.W          R4, R5, [R0]
33116E:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]; this
331170:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
331174:  MOV             R2, R0; int
331176:  MOV             R0, R4; this
331178:  MOV             R1, R5; int
33117A:  BLX             j__ZN8CPedType26ClearPedTypeAsAcquaintanceEiij; CPedType::ClearPedTypeAsAcquaintance(int,int,uint)
33117E:  B.W             loc_3321F0
331182:  MOV             R0, R10; jumptable 00330066 case 1865
331184:  MOVS            R1, #2; __int16
331186:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33118A:  LDR.W           R0, =(ScriptParams_ptr - 0x331194)
33118E:  MOVS            R1, #7; int
331190:  ADD             R0, PC; ScriptParams_ptr
331192:  LDR             R0, [R0]; ScriptParams
331194:  LDR             R0, [R0]; this
331196:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33119A:  MOV             R4, R0
33119C:  CMP             R4, #0x13
33119E:  BHI.W           loc_3321F0
3311A2:  LDR.W           R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x3311AE)
3311A6:  LDR.W           R1, =(ScriptParams_ptr - 0x3311B0)
3311AA:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
3311AC:  ADD             R1, PC; ScriptParams_ptr
3311AE:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
3311B0:  LDR             R1, [R1]; ScriptParams
3311B2:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
3311B4:  LDR             R5, [R1,#(dword_81A90C - 0x81A908)]
3311B6:  CBNZ            R0, loc_3311CE
3311B8:  MOVW            R0, #0xF1C0; unsigned int
3311BC:  BLX             _Znwj; operator new(uint)
3311C0:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
3311C4:  LDR.W           R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x3311CC)
3311C8:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
3311CA:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
3311CC:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
3311CE:  MOV             R1, R4; int
3311D0:  MOV             R2, R5; int
3311D2:  BLX             j__ZN19CDecisionMakerTypes31FlushDecisionMakerEventResponseEii; CDecisionMakerTypes::FlushDecisionMakerEventResponse(int,int)
3311D6:  B.W             loc_3321F0
3311DA:  MOV             R0, R10; jumptable 00330066 case 1866
3311DC:  MOVS            R1, #9; __int16
3311DE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3311E2:  LDR.W           R0, =(ScriptParams_ptr - 0x3311EC)
3311E6:  MOVS            R1, #7; int
3311E8:  ADD             R0, PC; ScriptParams_ptr
3311EA:  LDR             R5, [R0]; ScriptParams
3311EC:  LDR             R0, [R5]; this
3311EE:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3311F2:  ADD.W           R6, R5, #0xC
3311F6:  MOV             R4, R0
3311F8:  LDRD.W          R8, R9, [R5,#(dword_81A90C - 0x81A908)]
3311FC:  CMP             R4, #0x13
3311FE:  LDM             R6, {R0-R3,R6}
331200:  LDR             R5, [R5,#(dword_81A928 - 0x81A908)]
331202:  STRD.W          R0, R1, [SP,#0xE8+var_B0]
331206:  STRD.W          R3, R2, [SP,#0xE8+var_B8]
33120A:  STRD.W          R5, R6, [SP,#0xE8+var_80]
33120E:  BHI.W           loc_3321F0
331212:  LDR.W           R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x33121A)
331216:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
331218:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
33121A:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
33121C:  CBNZ            R0, loc_331234
33121E:  MOVW            R0, #0xF1C0; unsigned int
331222:  BLX             _Znwj; operator new(uint)
331226:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
33122A:  LDR.W           R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x331232)
33122E:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
331230:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
331232:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
331234:  ADD             R1, SP, #0xE8+var_80
331236:  ADD             R2, SP, #0xE8+var_B8
331238:  MOV             R3, R9; int
33123A:  STRD.W          R2, R1, [SP,#0xE8+var_E8]; float *
33123E:  MOV             R1, R4; int
331240:  MOV             R2, R8; int
331242:  BLX             j__ZN19CDecisionMakerTypes16AddEventResponseEiiiPfPi; CDecisionMakerTypes::AddEventResponse(int,int,int,float *,int *)
331246:  B.W             loc_3321F0
33124A:  MOV             R0, R10; jumptable 00330066 case 1867
33124C:  MOVS            R1, #0xA; __int16
33124E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331252:  LDR.W           R0, =(ScriptParams_ptr - 0x33125A)
331256:  ADD             R0, PC; ScriptParams_ptr
331258:  LDR             R5, [R0]; ScriptParams
33125A:  VLDR            S18, [R5,#4]
33125E:  VLDR            S16, [R5,#8]
331262:  VLDR            S20, [R5,#0xC]
331266:  VLDR            S22, [R5,#0x10]
33126A:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
33126E:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
331272:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
331276:  VMOV            S0, R0
33127A:  VCVT.F32.U32    S24, S0
33127E:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
331282:  VMOV            S0, R0
331286:  LDR.W           R0, =(RsGlobal_ptr - 0x331292)
33128A:  VCVT.F32.U32    S0, S0
33128E:  ADD             R0, PC; RsGlobal_ptr
331290:  LDR             R6, [R0]; RsGlobal
331292:  VLDR            S2, [R6,#8]
331296:  VDIV.F32        S24, S24, S0
33129A:  VLDR            S0, [R6,#4]
33129E:  VCVT.F32.S32    S26, S2
3312A2:  VCVT.F32.S32    S28, S0
3312A6:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
3312AA:  MOV             R4, R0
3312AC:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
3312B0:  VLDR            S4, =1.3333
3312B4:  MOVW            R1, #0xAAAB
3312B8:  VLDR            S0, [R6,#8]
3312BC:  LSLS            R0, R0, #2
3312BE:  VDIV.F32        S4, S4, S24
3312C2:  MOVT            R1, #0xAAAA
3312C6:  UMULL.W         R0, R1, R0, R1
3312CA:  MOVW            R2, #0xFFFF
3312CE:  SUB.W           R0, R4, R1,LSR#1
3312D2:  VLDR            S6, =640.0
3312D6:  VCVT.F32.S32    S0, S0
3312DA:  VLDR            S2, =448.0
3312DE:  VMOV.F32        S12, #0.5
3312E2:  VDIV.F32        S6, S28, S6
3312E6:  VDIV.F32        S0, S0, S2
3312EA:  VDIV.F32        S8, S26, S2
3312EE:  VMOV            S2, R0
3312F2:  VLDR            S14, [R5,#0x14]
3312F6:  VLDR            S10, =3.1416
3312FA:  VMUL.F32        S1, S18, S4
3312FE:  VCVT.F32.U32    S2, S2
331302:  LDR.W           R0, =(_ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr - 0x331316)
331306:  VMUL.F32        S10, S14, S10
33130A:  VLDR            S14, =180.0
33130E:  VMUL.F32        S3, S22, S12
331312:  ADD             R0, PC; _ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr
331314:  VMUL.F32        S4, S6, S4
331318:  LDRB.W          R3, [R5,#(dword_81A928 - 0x81A908)]; unsigned __int8
33131C:  VMUL.F32        S0, S16, S0
331320:  LDR             R6, [R0]; CTheScripts::NumberOfIntroRectanglesThisFrame ...
331322:  LDR.W           R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x331332)
331326:  VMUL.F32        S6, S6, S1
33132A:  VMUL.F32        S2, S2, S12
33132E:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
331330:  VDIV.F32        S10, S10, S14
331334:  LDRH            R1, [R6]; CTheScripts::NumberOfIntroRectanglesThisFrame
331336:  LDR             R4, [R0]; CTheScripts::IntroRectangles ...
331338:  RSB.W           R0, R1, R1,LSL#4
33133C:  MOVS            R1, #5
33133E:  STR.W           R1, [R4,R0,LSL#2]
331342:  ADD.W           R0, R4, R0,LSL#2
331346:  LDR             R1, [R5]
331348:  ADD             R1, R2
33134A:  STRH            R1, [R0,#6]
33134C:  LDRB            R1, [R5,#(dword_81A920 - 0x81A908)]; unsigned __int8
33134E:  LDRB            R2, [R5,#(dword_81A924 - 0x81A908)]; unsigned __int8
331350:  VMUL.F32        S14, S20, S12
331354:  VMUL.F32        S8, S3, S8
331358:  VADD.F32        S2, S6, S2
33135C:  VMUL.F32        S4, S14, S4
331360:  VSUB.F32        S6, S0, S8
331364:  VADD.F32        S0, S8, S0
331368:  VSUB.F32        S8, S2, S4
33136C:  VADD.F32        S2, S4, S2
331370:  VSTR            S8, [R0,#8]
331374:  VSTR            S6, [R0,#0xC]
331378:  VSTR            S2, [R0,#0x10]
33137C:  VSTR            S0, [R0,#0x14]
331380:  VSTR            S10, [R0,#0x18]
331384:  LDRB.W          R0, [R5,#(dword_81A92C - 0x81A908)]
331388:  STR             R0, [SP,#0xE8+var_E8]; unsigned __int8
33138A:  ADD             R0, SP, #0xE8+var_B8; this
33138C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
331390:  LDRH            R0, [R6]; CTheScripts::NumberOfIntroRectanglesThisFrame
331392:  LDRB.W          R1, [SP,#0xE8+var_B8]
331396:  RSB.W           R2, R0, R0,LSL#4
33139A:  ADDS            R0, #1
33139C:  STRH            R0, [R6]; CTheScripts::NumberOfIntroRectanglesThisFrame
33139E:  ADD.W           R2, R4, R2,LSL#2
3313A2:  MOVS            R4, #0
3313A4:  STRB            R1, [R2,#0x1C]
3313A6:  LDRB.W          R1, [SP,#0xE8+var_B8+1]
3313AA:  STRB            R1, [R2,#0x1D]
3313AC:  LDRB.W          R1, [SP,#0xE8+var_B8+2]
3313B0:  STRB            R1, [R2,#0x1E]
3313B2:  LDRB.W          R1, [SP,#0xE8+var_B8+3]
3313B6:  STRB            R1, [R2,#0x1F]
3313B8:  STRB.W          R4, [R2,#0x20]
3313BC:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
3313C0:  MOV             R0, R10; jumptable 00330066 case 1868
3313C2:  MOVS            R1, #2; __int16
3313C4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3313C8:  LDR.W           R0, =(ScriptParams_ptr - 0x3313D2)
3313CC:  MOVS            R1, #6; int
3313CE:  ADD             R0, PC; ScriptParams_ptr
3313D0:  LDR             R0, [R0]; ScriptParams
3313D2:  LDRD.W          R8, R0, [R0]; this
3313D6:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3313DA:  MOV             R6, R0
3313DC:  CMP             R6, #0x3F ; '?'
3313DE:  BHI.W           loc_3321F0
3313E2:  MOVS            R0, #dword_24; this
3313E4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3313E8:  MOV             R5, R0
3313EA:  LDR.W           R0, =(_ZN18CScripted2dEffects10ms_effectsE_ptr - 0x3313F6)
3313EE:  MOVS            R2, #0
3313F0:  MOVS            R4, #0
3313F2:  ADD             R0, PC; _ZN18CScripted2dEffects10ms_effectsE_ptr
3313F4:  LDR             R0, [R0]; CScripted2dEffects::ms_effects ...
3313F6:  ADD.W           R1, R0, R6,LSL#6
3313FA:  MOV             R0, R5
3313FC:  BLX             j__ZN21CTaskComplexUseEffectC2EP9C2dEffectP7CEntity; CTaskComplexUseEffect::CTaskComplexUseEffect(C2dEffect *,CEntity *)
331400:  MOV             R0, R10; this
331402:  MOV             R1, R8; int
331404:  MOV             R2, R5; CTask *
331406:  MOVW            R3, #0x74C; int
33140A:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
33140E:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331412:  MOV             R0, R10; jumptable 00330066 case 1869
331414:  MOVS            R1, #3; __int16
331416:  MOV.W           R9, #3
33141A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33141E:  LDR.W           R0, =(ScriptParams_ptr - 0x331426)
331422:  ADD             R0, PC; ScriptParams_ptr
331424:  LDR             R1, [R0]; ScriptParams ; unsigned int
331426:  LDRD.W          R8, R0, [R1]
33142A:  CMP             R0, #0
33142C:  LDR             R4, [R1,#(dword_81A910 - 0x81A908)]
33142E:  BLT.W           loc_331C78
331432:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33143E)
331436:  UXTB            R3, R0
331438:  LSRS            R0, R0, #8
33143A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33143C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33143E:  LDR             R1, [R1]; CPools::ms_pPedPool
331440:  LDR             R2, [R1,#4]
331442:  LDRB            R2, [R2,R0]
331444:  CMP             R2, R3
331446:  BNE.W           loc_331C78
33144A:  MOVW            R2, #0x7CC
33144E:  LDR             R1, [R1]
331450:  MLA.W           R6, R0, R2, R1
331454:  B.W             loc_331C7A
331458:  MOV             R0, R10; jumptable 00330066 case 1870
33145A:  MOVS            R1, #3; __int16
33145C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331460:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x331472)
331464:  MOVW            R6, #0x7CC
331468:  LDR.W           R0, =(ScriptParams_ptr - 0x331474)
33146C:  MOVS            R4, #0
33146E:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
331470:  ADD             R0, PC; ScriptParams_ptr
331472:  LDR             R1, [R1]; CPools::ms_pPedPool ...
331474:  LDR             R0, [R0]; ScriptParams
331476:  LDRD.W          R2, R3, [R0]
33147A:  LDR             R1, [R1]; CPools::ms_pPedPool
33147C:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
33147E:  LSRS            R2, R2, #8
331480:  LDR             R1, [R1]
331482:  MLA.W           R1, R2, R6, R1
331486:  LDR.W           R1, [R1,#0x440]
33148A:  STRD.W          R0, R3, [R1,#0xC4]
33148E:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331492:  MOV             R0, R10; jumptable 00330066 case 1871
331494:  MOVS            R1, #2; __int16
331496:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33149A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3314A6)
33149E:  LDR.W           R0, =(ScriptParams_ptr - 0x3314A8)
3314A2:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3314A4:  ADD             R0, PC; ScriptParams_ptr
3314A6:  LDR             R2, [R1]; CPools::ms_pPedPool ...
3314A8:  LDR             R0, [R0]; ScriptParams
3314AA:  LDRD.W          R3, R1, [R0]; int
3314AE:  LDR             R0, [R2]; CPools::ms_pPedPool
3314B0:  LSRS            R2, R3, #8
3314B2:  MOVW            R3, #0x7CC
3314B6:  LDR             R0, [R0]
3314B8:  MLA.W           R0, R2, R3, R0
3314BC:  LDR.W           R0, [R0,#0x440]; this
3314C0:  BLX             j__ZNK16CPedIntelligence19IsRespondingToEventEi; CPedIntelligence::IsRespondingToEvent(int)
3314C4:  MOV             R1, R0
3314C6:  B.W             loc_331FC0
3314CA:  MOV             R0, R10; jumptable 00330066 case 1872
3314CC:  MOVS            R1, #2; __int16
3314CE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3314D2:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3314E4)
3314D6:  MOV.W           R3, #0x1A4
3314DA:  LDR.W           R0, =(ScriptParams_ptr - 0x3314E6)
3314DE:  MOVS            R4, #0
3314E0:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3314E2:  ADD             R0, PC; ScriptParams_ptr
3314E4:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
3314E6:  LDR             R0, [R0]; ScriptParams
3314E8:  LDRD.W          R2, R0, [R0]
3314EC:  CMP             R0, #0
3314EE:  LDR             R1, [R1]; CPools::ms_pObjectPool
3314F0:  MOV.W           R2, R2,LSR#8
3314F4:  LDR             R1, [R1]
3314F6:  MLA.W           R1, R2, R3, R1
3314FA:  LDR             R2, [R1,#0x1C]
3314FC:  BIC.W           R3, R2, #0x80
331500:  IT NE
331502:  ORRNE.W         R3, R2, #0x80
331506:  STR             R3, [R1,#0x1C]
331508:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
33150C:  MOV             R0, R10; jumptable 00330066 case 1873
33150E:  MOVS            R1, #8; __int16
331510:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331514:  LDR.W           R0, =(ScriptParams_ptr - 0x33151C)
331518:  ADD             R0, PC; ScriptParams_ptr
33151A:  LDR             R0, [R0]; ScriptParams
33151C:  ADD.W           R9, R0, #0xC
331520:  VLDR            S16, [R0,#0x1C]
331524:  LDM.W           R9, {R4,R6,R8,R9}
331528:  VLDR            S18, [R0,#8]
33152C:  LDRD.W          R11, R0, [R0]
331530:  CMP             R0, #0
331532:  STR.W           R11, [SP,#0xE8+var_BC]
331536:  BLT.W           loc_331CA8
33153A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x331546)
33153E:  UXTB            R3, R0
331540:  LSRS            R0, R0, #8
331542:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
331544:  LDR             R1, [R1]; CPools::ms_pPedPool ...
331546:  LDR             R1, [R1]; CPools::ms_pPedPool
331548:  LDR             R2, [R1,#4]
33154A:  LDRB            R2, [R2,R0]
33154C:  CMP             R2, R3
33154E:  BNE.W           loc_331CA8
331552:  MOVW            R2, #0x7CC
331556:  LDR             R1, [R1]
331558:  MLA.W           R11, R0, R2, R1
33155C:  B               loc_331CAC
33155E:  MOV             R0, R10; jumptable 00330066 case 1874
331560:  MOVS            R1, #1; __int16
331562:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331566:  B.W             loc_3321F0
33156A:  MOVS            R4, #0xFF; jumptable 00330066 default case, cases 1875,1878,1879,1896,1897
33156C:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331570:  LDR.W           R0, =(_ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr - 0x33157A); jumptable 00330066 case 1876
331574:  MOVS            R4, #0
331576:  ADD             R0, PC; _ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr
331578:  LDR             R0, [R0]; CTaskComplexFollowPatrolRoute::ms_patrolRoute ...
33157A:  STR             R4, [R0]; CTaskComplexFollowPatrolRoute::ms_patrolRoute
33157C:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331580:  MOV             R0, R10; jumptable 00330066 case 1877
331582:  MOVS            R1, #3; __int16
331584:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331588:  LDR.W           R0, =(ScriptParams_ptr - 0x331594)
33158C:  ADD             R5, SP, #0xE8+var_80
33158E:  MOVS            R2, #0x18; unsigned __int8
331590:  ADD             R0, PC; ScriptParams_ptr
331592:  MOV             R1, R5; char *
331594:  LDR             R0, [R0]; ScriptParams
331596:  LDRD.W          R6, R9, [R0]
33159A:  LDR.W           R8, [R0,#(dword_81A910 - 0x81A908)]
33159E:  MOV             R0, R10; this
3315A0:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3315A4:  ADD             R1, SP, #0xE8+var_90; char *
3315A6:  MOV             R0, R10; this
3315A8:  MOVS            R2, #0x10; unsigned __int8
3315AA:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3315AE:  ADR.W           R1, aNone_0; "NONE"
3315B2:  MOV             R0, R5; char *
3315B4:  BLX             strcmp
3315B8:  CMP             R0, #0
3315BA:  BEQ.W           loc_331EE0
3315BE:  ADD             R4, SP, #0xE8+var_B8
3315C0:  ADD             R1, SP, #0xE8+var_80; char *
3315C2:  MOV             R0, R4; char *
3315C4:  BLX             strcpy
3315C8:  ADDS            R4, #0x18
3315CA:  ADD             R1, SP, #0xE8+var_90; char *
3315CC:  MOV             R0, R4; char *
3315CE:  BLX             strcpy
3315D2:  LDR.W           R0, =(_ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr - 0x3315DA)
3315D6:  ADD             R0, PC; _ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr
3315D8:  LDR             R0, [R0]; CTaskComplexFollowPatrolRoute::ms_patrolRoute ...
3315DA:  LDR             R0, [R0]; CTaskComplexFollowPatrolRoute::ms_patrolRoute
3315DC:  CMP             R0, #7
3315DE:  BGT.W           loc_3321F0
3315E2:  LDR.W           R1, =(_ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr - 0x3315EA)
3315E6:  ADD             R1, PC; _ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr
3315E8:  B.W             loc_331F02
3315EC:  MOV             R0, R10; jumptable 00330066 case 1882
3315EE:  MOVS            R1, #1; __int16
3315F0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3315F4:  LDR.W           R0, =(ScriptParams_ptr - 0x3315FC)
3315F8:  ADD             R0, PC; ScriptParams_ptr
3315FA:  LDR             R0, [R0]; ScriptParams
3315FC:  LDR             R1, [R0]
3315FE:  CMP             R1, #0
331600:  BLT.W           loc_331CFE
331604:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x331610)
331608:  UXTB            R3, R1
33160A:  LSRS            R1, R1, #8
33160C:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33160E:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
331610:  LDR             R0, [R0]; CPools::ms_pObjectPool
331612:  LDR             R2, [R0,#4]
331614:  LDRB            R2, [R2,R1]
331616:  CMP             R2, R3
331618:  BNE.W           loc_331CFE
33161C:  MOV.W           R2, #0x1A4
331620:  LDR             R0, [R0]
331622:  MLA.W           R4, R1, R2, R0
331626:  B               loc_331D00
331628:  MOV             R0, R10; jumptable 00330066 case 1883
33162A:  MOVS            R1, #1; __int16
33162C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331630:  LDR.W           R0, =(ScriptParams_ptr - 0x33163E)
331634:  MOVS            R4, #0
331636:  LDR.W           R1, =(_ZN11CTheScripts14RadarZoomValueE_ptr - 0x331640)
33163A:  ADD             R0, PC; ScriptParams_ptr
33163C:  ADD             R1, PC; _ZN11CTheScripts14RadarZoomValueE_ptr
33163E:  LDR             R0, [R0]; ScriptParams
331640:  LDR             R1, [R1]; CTheScripts::RadarZoomValue ...
331642:  LDR             R0, [R0]
331644:  STRB            R0, [R1]; CTheScripts::RadarZoomValue
331646:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
33164A:  MOV             R0, R10; jumptable 00330066 case 1884
33164C:  MOVS            R1, #1; __int16
33164E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331652:  LDR.W           R0, =(ScriptParams_ptr - 0x33165A)
331656:  ADD             R0, PC; ScriptParams_ptr
331658:  LDR             R0, [R0]; ScriptParams
33165A:  LDR             R0, [R0]; this
33165C:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
331660:  ADDS            R0, #1
331662:  MOV.W           R1, #0
331666:  MOV.W           R4, #0
33166A:  IT NE
33166C:  MOVNE           R1, #1; unsigned __int8
33166E:  MOV             R0, R10; this
331670:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
331674:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331678:  ADD             R5, SP, #0xE8+var_B8; jumptable 00330066 case 1885
33167A:  MOV             R0, R10; this
33167C:  MOVS            R2, #0x10; unsigned __int8
33167E:  MOV             R1, R5; char *
331680:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
331684:  MOV             R0, R5; this
331686:  BLX             j__ZN9CShopping10LoadPricesEPKc; CShopping::LoadPrices(char const*)
33168A:  B.W             loc_3321F0
33168E:  ADD             R5, SP, #0xE8+var_B8; jumptable 00330066 case 1886
331690:  MOV             R0, R10; this
331692:  MOVS            R2, #0x10; unsigned __int8
331694:  MOV             R1, R5; char *
331696:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33169A:  MOV             R0, R5; this
33169C:  BLX             j__ZN9CShopping8LoadShopEPKc; CShopping::LoadShop(char const*)
3316A0:  B.W             loc_3321F0
3316A4:  LDR.W           R0, =(_ZN9CShopping17ms_numItemsInShopE_ptr - 0x3316B0); jumptable 00330066 case 1887
3316A8:  LDR.W           R1, =(ScriptParams_ptr - 0x3316B2)
3316AC:  ADD             R0, PC; _ZN9CShopping17ms_numItemsInShopE_ptr
3316AE:  ADD             R1, PC; ScriptParams_ptr
3316B0:  LDR             R0, [R0]; CShopping::ms_numItemsInShop ...
3316B2:  LDR             R1, [R1]; ScriptParams
3316B4:  LDR             R0, [R0]; CShopping::ms_numItemsInShop
3316B6:  STR             R0, [R1]
3316B8:  B.W             loc_3321E8
3316BC:  MOV             R0, R10; jumptable 00330066 case 1888
3316BE:  MOVS            R1, #1; __int16
3316C0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3316C4:  LDR.W           R0, =(ScriptParams_ptr - 0x3316D0)
3316C8:  LDR.W           R1, =(_ZN9CShopping15ms_shopContentsE_ptr - 0x3316D2)
3316CC:  ADD             R0, PC; ScriptParams_ptr
3316CE:  ADD             R1, PC; _ZN9CShopping15ms_shopContentsE_ptr
3316D0:  LDR             R0, [R0]; ScriptParams
3316D2:  LDR             R1, [R1]; CShopping::ms_shopContents ...
3316D4:  LDR             R2, [R0]
3316D6:  LDR.W           R1, [R1,R2,LSL#2]
3316DA:  B               loc_331ED6
3316DC:  MOV             R0, R10; jumptable 00330066 case 1889
3316DE:  MOVS            R1, #1; __int16
3316E0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3316E4:  LDR.W           R0, =(ScriptParams_ptr - 0x3316EC)
3316E8:  ADD             R0, PC; ScriptParams_ptr
3316EA:  LDR             R4, [R0]; ScriptParams
3316EC:  LDR             R0, [R4]; this
3316EE:  BLX             j__ZN9CShopping8GetPriceEj; CShopping::GetPrice(uint)
3316F2:  STR             R0, [R4]
3316F4:  B.W             loc_3321E8
3316F8:  MOV             R0, R10; jumptable 00330066 case 1890
3316FA:  MOVS            R1, #1; __int16
3316FC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331700:  MOVS            R0, #word_28; this
331702:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
331706:  MOV             R5, R0
331708:  MOVS            R4, #0
33170A:  MOV.W           R0, #0x40800000
33170E:  MOVS            R1, #0; int
331710:  STRD.W          R0, R4, [SP,#0xE8+var_E8]; float
331714:  MOV             R0, R5; int
331716:  MOVS            R2, #0; int
331718:  MOVS            R3, #0xF; int
33171A:  STRD.W          R4, R4, [SP,#0xE8+var_E0]; int
33171E:  STRD.W          R4, R4, [SP,#0xE8+var_D8]; int
331722:  BLX             j__ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib; CTaskComplexDie::CTaskComplexDie(eWeaponType,AssocGroupId,AnimationId,float,float,bool,bool,int,bool)
331726:  LDR.W           R0, =(ScriptParams_ptr - 0x331734)
33172A:  MOV             R2, R5; CTask *
33172C:  MOVW            R3, #0x762; int
331730:  ADD             R0, PC; ScriptParams_ptr
331732:  LDR             R0, [R0]; ScriptParams
331734:  LDR             R1, [R0]; int
331736:  MOV             R0, R10; this
331738:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
33173C:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331740:  MOV             R0, R10; jumptable 00330066 case 1891
331742:  MOVS            R1, #1; __int16
331744:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331748:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x331754)
33174C:  LDR.W           R1, =(ScriptParams_ptr - 0x331756)
331750:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
331752:  ADD             R1, PC; ScriptParams_ptr
331754:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
331756:  LDR             R1, [R1]; ScriptParams
331758:  LDR             R2, [R0]; CPools::ms_pVehiclePool
33175A:  LDR             R0, [R1]
33175C:  LDR             R1, [R2,#4]
33175E:  CMP             R0, #0
331760:  BLT.W           loc_331D78
331764:  UXTB            R3, R0
331766:  LSRS            R0, R0, #8
331768:  LDRB            R6, [R1,R0]
33176A:  CMP             R6, R3
33176C:  BNE.W           loc_331D78
331770:  MOVW            R3, #0xA2C
331774:  LDR             R6, [R2]
331776:  MLA.W           R0, R0, R3, R6
33177A:  B               loc_331D7A
33177C:  SUB.W           R5, R7, #-var_66; jumptable 00330066 case 1895
331780:  MOV             R0, R10; this
331782:  MOVS            R2, #8; unsigned __int8
331784:  MOV             R1, R5; char *
331786:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33178A:  MOV             R0, R10; this
33178C:  MOVS            R1, #1; __int16
33178E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331792:  MOV             R0, R5; char *
331794:  MOVS            R1, #2
331796:  BLX             j__ZN9CTheZones29FindZoneByLabelAndReturnIndexEPc9eZoneType; CTheZones::FindZoneByLabelAndReturnIndex(char *,eZoneType)
33179A:  CMP             R0, #0
33179C:  BLT.W           loc_3321F0
3317A0:  LDR.W           R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x3317AE)
3317A4:  MOVS            R4, #0
3317A6:  LDR.W           R3, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x3317B4)
3317AA:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
3317AC:  LDR.W           R2, =(ScriptParams_ptr - 0x3317B8)
3317B0:  ADD             R3, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
3317B2:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
3317B4:  ADD             R2, PC; ScriptParams_ptr
3317B6:  ADD.W           R0, R1, R0,LSL#5
3317BA:  LDR             R1, [R3]; CTheZones::ZoneInfoArray ...
3317BC:  LDR             R2, [R2]; ScriptParams
3317BE:  LDRH            R0, [R0,#0x1C]
3317C0:  LDRH            R2, [R2]
3317C2:  ADD.W           R0, R0, R0,LSL#4
3317C6:  ADD             R0, R1
3317C8:  AND.W           R2, R2, #0x1F
3317CC:  LDRH.W          R1, [R0,#0xF]
3317D0:  BIC.W           R1, R1, #0x1F
3317D4:  ORRS            R1, R2
3317D6:  STRH.W          R1, [R0,#0xF]
3317DA:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
3317DE:  SUB.W           R5, R7, #-var_66; jumptable 00330066 case 1898
3317E2:  MOV             R0, R10; this
3317E4:  MOVS            R2, #8; unsigned __int8
3317E6:  MOV             R1, R5; char *
3317E8:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3317EC:  MOV             R0, R10; this
3317EE:  MOVS            R1, #1; __int16
3317F0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3317F4:  MOV             R0, R5; char *
3317F6:  MOVS            R1, #2
3317F8:  BLX             j__ZN9CTheZones29FindZoneByLabelAndReturnIndexEPc9eZoneType; CTheZones::FindZoneByLabelAndReturnIndex(char *,eZoneType)
3317FC:  CMP             R0, #0
3317FE:  BLT.W           loc_3321F0
331802:  LDR.W           R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x331810)
331806:  MOVS            R4, #0
331808:  LDR.W           R2, =(ScriptParams_ptr - 0x331816)
33180C:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
33180E:  LDR.W           R3, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x33181A)
331812:  ADD             R2, PC; ScriptParams_ptr
331814:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
331816:  ADD             R3, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
331818:  LDR             R2, [R2]; ScriptParams
33181A:  ADD.W           R0, R1, R0,LSL#5
33181E:  LDR             R1, [R3]; CTheZones::ZoneInfoArray ...
331820:  LDRH            R0, [R0,#0x1C]
331822:  LDR             R2, [R2]
331824:  ADD.W           R0, R0, R0,LSL#4
331828:  ADD             R0, R1
33182A:  STRB            R2, [R0,#0xA]
33182C:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331830:  SUB.W           R5, R7, #-var_66; jumptable 00330066 case 1899
331834:  MOV             R0, R10; this
331836:  MOVS            R2, #8; unsigned __int8
331838:  MOV             R1, R5; char *
33183A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33183E:  MOV             R0, R5; char *
331840:  MOVS            R1, #2
331842:  BLX             j__ZN9CTheZones29FindZoneByLabelAndReturnIndexEPc9eZoneType; CTheZones::FindZoneByLabelAndReturnIndex(char *,eZoneType)
331846:  LDR.W           R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x331852)
33184A:  LDR.W           R3, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x331858)
33184E:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
331850:  LDR.W           R2, =(ScriptParams_ptr - 0x33185C)
331854:  ADD             R3, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
331856:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
331858:  ADD             R2, PC; ScriptParams_ptr
33185A:  ADD.W           R0, R1, R0,LSL#5
33185E:  LDR             R1, [R3]; CTheZones::ZoneInfoArray ...
331860:  LDR             R2, [R2]; ScriptParams
331862:  LDRH            R0, [R0,#0x1C]
331864:  ADD.W           R0, R0, R0,LSL#4
331868:  ADD             R0, R1
33186A:  LDRB            R0, [R0,#0xA]
33186C:  STR             R0, [R2]
33186E:  B.W             loc_3321E8
331872:  MOV.W           R9, #0
331876:  MOV             R4, R12
331878:  CMP             R0, #0
33187A:  MOV             R6, R9
33187C:  BLT.W           loc_332038
331880:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33188C)
331884:  UXTB            R3, R0
331886:  LSRS            R0, R0, #8
331888:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33188A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33188C:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33188E:  LDR             R2, [R1,#4]
331890:  LDRB            R2, [R2,R0]
331892:  CMP             R2, R3
331894:  BNE.W           loc_332036
331898:  MOVW            R2, #0xA2C
33189C:  LDR             R1, [R1]
33189E:  MLA.W           R6, R0, R2, R1
3318A2:  ADDS            R0, R4, #1
3318A4:  BNE.W           loc_33203C
3318A8:  B               loc_332070
3318AA:  MOVS            R6, #0
3318AC:  LDR.W           R0, =(ScriptParams_ptr - 0x3318B6)
3318B0:  MOVS            R4, #0
3318B2:  ADD             R0, PC; ScriptParams_ptr
3318B4:  LDR             R1, [R0]; ScriptParams
3318B6:  LDR.W           R0, [R6,#0x440]; this
3318BA:  LDR             R5, [R1,#(dword_81A90C - 0x81A908)]
3318BC:  MOVS            R1, #0; bool
3318BE:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
3318C2:  CMP             R0, #0
3318C4:  BEQ.W           loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
3318C8:  LDR.W           R0, [R6,#0x440]; this
3318CC:  MOVS            R1, #0; bool
3318CE:  MOVS            R4, #0
3318D0:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
3318D4:  CMP             R5, #0
3318D6:  MOV             R1, R6; CPed *
3318D8:  IT NE
3318DA:  MOVNE           R5, #1
3318DC:  MOV             R2, R5; bool
3318DE:  BLX             j__ZN21CTaskSimpleHoldEntity10DropEntityEP4CPedb; CTaskSimpleHoldEntity::DropEntity(CPed *,bool)
3318E2:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
3318E6:  MOVS            R6, #0
3318E8:  LDR.W           R1, =(ScriptParams_ptr - 0x3318F0)
3318EC:  ADD             R1, PC; ScriptParams_ptr
3318EE:  LDR             R1, [R1]; ScriptParams
3318F0:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
3318F2:  CMP             R1, #0
3318F4:  BLT.W           loc_331DC4
3318F8:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x331904)
3318FC:  UXTB            R5, R1
3318FE:  LSRS            R1, R1, #8
331900:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
331902:  LDR             R2, [R2]; CPools::ms_pPedPool ...
331904:  LDR             R2, [R2]; CPools::ms_pPedPool
331906:  LDR             R3, [R2,#4]
331908:  LDRB            R3, [R3,R1]
33190A:  CMP             R3, R5
33190C:  BNE.W           loc_331DC4
331910:  MOVW            R3, #0x7CC
331914:  LDR             R2, [R2]
331916:  MLA.W           R4, R1, R3, R2
33191A:  B               loc_331DC6
33191C:  MOVS            R0, #0; this
33191E:  BLX             j__ZN7CRemote22TakeRemoteControlOfCarEP8CVehicle; CRemote::TakeRemoteControlOfCar(CVehicle *)
331922:  B.W             loc_3321F0
331926:  MOVS            R0, #0; this
331928:  BLX             j__ZN14CConversations26StartSettingUpConversationEP4CPed; CConversations::StartSettingUpConversation(CPed *)
33192C:  B.W             loc_3321F0
331930:  MOVS            R5, #0
331932:  ADD             R6, SP, #0xE8+var_B8
331934:  MOV             R0, R10; this
331936:  MOVS            R2, #8; unsigned __int8
331938:  MOV             R1, R6; char *
33193A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33193E:  MOV             R0, R6; this
331940:  MOV             R1, R5; char *
331942:  BLX             j__ZN14CConversations20IsConversationAtNodeEPcP4CPed; CConversations::IsConversationAtNode(char *,CPed *)
331946:  MOV             R1, R0
331948:  B               loc_331FC0
33194A:  MOVS            R5, #0
33194C:  LDRB.W          R0, [R5,#0x3A]
331950:  AND.W           R0, R0, #7
331954:  CMP             R0, #4
331956:  BNE             loc_3319C0
331958:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x331964)
33195C:  LDRSH.W         R1, [R5,#0x26]
331960:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
331962:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
331964:  LDR.W           R0, [R0,R1,LSL#2]
331968:  LDR             R1, [R0]
33196A:  LDR             R1, [R1,#8]
33196C:  BLX             R1
33196E:  CBZ             R0, loc_3319C0
331970:  LDRH            R0, [R0,#0x28]
331972:  AND.W           R0, R0, #0x7000
331976:  ORR.W           R0, R0, #0x800
33197A:  CMP.W           R0, #0x2800
33197E:  BNE             loc_3319C0
331980:  LDR             R0, [R5,#0x14]
331982:  MOVS            R4, #0
331984:  MOVS            R3, #0
331986:  ADD.W           R1, R0, #0x30 ; '0'
33198A:  CMP             R0, #0
33198C:  IT EQ
33198E:  ADDEQ           R1, R5, #4
331990:  LDRD.W          R0, R2, [R1]
331994:  LDR             R1, [R1,#8]
331996:  STRD.W          R4, R0, [SP,#0xE8+var_E8]
33199A:  MOV             R0, R5
33199C:  STRD.W          R2, R1, [SP,#0xE8+var_E0]
3319A0:  MOV             R1, #0x47C34FF3
3319A8:  MOVS            R2, #0
3319AA:  STR             R4, [SP,#0xE8+var_D8]
3319AC:  BLX             j__ZN6CGlass25WindowRespondsToCollisionEP7CEntityf7CVectorS2_b; CGlass::WindowRespondsToCollision(CEntity *,float,CVector,CVector,bool)
3319B0:  LDR.W           R0, [R5,#0x144]
3319B4:  ORR.W           R0, R0, #0x400
3319B8:  STR.W           R0, [R5,#0x144]
3319BC:  B.W             loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
3319C0:  LDR.W           R1, [R5,#0x164]
3319C4:  LDR.W           R0, =(ScriptParams_ptr - 0x3319D0)
3319C8:  ADD.W           R6, R1, #0x38 ; '8'
3319CC:  ADD             R0, PC; ScriptParams_ptr
3319CE:  LDM             R6, {R2,R3,R6}
3319D0:  LDR             R0, [R0]; ScriptParams
3319D2:  STRD.W          R2, R3, [SP,#0xE8+var_B8]
3319D6:  STR             R6, [SP,#0xE8+var_B0]
3319D8:  VLDR            S0, [R1,#0x44]
3319DC:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
3319DE:  VMOV            R3, S0
3319E2:  CMP             R0, #0
3319E4:  BEQ.W           loc_331FC8
3319E8:  LDR.W           R0, =(g_breakMan_ptr - 0x3319F2)
3319EC:  MOVS            R1, #1
3319EE:  ADD             R0, PC; g_breakMan_ptr
3319F0:  B               loc_331FCE
3319F2:  MOVS            R6, #0
3319F4:  LDR.W           R1, =(ScriptParams_ptr - 0x3319FC)
3319F8:  ADD             R1, PC; ScriptParams_ptr
3319FA:  LDR             R1, [R1]; ScriptParams
3319FC:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
3319FE:  CMP             R1, #0
331A00:  BLT.W           loc_331DF0
331A04:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x331A10)
331A08:  UXTB            R5, R1
331A0A:  LSRS            R1, R1, #8
331A0C:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
331A0E:  LDR             R2, [R2]; CPools::ms_pPedPool ...
331A10:  LDR             R2, [R2]; CPools::ms_pPedPool
331A12:  LDR             R3, [R2,#4]
331A14:  LDRB            R3, [R3,R1]
331A16:  CMP             R3, R5
331A18:  BNE.W           loc_331DF0
331A1C:  MOVW            R3, #0x7CC
331A20:  LDR             R2, [R2]
331A22:  MLA.W           R4, R1, R3, R2
331A26:  B               loc_331DF2
331A28:  MOVS            R6, #0
331A2A:  LDR.W           R1, =(ScriptParams_ptr - 0x331A32)
331A2E:  ADD             R1, PC; ScriptParams_ptr
331A30:  LDR             R1, [R1]; ScriptParams
331A32:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
331A34:  CMP             R1, #0
331A36:  BLT.W           loc_331E1C
331A3A:  LDR.W           R2, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x331A46)
331A3E:  UXTB            R5, R1
331A40:  LSRS            R1, R1, #8
331A42:  ADD             R2, PC; _ZN6CPools11ms_pPedPoolE_ptr
331A44:  LDR             R2, [R2]; CPools::ms_pPedPool ...
331A46:  LDR             R2, [R2]; CPools::ms_pPedPool
331A48:  LDR             R3, [R2,#4]
331A4A:  LDRB            R3, [R3,R1]
331A4C:  CMP             R3, R5
331A4E:  BNE.W           loc_331E1C
331A52:  MOVW            R3, #0x7CC
331A56:  LDR             R2, [R2]
331A58:  MLA.W           R4, R1, R3, R2
331A5C:  B               loc_331E1E
331A5E:  MOVS            R6, #0
331A60:  MOVS            R0, #dword_1C; this
331A62:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
331A66:  MOV             R1, R6; CVehicle *
331A68:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
331A6A:  MOV             R5, R0
331A6C:  MOVS            R4, #0
331A6E:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriverC2EP8CVehicleP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsDriver::CTaskSimpleCarSetPedInAsDriver(CVehicle *,CTaskUtilityLineUpPedWithCar *)
331A72:  MOVS            R0, #1
331A74:  MOV             R1, R8; int
331A76:  STRB            R0, [R5,#0x18]
331A78:  MOV             R0, R10; this
331A7A:  MOV             R2, R5; CTask *
331A7C:  MOVW            R3, #0x72A; int
331A80:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
331A84:  B               loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331A86:  MOV.W           R9, #0
331A8A:  LDR.W           R0, =(ScriptParams_ptr - 0x331A92)
331A8E:  ADD             R0, PC; ScriptParams_ptr
331A90:  LDR             R0, [R0]; ScriptParams
331A92:  LDR             R1, [R0,#(dword_81A910 - 0x81A908)]; unsigned int
331A94:  CMP             R1, #0
331A96:  BLT.W           loc_331F36
331A9A:  MOV             R0, R9; this
331A9C:  BLX             j__ZN13CCarEnterExit35ComputeTargetDoorToEnterAsPassengerERK8CVehiclei; CCarEnterExit::ComputeTargetDoorToEnterAsPassenger(CVehicle const&,int)
331AA0:  MOV             R5, R0
331AA2:  B               loc_331F38
331AA4:  MOVS            R1, #0
331AA6:  LDR.W           R0, =(ScriptParams_ptr - 0x331AB6)
331AAA:  MOV.W           R6, #0x3F800000
331AAE:  LDR.W           R2, =(DAMAGE_THESHOLD_ptr - 0x331ABA)
331AB2:  ADD             R0, PC; ScriptParams_ptr
331AB4:  STR             R6, [SP,#0xE8+var_E8]
331AB6:  ADD             R2, PC; DAMAGE_THESHOLD_ptr
331AB8:  LDR             R3, [R0]; ScriptParams
331ABA:  ADDW            R0, R1, #0x5B4
331ABE:  LDR             R2, [R2]; DAMAGE_THESHOLD
331AC0:  LDR             R5, [R3,#(dword_81A90C - 0x81A908)]
331AC2:  LDR             R3, [R2]
331AC4:  ADD.W           R2, R5, #0xB
331AC8:  B               loc_331C22
331ACA:  MOVS            R5, #0
331ACC:  LDR.W           R0, =(ScriptParams_ptr - 0x331AD6)
331AD0:  LDR             R4, [R5,#0x14]
331AD2:  ADD             R0, PC; ScriptParams_ptr
331AD4:  ADD.W           R1, R4, #0x30 ; '0'
331AD8:  CMP             R4, #0
331ADA:  LDR             R0, [R0]; ScriptParams
331ADC:  IT EQ
331ADE:  ADDEQ           R1, R5, #4
331AE0:  VLDR            D16, [R1]
331AE4:  CMP             R4, #0
331AE6:  LDR             R1, [R1,#8]
331AE8:  VLDR            S16, [R0,#4]
331AEC:  STR             R1, [SP,#0xE8+var_B0]
331AEE:  VSTR            D16, [SP,#0xE8+var_B8]
331AF2:  BEQ.W           loc_331F60
331AF6:  LDRD.W          R0, R1, [R4,#0x10]; x
331AFA:  EOR.W           R0, R0, #0x80000000; y
331AFE:  BLX             atan2f
331B02:  VMOV            S0, R0
331B06:  B               loc_331F64
331B08:  MOVS            R5, #0
331B0A:  LDR.W           R0, =(ScriptParams_ptr - 0x331B12)
331B0E:  ADD             R0, PC; ScriptParams_ptr
331B10:  LDR             R0, [R0]; ScriptParams
331B12:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
331B14:  CMP             R0, #0
331B16:  BLT.W           loc_331E48
331B1A:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x331B26)
331B1E:  UXTB            R3, R0
331B20:  LSRS            R0, R0, #8
331B22:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
331B24:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
331B26:  LDR             R1, [R1]; CPools::ms_pObjectPool
331B28:  LDR             R2, [R1,#4]
331B2A:  LDRB            R2, [R2,R0]
331B2C:  CMP             R2, R3
331B2E:  BNE.W           loc_331E48
331B32:  MOV.W           R2, #0x1A4
331B36:  LDR             R1, [R1]
331B38:  MLA.W           R11, R0, R2, R1
331B3C:  CMP             R5, #0
331B3E:  BNE.W           loc_331E52
331B42:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x331B4C)
331B46:  MOVS            R5, #0
331B48:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
331B4A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
331B4C:  LDR             R0, [R0]; CPools::ms_pPedPool
331B4E:  LDR             R1, [R0,#8]
331B50:  CMP             R1, #0
331B52:  BEQ.W           loc_330AAC
331B56:  MOVW            R2, #0x7CC
331B5A:  SUBS            R6, R1, #1
331B5C:  MULS            R2, R1
331B5E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x331B66)
331B62:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
331B64:  SUB.W           R8, R2, #0x38C
331B68:  LDR             R2, [R1]; CPools::ms_pPedPool ...
331B6A:  STR             R2, [SP,#0xE8+var_BC]
331B6C:  B               loc_331B76
331B6E:  SUBS            R6, #1
331B70:  LDR             R0, [R2]; CPools::ms_pPedPool
331B72:  SUBW            R8, R8, #0x7CC
331B76:  LDR             R1, [R0,#4]
331B78:  LDRSB           R1, [R1,R6]
331B7A:  CMP             R1, #0
331B7C:  BLT             loc_331BE2
331B7E:  LDR.W           R9, [R0]
331B82:  ADD.W           R4, R9, R8
331B86:  CMP.W           R4, #0x440
331B8A:  BEQ             loc_331BE2
331B8C:  LDR.W           R0, [R9,R8]; this
331B90:  MOVS            R1, #0; bool
331B92:  MOVS            R5, #0
331B94:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
331B98:  CBZ             R0, loc_331BD0
331B9A:  MOVW            R0, #0xFBB8
331B9E:  MOVS            R1, #0; bool
331BA0:  MOVT            R0, #0xFFFF
331BA4:  MOVS            R5, #0
331BA6:  ADD             R0, R4
331BA8:  MOV             R4, R11
331BAA:  ADD.W           R11, R0, #8
331BAE:  LDR.W           R0, [R9,R8]; this
331BB2:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
331BB6:  LDR             R1, [R0]
331BB8:  LDR             R2, [R1,#0x28]
331BBA:  MOV             R1, R11
331BBC:  MOV             R11, R4
331BBE:  BLX             R2
331BC0:  CMP             R0, #1
331BC2:  BNE             loc_331BD0
331BC4:  LDR.W           R0, [R9,R8]; this
331BC8:  MOVS            R1, #0; bool
331BCA:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
331BCE:  LDR             R5, [R0,#8]
331BD0:  CMP.W           R11, #0
331BD4:  BEQ             loc_331BEA
331BD6:  CMP             R5, R11
331BD8:  MOV.W           R5, #0
331BDC:  IT EQ
331BDE:  MOVEQ           R5, #1
331BE0:  B               loc_331BF0
331BE2:  MOVS            R5, #0
331BE4:  CBNZ            R6, loc_331BF8
331BE6:  B.W             loc_330AAC
331BEA:  CMP             R5, #0
331BEC:  IT NE
331BEE:  MOVNE           R5, #1
331BF0:  LDR             R2, [SP,#0xE8+var_BC]
331BF2:  CMP             R6, #0
331BF4:  BEQ.W           loc_330AAC
331BF8:  CMP             R5, #0
331BFA:  BEQ             loc_331B6E
331BFC:  B.W             loc_330AAC
331C00:  MOVS            R1, #0
331C02:  LDR.W           R0, =(ScriptParams_ptr - 0x331C12)
331C06:  MOV.W           R6, #0x3F800000
331C0A:  LDR.W           R2, =(DAMAGE_THESHOLD_ptr - 0x331C16)
331C0E:  ADD             R0, PC; ScriptParams_ptr
331C10:  STR             R6, [SP,#0xE8+var_E8]
331C12:  ADD             R2, PC; DAMAGE_THESHOLD_ptr
331C14:  LDR             R3, [R0]; ScriptParams
331C16:  ADDW            R0, R1, #0x5B4
331C1A:  LDR             R2, [R2]; DAMAGE_THESHOLD
331C1C:  LDR             R5, [R3,#(dword_81A90C - 0x81A908)]
331C1E:  LDR             R3, [R2]
331C20:  ADDS            R2, R5, #5
331C22:  BLX             j__ZN14CDamageManager11ApplyDamageEP11CAutomobile10tComponentff; CDamageManager::ApplyDamage(CAutomobile *,tComponent,float,float)
331C26:  B               loc_3321F0
331C28:  MOVS            R4, #0
331C2A:  LDR.W           R0, =(ScriptParams_ptr - 0x331C32)
331C2E:  ADD             R0, PC; ScriptParams_ptr
331C30:  LDR             R0, [R0]; ScriptParams
331C32:  ADDS            R3, R0, #4
331C34:  VLDR            S0, [R0,#0x10]
331C38:  VLDR            S2, [R0,#0x14]
331C3C:  MOV             R0, R4; this
331C3E:  LDM             R3, {R1-R3}; float
331C40:  VSTR            S0, [SP,#0xE8+var_E8]
331C44:  VSTR            S2, [SP,#0xE8+var_E4]
331C48:  BLX             j__ZN11CAutomobile19TellHeliToGoToCoorsEfffff; CAutomobile::TellHeliToGoToCoors(float,float,float,float,float)
331C4C:  LDRB.W          R0, [R4,#0x3BE]
331C50:  SUBS            R0, #0x39 ; '9'
331C52:  UXTB            R0, R0
331C54:  CMP             R0, #2
331C56:  ITT CS
331C58:  MOVCS           R0, #0x2F ; '/'
331C5A:  STRBCS.W        R0, [R4,#0x3BE]
331C5E:  B               loc_3321F0
331C60:  MOVS            R5, #0
331C62:  MOV             R0, R5; this
331C64:  BLX             j__ZN6CPlane15IsAlreadyFlyingEv; CPlane::IsAlreadyFlying(void)
331C68:  LDRH            R0, [R5,#0x26]
331C6A:  MOVS            R4, #0
331C6C:  CMP.W           R0, #0x208
331C70:  IT EQ
331C72:  STRHEQ.W        R4, [R5,#0x880]
331C76:  B               loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331C78:  MOVS            R6, #0
331C7A:  MOVS            R0, #off_3C; this
331C7C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
331C80:  MOV             R5, R0
331C82:  MOVS            R0, #1
331C84:  STRD.W          R9, R0, [SP,#0xE8+var_E8]; signed __int8
331C88:  MOV             R0, R5; this
331C8A:  MOV             R1, R6; CEntity *
331C8C:  MOVS            R2, #0; CVector *
331C8E:  MOVS            R3, #0; CVector *
331C90:  STR             R4, [SP,#0xE8+var_E0]; int
331C92:  MOVS            R4, #0
331C94:  BLX             j__ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi; CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *,CVector const*,CVector const*,signed char,short,int)
331C98:  MOV             R0, R10; this
331C9A:  MOV             R1, R8; int
331C9C:  MOV             R2, R5; CTask *
331C9E:  MOVW            R3, #0x74D; int
331CA2:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
331CA6:  B               loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331CA8:  MOV.W           R11, #0
331CAC:  MOVS            R0, #dword_54; this
331CAE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
331CB2:  VMOV            R3, S18; float
331CB6:  MOV             R5, R0
331CB8:  LDR.W           R0, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x331CC6)
331CBC:  CMP             R6, #0
331CBE:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x331CCC)
331CC2:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
331CC4:  VSTR            S16, [SP,#0xE8+var_DC]
331CC8:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
331CCA:  STR.W           R9, [SP,#0xE8+var_E0]; int
331CCE:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
331CD0:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
331CD2:  STR.W           R8, [SP,#0xE8+var_E4]; int
331CD6:  VLDR            S0, [R0]
331CDA:  LDR             R0, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
331CDC:  MOV             R1, R11; CEntity *
331CDE:  STR             R4, [SP,#0xE8+var_E8]; int
331CE0:  STR             R0, [SP,#0xE8+var_D8]; int
331CE2:  MOV             R0, R5; this
331CE4:  VSTR            S0, [SP,#0xE8+var_D4]
331CE8:  IT NE
331CEA:  MOVNE           R6, #1
331CEC:  MOV             R2, R6; bool
331CEE:  BLX             j__ZN24CTaskComplexFleeAnyMeansC2EP7CEntitybfiiifif; CTaskComplexFleeAnyMeans::CTaskComplexFleeAnyMeans(CEntity *,bool,float,int,int,int,float,int,float)
331CF2:  MOV             R0, R10
331CF4:  LDR             R1, [SP,#0xE8+var_BC]
331CF6:  MOV             R2, R5
331CF8:  MOVW            R3, #0x751
331CFC:  B               loc_3320AE
331CFE:  MOVS            R4, #0
331D00:  ADD.W           R8, SP, #0xE8+var_80
331D04:  MOV             R0, R10; this
331D06:  MOVS            R2, #0x18; unsigned __int8
331D08:  MOV             R1, R8; char *
331D0A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
331D0E:  ADD             R6, SP, #0xE8+var_90
331D10:  MOV             R0, R10; this
331D12:  MOVS            R2, #0x10; unsigned __int8
331D14:  MOV             R1, R6; char *
331D16:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
331D1A:  MOV             R0, R10; this
331D1C:  MOVS            R1, #3; __int16
331D1E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
331D22:  LDR.W           R0, =(ScriptParams_ptr - 0x331D2A)
331D26:  ADD             R0, PC; ScriptParams_ptr
331D28:  LDR             R5, [R0]; ScriptParams
331D2A:  MOV             R0, R6; this
331D2C:  VLDR            S16, [R5]
331D30:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
331D34:  MOV             R1, R0
331D36:  MOV             R0, R8
331D38:  BLX             j__ZN12CAnimManager12GetAnimationEPKcPK10CAnimBlock; CAnimManager::GetAnimation(char const*,CAnimBlock const*)
331D3C:  LDRD.W          R6, R1, [R5,#(dword_81A90C - 0x81A908)]
331D40:  MOV             R8, R0
331D42:  LDR             R0, [R4,#0x18]
331D44:  CMP             R6, #0
331D46:  IT NE
331D48:  MOVNE           R6, #2
331D4A:  CMP             R1, #0
331D4C:  IT EQ
331D4E:  ORREQ.W         R6, R6, #8
331D52:  CMP             R0, #0
331D54:  BEQ.W           loc_331FBE
331D58:  BLX             j__Z29RpAnimBlendClumpIsInitializedP7RpClump; RpAnimBlendClumpIsInitialized(RpClump *)
331D5C:  CMP             R0, #0
331D5E:  ITT EQ
331D60:  LDREQ           R0, [R4,#0x18]
331D62:  BLXEQ           j__Z20RpAnimBlendClumpInitP7RpClump; RpAnimBlendClumpInit(RpClump *)
331D66:  VMOV            R3, S16
331D6A:  LDR             R0, [R4,#0x18]
331D6C:  MOV             R1, R8
331D6E:  MOV             R2, R6
331D70:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClumpP19CAnimBlendHierarchyif; CAnimManager::BlendAnimation(RpClump *,CAnimBlendHierarchy *,int,float)
331D74:  MOVS            R1, #1
331D76:  B               loc_331FC0
331D78:  MOVS            R0, #0; this
331D7A:  LDRB.W          R3, [R10,#0xE6]
331D7E:  CMP             R3, #0
331D80:  BEQ.W           loc_3321F0
331D84:  LDRB.W          R3, [R0,#0x4A8]
331D88:  ORR.W           R3, R3, #2
331D8C:  CMP             R3, #3
331D8E:  BNE.W           loc_3321F0
331D92:  LDR             R2, [R2]
331D94:  MOV             R3, #0xBFE6D523
331D9C:  MOVS            R4, #0
331D9E:  SUBS            R2, R0, R2
331DA0:  ASRS            R2, R2, #2
331DA2:  MULS            R2, R3
331DA4:  LDRB            R1, [R1,R2]
331DA6:  ORR.W           R5, R1, R2,LSL#8
331DAA:  MOVS            R1, #2; int
331DAC:  MOVS            R2, #0; bool
331DAE:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
331DB2:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x331DBE)
331DB6:  MOV             R1, R5; int
331DB8:  MOVS            R2, #1; unsigned __int8
331DBA:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
331DBC:  LDR             R0, [R0]; this
331DBE:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
331DC2:  B               loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331DC4:  MOVS            R4, #0
331DC6:  LDR.W           R1, =(ScriptParams_ptr - 0x331DCE)
331DCA:  ADD             R1, PC; ScriptParams_ptr
331DCC:  LDR             R1, [R1]; ScriptParams
331DCE:  LDR             R1, [R1,#(dword_81A910 - 0x81A908)]
331DD0:  CMP             R1, #0
331DD2:  BLT.W           loc_3320B6
331DD6:  LDR             R2, [R0,#4]
331DD8:  UXTB            R3, R1
331DDA:  LSRS            R1, R1, #8
331DDC:  LDRB            R2, [R2,R1]
331DDE:  CMP             R2, R3
331DE0:  BNE.W           loc_3320B4
331DE4:  MOVW            R2, #0xA2C
331DE8:  LDR             R0, [R0]
331DEA:  MLA.W           R4, R1, R2, R0
331DEE:  B               loc_3320B6
331DF0:  MOVS            R4, #0
331DF2:  LDR.W           R1, =(ScriptParams_ptr - 0x331DFA)
331DF6:  ADD             R1, PC; ScriptParams_ptr
331DF8:  LDR             R1, [R1]; ScriptParams
331DFA:  LDR             R1, [R1,#(dword_81A910 - 0x81A908)]
331DFC:  CMP             R1, #0
331DFE:  BLT.W           loc_332116
331E02:  LDR             R2, [R0,#4]
331E04:  UXTB            R3, R1
331E06:  LSRS            R1, R1, #8
331E08:  LDRB            R2, [R2,R1]
331E0A:  CMP             R2, R3
331E0C:  BNE.W           loc_332114
331E10:  MOVW            R2, #0xA2C
331E14:  LDR             R0, [R0]
331E16:  MLA.W           R4, R1, R2, R0
331E1A:  B               loc_332116
331E1C:  MOVS            R4, #0
331E1E:  LDR.W           R1, =(ScriptParams_ptr - 0x331E26)
331E22:  ADD             R1, PC; ScriptParams_ptr
331E24:  LDR             R1, [R1]; ScriptParams
331E26:  LDR             R1, [R1,#(dword_81A910 - 0x81A908)]
331E28:  CMP             R1, #0
331E2A:  BLT.W           loc_332134
331E2E:  LDR             R2, [R0,#4]
331E30:  UXTB            R3, R1
331E32:  LSRS            R1, R1, #8
331E34:  LDRB            R2, [R2,R1]
331E36:  CMP             R2, R3
331E38:  BNE.W           loc_332132
331E3C:  MOVW            R2, #0xA2C
331E40:  LDR             R0, [R0]
331E42:  MLA.W           R4, R1, R2, R0
331E46:  B               loc_332134
331E48:  MOV.W           R11, #0
331E4C:  CMP             R5, #0
331E4E:  BEQ.W           loc_331B42
331E52:  LDR.W           R0, [R5,#0x440]; this
331E56:  MOVS            R1, #0; bool
331E58:  MOVS            R4, #0
331E5A:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
331E5E:  CBZ             R0, loc_331E84
331E60:  LDR.W           R0, [R5,#0x440]; this
331E64:  MOVS            R1, #0; bool
331E66:  MOVS            R4, #0
331E68:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
331E6C:  LDR             R1, [R0]
331E6E:  LDR             R2, [R1,#0x28]
331E70:  MOV             R1, R5
331E72:  BLX             R2
331E74:  CMP             R0, #1
331E76:  BNE             loc_331E84
331E78:  LDR.W           R0, [R5,#0x440]; this
331E7C:  MOVS            R1, #0; bool
331E7E:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
331E82:  LDR             R4, [R0,#8]
331E84:  CMP.W           R11, #0
331E88:  BEQ.W           loc_3321AC
331E8C:  MOVS            R5, #0
331E8E:  CMP             R4, R11
331E90:  IT EQ
331E92:  MOVEQ           R5, #1
331E94:  B.W             loc_330AAC
331E98:  CMP             R5, #0
331E9A:  BLT.W           loc_33217E
331E9E:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x331EAA)
331EA2:  LSRS            R1, R5, #8
331EA4:  UXTB            R3, R5
331EA6:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
331EA8:  LDR             R0, [R0]; CPools::ms_pPedPool ...
331EAA:  LDR             R0, [R0]; CPools::ms_pPedPool
331EAC:  LDR             R2, [R0,#4]
331EAE:  LDRB            R2, [R2,R1]
331EB0:  CMP             R2, R3
331EB2:  BNE.W           loc_33217E
331EB6:  MOVW            R2, #0x7CC
331EBA:  LDR             R0, [R0]
331EBC:  MLA.W           R4, R1, R2, R0
331EC0:  B               loc_332180
331EC2:  MOVS            R0, #(stderr+1); this
331EC4:  BLX             j__ZN10CStreaming15DisableCopBikesEb; CStreaming::DisableCopBikes(bool)
331EC8:  B               loc_3321F0
331ECA:  MOV.W           R1, #0xFFFFFFFF
331ECE:  LDR.W           R0, =(ScriptParams_ptr - 0x331ED6)
331ED2:  ADD             R0, PC; ScriptParams_ptr
331ED4:  LDR             R0, [R0]; ScriptParams
331ED6:  STR             R1, [R0]
331ED8:  B               loc_3321E8
331EDA:  MOV.W           R4, #0xFFFFFFFF
331EDE:  B               loc_3321E0
331EE0:  LDR             R0, =(_ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr - 0x331EEC)
331EE2:  MOVS            R1, #0
331EE4:  STRB.W          R1, [SP,#0xE8+var_A0]
331EE8:  ADD             R0, PC; _ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr
331EEA:  STRB.W          R1, [SP,#0xE8+var_B8]
331EEE:  LDR             R0, [R0]; CTaskComplexFollowPatrolRoute::ms_patrolRoute ...
331EF0:  LDR             R0, [R0]; CTaskComplexFollowPatrolRoute::ms_patrolRoute
331EF2:  CMP             R0, #7
331EF4:  BGT.W           loc_3321F0
331EF8:  ADD             R1, SP, #0xE8+var_B8
331EFA:  ADD.W           R4, R1, #0x18
331EFE:  LDR             R1, =(_ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr - 0x331F04)
331F00:  ADD             R1, PC; _ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr
331F02:  LDR             R5, [R1]; CTaskComplexFollowPatrolRoute::ms_patrolRoute ...
331F04:  ADD.W           R1, R0, R0,LSL#1
331F08:  ADD.W           R0, R0, R0,LSL#2
331F0C:  ADD.W           R1, R5, R1,LSL#2
331F10:  STRD.W          R6, R9, [R1,#0x144]
331F14:  ADD.W           R6, R5, R0,LSL#3
331F18:  STR.W           R8, [R1,#0x14C]
331F1C:  ADDS            R0, R6, #4; char *
331F1E:  ADD             R1, SP, #0xE8+var_B8; char *
331F20:  BLX             strcpy
331F24:  ADD.W           R0, R6, #0x1C; char *
331F28:  MOV             R1, R4; char *
331F2A:  BLX             strcpy
331F2E:  LDR             R0, [R5]; CTaskComplexFollowPatrolRoute::ms_patrolRoute
331F30:  ADDS            R0, #1
331F32:  STR             R0, [R5]; CTaskComplexFollowPatrolRoute::ms_patrolRoute
331F34:  B               loc_3321F0
331F36:  MOVS            R5, #0
331F38:  MOVS            R0, #dword_20; this
331F3A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
331F3E:  MOV             R1, R9; CVehicle *
331F40:  MOV             R2, R5; int
331F42:  MOVS            R3, #0; CTaskUtilityLineUpPedWithCar *
331F44:  MOV             R6, R0
331F46:  MOVS            R4, #0
331F48:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsPassenger::CTaskSimpleCarSetPedInAsPassenger(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
331F4C:  MOVS            R0, #1
331F4E:  MOV             R1, R8; int
331F50:  STRB            R0, [R6,#0x1C]
331F52:  MOV             R0, R10; this
331F54:  MOV             R2, R6; CTask *
331F56:  MOVW            R3, #0x72B; int
331F5A:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
331F5E:  B               loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331F60:  VLDR            S0, [R5,#0x10]
331F64:  VMOV            R1, S0; x
331F68:  MOV             R0, R4; this
331F6A:  BLX             j__ZN7CMatrix10SetRotateZEf; CMatrix::SetRotateZ(float)
331F6E:  VLDR            S0, =3.1416
331F72:  VLDR            S2, =180.0
331F76:  VMUL.F32        S0, S16, S0
331F7A:  LDR             R0, [R5,#0x14]; this
331F7C:  VDIV.F32        S0, S0, S2
331F80:  VMOV            R1, S0; x
331F84:  BLX             j__ZN7CMatrix7RotateYEf; CMatrix::RotateY(float)
331F88:  LDR             R0, [R5,#0x14]
331F8A:  MOVS            R4, #0
331F8C:  VLDR            S0, [SP,#0xE8+var_B8]
331F90:  VLDR            S2, [SP,#0xE8+var_B8+4]
331F94:  VLDR            S6, [R0,#0x30]
331F98:  VLDR            S8, [R0,#0x34]
331F9C:  VLDR            S4, [SP,#0xE8+var_B0]
331FA0:  VADD.F32        S0, S0, S6
331FA4:  VLDR            S10, [R0,#0x38]
331FA8:  VADD.F32        S2, S2, S8
331FAC:  VADD.F32        S4, S4, S10
331FB0:  VSTR            S0, [R0,#0x30]
331FB4:  VSTR            S2, [R0,#0x34]
331FB8:  VSTR            S4, [R0,#0x38]
331FBC:  B               loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
331FBE:  MOVS            R1, #0; unsigned __int8
331FC0:  MOV             R0, R10; this
331FC2:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
331FC6:  B               loc_3321F0
331FC8:  LDR             R0, =(g_breakMan_ptr - 0x331FD0)
331FCA:  MOVS            R1, #0
331FCC:  ADD             R0, PC; g_breakMan_ptr
331FCE:  LDR             R0, [R0]; g_breakMan
331FD0:  ADD             R2, SP, #0xE8+var_B8
331FD2:  STR             R1, [SP,#0xE8+var_E8]
331FD4:  MOV             R1, R5
331FD6:  BLX             j__ZN14BreakManager_c3AddEP7CObjectP5RwV3dfi; BreakManager_c::Add(CObject *,RwV3d *,float,int)
331FDA:  MOV             R4, R5
331FDC:  LDR.W           R2, [R4,#0x1C]!
331FE0:  LDR             R0, [R4,#4]
331FE2:  BIC.W           R1, R2, #0x81
331FE6:  TST.W           R2, #0x40004
331FEA:  STR             R1, [R4]
331FEC:  BNE             loc_331FF8
331FEE:  MOV             R0, R5; this
331FF0:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
331FF4:  LDRD.W          R1, R0, [R4]
331FF8:  ORR.W           R1, R1, #4
331FFC:  STRD.W          R1, R0, [R4]
332000:  LDR             R1, [R5,#0x44]
332002:  VMOV.I32        Q8, #0
332006:  LDR             R0, [R5]
332008:  ADD.W           R3, R5, #0x48 ; 'H'
33200C:  LDR.W           R2, [R5,#0x144]
332010:  MOVS            R4, #0
332012:  ORR.W           R1, R1, #0x800000
332016:  VST1.32         {D16-D17}, [R3]
33201A:  STRD.W          R4, R4, [R5,#0x58]
33201E:  STR             R1, [R5,#0x44]
332020:  ORR.W           R1, R2, #0x400
332024:  STR.W           R1, [R5,#0x144]
332028:  LDR             R1, [R0,#0x24]
33202A:  MOV             R0, R5
33202C:  BLX             R1
33202E:  B               loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
332030:  MOVS            R5, #0
332032:  B.W             loc_330AAC
332036:  MOVS            R6, #0
332038:  ADDS            R0, R4, #1
33203A:  BEQ             loc_332070
33203C:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x332048)
33203E:  LSRS            R1, R4, #8
332040:  MOVW            R2, #0x7CC
332044:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
332046:  LDR             R0, [R0]; CPools::ms_pPedPool ...
332048:  LDR             R0, [R0]; CPools::ms_pPedPool
33204A:  LDR             R0, [R0]
33204C:  MLA.W           R0, R1, R2, R0
332050:  LDR.W           R0, [R0,#0x440]
332054:  LDR             R5, [R0,#0x10]
332056:  CBZ             R5, loc_332070
332058:  LDR             R0, [R5]
33205A:  LDR             R1, [R0,#0x14]
33205C:  MOV             R0, R5
33205E:  BLX             R1
332060:  MOVW            R1, #0x3FE; unsigned int
332064:  CMP             R0, R1
332066:  ITT EQ
332068:  LDREQ           R0, [R5,#0x34]
33206A:  CMPEQ           R0, R9
33206C:  BEQ.W           loc_3321F0
332070:  MOVS            R0, #dword_44; this
332072:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
332076:  VMOV            R3, S16; float
33207A:  CMP.W           R8, #0
33207E:  IT NE
332080:  MOVNE.W         R8, #1
332084:  LDR             R1, [SP,#0xE8+var_BC]
332086:  MOV             R5, R0
332088:  SXTB.W          R0, R11
33208C:  ADD             R2, SP, #0xE8+var_B8; CVector *
33208E:  SXTB            R1, R1
332090:  STRD.W          R1, R0, [SP,#0xE8+var_E8]; signed __int8
332094:  MOV             R0, R5; this
332096:  MOV             R1, R6; CEntity *
332098:  STR.W           R8, [SP,#0xE8+var_E0]; bool
33209C:  BLX             j__ZN22CTaskSimpleGangDriveByC2EP7CEntityPK7CVectorfaab; CTaskSimpleGangDriveBy::CTaskSimpleGangDriveBy(CEntity *,CVector const*,float,signed char,signed char,bool)
3320A0:  MOVS            R0, #1
3320A2:  MOV             R1, R4; int
3320A4:  STRB            R0, [R5,#0xE]
3320A6:  MOV             R0, R10; this
3320A8:  MOV             R2, R5; CTask *
3320AA:  MOVW            R3, #0x713; int
3320AE:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
3320B2:  B               loc_3321F0
3320B4:  MOVS            R4, #0
3320B6:  LDR             R0, =(ScriptParams_ptr - 0x3320C4)
3320B8:  ADD.W           R5, R6, #0x420
3320BC:  LDRB.W          R1, [R6,#0x3BE]
3320C0:  ADD             R0, PC; ScriptParams_ptr
3320C2:  LDR             R0, [R0]; ScriptParams
3320C4:  LDR.W           R8, [R0,#(dword_81A914 - 0x81A908)]
3320C8:  SUB.W           R0, R1, #0x39 ; '9'
3320CC:  UXTB            R0, R0
3320CE:  CMP             R0, #2
3320D0:  ITT CS
3320D2:  MOVCS           R0, #0x25 ; '%'
3320D4:  STRBCS.W        R0, [R6,#0x3BE]
3320D8:  LDR.W           R0, [R6,#0x420]; this
3320DC:  CMP             R0, #0
3320DE:  ITT NE
3320E0:  MOVNE           R1, R5; CEntity **
3320E2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3320E6:  MOV             R0, R4; this
3320E8:  MOV             R1, R5; CEntity **
3320EA:  STR.W           R4, [R6,#0x420]
3320EE:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3320F2:  LDR.W           R0, [R6,#0x42C]
3320F6:  MOVS            R4, #0
3320F8:  LDR.W           R1, [R6,#0x430]
3320FC:  BIC.W           R2, R0, #0x10
332100:  STR.W           R8, [R6,#0x9C4]
332104:  TST.W           R1, #0x200
332108:  IT EQ
33210A:  ORREQ.W         R2, R0, #0x10
33210E:  STR.W           R2, [R6,#0x42C]
332112:  B               loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
332114:  MOVS            R4, #0
332116:  LDR             R0, =(ScriptParams_ptr - 0x332120)
332118:  LDRB.W          R1, [R6,#0x3BE]
33211C:  ADD             R0, PC; ScriptParams_ptr
33211E:  LDR             R0, [R0]; ScriptParams
332120:  LDR.W           R8, [R0,#(dword_81A914 - 0x81A908)]
332124:  SUB.W           R0, R1, #0x39 ; '9'
332128:  UXTB            R0, R0
33212A:  CMP             R0, #2
33212C:  BCC             loc_332152
33212E:  MOVS            R0, #0x27 ; '''
332130:  B               loc_33214E
332132:  MOVS            R4, #0
332134:  LDR             R0, =(ScriptParams_ptr - 0x33213E)
332136:  LDRB.W          R1, [R6,#0x3BE]
33213A:  ADD             R0, PC; ScriptParams_ptr
33213C:  LDR             R0, [R0]; ScriptParams
33213E:  LDR.W           R8, [R0,#(dword_81A914 - 0x81A908)]
332142:  SUB.W           R0, R1, #0x39 ; '9'
332146:  UXTB            R0, R0
332148:  CMP             R0, #2
33214A:  BCC             loc_332152
33214C:  MOVS            R0, #0x28 ; '('
33214E:  STRB.W          R0, [R6,#0x3BE]
332152:  LDR.W           R0, [R6,#0x420]; this
332156:  ADD.W           R5, R6, #0x420
33215A:  CMP             R0, #0
33215C:  ITT NE
33215E:  MOVNE           R1, R5; CEntity **
332160:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
332164:  MOV             R0, R4; this
332166:  MOV             R1, R5; CEntity **
332168:  STR.W           R4, [R6,#0x420]
33216C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
332170:  MOVS            R0, #0x64 ; 'd'
332172:  MOVS            R4, #0
332174:  STRB.W          R0, [R6,#0x3D4]
332178:  STR.W           R8, [R6,#0x9C4]
33217C:  B               loc_3321F2; jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
33217E:  MOVS            R4, #0
332180:  LDR.W           R0, [R4,#0x440]
332184:  MOVS            R1, #3; int
332186:  MOV.W           R2, #0x640; int
33218A:  ADDS            R0, #4; this
33218C:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
332190:  MOV             R5, R0
332192:  CBZ             R5, loc_3321F0
332194:  LDR             R0, [R5]
332196:  LDR             R1, [R0,#0x14]
332198:  MOV             R0, R5
33219A:  BLX             R1
33219C:  CMP.W           R0, #0x640
3321A0:  BNE             loc_3321F0
3321A2:  MOV             R0, R5; this
3321A4:  MOV             R1, R4; CPed *
3321A6:  BLX             j__ZN26CTaskComplexUseMobilePhone4StopEP4CPed; CTaskComplexUseMobilePhone::Stop(CPed *)
3321AA:  B               loc_3321F0
3321AC:  CMP             R4, #0
3321AE:  IT NE
3321B0:  MOVNE           R4, #1
3321B2:  MOV             R5, R4
3321B4:  B.W             loc_330AAC
3321B8:  MOVS            R0, #0; this
3321BA:  MOVS            R1, #2; unsigned __int8
3321BC:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
3321C0:  LDR             R0, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x3321C6)
3321C2:  ADD             R0, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
3321C4:  LDR             R0, [R0]; CPopulation::ms_nTotalMissionPeds ...
3321C6:  LDR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
3321C8:  ADDS            R1, #1
3321CA:  STR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
3321CC:  LDRB.W          R0, [R10,#0xE6]
3321D0:  CBZ             R0, loc_3321E0
3321D2:  LDR             R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x3321DC)
3321D4:  MOV             R1, R4; int
3321D6:  MOVS            R2, #2; unsigned __int8
3321D8:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
3321DA:  LDR             R0, [R0]; this
3321DC:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
3321E0:  LDR             R0, =(ScriptParams_ptr - 0x3321E6)
3321E2:  ADD             R0, PC; ScriptParams_ptr
3321E4:  LDR             R0, [R0]; ScriptParams
3321E6:  STR             R4, [R0]
3321E8:  MOV             R0, R10; this
3321EA:  MOVS            R1, #1; __int16
3321EC:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
3321F0:  MOVS            R4, #0
3321F2:  LDR             R0, =(__stack_chk_guard_ptr - 0x3321FA); jumptable 00330066 cases 1809,1810,1816,1819-1821,1824-1826,1829,1832,1848-1850,1853,1856,1860,1864,1880,1881,1892-1894
3321F4:  LDR             R1, [SP,#0xE8+var_5C]
3321F6:  ADD             R0, PC; __stack_chk_guard_ptr
3321F8:  LDR             R0, [R0]; __stack_chk_guard
3321FA:  LDR             R0, [R0]
3321FC:  SUBS            R0, R0, R1
3321FE:  ITTTT EQ
332200:  SXTBEQ          R0, R4
332202:  ADDEQ           SP, SP, #0x90
332204:  VPOPEQ          {D8-D14}
332208:  ADDEQ           SP, SP, #4
33220A:  ITT EQ
33220C:  POPEQ.W         {R8-R11}
332210:  POPEQ           {R4-R7,PC}
332212:  BLX             __stack_chk_fail
