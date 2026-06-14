; =========================================================
; Game Engine Function: _ZN14CRunningScript23ProcessCommands700To799Ei
; Address            : 0x344F24 - 0x346328
; =========================================================

344F24:  PUSH            {R4-R7,LR}
344F26:  ADD             R7, SP, #0xC
344F28:  PUSH.W          {R8-R11}
344F2C:  SUB             SP, SP, #4
344F2E:  VPUSH           {D8-D10}
344F32:  SUB             SP, SP, #0xB8; float
344F34:  MOV             R11, R0
344F36:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x344F40)
344F3A:  MOVS            R6, #0
344F3C:  ADD             R0, PC; __stack_chk_guard_ptr
344F3E:  LDR             R0, [R0]; __stack_chk_guard
344F40:  LDR             R0, [R0]
344F42:  STR             R0, [SP,#0xF0+var_3C]
344F44:  SUBW            R0, R1, #0x2BF; switch 96 cases
344F48:  CMP             R0, #0x5F ; '_'
344F4A:  STR             R6, [SP,#0xF0+var_98]
344F4C:  BHI.W           def_344F54; jumptable 00344F54 default case, cases 707-713,717,722,725,727,729,730,732,734,735,751-753,756,757,763,764,766,768,769,772-775,777-779,782-790,795,796
344F50:  MOV.W           R5, #0xFFFFFFFF
344F54:  TBH.W           [PC,R0,LSL#1]; switch jump
344F58:  DCW 0x60; jump table for switch statement
344F5A:  DCW 0xA8
344F5C:  DCW 0xEA
344F5E:  DCW 0x137
344F60:  DCW 0x156
344F62:  DCW 0x156
344F64:  DCW 0x156
344F66:  DCW 0x156
344F68:  DCW 0x156
344F6A:  DCW 0x156
344F6C:  DCW 0x156
344F6E:  DCW 0x159
344F70:  DCW 0x178
344F72:  DCW 0x197
344F74:  DCW 0x156
344F76:  DCW 0x1B6
344F78:  DCW 0x1C7
344F7A:  DCW 0x204
344F7C:  DCW 0x221
344F7E:  DCW 0x156
344F80:  DCW 0x23A
344F82:  DCW 0x259
344F84:  DCW 0x156
344F86:  DCW 0x278
344F88:  DCW 0x156
344F8A:  DCW 0x296
344F8C:  DCW 0x156
344F8E:  DCW 0x156
344F90:  DCW 0x2B5
344F92:  DCW 0x156
344F94:  DCW 0x2D4
344F96:  DCW 0x156
344F98:  DCW 0x156
344F9A:  DCW 0x413
344F9C:  DCW 0x42D
344F9E:  DCW 0x483
344FA0:  DCW 0x49D
344FA2:  DCW 0x4C8
344FA4:  DCW 0x9D6
344FA6:  DCW 0x9D6
344FA8:  DCW 0x4D3
344FAA:  DCW 0x4D7
344FAC:  DCW 0x4DE
344FAE:  DCW 0x4E3
344FB0:  DCW 0x4E7
344FB2:  DCW 0x4EF
344FB4:  DCW 0x4F5
344FB6:  DCW 0x510
344FB8:  DCW 0x156
344FBA:  DCW 0x156
344FBC:  DCW 0x156
344FBE:  DCW 0x55C
344FC0:  DCW 0x9D6
344FC2:  DCW 0x156
344FC4:  DCW 0x156
344FC6:  DCW 0x57E
344FC8:  DCW 0x595
344FCA:  DCW 0x5AD
344FCC:  DCW 0x5D1
344FCE:  DCW 0x5FB
344FD0:  DCW 0x156
344FD2:  DCW 0x156
344FD4:  DCW 0x618
344FD6:  DCW 0x156
344FD8:  DCW 0x643
344FDA:  DCW 0x156
344FDC:  DCW 0x156
344FDE:  DCW 0x677
344FE0:  DCW 0x6A6
344FE2:  DCW 0x156
344FE4:  DCW 0x156
344FE6:  DCW 0x156
344FE8:  DCW 0x156
344FEA:  DCW 0x6D7
344FEC:  DCW 0x156
344FEE:  DCW 0x156
344FF0:  DCW 0x156
344FF2:  DCW 0x70D
344FF4:  DCW 0x721
344FF6:  DCW 0x156
344FF8:  DCW 0x156
344FFA:  DCW 0x156
344FFC:  DCW 0x156
344FFE:  DCW 0x156
345000:  DCW 0x156
345002:  DCW 0x156
345004:  DCW 0x156
345006:  DCW 0x156
345008:  DCW 0x734
34500A:  DCW 0x772
34500C:  DCW 0x9D6
34500E:  DCW 0x7D5
345010:  DCW 0x156
345012:  DCW 0x156
345014:  DCW 0x7DC
345016:  DCW 0x7FE
345018:  MOV             R0, R11; jumptable 00344F54 case 703
34501A:  MOVS            R1, #1; __int16
34501C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345020:  LDR.W           R0, =(ScriptParams_ptr - 0x345028)
345024:  ADD             R0, PC; ScriptParams_ptr
345026:  LDR             R0, [R0]; ScriptParams
345028:  LDR             R0, [R0]
34502A:  CMP             R0, #0
34502C:  BLT.W           loc_345FAE
345030:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34503C)
345034:  UXTB            R3, R0
345036:  LSRS            R0, R0, #8
345038:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34503A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
34503C:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34503E:  LDR             R2, [R1,#4]
345040:  LDRB            R2, [R2,R0]
345042:  CMP             R2, R3
345044:  BNE.W           loc_345FAE
345048:  MOVW            R2, #0xA2C
34504C:  LDR             R1, [R1]
34504E:  MLA.W           R2, R0, R2, R1
345052:  CMP             R2, #0
345054:  BEQ.W           loc_345FAE
345058:  LDRB.W          R2, [R2,#0x45]
34505C:  LSLS            R2, R2, #0x1F
34505E:  BNE.W           loc_346188
345062:  MOVW            R2, #0xA2C
345066:  MOVW            R6, #0x21B
34506A:  MLA.W           R2, R0, R2, R1
34506E:  LDRH            R3, [R2,#0x26]
345070:  CMP             R3, R6
345072:  BNE.W           loc_345FAE
345076:  VMOV.F32        S0, #1.0
34507A:  ADD.W           R2, R2, #0x7E8
34507E:  VLDR            S2, [R2]
345082:  VCMPE.F32       S2, S0
345086:  VMRS            APSR_nzcv, FPSCR
34508A:  BGE.W           loc_345FAE
34508E:  MOVW            R2, #0xA2C
345092:  MLA.W           R0, R0, R2, R1
345096:  LDR.W           R2, =(g_surfaceInfos_ptr - 0x34509E)
34509A:  ADD             R2, PC; g_surfaceInfos_ptr
34509C:  LDRB.W          R1, [R0,#0x75B]; unsigned int
3450A0:  LDR             R0, [R2]; g_surfaceInfos ; this
3450A2:  BLX             j__ZN14SurfaceInfos_c14IsShallowWaterEj; SurfaceInfos_c::IsShallowWater(uint)
3450A6:  B               loc_34538E
3450A8:  MOV             R0, R11; jumptable 00344F54 case 704
3450AA:  MOVS            R1, #3; __int16
3450AC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3450B0:  LDR.W           R0, =(ScriptParams_ptr - 0x3450BC)
3450B4:  VLDR            S2, =-100.0
3450B8:  ADD             R0, PC; ScriptParams_ptr
3450BA:  LDR             R0, [R0]; ScriptParams
3450BC:  VLDR            S0, [R0,#8]
3450C0:  VLDR            S16, [R0]
3450C4:  VCMPE.F32       S0, S2
3450C8:  VLDR            S18, [R0,#4]
3450CC:  VMRS            APSR_nzcv, FPSCR
3450D0:  BGT             loc_3450E2
3450D2:  VMOV            R0, S16; this
3450D6:  VMOV            R1, S18; float
3450DA:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
3450DE:  VMOV            S0, R0
3450E2:  VMOV            R1, S16
3450E6:  LDR.W           R0, =(ThePaths_ptr - 0x3450FA)
3450EA:  VMOV            R2, S18
3450EE:  MOVW            R4, #0x23FE
3450F2:  VMOV            R3, S0
3450F6:  ADD             R0, PC; ThePaths_ptr
3450F8:  MOVS            R6, #0
3450FA:  MOV.W           R12, #1
3450FE:  LDR             R0, [R0]; ThePaths
345100:  MOVT            R4, #0x4974
345104:  STRD.W          R6, R6, [SP,#0xF0+var_DC]
345108:  STRD.W          R6, R6, [SP,#0xF0+var_E4]
34510C:  STR.W           R12, [SP,#0xF0+var_E8]
345110:  STRD.W          R12, R4, [SP,#0xF0+var_F0]
345114:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
345118:  UXTH            R1, R0
34511A:  UXTH            R2, R5
34511C:  CMP             R1, R2
34511E:  BNE.W           loc_34618C
345122:  MOVS            R1, #0
345124:  MOVS            R0, #0
345126:  MOVS            R5, #0
345128:  B.W             loc_3461E8
34512C:  MOV             R0, R11; jumptable 00344F54 case 705
34512E:  MOVS            R1, #3; __int16
345130:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345134:  LDR.W           R0, =(ScriptParams_ptr - 0x345140)
345138:  VLDR            S2, =-100.0
34513C:  ADD             R0, PC; ScriptParams_ptr
34513E:  LDR             R0, [R0]; ScriptParams
345140:  VLDR            S0, [R0,#8]
345144:  VLDR            S16, [R0]
345148:  VCMPE.F32       S0, S2
34514C:  VLDR            S18, [R0,#4]
345150:  VMRS            APSR_nzcv, FPSCR
345154:  BGT             loc_345166
345156:  VMOV            R0, S16; this
34515A:  VMOV            R1, S18; float
34515E:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
345162:  VMOV            S0, R0
345166:  VMOV            R1, S16
34516A:  LDR.W           R0, =(ThePaths_ptr - 0x34517C)
34516E:  VMOV            R2, S18
345172:  MOVS            R6, #0
345174:  VMOV            R3, S0
345178:  ADD             R0, PC; ThePaths_ptr
34517A:  MOVS            R5, #1
34517C:  STR             R6, [SP,#0xF0+var_D8]
34517E:  STRD.W          R6, R6, [SP,#0xF0+var_E0]
345182:  STRD.W          R6, R5, [SP,#0xF0+var_E8]
345186:  LDR             R5, [R0]; ThePaths
345188:  MOV             R0, #0x497423FE
345190:  STRD.W          R6, R0, [SP,#0xF0+var_F0]
345194:  MOV             R0, R5
345196:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
34519A:  MOV             R2, R0
34519C:  ADD             R0, SP, #0xF0+var_6C
34519E:  ADD             R3, SP, #0xF0+var_90
3451A0:  MOV             R1, R5
3451A2:  BLX             j__ZN9CPathFind22FindNodeCoorsForScriptE12CNodeAddressPb; CPathFind::FindNodeCoorsForScript(CNodeAddress,bool *)
3451A6:  LDRB.W          R0, [SP,#0xF0+var_90]
3451AA:  CMP             R0, #0
3451AC:  BEQ.W           loc_346266
3451B0:  LDR.W           R0, =(ScriptParams_ptr - 0x3451BC)
3451B4:  ADD             R6, SP, #0xF0+var_6C
3451B6:  MOVS            R5, #1
3451B8:  ADD             R0, PC; ScriptParams_ptr
3451BA:  LDM             R6, {R1,R2,R6}
3451BC:  LDR             R0, [R0]; ScriptParams
3451BE:  STRD.W          R1, R2, [R0]
3451C2:  B.W             loc_346272
3451C6:  MOV             R0, R11; jumptable 00344F54 case 706
3451C8:  MOVS            R1, #4; __int16
3451CA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3451CE:  LDR.W           R0, =(ScriptParams_ptr - 0x3451D6)
3451D2:  ADD             R0, PC; ScriptParams_ptr
3451D4:  LDR             R0, [R0]; ScriptParams
3451D6:  LDR             R1, [R0]
3451D8:  CMP             R1, #0
3451DA:  BLT.W           loc_345FB2
3451DE:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3451EA)
3451E2:  UXTB            R3, R1
3451E4:  LSRS            R1, R1, #8
3451E6:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3451E8:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3451EA:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3451EC:  LDR             R2, [R0,#4]
3451EE:  LDRB            R2, [R2,R1]
3451F0:  CMP             R2, R3
3451F2:  BNE.W           loc_345FB2
3451F6:  MOVW            R2, #0xA2C
3451FA:  LDR             R0, [R0]
3451FC:  MLA.W           R4, R1, R2, R0
345200:  B.W             loc_345FB4
345204:  MOVS            R6, #0xFF; jumptable 00344F54 default case, cases 707-713,717,722,725,727,729,730,732,734,735,751-753,756,757,763,764,766,768,769,772-775,777-779,782-790,795,796
345206:  B.W             loc_346304; jumptable 00344F54 cases 741,742,755,793
34520A:  MOV             R0, R11; jumptable 00344F54 case 714
34520C:  MOVS            R1, #1; __int16
34520E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345212:  LDR.W           R0, =(ScriptParams_ptr - 0x34521A)
345216:  ADD             R0, PC; ScriptParams_ptr
345218:  LDR             R0, [R0]; ScriptParams
34521A:  LDR             R1, [R0]
34521C:  CMP             R1, #0
34521E:  BLT.W           loc_346026
345222:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34522E)
345226:  UXTB            R3, R1
345228:  LSRS            R1, R1, #8
34522A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34522C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
34522E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
345230:  LDR             R2, [R0,#4]
345232:  LDRB            R2, [R2,R1]
345234:  CMP             R2, R3
345236:  BNE.W           loc_346026
34523A:  MOVW            R2, #0xA2C
34523E:  LDR             R0, [R0]
345240:  MLA.W           R5, R1, R2, R0
345244:  B.W             loc_346028
345248:  MOV             R0, R11; jumptable 00344F54 case 715
34524A:  MOVS            R1, #1; __int16
34524C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345250:  LDR.W           R0, =(ScriptParams_ptr - 0x345258)
345254:  ADD             R0, PC; ScriptParams_ptr
345256:  LDR             R0, [R0]; ScriptParams
345258:  LDR             R1, [R0]
34525A:  CMP             R1, #0
34525C:  BLT.W           loc_34604A
345260:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34526C)
345264:  UXTB            R3, R1
345266:  LSRS            R1, R1, #8
345268:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34526A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34526C:  LDR             R0, [R0]; CPools::ms_pPedPool
34526E:  LDR             R2, [R0,#4]
345270:  LDRB            R2, [R2,R1]
345272:  CMP             R2, R3
345274:  BNE.W           loc_34604A
345278:  MOVW            R2, #0x7CC
34527C:  LDR             R0, [R0]
34527E:  MLA.W           R5, R1, R2, R0
345282:  B.W             loc_34604C
345286:  MOV             R0, R11; jumptable 00344F54 case 716
345288:  MOVS            R1, #1; __int16
34528A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34528E:  LDR.W           R0, =(ScriptParams_ptr - 0x345296)
345292:  ADD             R0, PC; ScriptParams_ptr
345294:  LDR             R0, [R0]; ScriptParams
345296:  LDR             R1, [R0]
345298:  CMP             R1, #0
34529A:  BLT.W           loc_34606E
34529E:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3452AA)
3452A2:  UXTB            R3, R1
3452A4:  LSRS            R1, R1, #8
3452A6:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3452A8:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
3452AA:  LDR             R0, [R0]; CPools::ms_pObjectPool
3452AC:  LDR             R2, [R0,#4]
3452AE:  LDRB            R2, [R2,R1]
3452B0:  CMP             R2, R3
3452B2:  BNE.W           loc_34606E
3452B6:  MOV.W           R2, #0x1A4
3452BA:  LDR             R0, [R0]
3452BC:  MLA.W           R5, R1, R2, R0
3452C0:  B.W             loc_346070
3452C4:  MOV             R0, R11; jumptable 00344F54 case 718
3452C6:  MOVS            R1, #3; __int16
3452C8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3452CC:  LDR.W           R0, =(ScriptParams_ptr - 0x3452DA)
3452D0:  SUB.W           R3, R7, #-var_91; float
3452D4:  MOVS            R6, #0
3452D6:  ADD             R0, PC; ScriptParams_ptr
3452D8:  LDR             R4, [R0]; ScriptParams
3452DA:  LDM.W           R4, {R0-R2}; float
3452DE:  STR             R6, [SP,#0xF0+var_F0]; bool *
3452E0:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
3452E4:  B               loc_34535C
3452E6:  MOV             R0, R11; jumptable 00344F54 case 719
3452E8:  MOVS            R1, #5; __int16
3452EA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3452EE:  LDR.W           R0, =(ScriptParams_ptr - 0x3452FA)
3452F2:  VLDR            S2, =-100.0
3452F6:  ADD             R0, PC; ScriptParams_ptr
3452F8:  LDR             R0, [R0]; ScriptParams
3452FA:  VLDR            S0, [R0,#8]
3452FE:  VLDR            S16, [R0]
345302:  VCMPE.F32       S0, S2
345306:  VLDR            S18, [R0,#4]
34530A:  VMRS            APSR_nzcv, FPSCR
34530E:  BGT             loc_345320
345310:  VMOV            R0, S16; this
345314:  VMOV            R1, S18; float
345318:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34531C:  VMOV            S0, R0
345320:  LDR.W           R0, =(ScriptParams_ptr - 0x345332)
345324:  MOVW            R3, #0xCCCD
345328:  LDR.W           R6, =(gFireManager_ptr - 0x345338)
34532C:  ADD             R1, SP, #0xF0+var_6C; CVector *
34532E:  ADD             R0, PC; ScriptParams_ptr
345330:  MOVT            R3, #0x3F4C; float
345334:  ADD             R6, PC; gFireManager_ptr
345336:  VSTR            S18, [SP,#0xF0+var_68]
34533A:  LDR             R4, [R0]; ScriptParams
34533C:  VSTR            S16, [SP,#0xF0+var_6C]
345340:  VSTR            S0, [SP,#0xF0+var_64]
345344:  LDR             R0, [R4,#(dword_81A918 - 0x81A908)]
345346:  STR             R0, [SP,#0xF0+var_E8]; int
345348:  LDRSB.W         R2, [R4,#(dword_81A914 - 0x81A908)]
34534C:  LDR             R0, [R6]; gFireManager ; this
34534E:  MOVS            R6, #0
345350:  STR             R2, [SP,#0xF0+var_EC]; signed __int8
345352:  MOVS            R2, #1
345354:  STR             R2, [SP,#0xF0+var_F0]; unsigned __int8
345356:  MOVS            R2, #0; CEntity *
345358:  BLX             j__ZN12CFireManager15StartScriptFireERK7CVectorP7CEntityfhai; CFireManager::StartScriptFire(CVector const&,CEntity *,float,uchar,signed char,int)
34535C:  STR             R0, [R4]
34535E:  B               loc_345852
345360:  MOV             R0, R11; jumptable 00344F54 case 720
345362:  MOVS            R1, #1; __int16
345364:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345368:  LDR.W           R0, =(ScriptParams_ptr - 0x345372)
34536C:  MOVS            R1, #5; int
34536E:  ADD             R0, PC; ScriptParams_ptr
345370:  LDR             R0, [R0]; ScriptParams
345372:  LDR             R0, [R0]; this
345374:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
345378:  CMP             R0, #0x3B ; ';'
34537A:  BHI.W           loc_345FAE
34537E:  LDR.W           R1, =(gFireManager_ptr - 0x345386)
345382:  ADD             R1, PC; gFireManager_ptr
345384:  LDR             R2, [R1]; gFireManager
345386:  SXTH            R1, R0; __int16
345388:  MOV             R0, R2; this
34538A:  BLX             j__ZN12CFireManager24IsScriptFireExtinguishedEs; CFireManager::IsScriptFireExtinguished(short)
34538E:  MOV             R1, R0
345390:  CMP             R1, #0
345392:  IT NE
345394:  MOVNE           R1, #1
345396:  B.W             loc_3462FC
34539A:  MOV             R0, R11; jumptable 00344F54 case 721
34539C:  MOVS            R1, #1; __int16
34539E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3453A2:  LDR.W           R0, =(ScriptParams_ptr - 0x3453AC)
3453A6:  MOVS            R1, #5; int
3453A8:  ADD             R0, PC; ScriptParams_ptr
3453AA:  LDR             R0, [R0]; ScriptParams
3453AC:  LDR             R0, [R0]; this
3453AE:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3453B2:  CMP             R0, #0x3B ; ';'
3453B4:  BHI.W           loc_346302
3453B8:  LDR.W           R1, =(gFireManager_ptr - 0x3453C0)
3453BC:  ADD             R1, PC; gFireManager_ptr
3453BE:  LDR             R2, [R1]; gFireManager
3453C0:  SXTH            R1, R0; __int16
3453C2:  MOV             R0, R2; this
3453C4:  BLX             j__ZN12CFireManager16RemoveScriptFireEs; CFireManager::RemoveScriptFire(short)
3453C8:  B.W             loc_346302
3453CC:  MOV             R0, R11; jumptable 00344F54 case 723
3453CE:  MOVS            R1, #4; __int16
3453D0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3453D4:  LDR.W           R0, =(ScriptParams_ptr - 0x3453DC)
3453D8:  ADD             R0, PC; ScriptParams_ptr
3453DA:  LDR             R0, [R0]; ScriptParams
3453DC:  LDR             R1, [R0]
3453DE:  CMP             R1, #0
3453E0:  BLT.W           loc_3460A0
3453E4:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3453F0)
3453E8:  UXTB            R3, R1
3453EA:  LSRS            R1, R1, #8
3453EC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3453EE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3453F0:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3453F2:  LDR             R2, [R0,#4]
3453F4:  LDRB            R2, [R2,R1]
3453F6:  CMP             R2, R3
3453F8:  BNE.W           loc_3460A0
3453FC:  MOVW            R2, #0xA2C
345400:  LDR             R0, [R0]
345402:  MLA.W           R4, R1, R2, R0
345406:  B.W             loc_3460A2
34540A:  MOV             R0, R11; jumptable 00344F54 case 724
34540C:  MOVS            R1, #1; __int16
34540E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345412:  LDR.W           R0, =(ScriptParams_ptr - 0x34541A)
345416:  ADD             R0, PC; ScriptParams_ptr
345418:  LDR             R0, [R0]; ScriptParams
34541A:  LDR             R1, [R0]
34541C:  CMP             R1, #0
34541E:  BLT.W           loc_346128
345422:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x34542E)
345426:  UXTB            R3, R1
345428:  LSRS            R1, R1, #8
34542A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34542C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
34542E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
345430:  LDR             R2, [R0,#4]
345432:  LDRB            R2, [R2,R1]
345434:  CMP             R2, R3
345436:  BNE.W           loc_346128
34543A:  MOVW            R2, #0xA2C
34543E:  LDR             R0, [R0]
345440:  MLA.W           R0, R1, R2, R0
345444:  B.W             loc_34612A
345448:  MOV             R0, R11; jumptable 00344F54 case 726
34544A:  MOVS            R1, #6; __int16
34544C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345450:  LDR.W           R0, =(ScriptParams_ptr - 0x345460)
345454:  MOVW            R2, #0x7CC
345458:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x345462)
34545C:  ADD             R0, PC; ScriptParams_ptr
34545E:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
345460:  LDR             R0, [R0]; ScriptParams
345462:  LDR             R1, [R1]; CPools::ms_pPedPool ...
345464:  LDR             R0, [R0]
345466:  LDR             R1, [R1]; CPools::ms_pPedPool
345468:  LSRS            R0, R0, #8
34546A:  LDR             R1, [R1]
34546C:  MLA.W           R0, R0, R2, R1; this
345470:  LDRB.W          R1, [R0,#0x486]
345474:  LSLS            R1, R1, #0x1F
345476:  BNE.W           loc_3461F6
34547A:  MOVS            R1, #0
34547C:  B.W             loc_346214
345480:  DCFS -100.0
345484:  MOV             R0, R11; jumptable 00344F54 case 728
345486:  MOVS            R1, #2; __int16
345488:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34548C:  LDR.W           R0, =(ScriptParams_ptr - 0x345494)
345490:  ADD             R0, PC; ScriptParams_ptr
345492:  LDR             R0, [R0]; ScriptParams
345494:  LDR             R1, [R0]
345496:  CMP             R1, #0
345498:  BLT.W           loc_34615E
34549C:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3454A8)
3454A0:  UXTB            R3, R1
3454A2:  LSRS            R1, R1, #8
3454A4:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3454A6:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3454A8:  LDR             R0, [R0]; CPools::ms_pPedPool
3454AA:  LDR             R2, [R0,#4]
3454AC:  LDRB            R2, [R2,R1]
3454AE:  CMP             R2, R3
3454B0:  BNE.W           loc_34615E
3454B4:  MOVW            R2, #0x7CC
3454B8:  LDR             R0, [R0]
3454BA:  MLA.W           R5, R1, R2, R0
3454BE:  B.W             loc_346160
3454C2:  MOV             R0, R11; jumptable 00344F54 case 731
3454C4:  MOVS            R1, #2; __int16
3454C6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3454CA:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3454DC)
3454CE:  MOVW            R3, #0xA2C
3454D2:  LDR.W           R0, =(ScriptParams_ptr - 0x3454DE)
3454D6:  MOVS            R6, #0
3454D8:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3454DA:  ADD             R0, PC; ScriptParams_ptr
3454DC:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3454DE:  LDR             R0, [R0]; ScriptParams
3454E0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3454E2:  VLDR            S0, [R0,#4]
3454E6:  LDR             R2, [R0]
3454E8:  LDR             R1, [R1]
3454EA:  VCVT.U32.F32    S0, S0
3454EE:  LSRS            R2, R2, #8
3454F0:  MLA.W           R1, R2, R3, R1
3454F4:  VMOV            R0, S0
3454F8:  STRB.W          R0, [R1,#0x3D4]
3454FC:  B.W             loc_346304; jumptable 00344F54 cases 741,742,755,793
345500:  ADD             R5, SP, #0xF0+var_50; jumptable 00344F54 case 733
345502:  MOV             R0, R11; this
345504:  MOVS            R2, #8; unsigned __int8
345506:  MOV             R1, R5; char *
345508:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
34550C:  MOVS            R0, #0
34550E:  MOV             R1, R5; char *
345510:  STRD.W          R0, R0, [SP,#0xF0+var_80]
345514:  ADD             R0, SP, #0xF0+var_80; char *
345516:  BLX             strcpy
34551A:  MOV             R0, R11; this
34551C:  MOVS            R1, #3; __int16
34551E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345522:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x345532)
345526:  MOV.W           R1, #0xFFFFFFFF
34552A:  MOV.W           R5, #0xFFFFFFFF
34552E:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
345530:  LDR             R0, [R0]; CPools::ms_pPedPool ...
345532:  LDR             R0, [R0]; CPools::ms_pPedPool
345534:  LDR             R6, [R0,#8]
345536:  ADD             R0, SP, #0xF0+var_6C; int
345538:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
34553C:  CMP             R6, #0
34553E:  BEQ.W           loc_345772
345542:  MOVW            R0, #0x7CC
345546:  VMOV.F32        S2, #5.0
34554A:  MULS            R0, R6
34554C:  VMOV.F32        S4, #-5.0
345550:  VLDR            S0, [SP,#0xF0+var_64]
345554:  MOVW            R12, #0xFBB8
345558:  SUB.W           R9, R6, #1
34555C:  MOVW            R6, #0x7F3B
345560:  MOVT            R12, #0xFFFF
345564:  MOVT            R6, #0xBED8
345568:  SUB.W           R8, R0, #0x384
34556C:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x345578)
345570:  VADD.F32        S16, S0, S2
345574:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
345576:  VADD.F32        S18, S0, S4
34557A:  LDR.W           R10, [R0]; CPools::ms_pPedPool ...
34557E:  LDR.W           R0, =(_ZN11CTheScripts15LastRandomPedIdE_ptr - 0x345586)
345582:  ADD             R0, PC; _ZN11CTheScripts15LastRandomPedIdE_ptr
345584:  LDR             R4, [R0]; CTheScripts::LastRandomPedId ...
345586:  LDR.W           R0, =(ScriptParams_ptr - 0x34558E)
34558A:  ADD             R0, PC; ScriptParams_ptr
34558C:  LDR             R0, [R0]; ScriptParams
34558E:  STR             R0, [SP,#0xF0+var_B8]
345590:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x345598)
345594:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
345596:  LDR             R0, [R0]; CPools::ms_pPedPool ...
345598:  STR             R0, [SP,#0xF0+var_BC]
34559A:  LDR.W           R0, =(_ZN11CTheScripts15LastRandomPedIdE_ptr - 0x3455A2)
34559E:  ADD             R0, PC; _ZN11CTheScripts15LastRandomPedIdE_ptr
3455A0:  LDR             R0, [R0]; CTheScripts::LastRandomPedId ...
3455A2:  STR             R0, [SP,#0xF0+var_C0]
3455A4:  LDR.W           R0, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x3455AC)
3455A8:  ADD             R0, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
3455AA:  LDR             R0, [R0]; CPopulation::ms_nTotalMissionPeds ...
3455AC:  STR             R0, [SP,#0xF0+var_C4]
3455AE:  LDR.W           R0, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x3455B6)
3455B2:  ADD             R0, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
3455B4:  LDR             R0, [R0]; CTheScripts::MissionCleanUp ...
3455B6:  STR             R0, [SP,#0xF0+var_C8]
3455B8:  LDR.W           R0, [R10]; CPools::ms_pPedPool
3455BC:  LDR             R1, [R0,#4]
3455BE:  LDRSB.W         R2, [R1,R9]
3455C2:  CMP             R2, #0
3455C4:  BLT.W           loc_34575A
3455C8:  LDR             R0, [R0]
3455CA:  ADD.W           R5, R0, R8
3455CE:  CMP.W           R5, #0x448
3455D2:  BEQ.W           loc_34575A
3455D6:  SUB.W           R2, R8, #0x448
3455DA:  LDR             R3, [R4]; CTheScripts::LastRandomPedId
3455DC:  ASRS            R2, R2, #2
3455DE:  MULS            R2, R6
3455E0:  LDRB            R1, [R1,R2]
3455E2:  ORR.W           R1, R1, R2,LSL#8
3455E6:  CMP             R1, R3
3455E8:  BEQ.W           loc_34575A
3455EC:  LDRB.W          R1, [R0,R8]
3455F0:  CMP             R1, #1
3455F2:  BNE.W           loc_34575A
3455F6:  ADD             R0, R12
3455F8:  ADD.W           R1, R0, R8
3455FC:  LDRB            R0, [R1,#0x1D]
3455FE:  LSLS            R0, R0, #0x1C
345600:  BMI.W           loc_34575A
345604:  LDRB.W          R0, [R5,#0x40]
345608:  LSLS            R0, R0, #0x1C
34560A:  BMI             loc_34563E
34560C:  STR             R4, [SP,#0xF0+var_B4]
34560E:  SUB.W           R4, R5, #0x448
345612:  STR             R1, [SP,#0xF0+var_CC]
345614:  MOV             R0, R11; this
345616:  MOV             R1, R4; CPed *
345618:  BLX             j__ZN14CRunningScript9IsPedDeadEP4CPed; CRunningScript::IsPedDead(CPed *)
34561C:  CBZ             R0, loc_34564C
34561E:  MOV.W           R5, #0xFFFFFFFF
345622:  LDR             R4, [SP,#0xF0+var_B4]
345624:  MOVW            R12, #0xFBB8
345628:  MOVW            R6, #0x7F3B
34562C:  MOVT            R12, #0xFFFF
345630:  MOVT            R6, #0xBED8
345634:  CMP.W           R9, #0
345638:  BNE.W           loc_345764
34563C:  B               loc_345772
34563E:  MOV.W           R5, #0xFFFFFFFF
345642:  CMP.W           R9, #0
345646:  BNE.W           loc_345764
34564A:  B               loc_345772
34564C:  STR             R4, [SP,#0xF0+var_D0]
34564E:  MOVW            R12, #0xFBB8
345652:  LDR.W           R0, [R5,#0x148]
345656:  MOVW            R6, #0x7F3B
34565A:  LDR             R4, [SP,#0xF0+var_B4]
34565C:  MOVT            R12, #0xFFFF
345660:  CMP             R0, #0
345662:  MOVT            R6, #0xBED8
345666:  BNE             loc_34575A
345668:  ADD.W           R0, R5, #0x3C ; '<'
34566C:  LDRB            R0, [R0,#1]
34566E:  LSLS            R0, R0, #0x1F
345670:  BNE             loc_34575A
345672:  LDR             R0, [SP,#0xF0+var_B8]
345674:  LDR.W           R1, [R5,#0x154]; unsigned int
345678:  LDRD.W          R2, R3, [R0]; int
34567C:  LDR             R0, [R0,#8]
34567E:  STR             R0, [SP,#0xF0+var_F0]; int
345680:  MOV             R0, R11; this
345682:  BLX             j__ZN14CRunningScript21ThisIsAValidRandomPedEjiii; CRunningScript::ThisIsAValidRandomPed(uint,int,int,int)
345686:  CMP             R0, #0
345688:  BEQ             loc_34561E
34568A:  LDR             R0, [SP,#0xF0+var_D0]; this
34568C:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
345690:  CMP             R0, #0
345692:  BNE             loc_34561E
345694:  MOV             R0, #0xFFFFFBCC
34569C:  LDR             R0, [R5,R0]
34569E:  ADD.W           R1, R0, #0x30 ; '0'
3456A2:  CMP             R0, #0
3456A4:  LDR             R0, [SP,#0xF0+var_CC]
3456A6:  IT EQ
3456A8:  ADDEQ           R1, R0, #4
3456AA:  LDR             R0, [R1,#8]
3456AC:  VLDR            D16, [R1]
3456B0:  STR             R0, [SP,#0xF0+var_88]
3456B2:  MOVS            R0, #0
3456B4:  VLDR            S20, [SP,#0xF0+var_88]
3456B8:  VSTR            D16, [SP,#0xF0+var_90]
3456BC:  LDRD.W          R2, R3, [SP,#0xF0+var_80]
3456C0:  STR             R0, [SP,#0xF0+var_F0]; bool *
3456C2:  ADD             R0, SP, #0xF0+var_90
3456C4:  BLX             j__ZN9CTheZones35DoesPointLieWithinZoneWithGivenNameEPK7CVectory9eZoneType; CTheZones::DoesPointLieWithinZoneWithGivenName(CVector const*,ulong long,eZoneType)
3456C8:  VCMPE.F32       S20, S16
3456CC:  MOV.W           R5, #0xFFFFFFFF
3456D0:  VMRS            APSR_nzcv, FPSCR
3456D4:  BGT             loc_345622
3456D6:  VCMPE.F32       S20, S18
3456DA:  VMRS            APSR_nzcv, FPSCR
3456DE:  BLT             loc_345622
3456E0:  LDR             R4, [SP,#0xF0+var_B4]
3456E2:  MOVW            R12, #0xFBB8
3456E6:  MOVW            R6, #0x7F3B
3456EA:  CMP             R0, #0
3456EC:  MOVT            R12, #0xFFFF
3456F0:  MOVT            R6, #0xBED8
3456F4:  BEQ             loc_345642
3456F6:  MOVS            R0, #0
3456F8:  LDRD.W          R1, R2, [SP,#0xF0+var_90+4]; float
3456FC:  STRB.W          R0, [SP,#0xF0+var_6C]
345700:  ADD             R3, SP, #0xF0+var_6C; float
345702:  LDR             R0, [SP,#0xF0+var_90]; this
345704:  BLX             j__ZN6CWorld19FindRoofZFor3DCoordEfffPb; CWorld::FindRoofZFor3DCoord(float,float,float,bool *)
345708:  LDRB.W          R0, [SP,#0xF0+var_6C]
34570C:  CMP             R0, #0
34570E:  BNE.W           loc_34561E
345712:  LDR             R0, [SP,#0xF0+var_BC]
345714:  MOV             R2, #0xBED87F3B
34571C:  LDR             R0, [R0]
34571E:  LDRD.W          R1, R0, [R0]
345722:  LDR             R3, [SP,#0xF0+var_D0]
345724:  SUBS            R1, R3, R1
345726:  ASRS            R1, R1, #2
345728:  MULS            R1, R2
34572A:  LDRB            R0, [R0,R1]
34572C:  ORR.W           R5, R0, R1,LSL#8
345730:  LDR             R0, [SP,#0xF0+var_C0]
345732:  MOVS            R1, #2; unsigned __int8
345734:  STR             R5, [R0]
345736:  MOV             R0, R3; this
345738:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
34573C:  LDR             R1, [SP,#0xF0+var_C4]
34573E:  LDR             R0, [R1]
345740:  ADDS            R0, #1
345742:  STR             R0, [R1]
345744:  LDRB.W          R0, [R11,#0xE6]
345748:  CMP             R0, #0
34574A:  BEQ.W           loc_345622
34574E:  LDR             R0, [SP,#0xF0+var_C8]; this
345750:  MOV             R1, R5; int
345752:  MOVS            R2, #2; unsigned __int8
345754:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
345758:  B               loc_345622
34575A:  MOV.W           R5, #0xFFFFFFFF
34575E:  CMP.W           R9, #0
345762:  BEQ             loc_345772
345764:  SUB.W           R9, R9, #1
345768:  SUBW            R8, R8, #0x7CC
34576C:  ADDS            R0, R5, #1
34576E:  BEQ.W           loc_3455B8
345772:  LDR.W           R0, =(ScriptParams_ptr - 0x34577A)
345776:  ADD             R0, PC; ScriptParams_ptr
345778:  LDR             R0, [R0]; ScriptParams
34577A:  STR             R5, [R0]
34577C:  B               loc_345B44
34577E:  MOV             R0, R11; jumptable 00344F54 case 736
345780:  MOVS            R1, #1; __int16
345782:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345786:  LDR.W           R0, =(ScriptParams_ptr - 0x345796)
34578A:  MOVW            R2, #0x7CC
34578E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x345798)
345792:  ADD             R0, PC; ScriptParams_ptr
345794:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
345796:  LDR             R0, [R0]; ScriptParams
345798:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34579A:  LDR             R0, [R0]
34579C:  LDR             R1, [R1]; CPools::ms_pPedPool
34579E:  LSRS            R0, R0, #8
3457A0:  LDR             R1, [R1]
3457A2:  MLA.W           R0, R0, R2, R1
3457A6:  LDRH.W          R0, [R0,#0x486]
3457AA:  AND.W           R1, R0, #1
3457AE:  B.W             loc_3462FC
3457B2:  MOV             R0, R11; jumptable 00344F54 case 737
3457B4:  MOVS            R1, #5; __int16
3457B6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3457BA:  LDR.W           R0, =(ScriptParams_ptr - 0x3457C6)
3457BE:  VLDR            S0, =-100.0
3457C2:  ADD             R0, PC; ScriptParams_ptr
3457C4:  LDR             R0, [R0]; ScriptParams
3457C6:  VLDR            S20, [R0,#8]
3457CA:  VLDR            S18, [R0]
3457CE:  VCMPE.F32       S20, S0
3457D2:  VLDR            S16, [R0,#4]
3457D6:  VMRS            APSR_nzcv, FPSCR
3457DA:  BGT             loc_3457F4
3457DC:  VMOV            R0, S18; this
3457E0:  VMOV            R1, S16; float
3457E4:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
3457E8:  VMOV.F32        S0, #0.5
3457EC:  VMOV            S2, R0
3457F0:  VADD.F32        S20, S2, S0
3457F4:  MOV             R0, R11; this
3457F6:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
3457FA:  BLX             j__ZN8CPickups20GetActualPickupIndexEi; CPickups::GetActualPickupIndex(int)
3457FE:  LDR.W           R0, =(ScriptParams_ptr - 0x34580C)
345802:  ADD             R1, SP, #0xF0+var_A4
345804:  ADD             R3, SP, #0xF0+var_B0
345806:  MOVS            R4, #0x13
345808:  ADD             R0, PC; ScriptParams_ptr
34580A:  MOVS            R6, #0
34580C:  LDR             R5, [R0]; ScriptParams
34580E:  LDR.W           R0, =(MI_MONEY_ptr - 0x345816)
345812:  ADD             R0, PC; MI_MONEY_ptr
345814:  LDR             R2, [R5,#(dword_81A918 - 0x81A908)]
345816:  LDR             R0, [R0]; MI_MONEY
345818:  CMP             R2, #0
34581A:  IT NE
34581C:  MOVNE           R3, R1
34581E:  CMP             R2, #0
345820:  VSTR            S18, [R3]
345824:  VMOV            R1, S16
345828:  VSTR            S16, [R3,#4]
34582C:  VMOV            R2, S20
345830:  VSTR            S20, [R3,#8]
345834:  LDRH            R3, [R0]
345836:  VMOV            R0, S18
34583A:  LDR.W           R12, [R5,#(dword_81A914 - 0x81A908)]
34583E:  IT EQ
345840:  MOVEQ           R4, #8
345842:  STRD.W          R4, R12, [SP,#0xF0+var_F0]
345846:  STRD.W          R6, R6, [SP,#0xF0+var_E8]
34584A:  STR             R6, [SP,#0xF0+var_E0]
34584C:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
345850:  STR             R0, [R5]
345852:  MOV             R0, R11; this
345854:  MOVS            R1, #1; __int16
345856:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
34585A:  B.W             loc_346304; jumptable 00344F54 cases 741,742,755,793
34585E:  MOV             R0, R11; jumptable 00344F54 case 738
345860:  MOVS            R1, #2; __int16
345862:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345866:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x345878)
34586A:  MOVW            R3, #0x7CC
34586E:  LDR.W           R0, =(ScriptParams_ptr - 0x34587A)
345872:  MOVS            R6, #0
345874:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
345876:  ADD             R0, PC; ScriptParams_ptr
345878:  LDR             R1, [R1]; CPools::ms_pPedPool ...
34587A:  LDR             R0, [R0]; ScriptParams
34587C:  LDRD.W          R2, R0, [R0]
345880:  LDR             R1, [R1]; CPools::ms_pPedPool
345882:  LSRS            R2, R2, #8
345884:  LDR             R1, [R1]
345886:  MLA.W           R1, R2, R3, R1
34588A:  STRB.W          R0, [R1,#0x71E]
34588E:  B.W             loc_346304; jumptable 00344F54 cases 741,742,755,793
345892:  MOV             R0, R11; jumptable 00344F54 case 739
345894:  MOVS            R1, #1; __int16
345896:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34589A:  LDR.W           R0, =(ScriptParams_ptr - 0x3458AA)
34589E:  MOVW            R3, #0xA2C
3458A2:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3458AC)
3458A6:  ADD             R0, PC; ScriptParams_ptr
3458A8:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3458AA:  LDR             R0, [R0]; ScriptParams
3458AC:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3458AE:  LDR             R2, [R0]
3458B0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3458B2:  LSRS            R2, R2, #8
3458B4:  LDR             R1, [R1]
3458B6:  MLA.W           R1, R2, R3, R1
3458BA:  VLDR            S0, [R1,#0x48]
3458BE:  VLDR            S2, [R1,#0x4C]
3458C2:  VMUL.F32        S0, S0, S0
3458C6:  VLDR            S4, [R1,#0x50]
3458CA:  VMUL.F32        S2, S2, S2
3458CE:  VMUL.F32        S4, S4, S4
3458D2:  VADD.F32        S0, S0, S2
3458D6:  VLDR            S2, =50.0
3458DA:  VADD.F32        S0, S0, S4
3458DE:  VSQRT.F32       S0, S0
3458E2:  VMUL.F32        S0, S0, S2
3458E6:  B               loc_345B40
3458E8:  ADD             R5, SP, #0xF0+var_6C; jumptable 00344F54 case 740
3458EA:  MOV             R0, R11; this
3458EC:  MOVS            R2, #8; unsigned __int8
3458EE:  MOV             R1, R5; char *
3458F0:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3458F4:  MOV             R0, R5; this
3458F6:  BLX             j__ZN12CCutsceneMgr16LoadCutsceneDataEPKc; CCutsceneMgr::LoadCutsceneData(char const*)
3458FA:  B.W             loc_346302
3458FE:  BLX             j__ZN12CCutsceneMgr13StartCutsceneEv; jumptable 00344F54 case 743
345902:  B.W             loc_346302
345906:  LDR.W           R0, =(ScriptParams_ptr - 0x34590E); jumptable 00344F54 case 744
34590A:  ADD             R0, PC; ScriptParams_ptr ; this
34590C:  LDR             R4, [R0]; ScriptParams
34590E:  BLX             j__ZN12CCutsceneMgr29GetCutsceneTimeInMillesecondsEv; CCutsceneMgr::GetCutsceneTimeInMilleseconds(void)
345912:  B               loc_345AAE
345914:  BLX             j__ZN12CCutsceneMgr19HasCutsceneFinishedEv; jumptable 00344F54 case 745
345918:  MOV             R1, R0
34591A:  B.W             loc_3462FC
34591E:  BLX             j__ZN12CCutsceneMgr18DeleteCutsceneDataEv; jumptable 00344F54 case 746
345922:  B.W             loc_346302
345926:  LDR.W           R0, =(TheCamera_ptr - 0x34592E); jumptable 00344F54 case 747
34592A:  ADD             R0, PC; TheCamera_ptr
34592C:  LDR             R0, [R0]; TheCamera ; this
34592E:  BLX             j__ZN7CCamera18RestoreWithJumpCutEv; CCamera::RestoreWithJumpCut(void)
345932:  B.W             loc_346302
345936:  MOV             R0, R11; jumptable 00344F54 case 748
345938:  MOVS            R1, #3; __int16
34593A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34593E:  B.W             loc_346302
345942:  MOV             R0, R11; jumptable 00344F54 case 749
345944:  MOVS            R1, #1; __int16
345946:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34594A:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x34595C)
34594E:  MOV.W           R3, #0x194
345952:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x345962)
345956:  MOVS            R6, #0
345958:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
34595A:  LDR.W           R2, =(ScriptParams_ptr - 0x345966)
34595E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
345960:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
345962:  ADD             R2, PC; ScriptParams_ptr
345964:  LDR             R1, [R1]; CWorld::Players ...
345966:  LDR             R2, [R2]; ScriptParams
345968:  LDR             R0, [R0]; CWorld::PlayerInFocus
34596A:  SMLABB.W        R0, R0, R3, R1
34596E:  LDR             R1, [R2]
345970:  STR.W           R1, [R0,#0xC4]
345974:  B.W             loc_346304; jumptable 00344F54 cases 741,742,755,793
345978:  MOV             R0, R11; jumptable 00344F54 case 750
34597A:  MOVS            R1, #6; __int16
34597C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345980:  LDR.W           R0, =(ScriptParams_ptr - 0x34598C)
345984:  MOVS            R6, #0
345986:  STR             R6, [SP,#0xF0+var_E8]; float
345988:  ADD             R0, PC; ScriptParams_ptr
34598A:  LDR             R0, [R0]; ScriptParams
34598C:  VLDR            S0, [R0]
345990:  VLDR            S6, [R0,#0xC]
345994:  VLDR            S2, [R0,#4]
345998:  VLDR            S10, [R0,#0x10]
34599C:  VMIN.F32        D4, D0, D3
3459A0:  VMAX.F32        D0, D0, D3
3459A4:  VLDR            S4, [R0,#8]
3459A8:  VMIN.F32        D3, D1, D5
3459AC:  VMAX.F32        D8, D1, D5
3459B0:  VMOV            R8, S8
3459B4:  VMOV            R9, S0
3459B8:  VLDR            S0, [R0,#0x14]
3459BC:  VMOV            R5, S6
3459C0:  VMOV            R3, S16; float
3459C4:  VMIN.F32        D10, D2, D0
3459C8:  VMAX.F32        D9, D2, D0
3459CC:  VSTR            S20, [SP,#0xF0+var_F0]
3459D0:  VSTR            S18, [SP,#0xF0+var_EC]
3459D4:  MOV             R0, R8; this
3459D6:  MOV             R1, R9; float
3459D8:  MOV             R2, R5; float
3459DA:  BLX             j__ZN15CProjectileInfo19IsProjectileInRangeEffffffb; CProjectileInfo::IsProjectileInRange(float,float,float,float,float,float,bool)
3459DE:  MOV             R1, R0; unsigned __int8
3459E0:  MOV             R0, R11; this
3459E2:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
3459E6:  LDR.W           R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x3459EE)
3459EA:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
3459EC:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
3459EE:  LDRB            R0, [R0]; CTheScripts::DbgFlag
3459F0:  CMP             R0, #0
3459F2:  BEQ.W           loc_346304; jumptable 00344F54 cases 741,742,755,793
3459F6:  VMOV            R2, S20; float
3459FA:  MOV             R0, R8; this
3459FC:  MOV             R1, R5; float
3459FE:  MOV             R3, R9; float
345A00:  VSTR            S16, [SP,#0xF0+var_F0]
345A04:  VSTR            S18, [SP,#0xF0+var_EC]
345A08:  BLX             j__ZN11CTheScripts13DrawDebugCubeEffffff; CTheScripts::DrawDebugCube(float,float,float,float,float,float)
345A0C:  B.W             loc_346302
345A10:  MOV             R0, R11; jumptable 00344F54 case 754
345A12:  MOVS            R1, #2; __int16
345A14:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345A18:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x345A2A)
345A1C:  MOVW            R3, #0x7CC
345A20:  LDR.W           R0, =(ScriptParams_ptr - 0x345A2C)
345A24:  MOVS            R6, #0
345A26:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
345A28:  ADD             R0, PC; ScriptParams_ptr
345A2A:  LDR             R1, [R1]; CPools::ms_pPedPool ...
345A2C:  LDR             R0, [R0]; ScriptParams
345A2E:  LDRD.W          R2, R0, [R0]
345A32:  LDR             R1, [R1]; CPools::ms_pPedPool
345A34:  LSRS            R2, R2, #8
345A36:  LDR             R1, [R1]
345A38:  MLA.W           R1, R2, R3, R1
345A3C:  LDRSH.W         R1, [R1,#0x26]
345A40:  CMP             R0, R1
345A42:  MOV.W           R1, #0
345A46:  IT EQ
345A48:  MOVEQ           R1, #1; unsigned __int8
345A4A:  MOV             R0, R11; this
345A4C:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
345A50:  B.W             loc_346304; jumptable 00344F54 cases 741,742,755,793
345A54:  MOV             R0, R11; jumptable 00344F54 case 758
345A56:  MOVS            R1, #1; __int16
345A58:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345A5C:  LDR.W           R0, =(ScriptParams_ptr - 0x345A68)
345A60:  VLDR            S0, =3.1416
345A64:  ADD             R0, PC; ScriptParams_ptr
345A66:  LDR             R4, [R0]; ScriptParams
345A68:  VLDR            S2, [R4]
345A6C:  VMUL.F32        S0, S2, S0
345A70:  VLDR            S2, =180.0
345A74:  VDIV.F32        S0, S0, S2
345A78:  VMOV            R0, S0; x
345A7C:  BLX             sinf
345A80:  B               loc_345AAE
345A82:  MOV             R0, R11; jumptable 00344F54 case 759
345A84:  MOVS            R1, #1; __int16
345A86:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345A8A:  LDR.W           R0, =(ScriptParams_ptr - 0x345A96)
345A8E:  VLDR            S0, =3.1416
345A92:  ADD             R0, PC; ScriptParams_ptr
345A94:  LDR             R4, [R0]; ScriptParams
345A96:  VLDR            S2, [R4]
345A9A:  VMUL.F32        S0, S2, S0
345A9E:  VLDR            S2, =180.0
345AA2:  VDIV.F32        S0, S0, S2
345AA6:  VMOV            R0, S0; x
345AAA:  BLX             cosf
345AAE:  STR             R0, [R4]
345AB0:  B               loc_345B44
345AB2:  MOV             R0, R11; jumptable 00344F54 case 760
345AB4:  MOVS            R1, #1; __int16
345AB6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345ABA:  LDR.W           R0, =(ScriptParams_ptr - 0x345ACA)
345ABE:  MOVW            R3, #0xA2C
345AC2:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x345ACC)
345AC6:  ADD             R0, PC; ScriptParams_ptr
345AC8:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
345ACA:  LDR             R0, [R0]; ScriptParams
345ACC:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
345ACE:  LDR             R2, [R0]
345AD0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
345AD2:  LSRS            R2, R2, #8
345AD4:  LDR             R1, [R1]
345AD6:  MLA.W           R1, R2, R3, R1
345ADA:  LDR             R1, [R1,#0x14]
345ADC:  VLDR            S2, [R1,#0x14]
345AE0:  VLDR            S0, [R1,#0x10]
345AE4:  VMUL.F32        S2, S2, S2
345AE8:  VMUL.F32        S4, S0, S0
345AEC:  VADD.F32        S2, S4, S2
345AF0:  VSQRT.F32       S2, S2
345AF4:  VDIV.F32        S0, S0, S2
345AF8:  B               loc_345B40
345AFA:  MOV             R0, R11; jumptable 00344F54 case 761
345AFC:  MOVS            R1, #1; __int16
345AFE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345B02:  LDR.W           R0, =(ScriptParams_ptr - 0x345B12)
345B06:  MOVW            R3, #0xA2C
345B0A:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x345B14)
345B0E:  ADD             R0, PC; ScriptParams_ptr
345B10:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
345B12:  LDR             R0, [R0]; ScriptParams
345B14:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
345B16:  LDR             R2, [R0]
345B18:  LDR             R1, [R1]; CPools::ms_pVehiclePool
345B1A:  LSRS            R2, R2, #8
345B1C:  LDR             R1, [R1]
345B1E:  MLA.W           R1, R2, R3, R1
345B22:  LDR             R1, [R1,#0x14]
345B24:  VLDR            S0, [R1,#0x10]
345B28:  VLDR            S2, [R1,#0x14]
345B2C:  VMUL.F32        S0, S0, S0
345B30:  VMUL.F32        S4, S2, S2
345B34:  VADD.F32        S0, S0, S4
345B38:  VSQRT.F32       S0, S0
345B3C:  VDIV.F32        S0, S2, S0
345B40:  VSTR            S0, [R0]
345B44:  MOV             R0, R11; this
345B46:  MOVS            R1, #1; __int16
345B48:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
345B4C:  B               loc_346302
345B4E:  SUB.W           R6, R7, #-var_46; jumptable 00344F54 case 762
345B52:  MOV             R0, R11; this
345B54:  MOVS            R2, #8; unsigned __int8
345B56:  MOV             R1, R6; char *
345B58:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
345B5C:  MOV             R0, R6; this
345B5E:  BLX             j__ZN8CGarages15FindGarageIndexEPc; CGarages::FindGarageIndex(char *)
345B62:  MOV             R8, R0
345B64:  MOV             R0, R11; this
345B66:  MOVS            R1, #1; __int16
345B68:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345B6C:  CMP             R8, R5
345B6E:  BLE.W           loc_346302
345B72:  LDR.W           R0, =(ScriptParams_ptr - 0x345B7E)
345B76:  MOVS            R2, #0; unsigned __int8
345B78:  MOVS            R6, #0
345B7A:  ADD             R0, PC; ScriptParams_ptr
345B7C:  LDR             R0, [R0]; ScriptParams
345B7E:  LDRB            R1, [R0]; __int16
345B80:  MOV             R0, R8; this
345B82:  BLX             j__ZN8CGarages16ChangeGarageTypeEshj; CGarages::ChangeGarageType(short,uchar,uint)
345B86:  B               loc_346304; jumptable 00344F54 cases 741,742,755,793
345B88:  SUB.W           R5, R7, #-var_5A; jumptable 00344F54 case 765
345B8C:  MOV             R0, R11; this
345B8E:  MOVS            R2, #8; unsigned __int8
345B90:  MOV             R1, R5; char *
345B92:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
345B96:  LDR.W           R0, =(TheText_ptr - 0x345BA0)
345B9A:  MOV             R1, R5; CKeyGen *
345B9C:  ADD             R0, PC; TheText_ptr
345B9E:  LDR             R0, [R0]; TheText ; this
345BA0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
345BA4:  MOV             R8, R0
345BA6:  MOV             R0, R11; this
345BA8:  MOVS            R1, #4; __int16
345BAA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345BAE:  LDR.W           R0, =(ScriptParams_ptr - 0x345BBE)
345BB2:  MOV.W           R5, #0xFFFFFFFF
345BB6:  LDR.W           R1, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x345BC0)
345BBA:  ADD             R0, PC; ScriptParams_ptr
345BBC:  ADD             R1, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
345BBE:  LDR             R0, [R0]; ScriptParams
345BC0:  LDR             R4, [R1]; CTheScripts::bAddNextMessageToPreviousBriefs ...
345BC2:  LDRD.W          R3, R6, [R0]
345BC6:  LDR             R1, [R0,#(dword_81A910 - 0x81A908)]
345BC8:  LDRH            R2, [R0,#(dword_81A914 - 0x81A908)]
345BCA:  LDRB            R0, [R4]; CTheScripts::bAddNextMessageToPreviousBriefs
345BCC:  CMP             R0, #0
345BCE:  IT NE
345BD0:  MOVNE           R0, #1
345BD2:  STRD.W          R6, R5, [SP,#0xF0+var_F0]
345BD6:  STRD.W          R5, R5, [SP,#0xF0+var_E8]
345BDA:  STR             R5, [SP,#0xF0+var_E0]
345BDC:  B               loc_345CFC
345BDE:  SUB.W           R8, R7, #-var_5A; jumptable 00344F54 case 767
345BE2:  MOV             R0, R11; this
345BE4:  MOVS            R2, #8; unsigned __int8
345BE6:  MOV             R1, R8; char *
345BE8:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
345BEC:  LDR.W           R0, =(TheText_ptr - 0x345BF6)
345BF0:  MOV             R1, R8; CKeyGen *
345BF2:  ADD             R0, PC; TheText_ptr
345BF4:  LDR             R0, [R0]; TheText ; this
345BF6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
345BFA:  MOV             R9, R0
345BFC:  MOV             R0, R11; this
345BFE:  MOVS            R1, #5; __int16
345C00:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345C04:  LDR.W           R0, =(ScriptParams_ptr - 0x345C10)
345C08:  MOV.W           R1, #0xFFFFFFFF
345C0C:  ADD             R0, PC; ScriptParams_ptr
345C0E:  LDR             R0, [R0]; ScriptParams
345C10:  LDRD.W          R12, R4, [R0]
345C14:  LDRD.W          R5, R2, [R0,#(dword_81A910 - 0x81A908)]; unsigned __int16 *
345C18:  LDRH            R3, [R0,#(dword_81A918 - 0x81A908)]; unsigned int
345C1A:  LDR.W           R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x345C22)
345C1E:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
345C20:  LDR             R6, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
345C22:  LDRB            R0, [R6]; CTheScripts::bAddNextMessageToPreviousBriefs
345C24:  CMP             R0, #0
345C26:  IT NE
345C28:  MOVNE           R0, #1
345C2A:  STRD.W          R12, R4, [SP,#0xF0+var_F0]; unsigned __int16
345C2E:  STRD.W          R5, R1, [SP,#0xF0+var_E8]; int
345C32:  STRD.W          R1, R1, [SP,#0xF0+var_E0]; int
345C36:  MOV             R1, R9; CMessages *
345C38:  STR             R0, [SP,#0xF0+var_D8]; int
345C3A:  MOV             R0, R8; this
345C3C:  BLX             j__ZN9CMessages20AddMessageWithNumberEPKcPtjtiiiiiib; CMessages::AddMessageWithNumber(char const*,ushort *,uint,ushort,int,int,int,int,int,int,bool)
345C40:  MOVS            R0, #1
345C42:  STRB            R0, [R6]; CTheScripts::bAddNextMessageToPreviousBriefs
345C44:  B               loc_346302
345C46:  SUB.W           R8, R7, #-var_5A; jumptable 00344F54 case 770
345C4A:  MOV             R0, R11; this
345C4C:  MOVS            R2, #8; unsigned __int8
345C4E:  MOV             R1, R8; char *
345C50:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
345C54:  LDR.W           R0, =(TheText_ptr - 0x345C5E)
345C58:  MOV             R1, R8; CKeyGen *
345C5A:  ADD             R0, PC; TheText_ptr
345C5C:  LDR             R0, [R0]; TheText ; this
345C5E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
345C62:  MOV             R9, R0
345C64:  MOV             R0, R11; this
345C66:  MOVS            R1, #6; __int16
345C68:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345C6C:  LDR.W           R0, =(ScriptParams_ptr - 0x345C78)
345C70:  MOV.W           LR, #0xFFFFFFFF
345C74:  ADD             R0, PC; ScriptParams_ptr
345C76:  LDR             R0, [R0]; ScriptParams
345C78:  LDRH            R3, [R0,#(dword_81A91C - 0x81A908)]
345C7A:  LDRD.W          R1, R12, [R0]
345C7E:  LDRD.W          R5, R6, [R0,#(dword_81A910 - 0x81A908)]
345C82:  LDR             R2, [R0,#(dword_81A918 - 0x81A908)]
345C84:  LDR.W           R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x345C8C)
345C88:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
345C8A:  LDR             R4, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
345C8C:  LDRB            R0, [R4]; CTheScripts::bAddNextMessageToPreviousBriefs
345C8E:  CMP             R0, #0
345C90:  IT NE
345C92:  MOVNE           R0, #1
345C94:  STRD.W          R1, R12, [SP,#0xF0+var_F0]
345C98:  ADD             R1, SP, #0xF0+var_E8
345C9A:  STM.W           R1, {R5,R6,LR}
345C9E:  B               loc_345D5E
345CA0:  DCFS 50.0
345CA4:  SUB.W           R5, R7, #-var_5A; jumptable 00344F54 case 771
345CA8:  MOV             R0, R11; this
345CAA:  MOVS            R2, #8; unsigned __int8
345CAC:  MOV             R1, R5; char *
345CAE:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
345CB2:  LDR.W           R0, =(TheText_ptr - 0x345CBC)
345CB6:  MOV             R1, R5; CKeyGen *
345CB8:  ADD             R0, PC; TheText_ptr
345CBA:  LDR             R0, [R0]; TheText ; this
345CBC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
345CC0:  MOV             R8, R0
345CC2:  MOV             R0, R11; this
345CC4:  MOVS            R1, #6; __int16
345CC6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345CCA:  LDR.W           R0, =(ScriptParams_ptr - 0x345CD6)
345CCE:  MOV.W           LR, #0xFFFFFFFF
345CD2:  ADD             R0, PC; ScriptParams_ptr
345CD4:  LDR             R0, [R0]; ScriptParams
345CD6:  LDM.W           R0, {R3,R6,R12}; unsigned __int16 *
345CDA:  LDRD.W          R5, R1, [R0,#(dword_81A914 - 0x81A908)]; unsigned __int16 *
345CDE:  LDRH            R2, [R0,#(dword_81A91C - 0x81A908)]; unsigned int
345CE0:  LDR.W           R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x345CE8)
345CE4:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
345CE6:  LDR             R4, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
345CE8:  LDRB            R0, [R4]; CTheScripts::bAddNextMessageToPreviousBriefs
345CEA:  CMP             R0, #0
345CEC:  IT NE
345CEE:  MOVNE           R0, #1
345CF0:  STRD.W          R6, R12, [SP,#0xF0+var_F0]; int
345CF4:  STRD.W          R5, LR, [SP,#0xF0+var_E8]; int
345CF8:  STR.W           LR, [SP,#0xF0+var_E0]; int
345CFC:  STR             R0, [SP,#0xF0+var_DC]; int
345CFE:  MOV             R0, R8; this
345D00:  BLX             j__ZN9CMessages25AddMessageJumpQWithNumberEPtjtiiiiiib; CMessages::AddMessageJumpQWithNumber(ushort *,uint,ushort,int,int,int,int,int,int,bool)
345D04:  B               loc_345D6A
345D06:  SUB.W           R8, R7, #-var_5A; jumptable 00344F54 case 776
345D0A:  MOV             R0, R11; this
345D0C:  MOVS            R2, #8; unsigned __int8
345D0E:  MOV             R1, R8; char *
345D10:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
345D14:  LDR.W           R0, =(TheText_ptr - 0x345D1E)
345D18:  MOV             R1, R8; CKeyGen *
345D1A:  ADD             R0, PC; TheText_ptr
345D1C:  LDR             R0, [R0]; TheText ; this
345D1E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
345D22:  MOV             R9, R0
345D24:  MOV             R0, R11; this
345D26:  MOVS            R1, #8; __int16
345D28:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345D2C:  LDR.W           R0, =(ScriptParams_ptr - 0x345D34)
345D30:  ADD             R0, PC; ScriptParams_ptr
345D32:  LDR             R0, [R0]; ScriptParams
345D34:  ADD.W           LR, R0, #8
345D38:  LDRD.W          R1, R10, [R0]
345D3C:  LDM.W           LR, {R5,R6,R12,LR}
345D40:  LDR             R2, [R0,#(dword_81A920 - 0x81A908)]; unsigned __int16 *
345D42:  LDRH            R3, [R0,#(dword_81A924 - 0x81A908)]; unsigned int
345D44:  LDR.W           R0, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x345D4C)
345D48:  ADD             R0, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
345D4A:  LDR             R4, [R0]; CTheScripts::bAddNextMessageToPreviousBriefs ...
345D4C:  LDRB            R0, [R4]; CTheScripts::bAddNextMessageToPreviousBriefs
345D4E:  CMP             R0, #0
345D50:  IT NE
345D52:  MOVNE           R0, #1
345D54:  STRD.W          R1, R10, [SP,#0xF0+var_F0]; unsigned __int16
345D58:  ADD             R1, SP, #0xF0+var_E8
345D5A:  STM.W           R1, {R5,R6,R12}
345D5E:  STRD.W          LR, R0, [SP,#0xF0+var_DC]; int
345D62:  MOV             R0, R8; this
345D64:  MOV             R1, R9; CMessages *
345D66:  BLX             j__ZN9CMessages20AddMessageWithNumberEPKcPtjtiiiiiib; CMessages::AddMessageWithNumber(char const*,ushort *,uint,ushort,int,int,int,int,int,int,bool)
345D6A:  MOVS            R0, #1
345D6C:  MOVS            R6, #0
345D6E:  STRB            R0, [R4]; CTheScripts::bAddNextMessageToPreviousBriefs
345D70:  B               loc_346304; jumptable 00344F54 cases 741,742,755,793
345D72:  MOV             R0, R11; jumptable 00344F54 case 780
345D74:  MOVS            R1, #1; __int16
345D76:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345D7A:  LDR.W           R0, =(ScriptParams_ptr - 0x345D84)
345D7E:  MOVS            R6, #0
345D80:  ADD             R0, PC; ScriptParams_ptr
345D82:  LDR             R0, [R0]; ScriptParams
345D84:  LDR             R0, [R0]
345D86:  VMOV            S0, R0
345D8A:  MOVS            R0, #0; this
345D8C:  VCVT.F32.S32    S0, S0
345D90:  VMOV            R1, S0; unsigned __int16
345D94:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
345D98:  B               loc_346304; jumptable 00344F54 cases 741,742,755,793
345D9A:  MOV             R0, R11; jumptable 00344F54 case 781
345D9C:  MOVS            R1, #1; __int16
345D9E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345DA2:  LDR.W           R0, =(ScriptParams_ptr - 0x345DAA)
345DA6:  ADD             R0, PC; ScriptParams_ptr
345DA8:  LDR             R0, [R0]; ScriptParams
345DAA:  LDR             R0, [R0]
345DAC:  VMOV            S0, R0
345DB0:  MOVS            R0, #1
345DB2:  VCVT.F32.S32    S0, S0
345DB6:  VMOV            R1, S0
345DBA:  NOP
345DBC:  NOP
345DBE:  B               loc_346302
345DC0:  MOVS            R0, #(dword_90+2); jumptable 00344F54 case 791
345DC2:  MOV.W           R1, #0x3F800000; unsigned __int16
345DC6:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
345DCA:  B               loc_346302
345DCC:  DCD __stack_chk_guard_ptr - 0x344F40
345DD0:  DCD ScriptParams_ptr - 0x345028
345DD4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x34503C
345DD8:  DCD g_surfaceInfos_ptr - 0x34509E
345DDC:  DCD ScriptParams_ptr - 0x3450BC
345DE0:  DCD ThePaths_ptr - 0x3450FA
345DE4:  DCD ScriptParams_ptr - 0x345140
345DE8:  DCD ThePaths_ptr - 0x34517C
345DEC:  DCD ScriptParams_ptr - 0x3451BC
345DF0:  DCD ScriptParams_ptr - 0x3451D6
345DF4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3451EA
345DF8:  DCD ScriptParams_ptr - 0x34521A
345DFC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x34522E
345E00:  DCD ScriptParams_ptr - 0x345258
345E04:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x34526C
345E08:  DCD ScriptParams_ptr - 0x345296
345E0C:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x3452AA
345E10:  DCD ScriptParams_ptr - 0x3452DA
345E14:  DCD ScriptParams_ptr - 0x3452FA
345E18:  DCD ScriptParams_ptr - 0x345332
345E1C:  DCD gFireManager_ptr - 0x345338
345E20:  DCD ScriptParams_ptr - 0x345372
345E24:  DCD gFireManager_ptr - 0x345386
345E28:  DCD ScriptParams_ptr - 0x3453AC
345E2C:  DCFS 3.1416
345E30:  DCFS 180.0
345E34:  DCFS -100.0
345E38:  DCD gFireManager_ptr - 0x3453C0
345E3C:  SUB.W           R5, R7, #-var_76; jumptable 00344F54 case 792
345E40:  MOV             R0, R11; this
345E42:  MOVS            R2, #8; unsigned __int8
345E44:  MOV             R1, R5; char *
345E46:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
345E4A:  LDR.W           R0, =(TheText_ptr - 0x345E54)
345E4E:  MOV             R1, R5; CKeyGen *
345E50:  ADD             R0, PC; TheText_ptr
345E52:  LDR             R0, [R0]; TheText ; this
345E54:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
345E58:  LDR.W           R0, =(_ZN6CStats21LastMissionPassedNameE_ptr - 0x345E64)
345E5C:  MOV             R1, R5; char *
345E5E:  MOVS            R2, #8; size_t
345E60:  ADD             R0, PC; _ZN6CStats21LastMissionPassedNameE_ptr
345E62:  LDR             R0, [R0]; char *
345E64:  BLX             strncpy
345E68:  MOVS            R0, #(dword_90+3); this
345E6A:  MOV.W           R1, #0x3F800000; unsigned __int16
345E6E:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
345E72:  MOVS            R0, #dword_B0; this
345E74:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
345E78:  MOV             R1, R0; unsigned __int16
345E7A:  MOVS            R0, #(dword_B0+1); this
345E7C:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
345E80:  MOVS            R0, #0xB0
345E82:  MOVS            R1, #0
345E84:  NOP
345E86:  NOP
345E88:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x345E94)
345E8C:  LDR.W           R1, =(_ZN11CTheScripts21LastMissionPassedTimeE_ptr - 0x345E96)
345E90:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
345E92:  ADD             R1, PC; _ZN11CTheScripts21LastMissionPassedTimeE_ptr
345E94:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
345E96:  LDR             R1, [R1]; CTheScripts::LastMissionPassedTime ...
345E98:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
345E9A:  STR             R0, [R1]; CTheScripts::LastMissionPassedTime
345E9C:  ADR.W           R1, aSweet1; "SWEET_1"
345EA0:  MOV             R0, R5; char *
345EA2:  BLX             strcmp
345EA6:  CMP             R0, #0
345EA8:  IT EQ
345EAA:  BLXEQ           j__Z12Menu_ShowNagv; Menu_ShowNag(void)
345EAE:  SUB.W           R0, R7, #-var_76; char *
345EB2:  ADR.W           R1, aBcesar4; "BCESAR4"
345EB6:  BLX             strcmp
345EBA:  MOVS            R6, #0
345EBC:  CMP             R0, #0
345EBE:  BNE.W           loc_346304; jumptable 00344F54 cases 741,742,755,793
345EC2:  MOVW            R0, #(elf_hash_bucket+0xE1); this
345EC6:  MOVS            R1, #8; int
345EC8:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
345ECC:  MOVW            R0, #(elf_hash_bucket+0x305); this
345ED0:  MOVS            R1, #8; int
345ED2:  BLX             j__ZN10CStreaming21RequestVehicleUpgradeEii; CStreaming::RequestVehicleUpgrade(int,int)
345ED6:  MOVS            R0, #0; this
345ED8:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
345EDC:  MOVW            R1, #0x8000
345EE0:  MOVS            R2, #0
345EE2:  MOVW            R3, #0x6666
345EE6:  MOVT            R1, #0xC406
345EEA:  MOVT            R2, #0xC332
345EEE:  MOVT            R3, #0x429C
345EF2:  MOVW            R0, #0x1DD
345EF6:  STR             R6, [SP,#0xF0+var_F0]
345EF8:  BLX             j__ZN8CCarCtrl18CreateCarForScriptEi7CVectorh; CCarCtrl::CreateCarForScript(int,CVector,uchar)
345EFC:  STR.W           R6, [R0,#0x438]
345F00:  B               loc_346304; jumptable 00344F54 cases 741,742,755,793
345F02:  LDR.W           R0, =(gFireManager_ptr - 0x345F0A); jumptable 00344F54 case 794
345F06:  ADD             R0, PC; gFireManager_ptr
345F08:  LDR             R0, [R0]; gFireManager ; this
345F0A:  BLX             j__ZN12CFireManager20RemoveAllScriptFiresEv; CFireManager::RemoveAllScriptFires(void)
345F0E:  B               loc_346302
345F10:  MOV             R0, R11; jumptable 00344F54 case 797
345F12:  MOVS            R1, #2; __int16
345F14:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345F18:  LDR.W           R0, =(ScriptParams_ptr - 0x345F20)
345F1C:  ADD             R0, PC; ScriptParams_ptr
345F1E:  LDR             R0, [R0]; ScriptParams
345F20:  LDR             R1, [R0]
345F22:  CMP             R1, #0
345F24:  BLT             loc_345FAE
345F26:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x345F32)
345F2A:  UXTB            R3, R1
345F2C:  LSRS            R1, R1, #8
345F2E:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
345F30:  LDR             R0, [R0]; CPools::ms_pPedPool ...
345F32:  LDR             R0, [R0]; CPools::ms_pPedPool
345F34:  LDR             R2, [R0,#4]
345F36:  LDRB            R2, [R2,R1]
345F38:  CMP             R2, R3
345F3A:  BNE             loc_345FAE
345F3C:  MOVW            R2, #0x7CC
345F40:  LDR             R0, [R0]
345F42:  MLA.W           R0, R1, R2, R0
345F46:  CBZ             R0, loc_345FAE
345F48:  LDR.W           R1, =(ScriptParams_ptr - 0x345F54)
345F4C:  LDRSB.W         R0, [R0,#0x768]
345F50:  ADD             R1, PC; ScriptParams_ptr
345F52:  B               loc_345F96
345F54:  MOV             R0, R11; jumptable 00344F54 case 798
345F56:  MOVS            R1, #2; __int16
345F58:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
345F5C:  LDR.W           R0, =(ScriptParams_ptr - 0x345F64)
345F60:  ADD             R0, PC; ScriptParams_ptr
345F62:  LDR             R0, [R0]; ScriptParams
345F64:  LDR             R1, [R0]
345F66:  CMP             R1, #0
345F68:  BLT             loc_345FAE
345F6A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x345F76)
345F6E:  UXTB            R3, R1
345F70:  LSRS            R1, R1, #8
345F72:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
345F74:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
345F76:  LDR             R0, [R0]; CPools::ms_pVehiclePool
345F78:  LDR             R2, [R0,#4]
345F7A:  LDRB            R2, [R2,R1]
345F7C:  CMP             R2, R3
345F7E:  BNE             loc_345FAE
345F80:  MOVW            R2, #0xA2C
345F84:  LDR             R0, [R0]
345F86:  MLA.W           R0, R1, R2, R0
345F8A:  CBZ             R0, loc_345FAE
345F8C:  LDR.W           R1, =(ScriptParams_ptr - 0x345F98)
345F90:  LDRSB.W         R0, [R0,#0x518]; this
345F94:  ADD             R1, PC; ScriptParams_ptr
345F96:  LDR             R1, [R1]; ScriptParams
345F98:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]; int
345F9A:  ORR.W           R1, R2, #1
345F9E:  CMP             R1, #0x39 ; '9'
345FA0:  BNE.W           loc_3462F4
345FA4:  MOV             R1, R2; int
345FA6:  BLX             j__ZN7CDarkel22CheckDamagedWeaponTypeEii; CDarkel::CheckDamagedWeaponType(int,int)
345FAA:  MOV             R1, R0
345FAC:  B               loc_3462FC
345FAE:  MOVS            R1, #0
345FB0:  B               loc_3462FC
345FB2:  MOVS            R4, #0
345FB4:  LDR.W           R0, =(ScriptParams_ptr - 0x345FC0)
345FB8:  VLDR            S0, =-100.0
345FBC:  ADD             R0, PC; ScriptParams_ptr
345FBE:  LDR             R0, [R0]; ScriptParams
345FC0:  VLDR            S20, [R0,#0xC]
345FC4:  VLDR            S16, [R0,#4]
345FC8:  VCMPE.F32       S20, S0
345FCC:  VLDR            S18, [R0,#8]
345FD0:  VMRS            APSR_nzcv, FPSCR
345FD4:  BGT             loc_345FE6
345FD6:  VMOV            R0, S16; this
345FDA:  VMOV            R1, S18; float
345FDE:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
345FE2:  VMOV            S20, R0
345FE6:  MOV             R0, R4; this
345FE8:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
345FEC:  VMOV            S0, R0
345FF0:  ADD             R1, SP, #0xF0+var_6C; CVehicle *
345FF2:  MOV             R0, R4; this
345FF4:  MOVS            R2, #0; CVector *
345FF6:  VADD.F32        S0, S20, S0
345FFA:  MOVS            R3, #0; bool
345FFC:  VSTR            S18, [SP,#0xF0+var_68]
346000:  VSTR            S16, [SP,#0xF0+var_6C]
346004:  VSTR            S0, [SP,#0xF0+var_64]
346008:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
34600C:  LDRB.W          R1, [R4,#0x3BE]
346010:  CMP             R0, #0
346012:  SUB.W           R1, R1, #0x39 ; '9'
346016:  BEQ.W           loc_346288
34601A:  UXTB            R0, R1
34601C:  CMP             R0, #2
34601E:  BCC.W           loc_346294
346022:  MOVS            R0, #0xD
346024:  B               loc_346290
346026:  MOVS            R5, #0
346028:  ADD             R6, SP, #0xF0+var_6C
34602A:  MOV             R1, R5
34602C:  MOV             R0, R6; this
34602E:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
346032:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x34603E)
346036:  LDRSH.W         R1, [R5,#0x26]
34603A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
34603C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
34603E:  LDR.W           R0, [R0,R1,LSL#2]
346042:  LDR.W           R1, =(TheCamera_ptr - 0x34604A)
346046:  ADD             R1, PC; TheCamera_ptr
346048:  B               loc_346090
34604A:  MOVS            R5, #0
34604C:  ADD             R6, SP, #0xF0+var_6C
34604E:  MOV             R1, R5
346050:  MOV             R0, R6; this
346052:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
346056:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x346062)
34605A:  LDRSH.W         R1, [R5,#0x26]
34605E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
346060:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
346062:  LDR.W           R0, [R0,R1,LSL#2]
346066:  LDR.W           R1, =(TheCamera_ptr - 0x34606E)
34606A:  ADD             R1, PC; TheCamera_ptr
34606C:  B               loc_346090
34606E:  MOVS            R5, #0
346070:  ADD             R6, SP, #0xF0+var_6C
346072:  MOV             R1, R5
346074:  MOV             R0, R6; this
346076:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
34607A:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x346086)
34607E:  LDRSH.W         R1, [R5,#0x26]
346082:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
346084:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
346086:  LDR.W           R0, [R0,R1,LSL#2]
34608A:  LDR.W           R1, =(TheCamera_ptr - 0x346092)
34608E:  ADD             R1, PC; TheCamera_ptr
346090:  LDR             R0, [R0,#0x2C]
346092:  LDR             R2, [R0,#0x24]; float
346094:  LDR             R0, [R1]; TheCamera ; this
346096:  MOV             R1, R6; CVector *
346098:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
34609C:  MOV             R1, R0
34609E:  B               loc_3462FC
3460A0:  MOVS            R4, #0
3460A2:  LDR.W           R0, =(ScriptParams_ptr - 0x3460B0)
3460A6:  MOVS            R3, #0
3460A8:  VLDR            S2, =-100.0
3460AC:  ADD             R0, PC; ScriptParams_ptr
3460AE:  LDR             R0, [R0]; ScriptParams
3460B0:  VLDR            S0, [R0,#0xC]
3460B4:  VLDR            S16, [R0,#4]
3460B8:  VCMPE.F32       S0, S2
3460BC:  VLDR            S18, [R0,#8]
3460C0:  VMRS            APSR_nzcv, FPSCR
3460C4:  BGT             loc_3460E0
3460C6:  VMOV            R0, S16; this
3460CA:  MOVS            R6, #(stderr+1)
3460CC:  VMOV            R1, S18; float
3460D0:  STRD.W          R6, R3, [SP,#0xF0+var_F0]; float *
3460D4:  VMOV            R2, S0; float
3460D8:  ADD             R3, SP, #0xF0+var_98; float
3460DA:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
3460DE:  LDR             R3, [SP,#0xF0+var_98]
3460E0:  LDRB.W          R0, [R4,#0x3BE]
3460E4:  MOVS            R6, #3
3460E6:  SUBS            R0, #0x39 ; '9'
3460E8:  UXTB            R0, R0
3460EA:  CMP             R0, #2
3460EC:  ITT CS
3460EE:  MOVCS           R0, #0xE
3460F0:  STRBCS.W        R0, [R4,#0x3BE]
3460F4:  LDR.W           R1, [R4,#0x42C]
3460F8:  LDR.W           R2, [R4,#0x430]
3460FC:  STR.W           R3, [R4,#0x3F8]
346100:  VSTR            S16, [R4,#0x3F0]
346104:  VSTR            S18, [R4,#0x3F4]
346108:  LDRB.W          R5, [R4,#0x3D4]
34610C:  LDRB.W          R3, [R4,#0x3A]
346110:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x346124)
346112:  CMP             R5, #1
346114:  BFI.W           R3, R6, #3, #0x1D
346118:  STRB.W          R3, [R4,#0x3A]
34611C:  IT LS
34611E:  MOVLS           R5, #1
346120:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
346122:  STRB.W          R5, [R4,#0x3D4]
346126:  B               loc_3462BC
346128:  MOVS            R0, #0
34612A:  LDRB.W          R1, [R0,#0x3BE]
34612E:  MOVS            R6, #0
346130:  SUBS            R1, #0x39 ; '9'
346132:  UXTB            R1, R1
346134:  CMP             R1, #2
346136:  ITT CS
346138:  MOVCS           R1, #0
34613A:  STRBCS.W        R1, [R0,#0x3BE]
34613E:  LDR.W           R1, [R0,#0x42C]
346142:  STRB.W          R6, [R0,#0x3D4]
346146:  LDRB.W          R2, [R0,#0x3A]
34614A:  BIC.W           R1, R1, #0x10
34614E:  STR.W           R1, [R0,#0x42C]
346152:  MOVS            R1, #3
346154:  BFI.W           R2, R1, #3, #0x1D
346158:  STRB.W          R2, [R0,#0x3A]
34615C:  B               loc_346304; jumptable 00344F54 cases 741,742,755,793
34615E:  MOVS            R5, #0
346160:  LDR             R0, =(ScriptParams_ptr - 0x346166)
346162:  ADD             R0, PC; ScriptParams_ptr
346164:  LDR             R0, [R0]; ScriptParams
346166:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
346168:  CMP             R0, #0x38 ; '8'
34616A:  BNE.W           loc_3462E4
34616E:  LDRSB.W         R0, [R5,#0x71C]
346172:  RSB.W           R0, R0, R0,LSL#3
346176:  ADD.W           R0, R5, R0,LSL#2
34617A:  ADDW            R0, R0, #0x5A4; this
34617E:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
346182:  CMP             R0, #0
346184:  BEQ.W           loc_3462DC
346188:  MOVS            R1, #1
34618A:  B               loc_3462FC
34618C:  LDR             R2, =(ThePaths_ptr - 0x346198)
34618E:  VMOV.F32        S0, #0.125
346192:  MOVS            R5, #1
346194:  ADD             R2, PC; ThePaths_ptr
346196:  LDR             R2, [R2]; ThePaths
346198:  ADD.W           R1, R2, R1,LSL#2
34619C:  LSRS            R2, R0, #0x10
34619E:  LSLS            R2, R2, #3
3461A0:  SUB.W           R0, R2, R0,LSR#16
3461A4:  LDR.W           R1, [R1,#0x804]
3461A8:  ADD.W           R0, R1, R0,LSL#2
3461AC:  LDRSH.W         R1, [R0,#8]
3461B0:  LDRSH.W         R2, [R0,#0xA]
3461B4:  LDRSH.W         R0, [R0,#0xC]
3461B8:  VMOV            S6, R1
3461BC:  VMOV            S4, R2
3461C0:  VMOV            S2, R0
3461C4:  VCVT.F32.S32    S2, S2
3461C8:  VCVT.F32.S32    S4, S4
3461CC:  VCVT.F32.S32    S6, S6
3461D0:  VMUL.F32        S2, S2, S0
3461D4:  VMUL.F32        S4, S4, S0
3461D8:  VMUL.F32        S0, S6, S0
3461DC:  VMOV            R0, S2
3461E0:  VMOV            R1, S4
3461E4:  VMOV            R6, S0
3461E8:  LDR             R2, =(ScriptParams_ptr - 0x3461EE)
3461EA:  ADD             R2, PC; ScriptParams_ptr
3461EC:  LDR             R2, [R2]; ScriptParams
3461EE:  STRD.W          R6, R1, [R2]
3461F2:  STR             R0, [R2,#(dword_81A910 - 0x81A908)]
3461F4:  B               loc_34627A
3461F6:  LDR             R1, =(ScriptParams_ptr - 0x3461FC)
3461F8:  ADD             R1, PC; ScriptParams_ptr
3461FA:  LDR             R6, [R1]; ScriptParams
3461FC:  ADDS            R3, R6, #4
3461FE:  LDM             R3, {R1-R3}; float
346200:  VLDR            S0, [R6,#0x10]
346204:  VSTR            S0, [SP,#0xF0+var_F0]
346208:  BLX             j__ZNK10CPlaceable12IsWithinAreaEffff; CPlaceable::IsWithinArea(float,float,float,float)
34620C:  MOV             R1, R0
34620E:  CMP             R1, #0
346210:  IT NE
346212:  MOVNE           R1, #1; unsigned __int8
346214:  MOV             R0, R11; this
346216:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
34621A:  LDR             R0, =(ScriptParams_ptr - 0x346220)
34621C:  ADD             R0, PC; ScriptParams_ptr
34621E:  LDR             R0, [R0]; ScriptParams
346220:  LDR             R0, [R0,#(dword_81A91C - 0x81A908)]
346222:  CBZ             R0, loc_34624A
346224:  LDR             R0, =(ScriptParams_ptr - 0x34622E)
346226:  LDR.W           R6, [R11,#0x14]
34622A:  ADD             R0, PC; ScriptParams_ptr
34622C:  LDR             R0, [R0]; ScriptParams
34622E:  ADDS            R3, R0, #4
346230:  LDM             R3, {R1-R3}; float
346232:  VLDR            S0, [R0,#0x10]
346236:  MOVS            R0, #0xC2C80000
34623C:  STR             R0, [SP,#0xF0+var_EC]; float
34623E:  ADD.W           R0, R6, R11; this
346242:  VSTR            S0, [SP,#0xF0+var_F0]
346246:  BLX             j__ZN11CTheScripts22HighlightImportantAreaEjfffff; CTheScripts::HighlightImportantArea(uint,float,float,float,float,float)
34624A:  LDR             R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x346250)
34624C:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
34624E:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
346250:  LDRB            R0, [R0]; CTheScripts::DbgFlag
346252:  CMP             R0, #0
346254:  BEQ             loc_346302
346256:  LDR             R0, =(ScriptParams_ptr - 0x34625C)
346258:  ADD             R0, PC; ScriptParams_ptr
34625A:  LDR             R3, [R0]; ScriptParams
34625C:  ADDS            R3, #4
34625E:  LDM             R3, {R0-R3}; float
346260:  BLX             j__ZN11CTheScripts15DrawDebugSquareEffff; CTheScripts::DrawDebugSquare(float,float,float,float)
346264:  B               loc_346302
346266:  LDR             R0, =(ScriptParams_ptr - 0x34626E)
346268:  MOVS            R5, #0
34626A:  ADD             R0, PC; ScriptParams_ptr
34626C:  LDR             R0, [R0]; ScriptParams
34626E:  STRD.W          R6, R6, [R0]
346272:  LDR             R0, =(ScriptParams_ptr - 0x346278)
346274:  ADD             R0, PC; ScriptParams_ptr
346276:  LDR             R0, [R0]; ScriptParams
346278:  STR             R6, [R0,#(dword_81A910 - 0x81A908)]
34627A:  MOV             R0, R11; this
34627C:  MOVS            R1, #3; __int16
34627E:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
346282:  MOV             R0, R11
346284:  MOV             R1, R5
346286:  B               loc_3462FE
346288:  UXTB            R0, R1
34628A:  CMP             R0, #2
34628C:  BCC             loc_346294
34628E:  MOVS            R0, #0xC
346290:  STRB.W          R0, [R4,#0x3BE]
346294:  LDRB.W          R3, [R4,#0x3D4]
346298:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3462A8)
34629A:  LDR.W           R1, [R4,#0x42C]
34629E:  CMP             R3, #1
3462A0:  LDR.W           R2, [R4,#0x430]
3462A4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3462A6:  LDRB.W          R6, [R4,#0x3A]
3462AA:  IT LS
3462AC:  MOVLS           R3, #1
3462AE:  STRB.W          R3, [R4,#0x3D4]
3462B2:  MOVS            R3, #3
3462B4:  BFI.W           R6, R3, #3, #0x1D
3462B8:  STRB.W          R6, [R4,#0x3A]
3462BC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3462BE:  BIC.W           R3, R1, #0x10
3462C2:  TST.W           R2, #0x200
3462C6:  MOV.W           R6, #0
3462CA:  IT EQ
3462CC:  ORREQ.W         R3, R1, #0x10
3462D0:  STR.W           R3, [R4,#0x42C]
3462D4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3462D6:  STR.W           R0, [R4,#0x3B0]
3462DA:  B               loc_346304; jumptable 00344F54 cases 741,742,755,793
3462DC:  LDR             R0, =(ScriptParams_ptr - 0x3462E2)
3462DE:  ADD             R0, PC; ScriptParams_ptr
3462E0:  LDR             R0, [R0]; ScriptParams
3462E2:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
3462E4:  LDRSB.W         R1, [R5,#0x71C]
3462E8:  RSB.W           R1, R1, R1,LSL#3
3462EC:  ADD.W           R1, R5, R1,LSL#2
3462F0:  LDR.W           R2, [R1,#0x5A4]
3462F4:  MOVS            R1, #0
3462F6:  CMP             R2, R0
3462F8:  IT EQ
3462FA:  MOVEQ           R1, #1; unsigned __int8
3462FC:  MOV             R0, R11; this
3462FE:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
346302:  MOVS            R6, #0
346304:  LDR             R0, =(__stack_chk_guard_ptr - 0x34630C); jumptable 00344F54 cases 741,742,755,793
346306:  LDR             R1, [SP,#0xF0+var_3C]
346308:  ADD             R0, PC; __stack_chk_guard_ptr
34630A:  LDR             R0, [R0]; __stack_chk_guard
34630C:  LDR             R0, [R0]
34630E:  SUBS            R0, R0, R1
346310:  ITTTT EQ
346312:  SXTBEQ          R0, R6
346314:  ADDEQ           SP, SP, #0xB8
346316:  VPOPEQ          {D8-D10}
34631A:  ADDEQ           SP, SP, #4
34631C:  ITT EQ
34631E:  POPEQ.W         {R8-R11}
346322:  POPEQ           {R4-R7,PC}
346324:  BLX             __stack_chk_fail
