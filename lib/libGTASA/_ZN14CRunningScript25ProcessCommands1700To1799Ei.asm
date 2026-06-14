; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands1700To1799Ei
; Address            : 0x35B0E0 - 0x35D3AA
; =========================================================

35B0E0:  PUSH            {R4-R7,LR}
35B0E2:  ADD             R7, SP, #0xC
35B0E4:  PUSH.W          {R8-R11}
35B0E8:  SUB             SP, SP, #4
35B0EA:  VPUSH           {D8-D11}
35B0EE:  SUB             SP, SP, #0x168; CVector *
35B0F0:  MOV             R4, SP
35B0F2:  BFC.W           R4, #0, #4
35B0F6:  MOV             SP, R4
35B0F8:  MOV             R11, R0
35B0FA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x35B106)
35B0FE:  ADR.W           R2, loc_35B5F0
35B102:  ADD             R0, PC; __stack_chk_guard_ptr
35B104:  VLD1.64         {D16-D17}, [R2@128]
35B108:  LDR             R0, [R0]; __stack_chk_guard
35B10A:  LDR             R0, [R0]
35B10C:  STR             R0, [SP,#0x1A8+var_44]
35B10E:  ADD             R0, SP, #0x1A8+var_178
35B110:  VST1.64         {D16-D17}, [R0@128]
35B114:  SUBW            R0, R1, #0x6A4; switch 100 cases
35B118:  CMP             R0, #0x63 ; 'c'
35B11A:  BHI.W           def_35B120; jumptable 0035B120 default case, cases 1720,1740,1741,1747,1748
35B11E:  MOVS            R6, #0
35B120:  TBH.W           [PC,R0,LSL#1]; switch jump
35B124:  DCW 0x112F; jump table for switch statement
35B126:  DCW 0x64
35B128:  DCW 0x112F
35B12A:  DCW 0x8D
35B12C:  DCW 0xAC
35B12E:  DCW 0xD6
35B130:  DCW 0x109
35B132:  DCW 0x114
35B134:  DCW 0x133
35B136:  DCW 0x16F
35B138:  DCW 0x18D
35B13A:  DCW 0x1C3
35B13C:  DCW 0x1E1
35B13E:  DCW 0x1F6
35B140:  DCW 0x229
35B142:  DCW 0x24F
35B144:  DCW 0x270
35B146:  DCW 0x2C2
35B148:  DCW 0x2F3
35B14A:  DCW 0x312
35B14C:  DCW 0xB52
35B14E:  DCW 0x331
35B150:  DCW 0x33C
35B152:  DCW 0x364
35B154:  DCW 0x385
35B156:  DCW 0x39F
35B158:  DCW 0x3D6
35B15A:  DCW 0x3F5
35B15C:  DCW 0x414
35B15E:  DCW 0x436
35B160:  DCW 0x45B
35B162:  DCW 0x480
35B164:  DCW 0x49A
35B166:  DCW 0x4BF
35B168:  DCW 0x112F
35B16A:  DCW 0x4DE
35B16C:  DCW 0x501
35B16E:  DCW 0x50D
35B170:  DCW 0x52C
35B172:  DCW 0x112F
35B174:  DCW 0xB52
35B176:  DCW 0xB52
35B178:  DCW 0x112F
35B17A:  DCW 0x54B
35B17C:  DCW 0x551
35B17E:  DCW 0x55D
35B180:  DCW 0x560
35B182:  DCW 0xB52
35B184:  DCW 0xB52
35B186:  DCW 0x572
35B188:  DCW 0x5B5
35B18A:  DCW 0x5FA
35B18C:  DCW 0x60C
35B18E:  DCW 0x644
35B190:  DCW 0x648
35B192:  DCW 0x64C
35B194:  DCW 0x650
35B196:  DCW 0xB55
35B198:  DCW 0x66D
35B19A:  DCW 0x68A
35B19C:  DCW 0x696
35B19E:  DCW 0x6A1
35B1A0:  DCW 0x6BF
35B1A2:  DCW 0x6DF
35B1A4:  DCW 0x6FF
35B1A6:  DCW 0x71D
35B1A8:  DCW 0x73E
35B1AA:  DCW 0x884
35B1AC:  DCW 0x8A3
35B1AE:  DCW 0x8C2
35B1B0:  DCW 0x8DD
35B1B2:  DCW 0x8F7
35B1B4:  DCW 0x91D
35B1B6:  DCW 0x93E
35B1B8:  DCW 0xB73
35B1BA:  DCW 0x957
35B1BC:  DCW 0x976
35B1BE:  DCW 0x996
35B1C0:  DCW 0x9AD
35B1C2:  DCW 0x9B5
35B1C4:  DCW 0x112F
35B1C6:  DCW 0x9CB
35B1C8:  DCW 0x112F
35B1CA:  DCW 0x112F
35B1CC:  DCW 0x9F2
35B1CE:  DCW 0x112F
35B1D0:  DCW 0xA52
35B1D2:  DCW 0x112F
35B1D4:  DCW 0xA66
35B1D6:  DCW 0xA77
35B1D8:  DCW 0x112F
35B1DA:  DCW 0xA95
35B1DC:  DCW 0x112F
35B1DE:  DCW 0xAB3
35B1E0:  DCW 0xAB8
35B1E2:  DCW 0xADE
35B1E4:  DCW 0xB91
35B1E6:  DCW 0xB08
35B1E8:  DCW 0xB26
35B1EA:  DCW 0xB44
35B1EC:  MOV             R0, R11; jumptable 0035B120 case 1701
35B1EE:  MOVS            R1, #2; __int16
35B1F0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B1F4:  LDR.W           R0, =(ScriptParams_ptr - 0x35B1FC)
35B1F8:  ADD             R0, PC; ScriptParams_ptr
35B1FA:  LDR             R0, [R0]; ScriptParams
35B1FC:  LDRD.W          R8, R9, [R0]
35B200:  MOVS            R0, #dword_24; this
35B202:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35B206:  MOV             R5, R0
35B208:  MOVS            R6, #0
35B20A:  MOVS            R0, #1
35B20C:  ADD             R3, SP, #0x1A8+var_144; CVector *
35B20E:  STRD.W          R6, R6, [SP,#0x1A8+var_144]
35B212:  MOVS            R1, #0; CVehicle *
35B214:  STR             R0, [SP,#0x1A8+var_1A8]; bool
35B216:  MOV             R0, R5; this
35B218:  MOV             R2, R9; int
35B21A:  STR             R6, [SP,#0x1A8+var_13C]
35B21C:  BLX             j__ZN31CTaskComplexEvasiveDiveAndGetUpC2EP8CVehicleiRK7CVectorb_0; CTaskComplexEvasiveDiveAndGetUp::CTaskComplexEvasiveDiveAndGetUp(CVehicle *,int,CVector const&,bool)
35B220:  LDR.W           R0, =(_ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr - 0x35B230)
35B224:  MOV             R1, R8; int
35B226:  MOV             R2, R5; CTask *
35B228:  MOVW            R3, #0x6A5; int
35B22C:  ADD             R0, PC; _ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr
35B22E:  LDR             R0, [R0]; `vtable for'CTaskComplexDiveFromAttachedEntityAndGetUp ...
35B230:  ADDS            R0, #8
35B232:  STR             R0, [R5]
35B234:  MOV             R0, R11; this
35B236:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
35B23A:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35B23E:  MOV             R0, R11; jumptable 0035B120 case 1703
35B240:  MOVS            R1, #9; __int16
35B242:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B246:  LDR.W           R0, =(ScriptParams_ptr - 0x35B24E)
35B24A:  ADD             R0, PC; ScriptParams_ptr
35B24C:  LDR             R0, [R0]; ScriptParams
35B24E:  LDR             R1, [R0]
35B250:  CMP             R1, #0
35B252:  BLT.W           loc_35C8B2
35B256:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35B262)
35B25A:  UXTB            R3, R1
35B25C:  LSRS            R1, R1, #8
35B25E:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
35B260:  LDR             R0, [R0]; CPools::ms_pPedPool ...
35B262:  LDR             R0, [R0]; CPools::ms_pPedPool
35B264:  LDR             R2, [R0,#4]
35B266:  LDRB            R2, [R2,R1]
35B268:  CMP             R2, R3
35B26A:  BNE.W           loc_35C8B2
35B26E:  MOVW            R2, #0x7CC
35B272:  LDR             R0, [R0]
35B274:  MLA.W           R0, R1, R2, R0
35B278:  B.W             loc_35C8B4
35B27C:  MOV             R0, R11; jumptable 0035B120 case 1704
35B27E:  MOVS            R1, #5; __int16
35B280:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B284:  LDR.W           R0, =(ScriptParams_ptr - 0x35B290)
35B288:  VLDR            S0, =3.1416
35B28C:  ADD             R0, PC; ScriptParams_ptr
35B28E:  LDR             R1, [R0]; ScriptParams ; unsigned int
35B290:  VLDR            S2, [R1,#0x10]
35B294:  LDRD.W          R8, R0, [R1]
35B298:  CMP             R0, #0
35B29A:  VMUL.F32        S0, S2, S0
35B29E:  LDRD.W          R4, R9, [R1,#(dword_81A910 - 0x81A908)]
35B2A2:  VLDR            S2, =180.0
35B2A6:  BLT.W           loc_35C8E8
35B2AA:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35B2B6)
35B2AE:  UXTB            R3, R0
35B2B0:  LSRS            R0, R0, #8
35B2B2:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35B2B4:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35B2B6:  LDR             R1, [R1]; CPools::ms_pPedPool
35B2B8:  LDR             R2, [R1,#4]
35B2BA:  LDRB            R2, [R2,R0]
35B2BC:  CMP             R2, R3
35B2BE:  BNE.W           loc_35C8E8
35B2C2:  MOVW            R2, #0x7CC
35B2C6:  LDR             R1, [R1]
35B2C8:  MLA.W           R10, R0, R2, R1
35B2CC:  B.W             loc_35C8EC
35B2D0:  MOV             R0, R11; jumptable 0035B120 case 1705
35B2D2:  MOVS            R1, #5; __int16
35B2D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B2D8:  LDR.W           R0, =(ScriptParams_ptr - 0x35B2E0)
35B2DC:  ADD             R0, PC; ScriptParams_ptr
35B2DE:  LDR             R0, [R0]; ScriptParams
35B2E0:  LDR             R4, [R0,#(dword_81A918 - 0x81A908)]
35B2E2:  VLDR            S18, [R0,#4]
35B2E6:  VLDR            S20, [R0,#8]
35B2EA:  ADDS            R1, R4, #1
35B2EC:  VLDR            S16, [R0,#0xC]
35B2F0:  LDR             R0, [R0]
35B2F2:  BEQ.W           loc_35D1FE
35B2F6:  ADDS            R1, R4, #2
35B2F8:  ITT EQ
35B2FA:  MOVWEQ          R4, #:lower16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
35B2FE:  MOVTEQ          R4, #:upper16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
35B302:  ADDS            R1, R0, #1
35B304:  BEQ.W           loc_35D208
35B308:  MOVS            R6, #0
35B30A:  CMP             R0, #0
35B30C:  BLT.W           loc_35D038
35B310:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35B31C)
35B314:  UXTB            R3, R0
35B316:  LSRS            R0, R0, #8
35B318:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35B31A:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35B31C:  LDR             R1, [R1]; CPools::ms_pPedPool
35B31E:  LDR             R2, [R1,#4]
35B320:  LDRB            R2, [R2,R0]
35B322:  CMP             R2, R3
35B324:  BNE.W           loc_35D038
35B328:  MOVW            R2, #0x7CC
35B32C:  LDR             R1, [R1]
35B32E:  MLA.W           R2, R0, R2, R1
35B332:  B.W             loc_35D03A
35B336:  MOV             R0, R11; jumptable 0035B120 case 1706
35B338:  MOVS            R1, #1; __int16
35B33A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B33E:  MOV             R0, R11; this
35B340:  MOVS            R1, #0; unsigned __int8
35B342:  MOVS            R6, #0
35B344:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
35B348:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35B34C:  MOV             R0, R11; jumptable 0035B120 case 1707
35B34E:  MOVS            R1, #2; __int16
35B350:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B354:  LDR.W           R0, =(ScriptParams_ptr - 0x35B35C)
35B358:  ADD             R0, PC; ScriptParams_ptr
35B35A:  LDR             R0, [R0]; ScriptParams
35B35C:  LDR             R0, [R0]
35B35E:  CMP             R0, #0
35B360:  BLT.W           loc_35C958
35B364:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35B370)
35B368:  UXTB            R3, R0
35B36A:  LSRS            R0, R0, #8
35B36C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35B36E:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35B370:  LDR             R1, [R1]; CPools::ms_pPedPool
35B372:  LDR             R2, [R1,#4]
35B374:  LDRB            R2, [R2,R0]
35B376:  CMP             R2, R3
35B378:  BNE.W           loc_35C958
35B37C:  MOVW            R2, #0x7CC
35B380:  LDR             R1, [R1]
35B382:  MLA.W           R4, R0, R2, R1
35B386:  B.W             loc_35C95A
35B38A:  MOV             R0, R11; jumptable 0035B120 case 1708
35B38C:  MOVS            R1, #1; __int16
35B38E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B392:  LDR.W           R0, =(ScriptParams_ptr - 0x35B3A2)
35B396:  MOVW            R2, #0x7CC
35B39A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35B3A4)
35B39E:  ADD             R0, PC; ScriptParams_ptr
35B3A0:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35B3A2:  LDR             R0, [R0]; ScriptParams
35B3A4:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35B3A6:  LDR             R0, [R0]
35B3A8:  LDR             R1, [R1]; CPools::ms_pPedPool
35B3AA:  LSRS            R0, R0, #8
35B3AC:  LDR             R1, [R1]
35B3AE:  MLA.W           R0, R0, R2, R1
35B3B2:  LDRB.W          R1, [R0,#0x485]
35B3B6:  LSLS            R1, R1, #0x1F
35B3B8:  ITE NE
35B3BA:  LDRNE.W         R1, [R0,#0x590]
35B3BE:  MOVEQ           R1, #0
35B3C0:  CMP             R1, #0
35B3C2:  IT NE
35B3C4:  MOVNE           R0, R1
35B3C6:  VLDR            S0, [R0,#0x48]
35B3CA:  VLDR            S2, [R0,#0x4C]
35B3CE:  VMUL.F32        S0, S0, S0
35B3D2:  VLDR            S4, [R0,#0x50]
35B3D6:  VMUL.F32        S2, S2, S2
35B3DA:  LDR.W           R0, =(ScriptParams_ptr - 0x35B3E6)
35B3DE:  VMUL.F32        S4, S4, S4
35B3E2:  ADD             R0, PC; ScriptParams_ptr
35B3E4:  LDR             R0, [R0]; ScriptParams
35B3E6:  VADD.F32        S0, S0, S2
35B3EA:  VLDR            S2, =50.0
35B3EE:  VADD.F32        S0, S0, S4
35B3F2:  VSQRT.F32       S0, S0
35B3F6:  VMUL.F32        S0, S0, S2
35B3FA:  VSTR            S0, [R0]
35B3FE:  B.W             def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35B402:  MOV             R0, R11; jumptable 0035B120 case 1709
35B404:  MOVS            R1, #2; __int16
35B406:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B40A:  LDR.W           R0, =(ScriptParams_ptr - 0x35B414)
35B40E:  MOVS            R1, #8; int
35B410:  ADD             R0, PC; ScriptParams_ptr
35B412:  LDR             R0, [R0]; ScriptParams
35B414:  LDR             R0, [R0]; this
35B416:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35B41A:  MOV             R4, R0
35B41C:  CMP             R4, #7
35B41E:  BHI.W           loc_35D380
35B422:  LDR.W           R0, =(ScriptParams_ptr - 0x35B42A)
35B426:  ADD             R0, PC; ScriptParams_ptr
35B428:  LDR             R0, [R0]; ScriptParams
35B42A:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]; this
35B42C:  ADDS            R1, R0, #1
35B42E:  BEQ.W           loc_35D278
35B432:  MOVS            R1, #7; int
35B434:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35B438:  MOV             R1, R0
35B43A:  B.W             loc_35D27C
35B43E:  MOV             R0, R11; jumptable 0035B120 case 1710
35B440:  MOVS            R1, #1; __int16
35B442:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B446:  LDR.W           R0, =(ScriptParams_ptr - 0x35B450)
35B44A:  ADD             R5, SP, #0x1A8+var_144
35B44C:  ADD             R0, PC; ScriptParams_ptr
35B44E:  MOV             R1, R5; int
35B450:  LDR             R6, [R0]; ScriptParams
35B452:  LDR             R0, [R6]; this
35B454:  BLX             j__ZN29CDecisionMakerTypesFileLoader12GetGrpDMNameEiPc; CDecisionMakerTypesFileLoader::GetGrpDMName(int,char *)
35B458:  MOV             R0, R11; this
35B45A:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
35B45E:  MOVS            R1, #7; int
35B460:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35B464:  LDRB.W          R2, [R11,#0xE6]; unsigned __int8
35B468:  MOV             R0, R5; this
35B46A:  MOVS            R1, #(stderr+1); char *
35B46C:  MOV.W           R3, #0xFFFFFFFF; unsigned __int8
35B470:  BLX             j__ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKchhi; CDecisionMakerTypesFileLoader::LoadDecisionMaker(char const*,uchar,uchar,int)
35B474:  MOVS            R1, #7; int
35B476:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
35B47A:  STR             R0, [R6]
35B47C:  MOV             R0, R11; this
35B47E:  MOVS            R1, #1; __int16
35B480:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
35B484:  LDRB.W          R0, [R11,#0xE6]
35B488:  CMP             R0, #0
35B48A:  BEQ.W           loc_35D380
35B48E:  LDR.W           R0, =(ScriptParams_ptr - 0x35B49A)
35B492:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35B49C)
35B496:  ADD             R0, PC; ScriptParams_ptr
35B498:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35B49A:  LDR             R2, [R0]; ScriptParams
35B49C:  LDR             R0, [R1]; this
35B49E:  LDR             R1, [R2]; int
35B4A0:  MOVS            R2, #9; unsigned __int8
35B4A2:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
35B4A6:  B.W             loc_35D380
35B4AA:  MOV             R0, R11; jumptable 0035B120 case 1711
35B4AC:  MOVS            R1, #2; __int16
35B4AE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B4B2:  LDR.W           R0, =(ScriptParams_ptr - 0x35B4BE)
35B4B6:  MOV.W           R3, #0x194
35B4BA:  ADD             R0, PC; ScriptParams_ptr
35B4BC:  LDR             R0, [R0]; ScriptParams
35B4BE:  LDRD.W          R1, R2, [R0]
35B4C2:  CMP             R2, #0
35B4C4:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x35B4D0)
35B4C8:  MUL.W           R1, R3, R1
35B4CC:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
35B4CE:  LDR             R0, [R0]; CWorld::Players ...
35B4D0:  LDR             R0, [R0,R1]
35B4D2:  LDR.W           R0, [R0,#0x444]
35B4D6:  BEQ.W           loc_35D098
35B4DA:  MOVS            R1, #1
35B4DC:  MOVS            R6, #0
35B4DE:  STRB.W          R1, [R0,#0x84]
35B4E2:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35B4E6:  MOV             R0, R11; jumptable 0035B120 case 1712
35B4E8:  MOVS            R1, #2; __int16
35B4EA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B4EE:  LDR.W           R0, =(ScriptParams_ptr - 0x35B4F6)
35B4F2:  ADD             R0, PC; ScriptParams_ptr
35B4F4:  LDR             R0, [R0]; ScriptParams
35B4F6:  LDRD.W          R8, R5, [R0]
35B4FA:  MOVS            R0, #dword_14; this
35B4FC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35B500:  MOV             R6, R0
35B502:  ADDS            R0, R5, #1
35B504:  BEQ.W           loc_35D0A0
35B508:  MOV             R0, R6
35B50A:  MOV             R1, R5
35B50C:  B.W             loc_35D0AC
35B510:  MOV             R0, R11; jumptable 0035B120 case 1713
35B512:  MOVS            R1, #8; __int16
35B514:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B518:  MOV             R0, R11; this
35B51A:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
35B51E:  MOVS            R1, #2; int
35B520:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35B524:  LDR.W           R0, =(ScriptParams_ptr - 0x35B52E)
35B528:  MOVS            R3, #0; float
35B52A:  ADD             R0, PC; ScriptParams_ptr
35B52C:  LDR             R5, [R0]; ScriptParams
35B52E:  LDM.W           R5, {R0-R2}; float
35B532:  VLDR            S0, [R5,#0xC]
35B536:  VLDR            S2, [R5,#0x10]
35B53A:  VLDR            S4, [R5,#0x14]
35B53E:  VLDR            S6, [R5,#0x18]
35B542:  VLDR            S8, [R5,#0x1C]
35B546:  VSTR            S0, [SP,#0x1A8+var_1A8]
35B54A:  VSTR            S2, [SP,#0x1A8+var_1A4]
35B54E:  VSTR            S4, [SP,#0x1A8+var_1A0]
35B552:  VSTR            S6, [SP,#0x1A8+var_19C]
35B556:  VSTR            S8, [SP,#0x1A8+var_198]
35B55A:  BLX             j__ZN11CTheScripts20AddScriptSearchLightEfffP7CEntityfffff; CTheScripts::AddScriptSearchLight(float,float,float,CEntity *,float,float,float,float,float)
35B55E:  MOV             R1, R0
35B560:  STR             R1, [R5]
35B562:  LDRB.W          R0, [R11,#0xE6]
35B566:  CMP             R0, #0
35B568:  BEQ.W           def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35B56C:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35B574)
35B570:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35B572:  B.W             loc_35CABC
35B576:  MOV             R0, R11; jumptable 0035B120 case 1714
35B578:  MOVS            R1, #1; __int16
35B57A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B57E:  LDR.W           R0, =(ScriptParams_ptr - 0x35B588)
35B582:  MOVS            R1, #2; int
35B584:  ADD             R0, PC; ScriptParams_ptr
35B586:  LDR             R0, [R0]; ScriptParams
35B588:  LDR             R0, [R0]; this
35B58A:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35B58E:  CMP             R0, #0
35B590:  BLT.W           loc_35D380
35B594:  LDR.W           R0, =(ScriptParams_ptr - 0x35B59C)
35B598:  ADD             R0, PC; ScriptParams_ptr
35B59A:  LDR             R0, [R0]; ScriptParams
35B59C:  LDR             R0, [R0]; this
35B59E:  BLX             j__ZN11CTheScripts23RemoveScriptSearchLightEi; CTheScripts::RemoveScriptSearchLight(int)
35B5A2:  LDRB.W          R0, [R11,#0xE6]
35B5A6:  CMP             R0, #0
35B5A8:  BEQ.W           loc_35D380
35B5AC:  LDR.W           R0, =(ScriptParams_ptr - 0x35B5B8)
35B5B0:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35B5BA)
35B5B4:  ADD             R0, PC; ScriptParams_ptr
35B5B6:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35B5B8:  LDR             R2, [R0]; ScriptParams
35B5BA:  LDR             R0, [R1]; CTheScripts::MissionCleanUp ...
35B5BC:  LDR             R1, [R2]
35B5BE:  MOVS            R2, #0xB
35B5C0:  B               loc_35BD10
35B5C2:  MOV             R0, R11; jumptable 0035B120 case 1715
35B5C4:  MOVS            R1, #1; __int16
35B5C6:  MOVS            R5, #1
35B5C8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B5CC:  LDR.W           R0, =(ScriptParams_ptr - 0x35B5D6)
35B5D0:  MOVS            R1, #2; int
35B5D2:  ADD             R0, PC; ScriptParams_ptr
35B5D4:  LDR             R0, [R0]; ScriptParams
35B5D6:  LDR             R0, [R0]; this
35B5D8:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35B5DC:  EOR.W           R1, R5, R0,LSR#31
35B5E0:  B.W             loc_35D270
35B5E4:  DCFS 3.1416
35B5E8:  DCFS 180.0
35B5EC:  DCFS 50.0
35B5F0:  MOVS            R4, #0
35B5F2:  LDR             R1, loc_35B7C4
35B5F4:  MOVS            R4, #0
35B5F6:  LDM             R1!, {R2,R4-R6}
35B5F8:  MOVS            R4, #0
35B5FA:  LDM             R1!, {R2,R4-R6}
35B5FC:  MOVS            R4, #0
35B5FE:  LDR             R1, loc_35B7D0
35B600:  DCD __stack_chk_guard_ptr - 0x35B106
35B604:  MOV             R0, R11; jumptable 0035B120 case 1716
35B606:  MOVS            R1, #8; __int16
35B608:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B60C:  LDR.W           R0, =(ScriptParams_ptr - 0x35B616)
35B610:  MOVS            R1, #2; int
35B612:  ADD             R0, PC; ScriptParams_ptr
35B614:  LDR             R0, [R0]; ScriptParams
35B616:  LDRD.W          R8, R6, [R0,#(dword_81A920 - 0x81A908)]
35B61A:  VLDR            S16, [R0,#0x10]
35B61E:  VLDR            S18, [R0,#0x14]
35B622:  LDR             R5, [R0,#(dword_81A914 - 0x81A908)]
35B624:  VLDR            S20, [R0,#4]
35B628:  VLDR            S22, [R0,#8]
35B62C:  LDR             R0, [R0]; this
35B62E:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35B632:  CMP             R0, #0
35B634:  BLT.W           loc_35D380
35B638:  LDR.W           R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x35B644)
35B63C:  RSB.W           R0, R0, R0,LSL#5
35B640:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
35B642:  LDR             R1, [R1]; CTheScripts::ScriptSearchLightArray ...
35B644:  ADD.W           R4, R1, R0,LSL#2
35B648:  MOV             R1, #0xFFFFFF82
35B64C:  LDR.W           R0, [R4,#0x48]!
35B650:  VLDR            S0, [R4,#-0x34]
35B654:  VLDR            S2, [R4,#-0x30]
35B658:  VSUB.F32        S6, S0, S16
35B65C:  STR.W           R5, [R4,#-0x18]
35B660:  VSUB.F32        S4, S2, S18
35B664:  VSTR            S20, [R4,#-0x20]
35B668:  VSUB.F32        S2, S2, S22
35B66C:  VSTR            S22, [R4,#-0x1C]
35B670:  VSUB.F32        S0, S0, S20
35B674:  VSTR            S16, [R4,#-0x14]
35B678:  VSTR            S18, [R4,#-0x10]
35B67C:  STRD.W          R8, R6, [R4,#-0xC]
35B680:  VMUL.F32        S6, S6, S6
35B684:  VMUL.F32        S4, S4, S4
35B688:  VMUL.F32        S2, S2, S2
35B68C:  VMUL.F32        S0, S0, S0
35B690:  VADD.F32        S4, S6, S4
35B694:  VADD.F32        S0, S0, S2
35B698:  VCMPE.F32       S0, S4
35B69C:  VMRS            APSR_nzcv, FPSCR
35B6A0:  IT LE
35B6A2:  MOVLE           R1, #0xFFFFFF81
35B6A6:  B               loc_35B6F4
35B6A8:  MOV             R0, R11; jumptable 0035B120 case 1717
35B6AA:  MOVS            R1, #5; __int16
35B6AC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B6B0:  LDR.W           R0, =(ScriptParams_ptr - 0x35B6B8)
35B6B4:  ADD             R0, PC; ScriptParams_ptr
35B6B6:  LDR             R1, [R0]; ScriptParams
35B6B8:  LDM.W           R1, {R0,R5,R9,R10}; this
35B6BC:  LDR.W           R8, [R1,#(dword_81A918 - 0x81A908)]
35B6C0:  MOVS            R1, #2; int
35B6C2:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35B6C6:  MOVS            R6, #0
35B6C8:  CMP             R0, #0
35B6CA:  BLT.W           loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35B6CE:  LDR.W           R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x35B6DA)
35B6D2:  RSB.W           R0, R0, R0,LSL#5
35B6D6:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
35B6D8:  LDR             R1, [R1]; CTheScripts::ScriptSearchLightArray ...
35B6DA:  ADD.W           R4, R1, R0,LSL#2
35B6DE:  LDR.W           R0, [R4,#0x48]!; this
35B6E2:  SUB.W           R1, R4, #0x20 ; ' '
35B6E6:  STM.W           R1, {R5,R9,R10}
35B6EA:  MOVS            R1, #0x84
35B6EC:  STRD.W          R6, R6, [R4,#-0x14]
35B6F0:  STRD.W          R6, R8, [R4,#-0xC]
35B6F4:  CMP             R0, #0
35B6F6:  STRB.W          R1, [R4,#-0x45]
35B6FA:  ITT NE
35B6FC:  MOVNE           R1, R4; CEntity **
35B6FE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
35B702:  MOVS            R6, #0
35B704:  STR             R6, [R4]
35B706:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35B70A:  MOV             R0, R11; jumptable 0035B120 case 1718
35B70C:  MOVS            R1, #3; __int16
35B70E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B712:  LDR.W           R0, =(ScriptParams_ptr - 0x35B71A)
35B716:  ADD             R0, PC; ScriptParams_ptr
35B718:  LDR             R0, [R0]; ScriptParams
35B71A:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
35B71C:  CMP             R1, #0
35B71E:  BLT.W           loc_35C974
35B722:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35B72E)
35B726:  UXTB            R3, R1
35B728:  LSRS            R1, R1, #8
35B72A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
35B72C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
35B72E:  LDR             R0, [R0]; CPools::ms_pPedPool
35B730:  LDR             R2, [R0,#4]
35B732:  LDRB            R2, [R2,R1]
35B734:  CMP             R2, R3
35B736:  BNE.W           loc_35C974
35B73A:  MOVW            R2, #0x7CC
35B73E:  LDR             R0, [R0]
35B740:  MLA.W           R8, R1, R2, R0
35B744:  B.W             loc_35C978
35B748:  MOV             R0, R11; jumptable 0035B120 case 1719
35B74A:  MOVS            R1, #2; __int16
35B74C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B750:  LDR.W           R0, =(ScriptParams_ptr - 0x35B758)
35B754:  ADD             R0, PC; ScriptParams_ptr
35B756:  LDR             R0, [R0]; ScriptParams
35B758:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
35B75A:  CMP             R1, #0
35B75C:  BLT.W           loc_35C99A
35B760:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35B76C)
35B764:  UXTB            R3, R1
35B766:  LSRS            R1, R1, #8
35B768:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
35B76A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
35B76C:  LDR             R0, [R0]; CPools::ms_pPedPool
35B76E:  LDR             R2, [R0,#4]
35B770:  LDRB            R2, [R2,R1]
35B772:  CMP             R2, R3
35B774:  BNE.W           loc_35C99A
35B778:  MOVW            R2, #0x7CC
35B77C:  LDR             R0, [R0]
35B77E:  MLA.W           R1, R1, R2, R0
35B782:  B.W             loc_35C99C
35B786:  LDR.W           R0, =(_ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x35B792); jumptable 0035B120 case 1721
35B78A:  MOVS            R1, #0
35B78C:  MOVS            R6, #0
35B78E:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr
35B790:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus ...
35B792:  LDR             R0, [R0]; CCutsceneMgr::ms_cutsceneLoadStatus
35B794:  CMP             R0, #2
35B796:  IT EQ
35B798:  MOVEQ           R1, #1
35B79A:  B               loc_35B8C6
35B79C:  MOV             R0, R11; jumptable 0035B120 case 1722
35B79E:  MOVS            R1, #4; __int16
35B7A0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B7A4:  LDR.W           R0, =(ScriptParams_ptr - 0x35B7AC)
35B7A8:  ADD             R0, PC; ScriptParams_ptr
35B7AA:  LDR             R6, [R0]; ScriptParams
35B7AC:  MOVS            R0, #word_28; this
35B7AE:  ADD.W           R10, R6, #4
35B7B2:  LDM.W           R10, {R8-R10}
35B7B6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35B7BA:  MOV             R5, R0
35B7BC:  LDR.W           R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x35B7C6)
35B7C0:  ADD             R1, SP, #0x1A8+var_144; CVector *
35B7C2:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
35B7C4:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
35B7C6:  LDR             R2, [R0]; float
35B7C8:  LDR.W           R0, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x35B7D0)
35B7CC:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
35B7CE:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
35B7D0:  LDR             R3, [R0]; float
35B7D2:  ADD             R0, SP, #0x1A8+var_144
35B7D4:  STM.W           R0, {R8-R10}
35B7D8:  MOV             R0, R5; this
35B7DA:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2ERK7CVectorff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CVector const&,float,float)
35B7DE:  LDR             R1, [R6]
35B7E0:  MOV             R0, R11
35B7E2:  MOV             R2, R5
35B7E4:  MOVW            R3, #0x6BA
35B7E8:  B.W             loc_35D17E
35B7EC:  MOV             R0, R11; jumptable 0035B120 case 1723
35B7EE:  MOVS            R1, #3; __int16
35B7F0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B7F4:  LDR.W           R0, =(ScriptParams_ptr - 0x35B7FE)
35B7F8:  MOVS            R6, #0
35B7FA:  ADD             R0, PC; ScriptParams_ptr
35B7FC:  LDR             R0, [R0]; ScriptParams
35B7FE:  LDRD.W          R8, R0, [R0]
35B802:  CMP             R0, #0
35B804:  BLT.W           loc_35C9A6
35B808:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35B814)
35B80C:  UXTB            R3, R0
35B80E:  LSRS            R0, R0, #8
35B810:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35B812:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35B814:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35B816:  LDR             R2, [R1,#4]
35B818:  LDRB            R2, [R2,R0]
35B81A:  CMP             R2, R3
35B81C:  BNE.W           loc_35C9A6
35B820:  MOVW            R2, #0xA2C
35B824:  LDR             R1, [R1]
35B826:  MLA.W           R9, R0, R2, R1
35B82A:  B.W             loc_35C9AA
35B82E:  MOV             R0, R11; jumptable 0035B120 case 1724
35B830:  MOVS            R1, #7; __int16
35B832:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B836:  LDR.W           R0, =(ScriptParams_ptr - 0x35B83E)
35B83A:  ADD             R0, PC; ScriptParams_ptr
35B83C:  LDR             R0, [R0]; ScriptParams
35B83E:  LDM.W           R0, {R1,R3,R6}
35B842:  LDRD.W          R5, R4, [R0,#(dword_81A914 - 0x81A908)]
35B846:  LDRD.W          R12, R2, [R0,#(dword_81A91C - 0x81A908)]; int
35B84A:  ADD             R0, SP, #0x1A8+var_150; CVector *
35B84C:  STRD.W          R3, R6, [SP,#0x1A8+var_150+4]
35B850:  STRD.W          R5, R4, [SP,#0x1A8+var_15C]
35B854:  STRD.W          R12, R1, [SP,#0x1A8+var_154]
35B858:  ADD             R1, SP, #0x1A8+var_15C; CVector *
35B85A:  BLX             j__Z22FireOneInstantHitRoundP7CVectorS0_i; FireOneInstantHitRound(CVector *,CVector *,int)
35B85E:  B.W             loc_35D380
35B862:  MOV             R0, R11; jumptable 0035B120 case 1725
35B864:  MOVS            R1, #0xB; __int16
35B866:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B86A:  LDR.W           R0, =(ScriptParams_ptr - 0x35B872)
35B86E:  ADD             R0, PC; ScriptParams_ptr
35B870:  LDR             R0, [R0]; ScriptParams
35B872:  LDM.W           R0, {R1,R6,R9,R12,LR}
35B876:  LDRD.W          R8, R2, [R0,#(dword_81A91C - 0x81A908)]
35B87A:  LDR             R3, [R0,#(dword_81A924 - 0x81A908)]
35B87C:  STRD.W          R1, R6, [SP,#0x1A8+var_150]
35B880:  MOVS            R6, #0
35B882:  LDRD.W          R1, R5, [R0,#(dword_81A928 - 0x81A908)]
35B886:  LDR             R0, [R0,#(dword_81A930 - 0x81A908)]
35B888:  STR.W           R9, [SP,#0x1A8+var_148]
35B88C:  CMP             R0, #0
35B88E:  STRD.W          R12, LR, [SP,#0x1A8+var_15C]
35B892:  STR.W           R8, [SP,#0x1A8+var_154]
35B896:  IT NE
35B898:  MOVNE           R0, #1
35B89A:  CMP             R5, #0
35B89C:  IT NE
35B89E:  MOVNE           R5, #1
35B8A0:  CMP             R1, #0
35B8A2:  IT NE
35B8A4:  MOVNE           R1, #1
35B8A6:  CMP             R2, #0
35B8A8:  STRD.W          R1, R5, [SP,#0x1A8+var_1A8]; bool
35B8AC:  ADD             R1, SP, #0x1A8+var_15C; CVector *
35B8AE:  STRD.W          R0, R6, [SP,#0x1A8+var_1A0]; bool
35B8B2:  ADD             R0, SP, #0x1A8+var_150; this
35B8B4:  STR             R6, [SP,#0x1A8+var_198]; bool
35B8B6:  IT NE
35B8B8:  MOVNE           R2, #(stderr+1); CVector *
35B8BA:  CMP             R3, #0
35B8BC:  IT NE
35B8BE:  MOVNE           R3, #1; bool
35B8C0:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
35B8C4:  MOV             R1, R0; unsigned __int8
35B8C6:  MOV             R0, R11; this
35B8C8:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
35B8CC:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35B8D0:  MOV             R0, R11; jumptable 0035B120 case 1726
35B8D2:  MOVS            R1, #1; __int16
35B8D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B8D8:  LDR.W           R0, =(ScriptParams_ptr - 0x35B8E0)
35B8DC:  ADD             R0, PC; ScriptParams_ptr
35B8DE:  LDR             R0, [R0]; ScriptParams
35B8E0:  LDR             R1, [R0]
35B8E2:  CMP             R1, #0
35B8E4:  BLT.W           loc_35C9F6
35B8E8:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35B8F4)
35B8EC:  UXTB            R3, R1
35B8EE:  LSRS            R1, R1, #8
35B8F0:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35B8F2:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35B8F4:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35B8F6:  LDR             R2, [R0,#4]
35B8F8:  LDRB            R2, [R2,R1]
35B8FA:  CMP             R2, R3
35B8FC:  BNE.W           loc_35C9F6
35B900:  MOVW            R2, #0xA2C
35B904:  LDR             R0, [R0]
35B906:  MLA.W           R0, R1, R2, R0
35B90A:  B.W             loc_35C9F8
35B90E:  MOV             R0, R11; jumptable 0035B120 case 1727
35B910:  MOVS            R1, #3; __int16
35B912:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B916:  LDR.W           R0, =(ScriptParams_ptr - 0x35B91E)
35B91A:  ADD             R0, PC; ScriptParams_ptr
35B91C:  LDR             R0, [R0]; ScriptParams
35B91E:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
35B920:  CMP             R1, #0
35B922:  BLT.W           loc_35CA04
35B926:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35B932)
35B92A:  UXTB            R3, R1
35B92C:  LSRS            R1, R1, #8
35B92E:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35B930:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35B932:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35B934:  LDR             R2, [R0,#4]
35B936:  LDRB            R2, [R2,R1]
35B938:  CMP             R2, R3
35B93A:  BNE.W           loc_35CA04
35B93E:  MOVW            R2, #0xA2C
35B942:  LDR             R0, [R0]
35B944:  MLA.W           R8, R1, R2, R0
35B948:  B.W             loc_35CA08
35B94C:  MOV             R0, R11; jumptable 0035B120 case 1728
35B94E:  MOVS            R1, #2; __int16
35B950:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B954:  LDR.W           R0, =(ScriptParams_ptr - 0x35B95C)
35B958:  ADD             R0, PC; ScriptParams_ptr
35B95A:  LDR             R0, [R0]; ScriptParams
35B95C:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
35B95E:  CMP             R1, #0
35B960:  BLT.W           loc_35D0C0
35B964:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35B970)
35B968:  UXTB            R3, R1
35B96A:  LSRS            R1, R1, #8
35B96C:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35B96E:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35B970:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35B972:  LDR             R2, [R0,#4]
35B974:  LDRB            R2, [R2,R1]; CEntity *
35B976:  CMP             R2, R3
35B978:  BNE.W           loc_35D25A
35B97C:  MOVW            R2, #0xA2C
35B980:  LDR             R0, [R0]
35B982:  MLA.W           R1, R1, R2, R0
35B986:  LDR.W           R0, =(ScriptParams_ptr - 0x35B98E)
35B98A:  ADD             R0, PC; ScriptParams_ptr
35B98C:  B.W             loc_35D260
35B990:  MOV             R0, R11; jumptable 0035B120 case 1729
35B992:  MOVS            R1, #9; __int16
35B994:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B998:  MOV             R0, R11; this
35B99A:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
35B99E:  MOVS            R1, #2; int
35B9A0:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35B9A4:  LDR.W           R0, =(ScriptParams_ptr - 0x35B9AC)
35B9A8:  ADD             R0, PC; ScriptParams_ptr
35B9AA:  LDR             R0, [R0]; ScriptParams
35B9AC:  LDR             R1, [R0]
35B9AE:  CMP             R1, #0
35B9B0:  BLT.W           loc_35CA6E
35B9B4:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35B9C0)
35B9B8:  UXTB            R3, R1
35B9BA:  LSRS            R1, R1, #8
35B9BC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35B9BE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35B9C0:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35B9C2:  LDR             R2, [R0,#4]
35B9C4:  LDRB            R2, [R2,R1]
35B9C6:  CMP             R2, R3
35B9C8:  BNE.W           loc_35CA6E
35B9CC:  MOVW            R2, #0xA2C
35B9D0:  LDR             R0, [R0]
35B9D2:  MLA.W           R3, R1, R2, R0
35B9D6:  B.W             loc_35CA70
35B9DA:  MOV             R0, R11; jumptable 0035B120 case 1730
35B9DC:  MOVS            R1, #0xB; __int16
35B9DE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35B9E2:  LDR.W           R0, =(ScriptParams_ptr - 0x35B9EA)
35B9E6:  ADD             R0, PC; ScriptParams_ptr
35B9E8:  LDR             R1, [R0]; ScriptParams ; unsigned int
35B9EA:  LDR             R0, [R1,#(dword_81A924 - 0x81A908)]
35B9EC:  VLDR            S16, [R1,#0x14]
35B9F0:  VLDR            S18, [R1,#0x18]
35B9F4:  CMP             R0, #0
35B9F6:  LDR             R6, [R1]
35B9F8:  STR             R6, [SP,#0x1A8+var_17C]
35B9FA:  BLT.W           loc_35CAC4
35B9FE:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35BA0A)
35BA02:  UXTB            R3, R0
35BA04:  LSRS            R0, R0, #8
35BA06:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35BA08:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35BA0A:  LDR             R1, [R1]; CPools::ms_pPedPool
35BA0C:  LDR             R2, [R1,#4]
35BA0E:  LDRB            R2, [R2,R0]
35BA10:  CMP             R2, R3
35BA12:  BNE.W           loc_35CAC4
35BA16:  MOVW            R2, #0x7CC
35BA1A:  LDR             R1, [R1]
35BA1C:  MLA.W           R0, R0, R2, R1
35BA20:  B.W             loc_35CAC6
35BA24:  MOV             R0, R11; jumptable 0035B120 case 1731
35BA26:  MOVS            R1, #4; __int16
35BA28:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BA2C:  LDR.W           R0, =(ScriptParams_ptr - 0x35BA38)
35BA30:  LDR.W           R12, =(gFireManager_ptr - 0x35BA3A)
35BA34:  ADD             R0, PC; ScriptParams_ptr
35BA36:  ADD             R12, PC; gFireManager_ptr
35BA38:  LDR             R5, [R0]; ScriptParams
35BA3A:  LDR.W           R0, [R12]; gFireManager ; this
35BA3E:  LDRD.W          R3, R6, [R5]
35BA42:  LDRD.W          R1, R2, [R5,#(dword_81A910 - 0x81A908)]; float
35BA46:  STRD.W          R3, R6, [SP,#0x1A8+var_150]
35BA4A:  STR             R1, [SP,#0x1A8+var_148]
35BA4C:  ADD             R1, SP, #0x1A8+var_150; CVector *
35BA4E:  BLX             j__ZN12CFireManager18GetNumFiresInRangeEP7CVectorf; CFireManager::GetNumFiresInRange(CVector *,float)
35BA52:  STR             R0, [R5]
35BA54:  B.W             def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35BA58:  MOV             R0, R11; jumptable 0035B120 case 1732
35BA5A:  MOVS            R1, #1; __int16
35BA5C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BA60:  LDR.W           R0, =(ScriptParams_ptr - 0x35BA6A)
35BA64:  MOVS            R1, #2; int
35BA66:  ADD             R0, PC; ScriptParams_ptr
35BA68:  LDR.W           R8, [R0]; ScriptParams
35BA6C:  LDR.W           R0, [R8]; this
35BA70:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35BA74:  MOV             R0, R11; this
35BA76:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
35BA7A:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
35BA7E:  LDR.W           R1, [R8]
35BA82:  ADD.W           R0, R11, #8
35BA86:  STR             R0, [SP,#0x1A8+var_1A8]
35BA88:  MOVS            R0, #6
35BA8A:  MOVS            R2, #0
35BA8C:  MOVS            R3, #3
35BA8E:  MOVS            R6, #0
35BA90:  BLX             j__ZN6CRadar13SetEntityBlipE9eBlipTypeij12eBlipDisplayPc; CRadar::SetEntityBlip(eBlipType,int,uint,eBlipDisplay,char *)
35BA94:  MOVS            R1, #3; int
35BA96:  MOV             R5, R0
35BA98:  BLX             j__ZN6CRadar15ChangeBlipScaleEii; CRadar::ChangeBlipScale(int,int)
35BA9C:  STR.W           R5, [R8]
35BAA0:  B               loc_35BDA0
35BAA2:  MOV             R0, R11; jumptable 0035B120 case 1733
35BAA4:  MOVS            R1, #1; __int16
35BAA6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BAAA:  LDR.W           R0, =(ScriptParams_ptr - 0x35BAB2)
35BAAE:  ADD             R0, PC; ScriptParams_ptr
35BAB0:  LDR             R0, [R0]; ScriptParams
35BAB2:  LDR             R1, [R0]; CVehicle *
35BAB4:  CMP             R1, #0
35BAB6:  BLT.W           loc_35CB1E
35BABA:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BAC6)
35BABE:  UXTB            R3, R1
35BAC0:  LSRS            R1, R1, #8
35BAC2:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35BAC4:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35BAC6:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35BAC8:  LDR             R2, [R0,#4]
35BACA:  LDRB            R2, [R2,R1]
35BACC:  CMP             R2, R3
35BACE:  BNE.W           loc_35CB1E
35BAD2:  MOVW            R2, #0xA2C
35BAD6:  LDR             R0, [R0]
35BAD8:  MLA.W           R0, R1, R2, R0
35BADC:  B.W             loc_35CB20
35BAE0:  MOV             R0, R11; jumptable 0035B120 case 1735
35BAE2:  MOVS            R1, #4; __int16
35BAE4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BAE8:  LDR.W           R0, =(ScriptParams_ptr - 0x35BAF0)
35BAEC:  ADD             R0, PC; ScriptParams_ptr
35BAEE:  LDR             R0, [R0]; ScriptParams
35BAF0:  LDRD.W          R8, R0, [R0]
35BAF4:  ADDS            R1, R0, #1; unsigned int
35BAF6:  BEQ.W           loc_35C882
35BAFA:  CMP             R0, #0
35BAFC:  BLT.W           loc_35C882
35BB00:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BB0C)
35BB04:  UXTB            R3, R0
35BB06:  LSRS            R0, R0, #8
35BB08:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35BB0A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35BB0C:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35BB0E:  LDR             R2, [R1,#4]
35BB10:  LDRB            R2, [R2,R0]
35BB12:  CMP             R2, R3
35BB14:  BNE.W           loc_35C882
35BB18:  MOVW            R2, #0xA2C
35BB1C:  LDR             R1, [R1]
35BB1E:  MLA.W           R9, R0, R2, R1
35BB22:  B.W             loc_35C886
35BB26:  MOV             R0, R11; jumptable 0035B120 case 1736
35BB28:  MOVS            R1, #1; __int16
35BB2A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BB2E:  LDR.W           R0, =(ScriptParams_ptr - 0x35BB3A)
35BB32:  LDR.W           R1, =(gbLARiots_ptr - 0x35BB3C)
35BB36:  ADD             R0, PC; ScriptParams_ptr
35BB38:  ADD             R1, PC; gbLARiots_ptr
35BB3A:  B.W             loc_35C5DC
35BB3E:  MOV             R0, R11; jumptable 0035B120 case 1737
35BB40:  MOVS            R1, #1; __int16
35BB42:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BB46:  LDR.W           R0, =(ScriptParams_ptr - 0x35BB4E)
35BB4A:  ADD             R0, PC; ScriptParams_ptr
35BB4C:  LDR             R0, [R0]; ScriptParams
35BB4E:  LDR             R1, [R0]; CPed *
35BB50:  CMP             R1, #0
35BB52:  BLT.W           loc_35CB28
35BB56:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35BB62)
35BB5A:  UXTB            R3, R1
35BB5C:  LSRS            R1, R1, #8
35BB5E:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
35BB60:  LDR             R0, [R0]; CPools::ms_pPedPool ...
35BB62:  LDR             R0, [R0]; CPools::ms_pPedPool
35BB64:  LDR             R2, [R0,#4]
35BB66:  LDRB            R2, [R2,R1]
35BB68:  CMP             R2, R3
35BB6A:  BNE.W           loc_35CB28
35BB6E:  MOVW            R2, #0x7CC
35BB72:  LDR             R0, [R0]
35BB74:  MLA.W           R4, R1, R2, R0
35BB78:  B.W             loc_35CB2A
35BB7C:  MOV             R0, R11; jumptable 0035B120 case 1738
35BB7E:  MOVS            R1, #7; __int16
35BB80:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BB84:  LDR.W           R0, =(ScriptParams_ptr - 0x35BB90)
35BB88:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x35BB92)
35BB8C:  ADD             R0, PC; ScriptParams_ptr
35BB8E:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
35BB90:  LDR             R0, [R0]; ScriptParams
35BB92:  LDR             R2, [R1]; CPools::ms_pObjectPool ...
35BB94:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
35BB96:  LDR             R0, [R2]; CPools::ms_pObjectPool
35BB98:  CMP             R1, #0
35BB9A:  BLT.W           loc_35CB5C
35BB9E:  LDR             R2, [R0,#4]
35BBA0:  UXTB            R3, R1
35BBA2:  LSRS            R1, R1, #8
35BBA4:  LDRB            R2, [R2,R1]
35BBA6:  CMP             R2, R3
35BBA8:  BNE.W           loc_35CB5C
35BBAC:  MOV.W           R2, #0x1A4
35BBB0:  LDR             R3, [R0]
35BBB2:  MLA.W           R1, R1, R2, R3
35BBB6:  B.W             loc_35CB5E
35BBBA:  MOV             R0, R11; jumptable 0035B120 case 1743
35BBBC:  MOVS            R1, #1; __int16
35BBBE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BBC2:  B.W             loc_35D380
35BBC6:  MOV             R0, R11; jumptable 0035B120 case 1744
35BBC8:  MOVS            R1, #1; __int16
35BBCA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BBCE:  LDR.W           R0, =(ScriptParams_ptr - 0x35BBDA)
35BBD2:  LDR.W           R1, =(_ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr - 0x35BBDC)
35BBD6:  ADD             R0, PC; ScriptParams_ptr
35BBD8:  ADD             R1, PC; _ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr
35BBDA:  B.W             loc_35C5DC
35BBDE:  MOV             R0, R11; jumptable 0035B120 case 1745
35BBE0:  MOVS            R1, #2
35BBE2:  B               loc_35BBE8
35BBE4:  MOV             R0, R11; jumptable 0035B120 case 1746
35BBE6:  MOVS            R1, #1; unsigned __int8
35BBE8:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
35BBEC:  ADD             R6, SP, #0x1A8+var_144
35BBEE:  MOV             R5, R0
35BBF0:  MOV             R0, R11; this
35BBF2:  MOVS            R2, #0x10; unsigned __int8
35BBF4:  MOV             R1, R6; char *
35BBF6:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
35BBFA:  MOV             R0, R5; char *
35BBFC:  MOV             R1, R6; char *
35BBFE:  MOVS            R2, #0x10; size_t
35BC00:  BLX             strncpy
35BC04:  B.W             loc_35D380
35BC08:  MOV             R0, R11; jumptable 0035B120 case 1749
35BC0A:  MOVS            R1, #8; __int16
35BC0C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BC10:  MOV             R0, R11; this
35BC12:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
35BC16:  MOVS            R1, #3; int
35BC18:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35BC1C:  LDR.W           R0, =(ScriptParams_ptr - 0x35BC28)
35BC20:  LDR.W           R1, =(_ZN11CTheScripts21ScriptCheckpointArrayE_ptr - 0x35BC2A)
35BC24:  ADD             R0, PC; ScriptParams_ptr
35BC26:  ADD             R1, PC; _ZN11CTheScripts21ScriptCheckpointArrayE_ptr
35BC28:  LDR             R0, [R0]; ScriptParams
35BC2A:  LDR             R6, [R1]; CTheScripts::ScriptCheckpointArray ...
35BC2C:  ADD.W           R8, R0, #4
35BC30:  LDR             R2, [R0]
35BC32:  STR             R2, [SP,#0x1A8+var_17C]
35BC34:  LDM.W           R8, {R4,R5,R8}
35BC38:  LDR             R2, [R0,#(dword_81A918 - 0x81A908)]; unsigned __int8
35BC3A:  STR             R2, [SP,#0x1A8+var_180]
35BC3C:  LDRD.W          R9, R10, [R0,#(dword_81A91C - 0x81A908)]
35BC40:  VLDR            S16, [R0,#0x1C]
35BC44:  MOV.W           R0, #0xFFFFFFFF
35BC48:  LDRB.W          R1, [R6],#8; CTheScripts::ScriptCheckpointArray
35BC4C:  ADDS            R0, #1; this
35BC4E:  CMP             R0, #0x13
35BC50:  BHI             loc_35BC56
35BC52:  CMP             R1, #0
35BC54:  BNE             loc_35BC48
35BC56:  MOVS            R1, #1
35BC58:  STRB.W          R1, [R6,#-8]
35BC5C:  MOVS            R1, #3; int
35BC5E:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
35BC62:  ADD             R1, SP, #0x1A8+var_144
35BC64:  STM.W           R1, {R4,R5,R8}
35BC68:  STRD.W          R9, R10, [SP,#0x1A8+var_150+4]
35BC6C:  LDR             R4, [SP,#0x1A8+var_17C]
35BC6E:  LDR             R1, [SP,#0x1A8+var_180]
35BC70:  STR             R1, [SP,#0x1A8+var_150]
35BC72:  SUBS            R1, R4, #3
35BC74:  CMP             R1, #6
35BC76:  BCS.W           loc_35D080
35BC7A:  LDR.W           R2, =(byte_81AFA0 - 0x35BC84)
35BC7E:  MOVS            R3, #0x60 ; '`'
35BC80:  ADD             R2, PC; byte_81AFA0
35BC82:  LDRB.W          R8, [R2]
35BC86:  LDRB            R1, [R2,#(byte_81AFA1 - 0x81AFA0)]
35BC88:  LDRB            R2, [R2,#(byte_81AFA2 - 0x81AFA0)]
35BC8A:  B.W             loc_35D296
35BC8E:  MOV             R0, R11; jumptable 0035B120 case 1750
35BC90:  MOVS            R1, #1; __int16
35BC92:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BC96:  LDR.W           R0, =(ScriptParams_ptr - 0x35BCA0)
35BC9A:  MOVS            R1, #3; int
35BC9C:  ADD             R0, PC; ScriptParams_ptr
35BC9E:  LDR             R0, [R0]; ScriptParams
35BCA0:  LDR             R0, [R0]; this
35BCA2:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35BCA6:  CMP             R0, #0
35BCA8:  BLT.W           loc_35D380
35BCAC:  LDR.W           R0, =(ScriptParams_ptr - 0x35BCB6)
35BCB0:  MOVS            R1, #3; int
35BCB2:  ADD             R0, PC; ScriptParams_ptr
35BCB4:  LDR             R0, [R0]; ScriptParams
35BCB6:  LDR             R0, [R0]; this
35BCB8:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35BCBC:  ADDS            R1, R0, #1
35BCBE:  BEQ             loc_35BCF2
35BCC0:  LDR.W           R1, =(_ZN11CTheScripts21ScriptCheckpointArrayE_ptr - 0x35BCCA)
35BCC4:  MOVS            R6, #0
35BCC6:  ADD             R1, PC; _ZN11CTheScripts21ScriptCheckpointArrayE_ptr
35BCC8:  LDR             R1, [R1]; CTheScripts::ScriptCheckpointArray ...
35BCCA:  ADD.W           R5, R1, R0,LSL#3
35BCCE:  LDR.W           R2, [R5,#4]!; unsigned __int16
35BCD2:  STRB.W          R6, [R1,R0,LSL#3]
35BCD6:  CMP             R2, #0
35BCD8:  ITTT NE
35BCDA:  LDRHNE          R1, [R2]; unsigned int
35BCDC:  LDRNE           R0, [R2,#4]; this
35BCDE:  BLXNE           j__ZN12CCheckpoints8DeleteCPEjt; CCheckpoints::DeleteCP(uint,ushort)
35BCE2:  LDR.W           R0, =(_ZN11CTheScripts25NumberOfScriptCheckpointsE_ptr - 0x35BCEC)
35BCE6:  STR             R6, [R5]
35BCE8:  ADD             R0, PC; _ZN11CTheScripts25NumberOfScriptCheckpointsE_ptr
35BCEA:  LDR             R0, [R0]; CTheScripts::NumberOfScriptCheckpoints ...
35BCEC:  LDRH            R1, [R0]; CTheScripts::NumberOfScriptCheckpoints
35BCEE:  SUBS            R1, #1
35BCF0:  STRH            R1, [R0]; CTheScripts::NumberOfScriptCheckpoints
35BCF2:  LDRB.W          R0, [R11,#0xE6]
35BCF6:  CMP             R0, #0
35BCF8:  BEQ.W           loc_35D380
35BCFC:  LDR.W           R0, =(ScriptParams_ptr - 0x35BD08)
35BD00:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35BD0A)
35BD04:  ADD             R0, PC; ScriptParams_ptr
35BD06:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35BD08:  LDR             R2, [R0]; ScriptParams
35BD0A:  LDR             R0, [R1]; this
35BD0C:  LDR             R1, [R2]; int
35BD0E:  MOVS            R2, #0xC; unsigned __int8
35BD10:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
35BD14:  B.W             loc_35D380
35BD18:  MOV             R0, R11; jumptable 0035B120 case 1751
35BD1A:  MOVS            R1, #1; __int16
35BD1C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BD20:  LDR.W           R0, =(ScriptParams_ptr - 0x35BD28)
35BD24:  ADD             R0, PC; ScriptParams_ptr
35BD26:  LDR             R0, [R0]; ScriptParams
35BD28:  LDR             R0, [R0]
35BD2A:  CMP             R0, #0
35BD2C:  BEQ.W           loc_35D0CA
35BD30:  MOVS            R0, #0; this
35BD32:  MOVS            R6, #0
35BD34:  BLX             j__ZN6CTrain19DisableRandomTrainsEb; CTrain::DisableRandomTrains(bool)
35BD38:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35BD3C:  MOV             R0, R11; jumptable 0035B120 case 1752
35BD3E:  MOVS            R1, #5; __int16
35BD40:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BD44:  LDR.W           R0, =(ScriptParams_ptr - 0x35BD58)
35BD48:  ADD.W           R9, SP, #0x1A8+var_160
35BD4C:  MOV.W           LR, #1
35BD50:  MOV.W           R8, #0xFFFFFFFF
35BD54:  ADD             R0, PC; ScriptParams_ptr
35BD56:  MOVS            R6, #0
35BD58:  LDR             R5, [R0]; ScriptParams
35BD5A:  ADD.W           R3, R5, #8
35BD5E:  LDRD.W          R12, R0, [R5]
35BD62:  LDM             R3, {R1-R3}
35BD64:  CMP             R3, #0
35BD66:  STRD.W          R12, R9, [SP,#0x1A8+var_1A8]
35BD6A:  STRD.W          R6, R8, [SP,#0x1A8+var_1A0]
35BD6E:  STRD.W          R8, LR, [SP,#0x1A8+var_198]
35BD72:  IT NE
35BD74:  MOVNE           R3, #1
35BD76:  BLX             j__ZN6CTrain18CreateMissionTrainE7CVectorbjPPS_S2_iib; CTrain::CreateMissionTrain(CVector,bool,uint,CTrain**,CTrain**,int,int,bool)
35BD7A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BD84)
35BD7E:  LDR             R1, [SP,#0x1A8+var_160]
35BD80:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35BD82:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35BD84:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35BD86:  LDRD.W          R2, R0, [R0]
35BD8A:  SUBS            R1, R1, R2
35BD8C:  MOV             R2, #0xBFE6D523
35BD94:  ASRS            R1, R1, #2
35BD96:  MULS            R1, R2
35BD98:  LDRB            R0, [R0,R1]
35BD9A:  ORR.W           R0, R0, R1,LSL#8
35BD9E:  STR             R0, [R5]
35BDA0:  MOV             R0, R11; this
35BDA2:  MOVS            R1, #1; __int16
35BDA4:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
35BDA8:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35BDAC:  BLX             j__ZN6CTrain19RemoveMissionTrainsEv; jumptable 0035B120 case 1753
35BDB0:  B.W             loc_35D380
35BDB4:  BLX             j__ZN6CTrain20ReleaseMissionTrainsEv; jumptable 0035B120 case 1754
35BDB8:  B.W             loc_35D380
35BDBC:  BLX             j__ZN6CTrain15RemoveAllTrainsEv; jumptable 0035B120 case 1755
35BDC0:  B.W             loc_35D380
35BDC4:  MOV             R0, R11; jumptable 0035B120 case 1756
35BDC6:  MOVS            R1, #2; __int16
35BDC8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BDCC:  LDR             R0, =(ScriptParams_ptr - 0x35BDD2)
35BDCE:  ADD             R0, PC; ScriptParams_ptr
35BDD0:  LDR             R0, [R0]; ScriptParams
35BDD2:  LDR             R1, [R0]
35BDD4:  CMP             R1, #0
35BDD6:  BLT.W           loc_35CB88
35BDDA:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BDE4)
35BDDC:  UXTB            R3, R1
35BDDE:  LSRS            R1, R1, #8
35BDE0:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35BDE2:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35BDE4:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35BDE6:  LDR             R2, [R0,#4]
35BDE8:  LDRB            R2, [R2,R1]
35BDEA:  CMP             R2, R3
35BDEC:  BNE.W           loc_35CB88
35BDF0:  MOVW            R2, #0xA2C
35BDF4:  LDR             R0, [R0]
35BDF6:  MLA.W           R0, R1, R2, R0
35BDFA:  B.W             loc_35CB8A
35BDFE:  MOV             R0, R11; jumptable 0035B120 case 1758
35BE00:  MOVS            R1, #1; __int16
35BE02:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BE06:  LDR             R0, =(ScriptParams_ptr - 0x35BE0C)
35BE08:  ADD             R0, PC; ScriptParams_ptr
35BE0A:  LDR             R0, [R0]; ScriptParams
35BE0C:  LDR             R1, [R0]; CTrain *
35BE0E:  CMP             R1, #0
35BE10:  BLT.W           loc_35CB9E
35BE14:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BE1E)
35BE16:  UXTB            R3, R1
35BE18:  LSRS            R1, R1, #8
35BE1A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35BE1C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35BE1E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35BE20:  LDR             R2, [R0,#4]
35BE22:  LDRB            R2, [R2,R1]
35BE24:  CMP             R2, R3
35BE26:  BNE.W           loc_35CB9E
35BE2A:  MOVW            R2, #0xA2C
35BE2E:  LDR             R0, [R0]
35BE30:  MLA.W           R0, R1, R2, R0
35BE34:  B.W             loc_35CBA0
35BE38:  MOV             R0, R11; jumptable 0035B120 case 1759
35BE3A:  MOVS            R1, #1; __int16
35BE3C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BE40:  LDR             R0, =(ScriptParams_ptr - 0x35BE46)
35BE42:  ADD             R0, PC; ScriptParams_ptr
35BE44:  LDR             R0, [R0]; ScriptParams
35BE46:  LDR             R0, [R0]; this
35BE48:  BLX             j__ZN10CPlayerPed15RemovePlayerPedEi; CPlayerPed::RemovePlayerPed(int)
35BE4C:  B.W             loc_35D380
35BE50:  MOV             R0, R11; jumptable 0035B120 case 1760
35BE52:  MOVS            R1, #1; __int16
35BE54:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BE58:  LDR             R0, =(TheCamera_ptr - 0x35BE5E)
35BE5A:  ADD             R0, PC; TheCamera_ptr
35BE5C:  LDR             R0, [R0]; TheCamera ; this
35BE5E:  BLX             j__ZN7CCamera23StartCooperativeCamModeEv; CCamera::StartCooperativeCamMode(void)
35BE62:  B.W             loc_35D380
35BE66:  MOV             R0, R11; jumptable 0035B120 case 1761
35BE68:  MOVS            R1, #6; __int16
35BE6A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BE6E:  LDR             R0, =(ScriptParams_ptr - 0x35BE74)
35BE70:  ADD             R0, PC; ScriptParams_ptr
35BE72:  LDR             R0, [R0]; ScriptParams
35BE74:  LDRD.W          R8, R0, [R0]
35BE78:  CMP             R0, #0
35BE7A:  BLT.W           loc_35CBD4
35BE7E:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BE88)
35BE80:  UXTB            R3, R0
35BE82:  LSRS            R0, R0, #8
35BE84:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35BE86:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35BE88:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35BE8A:  LDR             R2, [R1,#4]
35BE8C:  LDRB            R2, [R2,R0]
35BE8E:  CMP             R2, R3
35BE90:  BNE.W           loc_35CBD4
35BE94:  MOVW            R2, #0xA2C
35BE98:  LDR             R1, [R1]
35BE9A:  MLA.W           R9, R0, R2, R1
35BE9E:  B.W             loc_35CBD8
35BEA2:  MOV             R0, R11; jumptable 0035B120 case 1762
35BEA4:  MOVS            R1, #4; __int16
35BEA6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BEAA:  LDR             R0, =(ScriptParams_ptr - 0x35BEB4)
35BEAC:  MOV.W           R10, #0
35BEB0:  ADD             R0, PC; ScriptParams_ptr
35BEB2:  LDR             R0, [R0]; ScriptParams
35BEB4:  LDRD.W          R8, R0, [R0]
35BEB8:  CMP             R0, #0
35BEBA:  BLT.W           loc_35CC0C
35BEBE:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x35BEC8)
35BEC0:  UXTB            R3, R0
35BEC2:  LSRS            R0, R0, #8
35BEC4:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
35BEC6:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
35BEC8:  LDR             R1, [R1]; CPools::ms_pObjectPool
35BECA:  LDR             R2, [R1,#4]
35BECC:  LDRB            R2, [R2,R0]
35BECE:  CMP             R2, R3
35BED0:  BNE.W           loc_35CC0C
35BED4:  MOV.W           R2, #0x1A4
35BED8:  LDR             R1, [R1]
35BEDA:  MLA.W           R9, R0, R2, R1
35BEDE:  B.W             loc_35CC10
35BEE2:  MOV             R0, R11; jumptable 0035B120 case 1763
35BEE4:  MOVS            R1, #2; __int16
35BEE6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BEEA:  LDR             R0, =(ScriptParams_ptr - 0x35BEF0)
35BEEC:  ADD             R0, PC; ScriptParams_ptr
35BEEE:  LDR             R0, [R0]; ScriptParams
35BEF0:  LDRD.W          R8, R5, [R0]
35BEF4:  MOVS            R0, #dword_20; this
35BEF6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35BEFA:  MOV             R6, R0
35BEFC:  MOVS            R0, #0
35BEFE:  CMP             R5, #0
35BF00:  STR             R0, [SP,#0x1A8+var_1A8]
35BF02:  ITE EQ
35BF04:  MOVEQ           R2, #0x39 ; '9'
35BF06:  MOVNE           R2, #0x3B ; ';'
35BF08:  MOV             R0, R6
35BF0A:  MOVS            R1, #0
35BF0C:  MOV.W           R3, #0x40800000
35BF10:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
35BF14:  MOV             R0, R11
35BF16:  MOV             R1, R8
35BF18:  MOV             R2, R6
35BF1A:  MOVW            R3, #0x6E3
35BF1E:  B.W             loc_35D17E
35BF22:  MOV             R0, R11; jumptable 0035B120 case 1764
35BF24:  MOVS            R1, #2; __int16
35BF26:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BF2A:  LDR             R0, =(ScriptParams_ptr - 0x35BF30)
35BF2C:  ADD             R0, PC; ScriptParams_ptr
35BF2E:  LDR             R0, [R0]; ScriptParams
35BF30:  LDRD.W          R8, R0, [R0]
35BF34:  CMP             R0, #0
35BF36:  BLT.W           loc_35CC9A
35BF3A:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35BF44)
35BF3C:  UXTB            R3, R0
35BF3E:  LSRS            R0, R0, #8
35BF40:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35BF42:  LDR             R1, [R1]; CPools::ms_pPedPool ...
35BF44:  LDR             R1, [R1]; CPools::ms_pPedPool
35BF46:  LDR             R2, [R1,#4]
35BF48:  LDRB            R2, [R2,R0]
35BF4A:  CMP             R2, R3
35BF4C:  BNE.W           loc_35CC9A
35BF50:  MOVW            R2, #0x7CC
35BF54:  LDR             R1, [R1]
35BF56:  MLA.W           R6, R0, R2, R1
35BF5A:  B.W             loc_35CC9C
35BF5E:  MOV             R0, R11; jumptable 0035B120 case 1765
35BF60:  MOVS            R1, #2; __int16
35BF62:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BF66:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BF72)
35BF68:  MOVW            R6, #0xA2C
35BF6C:  LDR             R0, =(ScriptParams_ptr - 0x35BF74)
35BF6E:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35BF70:  ADD             R0, PC; ScriptParams_ptr
35BF72:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35BF74:  LDR             R0, [R0]; ScriptParams
35BF76:  LDRD.W          R2, R3, [R0]
35BF7A:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35BF7C:  LSRS            R2, R2, #8
35BF7E:  LDR             R1, [R1]
35BF80:  MLA.W           R1, R2, R6, R1
35BF84:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x35BF8A)
35BF86:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
35BF88:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
35BF8A:  LDRSH.W         R1, [R1,#0x26]
35BF8E:  LDR.W           R1, [R2,R1,LSL#2]
35BF92:  ADD.W           R1, R1, R3,LSL#1
35BF96:  LDRSH.W         R1, [R1,#0x36E]
35BF9A:  STR             R1, [R0]
35BF9C:  B.W             def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35BFA0:  MOV             R0, R11; jumptable 0035B120 case 1766
35BFA2:  MOVS            R1, #1; __int16
35BFA4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35BFA8:  LDR             R0, =(ScriptParams_ptr - 0x35BFAE)
35BFAA:  ADD             R0, PC; ScriptParams_ptr
35BFAC:  LDR             R0, [R0]; ScriptParams
35BFAE:  LDR             R0, [R0]
35BFB0:  CMP.W           R0, #0xFFFFFFFF
35BFB4:  BGT             loc_35BFC8
35BFB6:  LDR             R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x35BFBE)
35BFB8:  NEGS            R0, R0
35BFBA:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
35BFBC:  RSB.W           R0, R0, R0,LSL#3
35BFC0:  LDR             R1, [R1]; CTheScripts::UsedObjectArray ...
35BFC2:  ADD.W           R0, R1, R0,LSL#2
35BFC6:  LDR             R0, [R0,#0x18]
35BFC8:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x35BFCE)
35BFCA:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
35BFCC:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
35BFCE:  LDR.W           R0, [R1,R0,LSL#2]
35BFD2:  LDRH            R1, [R0,#0x28]
35BFD4:  TST.W           R1, #0x100
35BFD8:  MOV.W           R0, R1,LSR#10
35BFDC:  AND.W           R0, R0, #0x1F
35BFE0:  BNE.W           loc_35CFD8
35BFE4:  CMP             R0, #0x11; switch 18 cases
35BFE6:  BHI.W           def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35BFEA:  ADR.W           R1, jpt_35BFEE
35BFEE:  TBH.W           [R1,R0,LSL#1]; switch jump
35BFF2:  DCW 0x99E; jump table for switch statement
35BFF4:  DCW 0x117
35BFF6:  DCW 0x117
35BFF8:  DCW 0x9C3
35BFFA:  DCW 0x9C3
35BFFC:  DCW 0x9C3
35BFFE:  DCW 0x9A2
35C000:  DCW 0x9C3
35C002:  DCW 0x986
35C004:  DCW 0x986
35C006:  DCW 0x9A6
35C008:  DCW 0x9AA
35C00A:  DCW 0x9AE
35C00C:  DCW 0x9C3
35C00E:  DCW 0x9B2
35C010:  DCW 0x9B6
35C012:  DCW 0x9BA
35C014:  DCW 0x9BE
35C016:  ALIGN 4
35C018:  DCD ScriptParams_ptr - 0x35B1FC
35C01C:  DCD _ZTV42CTaskComplexDiveFromAttachedEntityAndGetUp_ptr - 0x35B230
35C020:  DCD ScriptParams_ptr - 0x35B24E
35C024:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35B262
35C028:  DCD ScriptParams_ptr - 0x35B290
35C02C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35B2B6
35C030:  DCD ScriptParams_ptr - 0x35B2E0
35C034:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35B31C
35C038:  DCD ScriptParams_ptr - 0x35B35C
35C03C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35B370
35C040:  DCD ScriptParams_ptr - 0x35B3A2
35C044:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35B3A4
35C048:  DCD ScriptParams_ptr - 0x35B3E6
35C04C:  DCD ScriptParams_ptr - 0x35B414
35C050:  DCD ScriptParams_ptr - 0x35B42A
35C054:  DCD ScriptParams_ptr - 0x35B450
35C058:  DCD ScriptParams_ptr - 0x35B49A
35C05C:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x35B49C
35C060:  DCD ScriptParams_ptr - 0x35B4BE
35C064:  DCD _ZN6CWorld7PlayersE_ptr - 0x35B4D0
35C068:  DCD ScriptParams_ptr - 0x35B4F6
35C06C:  DCD ScriptParams_ptr - 0x35B52E
35C070:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x35B574
35C074:  DCD ScriptParams_ptr - 0x35B588
35C078:  DCD ScriptParams_ptr - 0x35B59C
35C07C:  DCD ScriptParams_ptr - 0x35B5B8
35C080:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x35B5BA
35C084:  DCD ScriptParams_ptr - 0x35B5D6
35C088:  DCD ScriptParams_ptr - 0x35B616
35C08C:  DCD _ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x35B644
35C090:  DCD ScriptParams_ptr - 0x35B6B8
35C094:  DCD _ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x35B6DA
35C098:  DCD ScriptParams_ptr - 0x35B71A
35C09C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35B72E
35C0A0:  DCD ScriptParams_ptr - 0x35B758
35C0A4:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35B76C
35C0A8:  DCD _ZN12CCutsceneMgr21ms_cutsceneLoadStatusE_ptr - 0x35B792
35C0AC:  DCD ScriptParams_ptr - 0x35B7AC
35C0B0:  DCD _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x35B7C6
35C0B4:  DCD _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x35B7D0
35C0B8:  DCD ScriptParams_ptr - 0x35B7FE
35C0BC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35B814
35C0C0:  DCD ScriptParams_ptr - 0x35B83E
35C0C4:  DCD ScriptParams_ptr - 0x35B872
35C0C8:  DCD ScriptParams_ptr - 0x35B8E0
35C0CC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35B8F4
35C0D0:  DCD ScriptParams_ptr - 0x35B91E
35C0D4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35B932
35C0D8:  DCD ScriptParams_ptr - 0x35B95C
35C0DC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35B970
35C0E0:  DCD ScriptParams_ptr - 0x35B98E
35C0E4:  DCD ScriptParams_ptr - 0x35B9AC
35C0E8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35B9C0
35C0EC:  DCD ScriptParams_ptr - 0x35B9EA
35C0F0:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35BA0A
35C0F4:  DCD ScriptParams_ptr - 0x35BA38
35C0F8:  DCD gFireManager_ptr - 0x35BA3A
35C0FC:  DCD ScriptParams_ptr - 0x35BA6A
35C100:  DCD ScriptParams_ptr - 0x35BAB2
35C104:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BAC6
35C108:  DCD ScriptParams_ptr - 0x35BAF0
35C10C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BB0C
35C110:  DCD ScriptParams_ptr - 0x35BB3A
35C114:  DCD gbLARiots_ptr - 0x35BB3C
35C118:  DCD ScriptParams_ptr - 0x35BB4E
35C11C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35BB62
35C120:  DCD ScriptParams_ptr - 0x35BB90
35C124:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x35BB92
35C128:  DCD ScriptParams_ptr - 0x35BBDA
35C12C:  DCD _ZN8CCarCtrl34bAllowEmergencyServicesToBeCreatedE_ptr - 0x35BBDC
35C130:  DCD ScriptParams_ptr - 0x35BC28
35C134:  DCD _ZN11CTheScripts21ScriptCheckpointArrayE_ptr - 0x35BC2A
35C138:  DCD byte_81AFA0 - 0x35BC84
35C13C:  DCD ScriptParams_ptr - 0x35BCA0
35C140:  DCD ScriptParams_ptr - 0x35BCB6
35C144:  DCD _ZN11CTheScripts21ScriptCheckpointArrayE_ptr - 0x35BCCA
35C148:  DCD _ZN11CTheScripts25NumberOfScriptCheckpointsE_ptr - 0x35BCEC
35C14C:  DCD ScriptParams_ptr - 0x35BD08
35C150:  DCD _ZN11CTheScripts14MissionCleanUpE_ptr - 0x35BD0A
35C154:  DCD ScriptParams_ptr - 0x35BD28
35C158:  DCD ScriptParams_ptr - 0x35BD58
35C15C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BD84
35C160:  DCD ScriptParams_ptr - 0x35BDD2
35C164:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BDE4
35C168:  DCD ScriptParams_ptr - 0x35BE0C
35C16C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BE1E
35C170:  DCD ScriptParams_ptr - 0x35BE46
35C174:  DCD TheCamera_ptr - 0x35BE5E
35C178:  DCD ScriptParams_ptr - 0x35BE74
35C17C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BE88
35C180:  DCD ScriptParams_ptr - 0x35BEB4
35C184:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x35BEC8
35C188:  DCD ScriptParams_ptr - 0x35BEF0
35C18C:  DCD ScriptParams_ptr - 0x35BF30
35C190:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35BF44
35C194:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35BF72
35C198:  DCD ScriptParams_ptr - 0x35BF74
35C19C:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x35BF8A
35C1A0:  DCD ScriptParams_ptr - 0x35BFAE
35C1A4:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x35BFBE
35C1A8:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x35BFCE
35C1AC:  DCD ScriptParams_ptr - 0x35C22A
35C1B0:  DCD ScriptParams_ptr - 0x35C23C
35C1B4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C250
35C1B8:  DCD ScriptParams_ptr - 0x35C27A
35C1BC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C28E
35C1C0:  DCD ScriptParams_ptr - 0x35C2B8
35C1C4:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x35C2CA
35C1C8:  DCD ScriptParams_ptr - 0x35C2EE
35C1CC:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x35C300
35C1D0:  DCD ScriptParams_ptr - 0x35C322
35C1D4:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x35C334
35C1D8:  DCD _ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr - 0x35C34E
35C1DC:  DCD ScriptParams_ptr - 0x35C376
35C1E0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C378
35C1E4:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x35C38E
35C1E8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C3B4
35C1EC:  DCD ScriptParams_ptr - 0x35C3B6
35C1F0:  DCD ScriptParams_ptr - 0x35C3E2
35C1F4:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x35C3F6
35C1F8:  DCD ScriptParams_ptr - 0x35C422
35C1FC:  DCD _ZN10CPedGroups9ms_groupsE_ptr - 0x35C440
35C200:  DCD ScriptParams_ptr - 0x35C442
35C204:  DCD _ZN10CGameLogic20bLimitPlayerDistanceE_ptr - 0x35C46C
35C208:  DCD ScriptParams_ptr - 0x35C46E
35C20C:  DCD _ZN10CGameLogic17MaxPlayerDistanceE_ptr - 0x35C470
35C210:  DCD _ZN10CGameLogic20bLimitPlayerDistanceE_ptr - 0x35C488
35C214:  DCD ScriptParams_ptr - 0x35C4A4
35C218:  DCD _ZN10CGameLogic29bPlayersCannotTargetEachotherE_ptr - 0x35C4A6
35C21C:  DCFS -100.0
35C220:  LDR.W           R0, =(ScriptParams_ptr - 0x35C22A); jumptable 0035BFEE cases 1,2
35C224:  MOVS            R1, #1
35C226:  ADD             R0, PC; ScriptParams_ptr
35C228:  B.W             loc_35D374
35C22C:  MOV             R0, R11; jumptable 0035B120 case 1767
35C22E:  MOVS            R1, #2; __int16
35C230:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C234:  LDR.W           R0, =(ScriptParams_ptr - 0x35C23C)
35C238:  ADD             R0, PC; ScriptParams_ptr
35C23A:  LDR             R0, [R0]; ScriptParams
35C23C:  LDR             R1, [R0]
35C23E:  CMP             R1, #0
35C240:  BLT.W           loc_35CCB6
35C244:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C250)
35C248:  UXTB            R3, R1
35C24A:  LSRS            R1, R1, #8
35C24C:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35C24E:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35C250:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35C252:  LDR             R2, [R0,#4]
35C254:  LDRB            R2, [R2,R1]
35C256:  CMP             R2, R3
35C258:  BNE.W           loc_35CCB6
35C25C:  MOVW            R2, #0xA2C
35C260:  LDR             R0, [R0]
35C262:  MLA.W           R0, R1, R2, R0
35C266:  B.W             loc_35CCB8
35C26A:  MOV             R0, R11; jumptable 0035B120 case 1768
35C26C:  MOVS            R1, #2; __int16
35C26E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C272:  LDR.W           R0, =(ScriptParams_ptr - 0x35C27A)
35C276:  ADD             R0, PC; ScriptParams_ptr
35C278:  LDR             R0, [R0]; ScriptParams
35C27A:  LDR             R1, [R0]
35C27C:  CMP             R1, #0
35C27E:  BLT.W           loc_35CCEC
35C282:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C28E)
35C286:  UXTB            R3, R1
35C288:  LSRS            R1, R1, #8
35C28A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35C28C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35C28E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35C290:  LDR             R2, [R0,#4]
35C292:  LDRB            R2, [R2,R1]
35C294:  CMP             R2, R3
35C296:  BNE.W           loc_35CCEC
35C29A:  MOVW            R2, #0xA2C
35C29E:  LDR             R0, [R0]
35C2A0:  MLA.W           R0, R1, R2, R0
35C2A4:  B.W             loc_35CCEE
35C2A8:  MOV             R0, R11; jumptable 0035B120 case 1769
35C2AA:  MOVS            R1, #1; __int16
35C2AC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C2B0:  LDR.W           R0, =(ScriptParams_ptr - 0x35C2B8)
35C2B4:  ADD             R0, PC; ScriptParams_ptr
35C2B6:  LDR             R0, [R0]; ScriptParams
35C2B8:  LDR             R0, [R0]
35C2BA:  CMP.W           R0, #0xFFFFFFFF
35C2BE:  BGT             loc_35C2D4
35C2C0:  LDR.W           R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x35C2CA)
35C2C4:  NEGS            R0, R0
35C2C6:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
35C2C8:  RSB.W           R0, R0, R0,LSL#3
35C2CC:  LDR             R1, [R1]; CTheScripts::UsedObjectArray ...
35C2CE:  ADD.W           R0, R1, R0,LSL#2
35C2D2:  LDR             R0, [R0,#0x18]; this
35C2D4:  MOVS            R1, #0xC; int
35C2D6:  BLX             j__ZN10CStreaming21RequestVehicleUpgradeEii; CStreaming::RequestVehicleUpgrade(int,int)
35C2DA:  B.W             loc_35D380
35C2DE:  MOV             R0, R11; jumptable 0035B120 case 1770
35C2E0:  MOVS            R1, #1; __int16
35C2E2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C2E6:  LDR.W           R0, =(ScriptParams_ptr - 0x35C2EE)
35C2EA:  ADD             R0, PC; ScriptParams_ptr
35C2EC:  LDR             R0, [R0]; ScriptParams
35C2EE:  LDR             R0, [R0]
35C2F0:  CMP.W           R0, #0xFFFFFFFF
35C2F4:  BGT             loc_35C30A
35C2F6:  LDR.W           R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x35C300)
35C2FA:  NEGS            R0, R0
35C2FC:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
35C2FE:  RSB.W           R0, R0, R0,LSL#3
35C302:  LDR             R1, [R1]; int
35C304:  ADD.W           R0, R1, R0,LSL#2
35C308:  LDR             R0, [R0,#0x18]; this
35C30A:  BLX             j__ZN10CStreaming23HasVehicleUpgradeLoadedEi; CStreaming::HasVehicleUpgradeLoaded(int)
35C30E:  B.W             loc_35CF5C
35C312:  MOV             R0, R11; jumptable 0035B120 case 1771
35C314:  MOVS            R1, #1; __int16
35C316:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C31A:  LDR.W           R0, =(ScriptParams_ptr - 0x35C322)
35C31E:  ADD             R0, PC; ScriptParams_ptr
35C320:  LDR             R0, [R0]; ScriptParams
35C322:  LDR             R4, [R0]
35C324:  CMP.W           R4, #0xFFFFFFFF
35C328:  BGT             loc_35C33E
35C32A:  LDR.W           R0, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x35C334)
35C32E:  NEGS            R1, R4
35C330:  ADD             R0, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
35C332:  RSB.W           R1, R1, R1,LSL#3; int
35C336:  LDR             R0, [R0]; CTheScripts::UsedObjectArray ...
35C338:  ADD.W           R0, R0, R1,LSL#2
35C33C:  LDR             R4, [R0,#0x18]
35C33E:  MOV             R0, R4; this
35C340:  BLX             j__ZN10CStreaming28SetMissionDoesntRequireModelEi; CStreaming::SetMissionDoesntRequireModel(int)
35C344:  LDR.W           R0, =(_ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr - 0x35C34E)
35C348:  SXTH            R1, R4; __int16
35C34A:  ADD             R0, PC; _ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr
35C34C:  LDR             R0, [R0]; this
35C34E:  BLX             j__ZNK17CVehicleModelInfo18CLinkedUpgradeList16FindOtherUpgradeEs; CVehicleModelInfo::CLinkedUpgradeList::FindOtherUpgrade(short)
35C352:  ADDS            R1, R0, #1; int
35C354:  IT NE
35C356:  BLXNE           j__ZN10CStreaming28SetMissionDoesntRequireModelEi; CStreaming::SetMissionDoesntRequireModel(int)
35C35A:  B.W             loc_35D380
35C35E:  MOV             R0, R11; jumptable 0035B120 case 1772
35C360:  MOVS            R1, #1; __int16
35C362:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C366:  LDR.W           R0, =(ScriptParams_ptr - 0x35C376)
35C36A:  MOVW            R2, #0xA2C
35C36E:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C378)
35C372:  ADD             R0, PC; ScriptParams_ptr
35C374:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35C376:  LDR             R5, [R0]; ScriptParams
35C378:  LDR             R0, [R1]; CPools::ms_pVehiclePool ...
35C37A:  LDR             R1, [R5]
35C37C:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35C37E:  LSRS            R1, R1, #8
35C380:  LDR             R0, [R0]
35C382:  MLA.W           R0, R1, R2, R0
35C386:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x35C38E)
35C38A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
35C38C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
35C38E:  LDRSH.W         R0, [R0,#0x26]
35C392:  LDR.W           R0, [R1,R0,LSL#2]; this
35C396:  BLX             j__ZN17CVehicleModelInfo12GetNumRemapsEv; CVehicleModelInfo::GetNumRemaps(void)
35C39A:  STR             R0, [R5]
35C39C:  B.W             def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35C3A0:  MOV             R0, R11; jumptable 0035B120 case 1773
35C3A2:  MOVS            R1, #2; __int16
35C3A4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C3A8:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C3B4)
35C3AC:  LDR.W           R0, =(ScriptParams_ptr - 0x35C3B6)
35C3B0:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35C3B2:  ADD             R0, PC; ScriptParams_ptr
35C3B4:  LDR             R2, [R1]; CPools::ms_pVehiclePool ...
35C3B6:  LDR             R0, [R0]; ScriptParams
35C3B8:  LDRD.W          R3, R1, [R0]; int
35C3BC:  LDR             R0, [R2]; CPools::ms_pVehiclePool
35C3BE:  LSRS            R2, R3, #8
35C3C0:  MOVW            R3, #0xA2C
35C3C4:  LDR             R0, [R0]
35C3C6:  MLA.W           R0, R2, R3, R0; this
35C3CA:  BLX             j__ZN8CVehicle8SetRemapEi; CVehicle::SetRemap(int)
35C3CE:  B.W             loc_35D380
35C3D2:  MOV             R0, R11; jumptable 0035B120 case 1775
35C3D4:  MOVS            R1, #2; __int16
35C3D6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C3DA:  LDR.W           R0, =(ScriptParams_ptr - 0x35C3E2)
35C3DE:  ADD             R0, PC; ScriptParams_ptr
35C3E0:  LDR             R0, [R0]; ScriptParams
35C3E2:  LDR             R1, [R0]
35C3E4:  CMP             R1, #0
35C3E6:  BLT.W           loc_35CD18
35C3EA:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35C3F6)
35C3EE:  UXTB            R3, R1
35C3F0:  LSRS            R1, R1, #8
35C3F2:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
35C3F4:  LDR             R0, [R0]; CPools::ms_pPedPool ...
35C3F6:  LDR             R0, [R0]; CPools::ms_pPedPool
35C3F8:  LDR             R2, [R0,#4]
35C3FA:  LDRB            R2, [R2,R1]
35C3FC:  CMP             R2, R3
35C3FE:  BNE.W           loc_35CD18
35C402:  MOVW            R2, #0x7CC
35C406:  LDR             R0, [R0]
35C408:  MLA.W           R5, R1, R2, R0
35C40C:  B.W             loc_35CD1A
35C410:  MOV             R0, R11; jumptable 0035B120 case 1776
35C412:  MOVS            R1, #2; __int16
35C414:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C418:  LDR.W           R0, =(ScriptParams_ptr - 0x35C422)
35C41C:  MOVS            R1, #8; int
35C41E:  ADD             R0, PC; ScriptParams_ptr
35C420:  LDR             R0, [R0]; ScriptParams
35C422:  LDR             R0, [R0]; this
35C424:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35C428:  CMP             R0, #7
35C42A:  BHI.W           loc_35D380
35C42E:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x35C440)
35C432:  MOV.W           R3, #0x2D4
35C436:  LDR.W           R2, =(ScriptParams_ptr - 0x35C442)
35C43A:  MOVS            R6, #0
35C43C:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
35C43E:  ADD             R2, PC; ScriptParams_ptr
35C440:  LDR             R1, [R1]; CPedGroups::ms_groups ...
35C442:  MLA.W           R0, R0, R3, R1
35C446:  LDR             R1, [R2]; ScriptParams
35C448:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
35C44A:  STR             R1, [R0,#0x2C]
35C44C:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35C450:  MOV             R0, R11; jumptable 0035B120 case 1777
35C452:  MOVS            R1, #1; __int16
35C454:  MOVS            R5, #1
35C456:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C45A:  LDR.W           R0, =(_ZN10CGameLogic20bLimitPlayerDistanceE_ptr - 0x35C46C)
35C45E:  MOVS            R6, #0
35C460:  LDR.W           R1, =(ScriptParams_ptr - 0x35C46E)
35C464:  LDR.W           R2, =(_ZN10CGameLogic17MaxPlayerDistanceE_ptr - 0x35C470)
35C468:  ADD             R0, PC; _ZN10CGameLogic20bLimitPlayerDistanceE_ptr
35C46A:  ADD             R1, PC; ScriptParams_ptr
35C46C:  ADD             R2, PC; _ZN10CGameLogic17MaxPlayerDistanceE_ptr
35C46E:  LDR             R0, [R0]; CGameLogic::bLimitPlayerDistance ...
35C470:  LDR             R1, [R1]; ScriptParams
35C472:  LDR             R2, [R2]; CGameLogic::MaxPlayerDistance ...
35C474:  STRB            R5, [R0]; CGameLogic::bLimitPlayerDistance
35C476:  LDR             R0, [R1]
35C478:  STR             R0, [R2]; CGameLogic::MaxPlayerDistance
35C47A:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35C47E:  LDR.W           R0, =(_ZN10CGameLogic20bLimitPlayerDistanceE_ptr - 0x35C488); jumptable 0035B120 case 1778
35C482:  MOVS            R6, #0
35C484:  ADD             R0, PC; _ZN10CGameLogic20bLimitPlayerDistanceE_ptr
35C486:  LDR             R0, [R0]; CGameLogic::bLimitPlayerDistance ...
35C488:  STRB            R6, [R0]; CGameLogic::bLimitPlayerDistance
35C48A:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35C48E:  MOV             R0, R11; jumptable 0035B120 case 1779
35C490:  MOVS            R1, #1; __int16
35C492:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C496:  LDR.W           R0, =(ScriptParams_ptr - 0x35C4A4)
35C49A:  MOVS            R6, #0
35C49C:  LDR.W           R1, =(_ZN10CGameLogic29bPlayersCannotTargetEachotherE_ptr - 0x35C4A6)
35C4A0:  ADD             R0, PC; ScriptParams_ptr
35C4A2:  ADD             R1, PC; _ZN10CGameLogic29bPlayersCannotTargetEachotherE_ptr
35C4A4:  LDR             R0, [R0]; ScriptParams
35C4A6:  LDR             R1, [R1]; CGameLogic::bPlayersCannotTargetEachother ...
35C4A8:  LDR             R0, [R0]
35C4AA:  CMP             R0, #0
35C4AC:  MOV.W           R0, #0
35C4B0:  IT EQ
35C4B2:  MOVEQ           R0, #1
35C4B4:  STRB            R0, [R1]; CGameLogic::bPlayersCannotTargetEachother
35C4B6:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35C4BA:  MOV             R0, R11; jumptable 0035B120 case 1781
35C4BC:  MOVS            R1, #1; __int16
35C4BE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C4C2:  LDR.W           R0, =(ScriptParams_ptr - 0x35C4CC)
35C4C6:  MOVS            R1, #5; int
35C4C8:  ADD             R0, PC; ScriptParams_ptr
35C4CA:  LDR             R0, [R0]; ScriptParams
35C4CC:  LDR             R0, [R0]; this
35C4CE:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35C4D2:  CMP             R0, #0x3B ; ';'
35C4D4:  BHI.W           loc_35D01A
35C4D8:  LDR.W           R1, =(gFireManager_ptr - 0x35C4E0)
35C4DC:  ADD             R1, PC; gFireManager_ptr
35C4DE:  LDR             R2, [R1]; gFireManager
35C4E0:  SXTH            R1, R0; __int16
35C4E2:  MOV             R0, R2; this
35C4E4:  BLX             j__ZN12CFireManager19GetScriptFireCoordsEs; CFireManager::GetScriptFireCoords(short)
35C4E8:  LDR.W           R1, =(ScriptParams_ptr - 0x35C4F4)
35C4EC:  VLDR            D16, [R0]
35C4F0:  ADD             R1, PC; ScriptParams_ptr
35C4F2:  LDR             R0, [R0,#8]
35C4F4:  VSTR            D16, [SP,#0x1A8+var_150]
35C4F8:  LDR             R1, [R1]; ScriptParams
35C4FA:  LDRD.W          R2, R3, [SP,#0x1A8+var_150]
35C4FE:  STRD.W          R2, R3, [R1]
35C502:  STR             R0, [SP,#0x1A8+var_148]
35C504:  B.W             loc_35D028
35C508:  MOV             R0, R11; jumptable 0035B120 case 1784
35C50A:  MOVS            R1, #4; __int16
35C50C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C510:  LDR.W           R0, =(ScriptParams_ptr - 0x35C51C)
35C514:  VLDR            S2, =-100.0
35C518:  ADD             R0, PC; ScriptParams_ptr
35C51A:  LDR             R0, [R0]; ScriptParams
35C51C:  VLDR            S0, [R0,#8]
35C520:  VLDR            S16, [R0]
35C524:  VCMPE.F32       S0, S2
35C528:  VLDR            S18, [R0,#4]
35C52C:  VMRS            APSR_nzcv, FPSCR
35C530:  BGT             loc_35C542
35C532:  VMOV            R0, S16; this
35C536:  VMOV            R1, S18; float
35C53A:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
35C53E:  VMOV            S0, R0
35C542:  VMOV            R1, S16; int
35C546:  LDR.W           R0, =(ScriptParams_ptr - 0x35C55A)
35C54A:  VMOV            R2, S18; int
35C54E:  LDR.W           R6, =(ThePaths_ptr - 0x35C55C)
35C552:  VMOV            R3, S0; int
35C556:  ADD             R0, PC; ScriptParams_ptr
35C558:  ADD             R6, PC; ThePaths_ptr
35C55A:  MOVW            LR, #0x23FE
35C55E:  LDR             R0, [R0]; ScriptParams
35C560:  MOVS            R5, #0
35C562:  LDR             R6, [R6]; ThePaths
35C564:  MOV.W           R12, #1
35C568:  MOVT            LR, #0x4974
35C56C:  LDR             R0, [R0,#(dword_81A914 - 0x81A908)]
35C56E:  STRD.W          R5, LR, [SP,#0x1A8+var_1A8]; int
35C572:  SUBS            R0, #1
35C574:  STRD.W          R5, R12, [SP,#0x1A8+var_1A0]; int
35C578:  STRD.W          R0, R5, [SP,#0x1A8+var_198]; int
35C57C:  MOV             R0, R6; int
35C57E:  STRD.W          R5, R5, [SP,#0x1A8+var_190]; int
35C582:  BLX             j__ZN9CPathFind25FindNthNodeClosestToCoorsE7CVectorhfbbibbP12CNodeAddress; CPathFind::FindNthNodeClosestToCoors(CVector,uchar,float,bool,bool,int,bool,bool,CNodeAddress *)
35C586:  MOV             R8, R0
35C588:  ADD             R0, SP, #0x1A8+var_144
35C58A:  ADD             R3, SP, #0x1A8+var_150
35C58C:  MOV             R1, R6
35C58E:  MOV             R2, R8
35C590:  BLX             j__ZN9CPathFind22FindNodeCoorsForScriptE12CNodeAddressPb; CPathFind::FindNodeCoorsForScript(CNodeAddress,bool *)
35C594:  LDRB.W          R0, [SP,#0x1A8+var_150]
35C598:  CMP             R0, #0
35C59A:  BEQ.W           loc_35D0D2
35C59E:  LDR.W           R0, =(ScriptParams_ptr - 0x35C5AA)
35C5A2:  LDR.W           R1, =(ThePaths_ptr - 0x35C5B0)
35C5A6:  ADD             R0, PC; ScriptParams_ptr
35C5A8:  LDRD.W          R3, R6, [SP,#0x1A8+var_144]
35C5AC:  ADD             R1, PC; ThePaths_ptr
35C5AE:  LDR             R5, [SP,#0x1A8+var_13C]
35C5B0:  LDR             R2, [R0]; ScriptParams
35C5B2:  LDR             R0, [R1]; ThePaths
35C5B4:  MOV             R1, R8
35C5B6:  STRD.W          R3, R6, [R2]
35C5BA:  STR             R5, [R2,#(dword_81A910 - 0x81A908)]
35C5BC:  BLX             j__ZN9CPathFind34FindNodeOrientationForCarPlacementE12CNodeAddress; CPathFind::FindNodeOrientationForCarPlacement(CNodeAddress)
35C5C0:  MOV             R5, R0
35C5C2:  MOVS            R6, #1
35C5C4:  B.W             loc_35D0E0
35C5C8:  MOV             R0, R11; jumptable 0035B120 case 1786
35C5CA:  MOVS            R1, #1; __int16
35C5CC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C5D0:  LDR.W           R0, =(ScriptParams_ptr - 0x35C5DC)
35C5D4:  LDR.W           R1, =(_ZN10CGameLogic27bPlayersCanBeInSeparateCarsE_ptr - 0x35C5DE)
35C5D8:  ADD             R0, PC; ScriptParams_ptr
35C5DA:  ADD             R1, PC; _ZN10CGameLogic27bPlayersCanBeInSeparateCarsE_ptr
35C5DC:  LDR             R0, [R0]; ScriptParams
35C5DE:  MOVS            R6, #0
35C5E0:  LDR             R1, [R1]; CCarCtrl::bAllowEmergencyServicesToBeCreated
35C5E2:  LDR             R0, [R0]
35C5E4:  CMP             R0, #0
35C5E6:  IT NE
35C5E8:  MOVNE           R0, #1
35C5EA:  STRB            R0, [R1]; CCarCtrl::bAllowEmergencyServicesToBeCreated
35C5EC:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35C5F0:  MOV             R0, R11; jumptable 0035B120 case 1788
35C5F2:  MOVS            R1, #1; __int16
35C5F4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C5F8:  LDR.W           R0, =(ScriptParams_ptr - 0x35C604)
35C5FC:  LDR.W           R2, =(_ZN11CTheScripts9StuckCarsE_ptr - 0x35C606)
35C600:  ADD             R0, PC; ScriptParams_ptr
35C602:  ADD             R2, PC; _ZN11CTheScripts9StuckCarsE_ptr
35C604:  LDR             R0, [R0]; ScriptParams
35C606:  LDR             R1, [R0]; int
35C608:  LDR             R0, [R2]; this
35C60A:  BLX             j__ZN14CStuckCarCheck20IsCarInStuckCarArrayEi; CStuckCarCheck::IsCarInStuckCarArray(int)
35C60E:  B.W             loc_35D268
35C612:  MOV             R0, R11; jumptable 0035B120 case 1789
35C614:  MOVS            R1, #2; __int16
35C616:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C61A:  LDR.W           R0, =(ScriptParams_ptr - 0x35C622)
35C61E:  ADD             R0, PC; ScriptParams_ptr
35C620:  LDR             R0, [R0]; ScriptParams
35C622:  LDR             R1, [R0]
35C624:  CMP             R1, #0
35C626:  BLT.W           loc_35CD4A
35C62A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C636)
35C62E:  UXTB            R3, R1
35C630:  LSRS            R1, R1, #8
35C632:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35C634:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35C636:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35C638:  LDR             R2, [R0,#4]
35C63A:  LDRB            R2, [R2,R1]
35C63C:  CMP             R2, R3
35C63E:  BNE.W           loc_35CD4A
35C642:  MOVW            R2, #0xA2C
35C646:  LDR             R0, [R0]
35C648:  MLA.W           R0, R1, R2, R0
35C64C:  B               loc_35CD4C
35C64E:  MOV             R0, R11; jumptable 0035B120 case 1791
35C650:  MOVS            R1, #2; __int16
35C652:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C656:  LDR.W           R0, =(ScriptParams_ptr - 0x35C662)
35C65A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35C664)
35C65E:  ADD             R0, PC; ScriptParams_ptr
35C660:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
35C662:  LDR             R0, [R0]; ScriptParams
35C664:  LDR             R2, [R1]; CPools::ms_pPedPool ...
35C666:  LDR             R1, [R0]
35C668:  LDR             R0, [R2]; CPools::ms_pPedPool
35C66A:  CMP             R1, #0
35C66C:  BLT.W           loc_35CD5C
35C670:  LDR             R2, [R0,#4]
35C672:  UXTB            R3, R1
35C674:  LSRS            R1, R1, #8
35C676:  LDRB            R2, [R2,R1]
35C678:  CMP             R2, R3
35C67A:  BNE.W           loc_35CD5C
35C67E:  MOVW            R2, #0x7CC
35C682:  LDR             R3, [R0]
35C684:  MLA.W           R3, R1, R2, R3
35C688:  B               loc_35CD5E
35C68A:  MOVS            R6, #0; jumptable 0035B120 case 1793
35C68C:  STR.W           R6, [R11,#0xF8]
35C690:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35C694:  MOV             R0, R11; jumptable 0035B120 case 1794
35C696:  MOVS            R1, #4; __int16
35C698:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C69C:  LDR.W           R0, =(ScriptParams_ptr - 0x35C6A4)
35C6A0:  ADD             R0, PC; ScriptParams_ptr
35C6A2:  LDR             R4, [R0]; ScriptParams
35C6A4:  ADD             R0, SP, #0x1A8+var_178
35C6A6:  VLDR            S0, [R4]
35C6AA:  VLDR            S4, [R4,#8]
35C6AE:  VLDR            S2, [R4,#4]
35C6B2:  VLDR            S6, [R4,#0xC]
35C6B6:  VMAX.F32        D4, D0, D2
35C6BA:  VMIN.F32        D0, D0, D2
35C6BE:  VMIN.F32        D5, D1, D3
35C6C2:  VMAX.F32        D1, D1, D3
35C6C6:  VSTR            S0, [SP,#0x1A8+var_178]
35C6CA:  VSTR            S2, [SP,#0x1A8+var_174]
35C6CE:  VSTR            S8, [SP,#0x1A8+var_170]
35C6D2:  VSTR            S10, [SP,#0x1A8+var_16C]
35C6D6:  BLX             j__ZN11CTagManager25GetPercentageTaggedInAreaER5CRect; CTagManager::GetPercentageTaggedInArea(CRect &)
35C6DA:  STR             R0, [R4]
35C6DC:  B.W             def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35C6E0:  MOV             R0, R11; jumptable 0035B120 case 1795
35C6E2:  MOVS            R1, #5; __int16
35C6E4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C6E8:  LDR.W           R0, =(ScriptParams_ptr - 0x35C6F0)
35C6EC:  ADD             R0, PC; ScriptParams_ptr
35C6EE:  LDR             R0, [R0]; ScriptParams
35C6F0:  VLDR            S0, [R0]
35C6F4:  VLDR            S4, [R0,#8]
35C6F8:  VLDR            S2, [R0,#4]
35C6FC:  VLDR            S6, [R0,#0xC]
35C700:  VMAX.F32        D5, D0, D2
35C704:  VMIN.F32        D0, D0, D2
35C708:  LDR             R0, [R0,#(dword_81A918 - 0x81A908)]
35C70A:  VMIN.F32        D4, D1, D3
35C70E:  VMAX.F32        D1, D1, D3
35C712:  CMP             R0, #0
35C714:  VSTR            S0, [SP,#0x1A8+var_178]
35C718:  VSTR            S2, [SP,#0x1A8+var_174]
35C71C:  VSTR            S10, [SP,#0x1A8+var_170]
35C720:  VSTR            S8, [SP,#0x1A8+var_16C]
35C724:  BEQ.W           loc_35D0F6
35C728:  ADD             R0, SP, #0x1A8+var_178
35C72A:  MOVS            R1, #0xFF
35C72C:  BLX             j__ZN11CTagManager14SetAlphaInAreaER5CRecth; CTagManager::SetAlphaInArea(CRect &,uchar)
35C730:  B.W             loc_35D380
35C734:  MOV             R0, R11; jumptable 0035B120 case 1797
35C736:  MOVS            R1, #2; __int16
35C738:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C73C:  LDR.W           R0, =(ScriptParams_ptr - 0x35C744)
35C740:  ADD             R0, PC; ScriptParams_ptr
35C742:  LDR             R0, [R0]; ScriptParams
35C744:  LDR             R1, [R0]
35C746:  CMP             R1, #0
35C748:  BLT.W           loc_35CE12
35C74C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C758)
35C750:  UXTB            R3, R1
35C752:  LSRS            R1, R1, #8
35C754:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35C756:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35C758:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35C75A:  LDR             R2, [R0,#4]
35C75C:  LDRB            R2, [R2,R1]
35C75E:  CMP             R2, R3
35C760:  BNE.W           loc_35CE12
35C764:  MOVW            R2, #0xA2C
35C768:  LDR             R0, [R0]
35C76A:  MLA.W           R0, R1, R2, R0
35C76E:  B               loc_35CE14
35C770:  MOV             R0, R11; jumptable 0035B120 case 1798
35C772:  MOVS            R1, #2; __int16
35C774:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C778:  LDR.W           R0, =(ScriptParams_ptr - 0x35C780)
35C77C:  ADD             R0, PC; ScriptParams_ptr
35C77E:  LDR             R0, [R0]; ScriptParams
35C780:  LDR             R1, [R0]
35C782:  CMP             R1, #0
35C784:  BLT.W           loc_35CE2A
35C788:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C794)
35C78C:  UXTB            R3, R1
35C78E:  LSRS            R1, R1, #8
35C790:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35C792:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35C794:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35C796:  LDR             R2, [R0,#4]
35C798:  LDRB            R2, [R2,R1]
35C79A:  CMP             R2, R3
35C79C:  BNE.W           loc_35CE2A
35C7A0:  MOVW            R2, #0xA2C
35C7A4:  LDR             R0, [R0]
35C7A6:  MLA.W           R0, R1, R2, R0
35C7AA:  B               loc_35CE2C
35C7AC:  MOV             R0, R11; jumptable 0035B120 case 1799
35C7AE:  MOVS            R1, #1; __int16
35C7B0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C7B4:  LDR.W           R0, =(ScriptParams_ptr - 0x35C7BE)
35C7B8:  MOVS            R6, #0
35C7BA:  ADD             R0, PC; ScriptParams_ptr
35C7BC:  LDR             R0, [R0]; ScriptParams
35C7BE:  LDR             R0, [R0]
35C7C0:  STR.W           R0, [R11,#0xF8]
35C7C4:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35C7C8:  MOVS            R6, #0xFF; jumptable 0035B120 default case, cases 1720,1740,1741,1747,1748
35C7CA:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35C7CE:  MOV             R0, R11; jumptable 0035B120 case 1757
35C7D0:  MOVS            R1, #2; __int16
35C7D2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C7D6:  LDR.W           R0, =(ScriptParams_ptr - 0x35C7DE)
35C7DA:  ADD             R0, PC; ScriptParams_ptr
35C7DC:  LDR             R0, [R0]; ScriptParams
35C7DE:  LDR             R1, [R0]
35C7E0:  CMP             R1, #0
35C7E2:  BLT.W           loc_35CF0E
35C7E6:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C7F2)
35C7EA:  UXTB            R3, R1
35C7EC:  LSRS            R1, R1, #8
35C7EE:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35C7F0:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35C7F2:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35C7F4:  LDR             R2, [R0,#4]
35C7F6:  LDRB            R2, [R2,R1]
35C7F8:  CMP             R2, R3
35C7FA:  BNE.W           loc_35CF0E
35C7FE:  MOVW            R2, #0xA2C
35C802:  LDR             R0, [R0]
35C804:  MLA.W           R0, R1, R2, R0
35C808:  B               loc_35CF10
35C80A:  MOV             R0, R11; jumptable 0035B120 case 1774
35C80C:  MOVS            R1, #2; __int16
35C80E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C812:  LDR.W           R0, =(ScriptParams_ptr - 0x35C81A)
35C816:  ADD             R0, PC; ScriptParams_ptr
35C818:  LDR             R0, [R0]; ScriptParams
35C81A:  LDR             R1, [R0]
35C81C:  CMP             R1, #0
35C81E:  BLT.W           loc_35CF22
35C822:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x35C82E)
35C826:  UXTB            R3, R1
35C828:  LSRS            R1, R1, #8
35C82A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
35C82C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
35C82E:  LDR             R0, [R0]; CPools::ms_pPedPool
35C830:  LDR             R2, [R0,#4]
35C832:  LDRB            R2, [R2,R1]
35C834:  CMP             R2, R3
35C836:  BNE.W           loc_35CF22
35C83A:  MOVW            R2, #0x7CC
35C83E:  LDR             R0, [R0]
35C840:  MLA.W           R5, R1, R2, R0
35C844:  B               loc_35CF24
35C846:  MOV             R0, R11; jumptable 0035B120 case 1796
35C848:  MOVS            R1, #4; __int16
35C84A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
35C84E:  LDR.W           R0, =(ScriptParams_ptr - 0x35C856)
35C852:  ADD             R0, PC; ScriptParams_ptr
35C854:  LDR             R0, [R0]; ScriptParams
35C856:  LDR             R1, [R0]
35C858:  CMP             R1, #0
35C85A:  BLT.W           loc_35CF64
35C85E:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C86A)
35C862:  UXTB            R3, R1
35C864:  LSRS            R1, R1, #8
35C866:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35C868:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
35C86A:  LDR             R0, [R0]; CPools::ms_pVehiclePool
35C86C:  LDR             R2, [R0,#4]
35C86E:  LDRB            R2, [R2,R1]
35C870:  CMP             R2, R3
35C872:  BNE.W           loc_35CF64
35C876:  MOVW            R2, #0xA2C
35C87A:  LDR             R0, [R0]
35C87C:  MLA.W           R4, R1, R2, R0
35C880:  B               loc_35CF66
35C882:  MOV.W           R9, #0
35C886:  LDR.W           R0, =(ScriptParams_ptr - 0x35C88E)
35C88A:  ADD             R0, PC; ScriptParams_ptr
35C88C:  LDR             R0, [R0]; ScriptParams
35C88E:  LDRD.W          R10, R6, [R0,#(dword_81A910 - 0x81A908)]
35C892:  MOVS            R0, #dword_68; this
35C894:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35C898:  MOV             R1, R9; CVehicle *
35C89A:  MOV             R2, R10; int
35C89C:  MOV             R3, R6; int
35C89E:  MOV             R5, R0
35C8A0:  BLX             j__ZN27CTaskSimpleCarSetTempActionC2EP8CVehicleii; CTaskSimpleCarSetTempAction::CTaskSimpleCarSetTempAction(CVehicle *,int,int)
35C8A4:  MOV             R0, R11
35C8A6:  MOV             R1, R8
35C8A8:  MOV             R2, R5
35C8AA:  MOVW            R3, #0x6C7
35C8AE:  B.W             loc_35D17E
35C8B2:  MOVS            R0, #0; int
35C8B4:  LDR.W           R1, =(ScriptParams_ptr - 0x35C8BC)
35C8B8:  ADD             R1, PC; ScriptParams_ptr
35C8BA:  LDR             R1, [R1]; ScriptParams
35C8BC:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
35C8BE:  CMP             R2, #0
35C8C0:  BLT.W           loc_35CE3C
35C8C4:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35C8D0)
35C8C8:  UXTB            R6, R2
35C8CA:  LSRS            R2, R2, #8
35C8CC:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35C8CE:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35C8D0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35C8D2:  LDR             R3, [R1,#4]
35C8D4:  LDRB            R3, [R3,R2]
35C8D6:  CMP             R3, R6
35C8D8:  BNE.W           loc_35CE3C
35C8DC:  MOVW            R3, #0xA2C
35C8E0:  LDR             R1, [R1]
35C8E2:  MLA.W           R1, R2, R3, R1
35C8E6:  B               loc_35CE3E
35C8E8:  MOV.W           R10, #0
35C8EC:  MOVS            R0, #dword_54; this
35C8EE:  VDIV.F32        S16, S0, S2
35C8F2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35C8F6:  MOV             R5, R0
35C8F8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
35C8FC:  LDR.W           R0, =(_ZTV22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE_ptr - 0x35C90A)
35C900:  MOV             R1, R5
35C902:  CMP.W           R4, #0xFFFFFFFF
35C906:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE_ptr
35C908:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorRadiusAngleOffset> ...
35C90A:  ADD.W           R0, R0, #8
35C90E:  STR.W           R0, [R1],#0xC; CEntity **
35C912:  ADR.W           R0, dword_35D3C0
35C916:  VLD1.64         {D16-D17}, [R0@128]
35C91A:  STR.W           R10, [R1]
35C91E:  BLE.W           loc_35D102
35C922:  LDR.W           R0, =(_ZTV41CEntitySeekPosCalculatorRadiusAngleOffset_ptr - 0x35C932)
35C926:  MOVS            R2, #0
35C928:  MOV             R6, R5
35C92A:  MOV.W           R3, #0x3E8
35C92E:  ADD             R0, PC; _ZTV41CEntitySeekPosCalculatorRadiusAngleOffset_ptr
35C930:  STR.W           R2, [R6,#0x44]!
35C934:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorRadiusAngleOffset ...
35C936:  STRD.W          R4, R3, [R6,#-0x34]
35C93A:  STRH.W          R2, [R6,#-0x14]
35C93E:  STRH.W          R2, [R6,#-8]
35C942:  STRD.W          R2, R2, [R6,#-0x1C]
35C946:  STRD.W          R2, R2, [R6,#-0x10]
35C94A:  STR             R2, [R6,#4]
35C94C:  SUB.W           R2, R6, #0x2C ; ','
35C950:  VST1.32         {D16-D17}, [R2]
35C954:  B.W             loc_35D13A
35C958:  MOVS            R4, #0
35C95A:  LDR.W           R0, =(ScriptParams_ptr - 0x35C962)
35C95E:  ADD             R0, PC; ScriptParams_ptr
35C960:  LDR             R0, [R0]; ScriptParams
35C962:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
35C964:  CMP             R0, #0
35C966:  BEQ.W           loc_35D184
35C96A:  MOV             R0, R4; this
35C96C:  BLX             j__ZN4CPed31RemoveWeaponForScriptedCutsceneEv; CPed::RemoveWeaponForScriptedCutscene(void)
35C970:  B.W             loc_35D380
35C974:  MOV.W           R8, #0
35C978:  LDR.W           R0, =(ScriptParams_ptr - 0x35C980)
35C97C:  ADD             R0, PC; ScriptParams_ptr
35C97E:  LDR             R1, [R0]; ScriptParams
35C980:  LDR             R0, [R1]; this
35C982:  LDR             R4, [R1,#(dword_81A910 - 0x81A908)]
35C984:  MOVS            R1, #2; int
35C986:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35C98A:  MOVS            R6, #0
35C98C:  CMP             R0, #0
35C98E:  BLT.W           loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35C992:  LDR.W           R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x35C99A)
35C996:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
35C998:  B               loc_35CA28
35C99A:  MOVS            R1, #0
35C99C:  LDR.W           R0, =(ScriptParams_ptr - 0x35C9A4)
35C9A0:  ADD             R0, PC; ScriptParams_ptr
35C9A2:  B.W             loc_35D260
35C9A6:  MOV.W           R9, #0
35C9AA:  LDR.W           R0, =(ScriptParams_ptr - 0x35C9B2)
35C9AE:  ADD             R0, PC; ScriptParams_ptr
35C9B0:  LDR             R0, [R0]; ScriptParams
35C9B2:  LDR.W           R10, [R0,#(dword_81A910 - 0x81A908)]
35C9B6:  MOVS            R0, #word_2C; this
35C9B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35C9BC:  MOV             R5, R0
35C9BE:  LDR.W           R0, =(_ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr - 0x35C9CC)
35C9C2:  MOV.W           R1, #0xFFFFFFFF
35C9C6:  MOVS            R3, #2
35C9C8:  ADD             R0, PC; _ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr
35C9CA:  STRD.W          R3, R1, [SP,#0x1A8+var_1A8]; int
35C9CE:  MOV             R1, R9; CVehicle *
35C9D0:  MOV             R3, R10; float
35C9D2:  LDR             R2, [R0]; CPointRoute *
35C9D4:  MOVS            R0, #0xBF800000
35C9DA:  STRD.W          R0, R6, [SP,#0x1A8+var_1A0]; float
35C9DE:  MOV             R0, R5; this
35C9E0:  BLX             j__ZN27CTaskComplexDrivePointRouteC2EP8CVehicleRK11CPointRoutefiifi; CTaskComplexDrivePointRoute::CTaskComplexDrivePointRoute(CVehicle *,CPointRoute const&,float,int,int,float,int)
35C9E4:  MOV             R0, R11; this
35C9E6:  MOV             R1, R8; int
35C9E8:  MOV             R2, R5; CTask *
35C9EA:  MOVW            R3, #0x6BB; int
35C9EE:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
35C9F2:  B.W             loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35C9F6:  MOVS            R0, #0; this
35C9F8:  BLX             j__ZN11CAutomobile10GetCarRollEv; CAutomobile::GetCarRoll(void)
35C9FC:  LDR.W           R1, =(ScriptParams_ptr - 0x35CA04)
35CA00:  ADD             R1, PC; ScriptParams_ptr
35CA02:  B               loc_35CCE6
35CA04:  MOV.W           R8, #0
35CA08:  LDR.W           R0, =(ScriptParams_ptr - 0x35CA10)
35CA0C:  ADD             R0, PC; ScriptParams_ptr
35CA0E:  LDR             R1, [R0]; ScriptParams
35CA10:  LDR             R0, [R1]; this
35CA12:  LDR             R4, [R1,#(dword_81A910 - 0x81A908)]
35CA14:  MOVS            R1, #2; int
35CA16:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35CA1A:  MOVS            R6, #0
35CA1C:  CMP             R0, #0
35CA1E:  BLT.W           loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35CA22:  LDR.W           R1, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x35CA2A)
35CA26:  ADD             R1, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
35CA28:  LDR             R1, [R1]; CTheScripts::ScriptSearchLightArray ...
35CA2A:  RSB.W           R0, R0, R0,LSL#5
35CA2E:  VMOV.I32        Q8, #0
35CA32:  ADD.W           R5, R1, R0,LSL#2
35CA36:  MOVS            R1, #0x83
35CA38:  LDR.W           R0, [R5,#0x48]!; this
35CA3C:  STRB.W          R1, [R5,#-0x45]
35CA40:  SUB.W           R1, R5, #0x20 ; ' '
35CA44:  CMP             R0, #0
35CA46:  STR.W           R6, [R5,#-0x10]
35CA4A:  STR.W           R6, [R5,#-0xC]
35CA4E:  STR.W           R4, [R5,#-8]
35CA52:  VST1.32         {D16-D17}, [R1]
35CA56:  ITT NE
35CA58:  MOVNE           R1, R5; CEntity **
35CA5A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
35CA5E:  MOV             R0, R8; this
35CA60:  MOV             R1, R5; CEntity **
35CA62:  STR.W           R8, [R5]
35CA66:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
35CA6A:  B.W             loc_35D380
35CA6E:  MOVS            R3, #0; float
35CA70:  LDR.W           R0, =(ScriptParams_ptr - 0x35CA78)
35CA74:  ADD             R0, PC; ScriptParams_ptr
35CA76:  LDR             R5, [R0]; ScriptParams
35CA78:  ADDS            R2, R5, #4
35CA7A:  VLDR            S0, [R5,#0x10]
35CA7E:  VLDR            S2, [R5,#0x14]
35CA82:  VLDR            S4, [R5,#0x18]
35CA86:  VLDR            S6, [R5,#0x1C]
35CA8A:  VLDR            S8, [R5,#0x20]
35CA8E:  LDM             R2, {R0-R2}; float
35CA90:  VSTR            S0, [SP,#0x1A8+var_1A8]
35CA94:  VSTR            S2, [SP,#0x1A8+var_1A4]
35CA98:  VSTR            S4, [SP,#0x1A8+var_1A0]
35CA9C:  VSTR            S6, [SP,#0x1A8+var_19C]
35CAA0:  VSTR            S8, [SP,#0x1A8+var_198]
35CAA4:  BLX             j__ZN11CTheScripts20AddScriptSearchLightEfffP7CEntityfffff; CTheScripts::AddScriptSearchLight(float,float,float,CEntity *,float,float,float,float,float)
35CAA8:  MOV             R1, R0
35CAAA:  STR             R1, [R5]
35CAAC:  LDRB.W          R0, [R11,#0xE6]
35CAB0:  CMP             R0, #0
35CAB2:  BEQ.W           def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35CAB6:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35CABE)
35CABA:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35CABC:  LDR             R0, [R0]; CTheScripts::MissionCleanUp ...
35CABE:  MOVS            R2, #0xB
35CAC0:  B.W             loc_35D2F8
35CAC4:  MOVS            R0, #0
35CAC6:  STR             R0, [SP,#0x1A8+var_188]
35CAC8:  LDR.W           R0, =(ScriptParams_ptr - 0x35CAD0)
35CACC:  ADD             R0, PC; ScriptParams_ptr
35CACE:  LDR             R6, [R0]; ScriptParams
35CAD0:  LDRD.W          R10, R4, [R6,#(dword_81A90C - 0x81A908)]
35CAD4:  LDR.W           R8, [R6,#(dword_81A914 - 0x81A908)]
35CAD8:  LDRD.W          R9, R0, [R6,#(dword_81A928 - 0x81A908)]
35CADC:  STR             R0, [SP,#0x1A8+var_180]
35CADE:  LDR             R0, [R6,#(dword_81A930 - 0x81A908)]
35CAE0:  STR             R0, [SP,#0x1A8+var_184]
35CAE2:  MOVS            R0, #dword_38; this
35CAE4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35CAE8:  LDR             R1, [R6,#(dword_81A918 - 0x81A908)]
35CAEA:  MOV             R5, R0
35CAEC:  STRD.W          R10, R4, [SP,#0x1A8+var_144]
35CAF0:  ADD             R2, SP, #0x1A8+var_144
35CAF2:  LDR             R0, [SP,#0x1A8+var_180]
35CAF4:  LDR             R3, [SP,#0x1A8+var_188]
35CAF6:  VSTR            S16, [SP,#0x1A8+var_19C]
35CAFA:  VSTR            S18, [SP,#0x1A8+var_198]
35CAFE:  STR.W           R9, [SP,#0x1A8+var_1A8]
35CB02:  STR             R0, [SP,#0x1A8+var_1A4]
35CB04:  LDR             R0, [SP,#0x1A8+var_184]
35CB06:  STR             R0, [SP,#0x1A8+var_1A0]
35CB08:  MOV             R0, R5
35CB0A:  STR.W           R8, [SP,#0x1A8+var_13C]
35CB0E:  BLX             j__ZN27CTaskComplexGoToPointAimingC2EiRK7CVectorP7CEntityS0_ff; CTaskComplexGoToPointAiming::CTaskComplexGoToPointAiming(int,CVector const&,CEntity *,CVector,float,float)
35CB12:  MOV             R0, R11
35CB14:  LDR             R1, [SP,#0x1A8+var_17C]
35CB16:  MOV             R2, R5
35CB18:  MOVW            R3, #0x6C2
35CB1C:  B               loc_35D17E
35CB1E:  MOVS            R0, #0; this
35CB20:  BLX             j__ZN17CVehicleRecording35SkipToEndAndStopPlaybackRecordedCarEP8CVehicle; CVehicleRecording::SkipToEndAndStopPlaybackRecordedCar(CVehicle *)
35CB24:  B.W             loc_35D380
35CB28:  MOVS            R4, #0
35CB2A:  MOV             R0, R4; this
35CB2C:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
35CB30:  MOV             R5, R0
35CB32:  CMP             R5, #0
35CB34:  BEQ.W           loc_35D380
35CB38:  ADD.W           R6, R5, #8
35CB3C:  MOV             R1, R4; CPed *
35CB3E:  MOV             R0, R6; this
35CB40:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
35CB44:  CMP             R0, #0
35CB46:  BNE.W           loc_35D380
35CB4A:  MOV             R0, R6; this
35CB4C:  MOV             R1, R4; CPed *
35CB4E:  BLX             j__ZN19CPedGroupMembership12RemoveMemberEP4CPed; CPedGroupMembership::RemoveMember(CPed *)
35CB52:  MOV             R0, R5; this
35CB54:  BLX             j__ZN9CPedGroup7ProcessEv; CPedGroup::Process(void)
35CB58:  B.W             loc_35D380
35CB5C:  MOVS            R1, #0; int
35CB5E:  LDR.W           R2, =(ScriptParams_ptr - 0x35CB66)
35CB62:  ADD             R2, PC; ScriptParams_ptr
35CB64:  LDR             R2, [R2]; ScriptParams
35CB66:  LDR             R2, [R2,#(dword_81A910 - 0x81A908)]
35CB68:  CMP             R2, #0
35CB6A:  BLT.W           loc_35CE84
35CB6E:  LDR             R3, [R0,#4]
35CB70:  UXTB            R6, R2
35CB72:  LSRS            R2, R2, #8
35CB74:  LDRB            R3, [R3,R2]
35CB76:  CMP             R3, R6
35CB78:  BNE.W           loc_35CE84
35CB7C:  MOV.W           R3, #0x1A4
35CB80:  LDR             R6, [R0]
35CB82:  MLA.W           R2, R2, R3, R6
35CB86:  B               loc_35CE86
35CB88:  MOVS            R0, #0
35CB8A:  LDR.W           R1, =(ScriptParams_ptr - 0x35CB94)
35CB8E:  STR             R0, [SP,#0x1A8+var_160]
35CB90:  ADD             R1, PC; ScriptParams_ptr
35CB92:  LDR             R1, [R1]; ScriptParams
35CB94:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
35CB96:  NOP
35CB98:  NOP
35CB9A:  B.W             loc_35D380
35CB9E:  MOVS            R0, #0; this
35CBA0:  STR             R0, [SP,#0x1A8+var_160]
35CBA2:  BLX             j__ZN6CTrain11FindCabooseEPS_; CTrain::FindCaboose(CTrain*)
35CBA6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35CBAE)
35CBAA:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35CBAC:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35CBAE:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35CBB0:  LDRD.W          R2, R1, [R1]
35CBB4:  SUBS            R0, R0, R2
35CBB6:  MOV             R2, #0xBFE6D523
35CBBE:  ASRS            R0, R0, #2
35CBC0:  MULS            R0, R2
35CBC2:  LDR.W           R2, =(ScriptParams_ptr - 0x35CBCA)
35CBC6:  ADD             R2, PC; ScriptParams_ptr
35CBC8:  LDR             R2, [R2]; ScriptParams
35CBCA:  LDRB            R1, [R1,R0]
35CBCC:  ORR.W           R0, R1, R0,LSL#8
35CBD0:  STR             R0, [R2]
35CBD2:  B               def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35CBD4:  MOV.W           R9, #0
35CBD8:  LDR.W           R0, =(ScriptParams_ptr - 0x35CBE0)
35CBDC:  ADD             R0, PC; ScriptParams_ptr
35CBDE:  LDR             R0, [R0]; ScriptParams
35CBE0:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
35CBE2:  CMP             R0, #0
35CBE4:  BLT.W           loc_35CEAC
35CBE8:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x35CBF4)
35CBEC:  UXTB            R3, R0
35CBEE:  LSRS            R0, R0, #8
35CBF0:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
35CBF2:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
35CBF4:  LDR             R1, [R1]; CPools::ms_pVehiclePool
35CBF6:  LDR             R2, [R1,#4]
35CBF8:  LDRB            R2, [R2,R0]
35CBFA:  CMP             R2, R3
35CBFC:  BNE.W           loc_35CEAC
35CC00:  MOVW            R2, #0xA2C
35CC04:  LDR             R1, [R1]
35CC06:  MLA.W           R10, R0, R2, R1
35CC0A:  B               loc_35CEB0
35CC0C:  MOV.W           R9, #0
35CC10:  LDR.W           R0, =(ScriptParams_ptr - 0x35CC18)
35CC14:  ADD             R0, PC; ScriptParams_ptr
35CC16:  LDR             R0, [R0]; ScriptParams
35CC18:  LDRD.W          R6, R4, [R0,#(dword_81A910 - 0x81A908)]
35CC1C:  MOVS            R0, #dword_4C; this
35CC1E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35CC22:  MOV             R5, R0
35CC24:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
35CC28:  LDR.W           R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x35CC3A)
35CC2C:  MOVS            R2, #6
35CC2E:  LDR.W           R1, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x35CC3C)
35CC32:  CMP.W           R9, #0
35CC36:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
35CC38:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
35CC3A:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
35CC3C:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorStandard ...
35CC3E:  ADD.W           R0, R0, #8
35CC42:  STR             R0, [R5]
35CC44:  MOV.W           R0, #0x3E8
35CC48:  STR             R6, [R5,#0x10]
35CC4A:  STRD.W          R0, R4, [R5,#0x14]
35CC4E:  MOV.W           R0, #0x40000000
35CC52:  STRD.W          R0, R10, [R5,#0x1C]
35CC56:  STR             R0, [R5,#0x24]
35CC58:  ADD.W           R0, R1, #8
35CC5C:  STRH.W          R10, [R5,#0x30]
35CC60:  STRH.W          R10, [R5,#0x3C]
35CC64:  STRD.W          R10, R10, [R5,#0x28]
35CC68:  STRD.W          R10, R10, [R5,#0x34]
35CC6C:  LDRB.W          R1, [R5,#0x48]
35CC70:  STRD.W          R0, R2, [R5,#0x40]
35CC74:  AND.W           R0, R1, #0xF0
35CC78:  MOV             R1, R5
35CC7A:  ORR.W           R0, R0, #3
35CC7E:  STRB.W          R0, [R5,#0x48]
35CC82:  STR.W           R9, [R1,#0xC]!; CEntity **
35CC86:  ITT NE
35CC88:  MOVNE           R0, R9; this
35CC8A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
35CC8E:  MOV             R0, R11
35CC90:  MOV             R1, R8
35CC92:  MOV             R2, R5
35CC94:  MOVW            R3, #0x6E2
35CC98:  B               loc_35D17E
35CC9A:  MOVS            R6, #0
35CC9C:  MOVS            R0, #dword_24; this
35CC9E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35CCA2:  MOV             R1, R6; CPed *
35CCA4:  MOV             R5, R0
35CCA6:  BLX             j__ZN21CTaskComplexArrestPedC2EP4CPed; CTaskComplexArrestPed::CTaskComplexArrestPed(CPed *)
35CCAA:  MOV             R0, R11
35CCAC:  MOV             R1, R8
35CCAE:  MOV             R2, R5
35CCB0:  MOVW            R3, #0x6E4
35CCB4:  B               loc_35D17E
35CCB6:  MOVS            R0, #0; this
35CCB8:  LDR.W           R1, =(ScriptParams_ptr - 0x35CCC0)
35CCBC:  ADD             R1, PC; ScriptParams_ptr
35CCBE:  LDR             R1, [R1]; ScriptParams
35CCC0:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
35CCC2:  CMP.W           R1, #0xFFFFFFFF
35CCC6:  BGT             loc_35CCDC
35CCC8:  LDR.W           R2, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x35CCD2)
35CCCC:  NEGS            R1, R1
35CCCE:  ADD             R2, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
35CCD0:  RSB.W           R1, R1, R1,LSL#3
35CCD4:  LDR             R2, [R2]; CTheScripts::UsedObjectArray ...
35CCD6:  ADD.W           R1, R2, R1,LSL#2
35CCDA:  LDR             R1, [R1,#0x18]; int
35CCDC:  BLX             j__ZN8CVehicle17AddVehicleUpgradeEi; CVehicle::AddVehicleUpgrade(int)
35CCE0:  LDR.W           R1, =(ScriptParams_ptr - 0x35CCE8)
35CCE4:  ADD             R1, PC; ScriptParams_ptr
35CCE6:  LDR             R1, [R1]; ScriptParams
35CCE8:  STR             R0, [R1]
35CCEA:  B               def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35CCEC:  MOVS            R0, #0; this
35CCEE:  LDR.W           R1, =(ScriptParams_ptr - 0x35CCF6)
35CCF2:  ADD             R1, PC; ScriptParams_ptr
35CCF4:  LDR             R1, [R1]; ScriptParams
35CCF6:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
35CCF8:  CMP.W           R1, #0xFFFFFFFF
35CCFC:  BGT             loc_35CD12
35CCFE:  LDR.W           R2, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x35CD08)
35CD02:  NEGS            R1, R1
35CD04:  ADD             R2, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
35CD06:  RSB.W           R1, R1, R1,LSL#3
35CD0A:  LDR             R2, [R2]; CTheScripts::UsedObjectArray ...
35CD0C:  ADD.W           R1, R2, R1,LSL#2
35CD10:  LDR             R1, [R1,#0x18]; int
35CD12:  BLX             j__ZN8CVehicle20RemoveVehicleUpgradeEi; CVehicle::RemoveVehicleUpgrade(int)
35CD16:  B               loc_35D380
35CD18:  MOVS            R5, #0
35CD1A:  LDR.W           R0, =(ScriptParams_ptr - 0x35CD24)
35CD1E:  MOVS            R1, #8; int
35CD20:  ADD             R0, PC; ScriptParams_ptr
35CD22:  LDR             R0, [R0]; ScriptParams
35CD24:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]; this
35CD26:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35CD2A:  CMP             R0, #7
35CD2C:  BHI.W           loc_35CF60
35CD30:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x35CD3C)
35CD34:  MOV.W           R2, #0x2D4
35CD38:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
35CD3A:  LDR             R1, [R1]; CPedGroups::ms_groups ...
35CD3C:  MLA.W           R0, R0, R2, R1
35CD40:  MOV             R1, R5; CPed *
35CD42:  ADDS            R0, #8; this
35CD44:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
35CD48:  B               loc_35CF5C
35CD4A:  MOVS            R0, #0; this
35CD4C:  LDR.W           R1, =(ScriptParams_ptr - 0x35CD54)
35CD50:  ADD             R1, PC; ScriptParams_ptr
35CD52:  LDR             R1, [R1]; ScriptParams
35CD54:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]; CVehicle *
35CD56:  BLX             j__ZN17CVehicleRecording16SetPlaybackSpeedEP8CVehiclef; CVehicleRecording::SetPlaybackSpeed(CVehicle *,float)
35CD5A:  B               loc_35D380
35CD5C:  MOVS            R3, #0
35CD5E:  LDR             R6, [R3,#0x14]
35CD60:  LDR             R2, [R0,#8]
35CD62:  ADD.W           R1, R6, #0x30 ; '0'
35CD66:  CMP             R6, #0
35CD68:  IT EQ
35CD6A:  ADDEQ           R1, R3, #4
35CD6C:  CMP             R2, #0
35CD6E:  BEQ.W           loc_35CF60
35CD72:  LDR.W           R6, =(ScriptParams_ptr - 0x35CD84)
35CD76:  MOVW            R12, #0xF848
35CD7A:  VLDR            D16, [R1,#4]
35CD7E:  NEGS            R3, R3
35CD80:  ADD             R6, PC; ScriptParams_ptr
35CD82:  VLDR            S2, [R1]
35CD86:  MOVW            R1, #0x7CC
35CD8A:  MOVT            R12, #0xFFFF
35CD8E:  LDR             R6, [R6]; ScriptParams
35CD90:  MULS            R1, R2
35CD92:  SUBS            R2, #1
35CD94:  VLDR            S0, [R6,#4]
35CD98:  ADD             R6, SP, #0x1A8+var_150
35CD9A:  ORR.W           LR, R6, #4
35CD9E:  VMUL.F32        S0, S0, S0
35CDA2:  LDR             R5, [R0,#4]
35CDA4:  LDRSB           R5, [R5,R2]
35CDA6:  CMP             R5, #0
35CDA8:  BLT             loc_35CE06
35CDAA:  LDR             R5, [R0]
35CDAC:  SUBW            R6, R5, #0x7CC
35CDB0:  ADDS            R4, R6, R1
35CDB2:  ITT NE
35CDB4:  ADDNE           R4, R6, R3
35CDB6:  ADDSNE.W        R4, R4, R1
35CDBA:  BEQ             loc_35CE06
35CDBC:  ADDS            R4, R5, R1
35CDBE:  LDR.W           R5, [R4,R12]
35CDC2:  ADD.W           R6, R5, #0x30 ; '0'
35CDC6:  CMP             R5, #0
35CDC8:  IT EQ
35CDCA:  SUBEQ.W         R6, R4, #0x7C8
35CDCE:  VLDR            D17, [R6]
35CDD2:  VSTR            D17, [SP,#0x1A8+var_150]
35CDD6:  VLDR            S4, [SP,#0x1A8+var_150]
35CDDA:  LDR             R4, [R6,#8]
35CDDC:  VSUB.F32        S4, S4, S2
35CDE0:  STR             R4, [SP,#0x1A8+var_148]
35CDE2:  VLDR            D17, [LR]
35CDE6:  VSUB.F32        D17, D17, D16
35CDEA:  VMUL.F32        S4, S4, S4
35CDEE:  VMUL.F32        D3, D17, D17
35CDF2:  VADD.F32        S4, S4, S6
35CDF6:  VADD.F32        S4, S4, S7
35CDFA:  VCMPE.F32       S4, S0
35CDFE:  VMRS            APSR_nzcv, FPSCR
35CE02:  BLT.W           loc_35D292
35CE06:  SUBS            R2, #1
35CE08:  SUBW            R1, R1, #0x7CC
35CE0C:  ADDS            R4, R2, #1
35CE0E:  BNE             loc_35CDA2
35CE10:  B               loc_35CF60
35CE12:  MOVS            R0, #0; this
35CE14:  LDR.W           R1, =(ScriptParams_ptr - 0x35CE22)
35CE18:  MOVS            R2, #1; unsigned int
35CE1A:  MOVS            R3, #0; bool
35CE1C:  MOVS            R6, #0
35CE1E:  ADD             R1, PC; ScriptParams_ptr
35CE20:  LDR             R1, [R1]; ScriptParams
35CE22:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]; CVehicle *
35CE24:  BLX             j__ZN17CVehicleRecording24StartPlaybackRecordedCarEP8CVehiclejbb; CVehicleRecording::StartPlaybackRecordedCar(CVehicle *,uint,bool,bool)
35CE28:  B               loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35CE2A:  MOVS            R0, #0; this
35CE2C:  LDR.W           R1, =(ScriptParams_ptr - 0x35CE34)
35CE30:  ADD             R1, PC; ScriptParams_ptr
35CE32:  LDR             R1, [R1]; ScriptParams
35CE34:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]; CVehicle *
35CE36:  BLX             j__ZN17CVehicleRecording22SkipForwardInRecordingEP8CVehiclef; CVehicleRecording::SkipForwardInRecording(CVehicle *,float)
35CE3A:  B               loc_35D380
35CE3C:  MOVS            R1, #0; this
35CE3E:  LDR.W           R2, =(ScriptParams_ptr - 0x35CE4A)
35CE42:  VLDR            S0, =3.1416
35CE46:  ADD             R2, PC; ScriptParams_ptr
35CE48:  VLDR            S6, =180.0
35CE4C:  LDR             R6, [R2]; ScriptParams
35CE4E:  ADD.W           R5, R6, #8
35CE52:  VLDR            S4, [R6,#0x1C]
35CE56:  VLDR            S2, [R6,#0x18]
35CE5A:  VMUL.F32        S4, S4, S0
35CE5E:  LDM             R5, {R2,R3,R5}; int
35CE60:  VMUL.F32        S0, S2, S0
35CE64:  LDRH            R4, [R6,#(dword_81A91C - 0x81A908)]
35CE66:  LDR             R6, [R6,#(dword_81A928 - 0x81A908)]
35CE68:  STR             R6, [SP,#0x1A8+var_198]; int
35CE6A:  STRD.W          R5, R4, [SP,#0x1A8+var_1A8]; int
35CE6E:  VDIV.F32        S2, S4, S6
35CE72:  VDIV.F32        S0, S0, S6
35CE76:  VSTR            S0, [SP,#0x1A8+var_1A0]
35CE7A:  VSTR            S2, [SP,#0x1A8+var_19C]
35CE7E:  BLX             j__ZN4CPed15AttachPedToBikeEP7CEntity7CVectortff11eWeaponType; CPed::AttachPedToBike(CEntity *,CVector,ushort,float,float,eWeaponType)
35CE82:  B               loc_35D380
35CE84:  MOVS            R2, #0; CObject *
35CE86:  LDR.W           R3, =(ScriptParams_ptr - 0x35CE8E)
35CE8A:  ADD             R3, PC; ScriptParams_ptr
35CE8C:  LDR             R3, [R3]; ScriptParams
35CE8E:  LDR             R3, [R3,#(dword_81A914 - 0x81A908)]
35CE90:  CMP             R3, #0
35CE92:  BLT             loc_35CEE4
35CE94:  LDR             R6, [R0,#4]
35CE96:  UXTB            R5, R3
35CE98:  LSRS            R3, R3, #8
35CE9A:  LDRB            R6, [R6,R3]
35CE9C:  CMP             R6, R5
35CE9E:  BNE             loc_35CEE4
35CEA0:  MOV.W           R6, #0x1A4
35CEA4:  LDR             R0, [R0]
35CEA6:  MLA.W           R3, R3, R6, R0
35CEAA:  B               loc_35CEE6
35CEAC:  MOV.W           R10, #0
35CEB0:  LDR.W           R0, =(ScriptParams_ptr - 0x35CEB8)
35CEB4:  ADD             R0, PC; ScriptParams_ptr
35CEB6:  LDR             R0, [R0]; ScriptParams
35CEB8:  LDR             R4, [R0,#(dword_81A914 - 0x81A908)]
35CEBA:  LDR             R6, [R0,#(dword_81A91C - 0x81A908)]
35CEBC:  VLDR            S16, [R0,#0x10]
35CEC0:  MOVS            R0, #word_2C; this
35CEC2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35CEC6:  MOV             R1, R9; CVehicle *
35CEC8:  MOV             R2, R10; CEntity *
35CECA:  MOV             R3, R4; int
35CECC:  VSTR            S16, [SP,#0x1A8+var_1A4]
35CED0:  MOV             R5, R0
35CED2:  STR             R6, [SP,#0x1A8+var_1A8]; int
35CED4:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif_0; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
35CED8:  MOV             R0, R11
35CEDA:  MOV             R1, R8
35CEDC:  MOV             R2, R5
35CEDE:  MOVW            R3, #0x6E1
35CEE2:  B               loc_35D17E
35CEE4:  MOVS            R3, #0; CObject *
35CEE6:  LDR.W           R0, =(ScriptParams_ptr - 0x35CEEE)
35CEEA:  ADD             R0, PC; ScriptParams_ptr
35CEEC:  LDR             R6, [R0]; ScriptParams
35CEEE:  LDR             R0, [R6]; this
35CEF0:  VLDR            S0, [R6,#0x10]
35CEF4:  VLDR            S2, [R6,#0x14]
35CEF8:  VLDR            S4, [R6,#0x18]
35CEFC:  VSTR            S0, [SP,#0x1A8+var_1A8]
35CF00:  VSTR            S2, [SP,#0x1A8+var_1A4]
35CF04:  VSTR            S4, [SP,#0x1A8+var_1A0]
35CF08:  BLX             j__ZN11CTheScripts36AttachSearchlightToSearchlightObjectEiP7CObjectS1_S1_fff; CTheScripts::AttachSearchlightToSearchlightObject(int,CObject *,CObject *,CObject *,float,float,float)
35CF0C:  B               loc_35D380
35CF0E:  MOVS            R0, #0
35CF10:  LDR.W           R1, =(ScriptParams_ptr - 0x35CF1A)
35CF14:  STR             R0, [SP,#0x1A8+var_160]
35CF16:  ADD             R1, PC; ScriptParams_ptr
35CF18:  LDR             R1, [R1]; ScriptParams
35CF1A:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
35CF1C:  NOP
35CF1E:  NOP
35CF20:  B               loc_35D380
35CF22:  MOVS            R5, #0
35CF24:  LDR.W           R0, =(ScriptParams_ptr - 0x35CF2E)
35CF28:  MOVS            R1, #8; int
35CF2A:  ADD             R0, PC; ScriptParams_ptr
35CF2C:  LDR             R0, [R0]; ScriptParams
35CF2E:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]; this
35CF30:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
35CF34:  CMP             R0, #7
35CF36:  BHI             loc_35CF60
35CF38:  LDR.W           R1, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x35CF40)
35CF3C:  ADD             R1, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
35CF3E:  LDR             R1, [R1]; CPedGroups::ms_activeGroups ...
35CF40:  LDRB            R1, [R1,R0]
35CF42:  CBZ             R1, loc_35CF60
35CF44:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x35CF50)
35CF48:  MOV.W           R2, #0x2D4
35CF4C:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
35CF4E:  LDR             R1, [R1]; CPedGroups::ms_groups ...
35CF50:  MLA.W           R0, R0, R2, R1
35CF54:  MOV             R1, R5; CPed *
35CF56:  ADDS            R0, #8; this
35CF58:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
35CF5C:  MOV             R1, R0
35CF5E:  B               loc_35D270
35CF60:  MOVS            R1, #0
35CF62:  B               loc_35D270
35CF64:  MOVS            R4, #0
35CF66:  LDR.W           R0, =(ScriptParams_ptr - 0x35CF72)
35CF6A:  VLDR            S0, =-100.0
35CF6E:  ADD             R0, PC; ScriptParams_ptr
35CF70:  LDR             R0, [R0]; ScriptParams
35CF72:  VLDR            S20, [R0,#0xC]
35CF76:  VLDR            S16, [R0,#4]
35CF7A:  VCMPE.F32       S20, S0
35CF7E:  VLDR            S18, [R0,#8]
35CF82:  VMRS            APSR_nzcv, FPSCR
35CF86:  BGT             loc_35CF98
35CF88:  VMOV            R0, S16; this
35CF8C:  VMOV            R1, S18; float
35CF90:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
35CF94:  VMOV            S20, R0
35CF98:  MOV             R0, R4; this
35CF9A:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
35CF9E:  VMOV            S0, R0
35CFA2:  ADD             R1, SP, #0x1A8+var_144; CVehicle *
35CFA4:  MOV             R0, R4; this
35CFA6:  MOVS            R2, #0; CVector *
35CFA8:  VADD.F32        S0, S20, S0
35CFAC:  MOVS            R3, #0; bool
35CFAE:  VSTR            S18, [SP,#0x1A8+var_140]
35CFB2:  VSTR            S16, [SP,#0x1A8+var_144]
35CFB6:  VSTR            S0, [SP,#0x1A8+var_13C]
35CFBA:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
35CFBE:  LDRB.W          R1, [R4,#0x3BE]
35CFC2:  CMP             R0, #0
35CFC4:  SUB.W           R1, R1, #0x39 ; '9'
35CFC8:  BEQ.W           loc_35D1AC
35CFCC:  UXTB            R0, R1
35CFCE:  CMP             R0, #2
35CFD0:  BCC.W           loc_35D1B8
35CFD4:  MOVS            R0, #9
35CFD6:  B               loc_35D1B4
35CFD8:  SUBS            R0, #1; switch 22 cases
35CFDA:  CMP             R0, #0x15
35CFDC:  BHI.W           def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35CFE0:  TBH.W           [PC,R0,LSL#1]; switch jump
35CFE4:  DCW 0x191; jump table for switch statement
35CFE6:  DCW 0x195
35CFE8:  DCW 0x1CA
35CFEA:  DCW 0x1CA
35CFEC:  DCW 0x1CA
35CFEE:  DCW 0x1CA
35CFF0:  DCW 0x1CA
35CFF2:  DCW 0x1CA
35CFF4:  DCW 0x1CA
35CFF6:  DCW 0x1CA
35CFF8:  DCW 0x1CA
35CFFA:  DCW 0x199
35CFFC:  DCW 0x19D
35CFFE:  DCW 0x1CA
35D000:  DCW 0x1CA
35D002:  DCW 0x1CA
35D004:  DCW 0x1CA
35D006:  DCW 0x1CA
35D008:  DCW 0x1A1
35D00A:  DCW 0x16
35D00C:  DCW 0x16
35D00E:  DCW 0x16
35D010:  LDR.W           R0, =(ScriptParams_ptr - 0x35D01A); jumptable 0035CFE0 cases 20-22
35D014:  MOVS            R1, #0x10
35D016:  ADD             R0, PC; ScriptParams_ptr
35D018:  B               loc_35D374
35D01A:  LDR.W           R0, =(ScriptParams_ptr - 0x35D022)
35D01E:  ADD             R0, PC; ScriptParams_ptr
35D020:  LDR             R1, [R0]; ScriptParams
35D022:  MOVS            R0, #0
35D024:  STRD.W          R0, R0, [R1]
35D028:  LDR.W           R1, =(ScriptParams_ptr - 0x35D030)
35D02C:  ADD             R1, PC; ScriptParams_ptr
35D02E:  LDR             R1, [R1]; ScriptParams
35D030:  STR             R0, [R1,#(dword_81A910 - 0x81A908)]
35D032:  MOV             R0, R11
35D034:  MOVS            R1, #3
35D036:  B               loc_35D37C
35D038:  MOVS            R2, #0; CPed *
35D03A:  LDR.W           R12, =(g_ikChainMan_ptr - 0x35D04C)
35D03E:  ADD             R1, SP, #0x1A8+var_144
35D040:  MOV.W           R3, #0xFFFFFFFF
35D044:  VSTR            S20, [SP,#0x1A8+var_140]
35D048:  ADD             R12, PC; g_ikChainMan_ptr
35D04A:  VSTR            S18, [SP,#0x1A8+var_144]
35D04E:  VSTR            S16, [SP,#0x1A8+var_13C]
35D052:  MOV.W           LR, #1
35D056:  STRD.W          R4, R3, [SP,#0x1A8+var_1A8]; int
35D05A:  MOV.W           R8, #6
35D05E:  STRD.W          R1, R6, [SP,#0x1A8+var_1A0]; int
35D062:  MOV.W           R5, #0x1F4
35D066:  MOV.W           R0, #0x3E800000
35D06A:  ADD             R1, SP, #0x1A8+var_198
35D06C:  STM.W           R1, {R0,R5,R8,LR}
35D070:  ADR.W           R1, aCommandTaskLoo_2; "COMMAND_TASK_LOOK_AT_COORD"
35D074:  MOVS            R3, #0; int
35D076:  LDR.W           R0, [R12]; g_ikChainMan ; int
35D07A:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
35D07E:  B               loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35D080:  CMP             R4, #2
35D082:  BHI.W           loc_35D296
35D086:  LDR.W           R3, =(byte_81AF9C - 0x35D08E)
35D08A:  ADD             R3, PC; byte_81AF9C
35D08C:  LDRB.W          R8, [R3]
35D090:  LDRB            R1, [R3,#(byte_81AF9D - 0x81AF9C)]
35D092:  LDRB            R2, [R3,#(byte_81AF9E - 0x81AF9C)]
35D094:  LDRB            R3, [R3,#(byte_81AF9F - 0x81AF9C)]
35D096:  B               loc_35D296
35D098:  MOVS            R6, #0
35D09A:  STRB.W          R6, [R0,#0x84]
35D09E:  B               loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35D0A0:  LDR.W           R0, =(_ZN38CTaskComplexSitDownThenIdleThenStandUp12ms_iDurationE_ptr - 0x35D0A8)
35D0A4:  ADD             R0, PC; _ZN38CTaskComplexSitDownThenIdleThenStandUp12ms_iDurationE_ptr
35D0A6:  LDR             R0, [R0]; CTaskComplexSitDownThenIdleThenStandUp::ms_iDuration ...
35D0A8:  LDR             R1, [R0]; int
35D0AA:  MOV             R0, R6; this
35D0AC:  MOVS            R2, #0; unsigned __int8
35D0AE:  MOVS            R3, #0; unsigned __int8
35D0B0:  BLX             j__ZN38CTaskComplexSitDownThenIdleThenStandUpC2Eihh; CTaskComplexSitDownThenIdleThenStandUp::CTaskComplexSitDownThenIdleThenStandUp(int,uchar,uchar)
35D0B4:  MOV             R0, R11
35D0B6:  MOV             R1, R8
35D0B8:  MOV             R2, R6
35D0BA:  MOV.W           R3, #0x6B0
35D0BE:  B               loc_35D17E
35D0C0:  LDR.W           R0, =(ScriptParams_ptr - 0x35D0CA)
35D0C4:  MOVS            R1, #0
35D0C6:  ADD             R0, PC; ScriptParams_ptr
35D0C8:  B               loc_35D260
35D0CA:  MOVS            R0, #(stderr+1); this
35D0CC:  BLX             j__ZN6CTrain19DisableRandomTrainsEb; CTrain::DisableRandomTrains(bool)
35D0D0:  B               loc_35D380
35D0D2:  LDR             R0, =(ScriptParams_ptr - 0x35D0DA)
35D0D4:  MOVS            R6, #0
35D0D6:  ADD             R0, PC; ScriptParams_ptr
35D0D8:  LDR             R0, [R0]; ScriptParams
35D0DA:  STRD.W          R5, R5, [R0]
35D0DE:  STR             R5, [R0,#(dword_81A910 - 0x81A908)]
35D0E0:  LDR             R0, =(ScriptParams_ptr - 0x35D0E8)
35D0E2:  MOVS            R1, #4; __int16
35D0E4:  ADD             R0, PC; ScriptParams_ptr
35D0E6:  LDR             R0, [R0]; ScriptParams
35D0E8:  STR             R5, [R0,#(dword_81A914 - 0x81A908)]
35D0EA:  MOV             R0, R11; this
35D0EC:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
35D0F0:  MOV             R0, R11
35D0F2:  MOV             R1, R6
35D0F4:  B               loc_35D272
35D0F6:  ADD             R0, SP, #0x1A8+var_178
35D0F8:  MOVS            R1, #0
35D0FA:  MOVS            R6, #0
35D0FC:  BLX             j__ZN11CTagManager14SetAlphaInAreaER5CRecth; CTagManager::SetAlphaInArea(CRect &,uchar)
35D100:  B               loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35D102:  MOVS            R2, #0
35D104:  MOV             R6, R5
35D106:  LDR.W           R12, =(_ZTV41CEntitySeekPosCalculatorRadiusAngleOffset_ptr - 0x35D11A)
35D10A:  MOV.W           R3, #0x3E8
35D10E:  STR.W           R2, [R6,#0x44]!
35D112:  MOVW            R0, #0xC350
35D116:  ADD             R12, PC; _ZTV41CEntitySeekPosCalculatorRadiusAngleOffset_ptr
35D118:  STRD.W          R0, R3, [R6,#-0x34]
35D11C:  SUB.W           R0, R6, #0x2C ; ','
35D120:  STRH.W          R2, [R6,#-0x14]
35D124:  STRH.W          R2, [R6,#-8]
35D128:  STRD.W          R2, R2, [R6,#-0x1C]
35D12C:  STRD.W          R2, R2, [R6,#-0x10]
35D130:  STR             R2, [R6,#4]
35D132:  VST1.32         {D16-D17}, [R0]
35D136:  LDR.W           R0, [R12]; `vtable for'CEntitySeekPosCalculatorRadiusAngleOffset ...
35D13A:  LDRB            R3, [R6,#0xC]
35D13C:  MOVS            R2, #6
35D13E:  ADDS            R0, #8
35D140:  STR             R2, [R6,#8]
35D142:  STR.W           R0, [R6,#-4]
35D146:  AND.W           R0, R3, #0xF0
35D14A:  CMP.W           R10, #0
35D14E:  ORR.W           R0, R0, #3
35D152:  STRB            R0, [R6,#0xC]
35D154:  ITT NE
35D156:  MOVNE           R0, R10; this
35D158:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
35D15C:  LDR.W           R0, =(_ZN16CPedIntelligence20ms_iDesiredMoveStateE_ptr - 0x35D16E)
35D160:  MOV             R2, R5; CTask *
35D162:  STR.W           R9, [R6]
35D166:  MOV.W           R3, #0x6A8; int
35D16A:  ADD             R0, PC; _ZN16CPedIntelligence20ms_iDesiredMoveStateE_ptr
35D16C:  VSTR            S16, [R5,#0x48]
35D170:  LDR             R0, [R0]; CPedIntelligence::ms_iDesiredMoveState ...
35D172:  LDR             R1, [R0]; CPedIntelligence::ms_iDesiredMoveState
35D174:  STR             R1, [R5,#0x4C]
35D176:  MOVS            R1, #6
35D178:  STR             R1, [R0]; CPedIntelligence::ms_iDesiredMoveState
35D17A:  MOV             R0, R11; this
35D17C:  MOV             R1, R8; int
35D17E:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
35D182:  B               loc_35D380
35D184:  MOV             R0, R4; this
35D186:  BLX             j__ZN4CPed32ReplaceWeaponForScriptedCutsceneEv; CPed::ReplaceWeaponForScriptedCutscene(void)
35D18A:  LDRB.W          R0, [R4,#0x485]
35D18E:  MOVS            R6, #0
35D190:  LSLS            R0, R0, #0x1F
35D192:  BEQ.W           loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35D196:  MOV             R0, R4; this
35D198:  MOVS            R1, #0; int
35D19A:  BLX             j__ZN4CPed31RemoveWeaponWhenEnteringVehicleEi; CPed::RemoveWeaponWhenEnteringVehicle(int)
35D19E:  B               loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35D1A0:  DCFS 3.1416
35D1A4:  DCFS 180.0
35D1A8:  DCFS -100.0
35D1AC:  UXTB            R0, R1
35D1AE:  CMP             R0, #2
35D1B0:  BCC             loc_35D1B8
35D1B2:  MOVS            R0, #0x21 ; '!'
35D1B4:  STRB.W          R0, [R4,#0x3BE]
35D1B8:  LDRB.W          R3, [R4,#0x3D4]
35D1BC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35D1C8)
35D1BE:  CMP             R3, #1
35D1C0:  LDR.W           R1, [R4,#0x42C]
35D1C4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35D1C6:  LDR.W           R2, [R4,#0x430]
35D1CA:  LDRB.W          R6, [R4,#0x3A]
35D1CE:  IT LS
35D1D0:  MOVLS           R3, #1
35D1D2:  STRB.W          R3, [R4,#0x3D4]
35D1D6:  MOVS            R3, #3
35D1D8:  BFI.W           R6, R3, #3, #0x1D
35D1DC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
35D1DE:  BIC.W           R3, R1, #0x10
35D1E2:  TST.W           R2, #0x200
35D1E6:  STRB.W          R6, [R4,#0x3A]
35D1EA:  IT EQ
35D1EC:  ORREQ.W         R3, R1, #0x10
35D1F0:  STR.W           R3, [R4,#0x42C]
35D1F4:  MOVS            R6, #0
35D1F6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
35D1F8:  STR.W           R0, [R4,#0x3B0]
35D1FC:  B               loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35D1FE:  MOVW            R4, #0x4E20
35D202:  ADDS            R1, R0, #1; unsigned int
35D204:  BNE.W           loc_35B308
35D208:  MOVS            R0, #word_30; this
35D20A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35D20E:  MOV             R5, R0
35D210:  MOVS            R0, #3
35D212:  MOV.W           R1, #0x3E8
35D216:  MOV.W           R2, #0x3E800000
35D21A:  MOVS            R3, #1
35D21C:  MOVS            R6, #0
35D21E:  STRD.W          R3, R2, [SP,#0x1A8+var_19C]; int
35D222:  MOV             R2, R4; int
35D224:  STRD.W          R1, R0, [SP,#0x1A8+var_194]; int
35D228:  MOV             R0, R5; int
35D22A:  MOVS            R1, #0; int
35D22C:  MOV.W           R3, #0xFFFFFFFF; int
35D230:  VSTR            S18, [SP,#0x1A8+var_1A8]
35D234:  VSTR            S20, [SP,#0x1A8+var_1A4]
35D238:  VSTR            S16, [SP,#0x1A8+var_1A0]
35D23C:  BLX             j__ZN24CTaskSimpleTriggerLookAtC2EP7CEntityii5RwV3dhfii; CTaskSimpleTriggerLookAt::CTaskSimpleTriggerLookAt(CEntity *,int,int,RwV3d,uchar,float,int,int)
35D240:  LDR             R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x35D248)
35D242:  LDR             R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x35D24A)
35D244:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
35D246:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
35D248:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
35D24A:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
35D24C:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence
35D24E:  ADD.W           R0, R1, R0,LSL#6; this
35D252:  MOV             R1, R5; CTask *
35D254:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
35D258:  B               loc_35D382; jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35D25A:  LDR             R0, =(ScriptParams_ptr - 0x35D262)
35D25C:  MOVS            R1, #0; int
35D25E:  ADD             R0, PC; ScriptParams_ptr
35D260:  LDR             R0, [R0]; ScriptParams
35D262:  LDR             R0, [R0]; this
35D264:  BLX             j__ZN11CTheScripts25IsEntityWithinSearchLightEiP7CEntity; CTheScripts::IsEntityWithinSearchLight(int,CEntity *)
35D268:  MOV             R1, R0
35D26A:  CMP             R1, #0
35D26C:  IT NE
35D26E:  MOVNE           R1, #1; unsigned __int8
35D270:  MOV             R0, R11; this
35D272:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
35D276:  B               loc_35D380
35D278:  MOV.W           R1, #0xFFFFFFFF; int
35D27C:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x35D286)
35D27E:  MOV.W           R2, #0x2D4
35D282:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
35D284:  LDR             R0, [R0]; CPedGroups::ms_groups ...
35D286:  MLA.W           R0, R4, R2, R0
35D28A:  ADDS            R0, #0x30 ; '0'; this
35D28C:  BLX             j__ZN21CPedGroupIntelligence25SetGroupDecisionMakerTypeEi; CPedGroupIntelligence::SetGroupDecisionMakerType(int)
35D290:  B               loc_35D380
35D292:  MOVS            R1, #1
35D294:  B               loc_35D270
35D296:  MOVW            LR, #0x999A
35D29A:  MOV             R5, R0
35D29C:  UXTB.W          R0, R8
35D2A0:  MOVT            LR, #0x3D99
35D2A4:  MOV.W           R9, #0x400
35D2A8:  UXTB            R3, R3
35D2AA:  UXTB            R2, R2
35D2AC:  UXTB            R1, R1
35D2AE:  ADD.W           R8, SP, #0x1A8+var_1A4
35D2B2:  MOV.W           R12, #0
35D2B6:  STM.W           R8, {R0-R3,R9,LR}
35D2BA:  ADD             R2, SP, #0x1A8+var_144; unsigned __int16
35D2BC:  ADD             R3, SP, #0x1A8+var_150; CVector *
35D2BE:  UXTH            R1, R4; unsigned int
35D2C0:  MOV             R0, R5; this
35D2C2:  STR.W           R12, [SP,#0x1A8+var_18C]; float
35D2C6:  VSTR            S16, [SP,#0x1A8+var_1A8]
35D2CA:  BLX             j__ZN12CCheckpoints11PlaceMarkerEjtR7CVectorS1_fhhhhtfs; CCheckpoints::PlaceMarker(uint,ushort,CVector &,CVector &,float,uchar,uchar,uchar,uchar,ushort,float,short)
35D2CE:  LDR             R1, =(_ZN11CTheScripts25NumberOfScriptCheckpointsE_ptr - 0x35D2D6)
35D2D0:  LDR             R2, =(ScriptParams_ptr - 0x35D2DC)
35D2D2:  ADD             R1, PC; _ZN11CTheScripts25NumberOfScriptCheckpointsE_ptr
35D2D4:  STR.W           R0, [R6,#-4]
35D2D8:  ADD             R2, PC; ScriptParams_ptr
35D2DA:  LDR             R1, [R1]; CTheScripts::NumberOfScriptCheckpoints ...
35D2DC:  LDR             R2, [R2]; ScriptParams
35D2DE:  LDRH            R0, [R1]; CTheScripts::NumberOfScriptCheckpoints
35D2E0:  STR             R5, [R2]
35D2E2:  ADDS            R0, #1
35D2E4:  STRH            R0, [R1]; CTheScripts::NumberOfScriptCheckpoints
35D2E6:  LDRB.W          R0, [R11,#0xE6]
35D2EA:  CMP             R0, #0
35D2EC:  BEQ             def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35D2EE:  LDR             R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x35D2F8)
35D2F0:  MOV             R1, R5; int
35D2F2:  MOVS            R2, #0xC; unsigned __int8
35D2F4:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
35D2F6:  LDR             R0, [R0]; this
35D2F8:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
35D2FC:  B               def_35BFEE; jumptable 0035BFEE default case, cases 3-5,7,13
35D2FE:  LDR             R0, =(ScriptParams_ptr - 0x35D306); jumptable 0035BFEE cases 8,9
35D300:  MOVS            R1, #3
35D302:  ADD             R0, PC; ScriptParams_ptr
35D304:  B               loc_35D374
35D306:  LDR             R0, =(ScriptParams_ptr - 0x35D30E); jumptable 0035CFE0 case 1
35D308:  MOVS            R1, #0xB
35D30A:  ADD             R0, PC; ScriptParams_ptr
35D30C:  B               loc_35D374
35D30E:  LDR             R0, =(ScriptParams_ptr - 0x35D316); jumptable 0035CFE0 case 2
35D310:  MOVS            R1, #0xC
35D312:  ADD             R0, PC; ScriptParams_ptr
35D314:  B               loc_35D374
35D316:  LDR             R0, =(ScriptParams_ptr - 0x35D31E); jumptable 0035CFE0 case 12
35D318:  MOVS            R1, #0xE
35D31A:  ADD             R0, PC; ScriptParams_ptr
35D31C:  B               loc_35D374
35D31E:  LDR             R0, =(ScriptParams_ptr - 0x35D326); jumptable 0035CFE0 case 13
35D320:  MOVS            R1, #0xF
35D322:  ADD             R0, PC; ScriptParams_ptr
35D324:  B               loc_35D374
35D326:  LDR             R0, =(ScriptParams_ptr - 0x35D32E); jumptable 0035CFE0 case 19
35D328:  MOVS            R1, #0xD
35D32A:  ADD             R0, PC; ScriptParams_ptr
35D32C:  B               loc_35D374
35D32E:  LDR             R0, =(ScriptParams_ptr - 0x35D336); jumptable 0035BFEE case 0
35D330:  MOVS            R1, #0
35D332:  ADD             R0, PC; ScriptParams_ptr
35D334:  B               loc_35D374
35D336:  LDR             R0, =(ScriptParams_ptr - 0x35D33E); jumptable 0035BFEE case 6
35D338:  MOVS            R1, #2
35D33A:  ADD             R0, PC; ScriptParams_ptr
35D33C:  B               loc_35D374
35D33E:  LDR             R0, =(ScriptParams_ptr - 0x35D346); jumptable 0035BFEE case 10
35D340:  MOVS            R1, #4
35D342:  ADD             R0, PC; ScriptParams_ptr
35D344:  B               loc_35D374
35D346:  LDR             R0, =(ScriptParams_ptr - 0x35D34E); jumptable 0035BFEE case 11
35D348:  MOVS            R1, #5
35D34A:  ADD             R0, PC; ScriptParams_ptr
35D34C:  B               loc_35D374
35D34E:  LDR             R0, =(ScriptParams_ptr - 0x35D356); jumptable 0035BFEE case 12
35D350:  MOVS            R1, #6
35D352:  ADD             R0, PC; ScriptParams_ptr
35D354:  B               loc_35D374
35D356:  LDR             R0, =(ScriptParams_ptr - 0x35D35E); jumptable 0035BFEE case 14
35D358:  MOVS            R1, #7
35D35A:  ADD             R0, PC; ScriptParams_ptr
35D35C:  B               loc_35D374
35D35E:  LDR             R0, =(ScriptParams_ptr - 0x35D366); jumptable 0035BFEE case 15
35D360:  MOVS            R1, #8
35D362:  ADD             R0, PC; ScriptParams_ptr
35D364:  B               loc_35D374
35D366:  LDR             R0, =(ScriptParams_ptr - 0x35D36E); jumptable 0035BFEE case 16
35D368:  MOVS            R1, #9
35D36A:  ADD             R0, PC; ScriptParams_ptr
35D36C:  B               loc_35D374
35D36E:  LDR             R0, =(ScriptParams_ptr - 0x35D376); jumptable 0035BFEE case 17
35D370:  MOVS            R1, #0xA
35D372:  ADD             R0, PC; ScriptParams_ptr
35D374:  LDR             R0, [R0]; ScriptParams
35D376:  STR             R1, [R0]
35D378:  MOV             R0, R11; jumptable 0035BFEE default case, cases 3-5,7,13
35D37A:  MOVS            R1, #1; __int16
35D37C:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
35D380:  MOVS            R6, #0
35D382:  LDR             R0, =(__stack_chk_guard_ptr - 0x35D38A); jumptable 0035B120 cases 1700,1702,1734,1739,1742,1780,1782,1783,1785,1787,1790,1792
35D384:  LDR             R1, [SP,#0x1A8+var_44]
35D386:  ADD             R0, PC; __stack_chk_guard_ptr
35D388:  LDR             R0, [R0]; __stack_chk_guard
35D38A:  LDR             R0, [R0]
35D38C:  SUBS            R0, R0, R1
35D38E:  ITTTT EQ
35D390:  SXTBEQ          R0, R6
35D392:  SUBEQ.W         R4, R7, #-var_40
35D396:  MOVEQ           SP, R4
35D398:  VPOPEQ          {D8-D11}
35D39C:  ITTT EQ
35D39E:  ADDEQ           SP, SP, #4
35D3A0:  POPEQ.W         {R8-R11}
35D3A4:  POPEQ           {R4-R7,PC}
35D3A6:  BLX             __stack_chk_fail
