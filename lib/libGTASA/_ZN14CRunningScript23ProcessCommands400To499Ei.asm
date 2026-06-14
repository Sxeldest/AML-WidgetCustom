; =========================================================
; Game Engine Function: _ZN14CRunningScript23ProcessCommands400To499Ei
; Address            : 0x342D2C - 0x34388A
; =========================================================

342D2C:  PUSH            {R4-R7,LR}
342D2E:  ADD             R7, SP, #0xC
342D30:  PUSH.W          {R8,R9,R11}
342D34:  VPUSH           {D8-D10}
342D38:  SUB             SP, SP, #0x40; float
342D3A:  MOV             R4, R0
342D3C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x342D46)
342D40:  MOVS            R5, #0xFF
342D42:  ADD             R0, PC; __stack_chk_guard_ptr
342D44:  LDR             R0, [R0]; __stack_chk_guard
342D46:  LDR             R0, [R0]
342D48:  STR             R0, [SP,#0x70+var_34]
342D4A:  SUB.W           R0, R1, #0x190; switch 100 cases
342D4E:  CMP             R0, #0x63 ; 'c'
342D50:  BHI.W           def_342D54; jumptable 00342D54 default case, cases 402-416,433,435,440,442,446,447,454,457-482,486,493-495,497,498
342D54:  TBH.W           [PC,R0,LSL#1]; switch jump
342D58:  DCW 0x73; jump table for switch statement
342D5A:  DCW 0x84
342D5C:  DCW 0x588
342D5E:  DCW 0x588
342D60:  DCW 0x588
342D62:  DCW 0x588
342D64:  DCW 0x588
342D66:  DCW 0x588
342D68:  DCW 0x588
342D6A:  DCW 0x588
342D6C:  DCW 0x588
342D6E:  DCW 0x588
342D70:  DCW 0x588
342D72:  DCW 0x588
342D74:  DCW 0x588
342D76:  DCW 0x588
342D78:  DCW 0x588
342D7A:  DCW 0x64
342D7C:  DCW 0x64
342D7E:  DCW 0x64
342D80:  DCW 0x64
342D82:  DCW 0x64
342D84:  DCW 0x64
342D86:  DCW 0x64
342D88:  DCW 0x64
342D8A:  DCW 0x64
342D8C:  DCW 0x64
342D8E:  DCW 0x6E
342D90:  DCW 0x6E
342D92:  DCW 0x69
342D94:  DCW 0x69
342D96:  DCW 0x69
342D98:  DCW 0x69
342D9A:  DCW 0x588
342D9C:  DCW 0x95
342D9E:  DCW 0x588
342DA0:  DCW 0xB3
342DA2:  DCW 0xDD
342DA4:  DCW 0xEB
342DA6:  DCW 0xF9
342DA8:  DCW 0x588
342DAA:  DCW 0xFD
342DAC:  DCW 0x588
342DAE:  DCW 0x11B
342DB0:  DCW 0x139
342DB2:  DCW 0x189
342DB4:  DCW 0x588
342DB6:  DCW 0x588
342DB8:  DCW 0x194
342DBA:  DCW 0x1AA
342DBC:  DCW 0x1C8
342DBE:  DCW 0x1E6
342DC0:  DCW 0x204
342DC2:  DCW 0x222
342DC4:  DCW 0x588
342DC6:  DCW 0x22D
342DC8:  DCW 0x238
342DCA:  DCW 0x588
342DCC:  DCW 0x588
342DCE:  DCW 0x588
342DD0:  DCW 0x588
342DD2:  DCW 0x588
342DD4:  DCW 0x588
342DD6:  DCW 0x588
342DD8:  DCW 0x588
342DDA:  DCW 0x588
342DDC:  DCW 0x588
342DDE:  DCW 0x588
342DE0:  DCW 0x588
342DE2:  DCW 0x588
342DE4:  DCW 0x588
342DE6:  DCW 0x588
342DE8:  DCW 0x588
342DEA:  DCW 0x588
342DEC:  DCW 0x588
342DEE:  DCW 0x588
342DF0:  DCW 0x588
342DF2:  DCW 0x588
342DF4:  DCW 0x588
342DF6:  DCW 0x588
342DF8:  DCW 0x588
342DFA:  DCW 0x588
342DFC:  DCW 0x588
342DFE:  DCW 0x256
342E00:  DCW 0x27E
342E02:  DCW 0x2AE
342E04:  DCW 0x588
342E06:  DCW 0x2DD
342E08:  DCW 0x307
342E0A:  DCW 0x342
342E0C:  DCW 0x359; int
342E0E:  DCW 0x375
342E10:  DCW 0x384
342E12:  DCW 0x588
342E14:  DCW 0x588
342E16:  DCW 0x588
342E18:  DCW 0x3CC
342E1A:  DCW 0x588
342E1C:  DCW 0x588
342E1E:  DCW 0x3D8
342E20:  MOV             R0, R4; jumptable 00342D54 cases 417-426
342E22:  BLX             j__ZN14CRunningScript22CharInAreaCheckCommandEi; CRunningScript::CharInAreaCheckCommand(int)
342E26:  B.W             loc_343866
342E2A:  MOV             R0, R4; jumptable 00342D54 cases 429-432
342E2C:  BLX             j__ZN14CRunningScript16LocateCarCommandEi; CRunningScript::LocateCarCommand(int)
342E30:  B.W             loc_343866
342E34:  MOV             R0, R4; jumptable 00342D54 cases 427,428
342E36:  BLX             j__ZN14CRunningScript21CarInAreaCheckCommandEi; CRunningScript::CarInAreaCheckCommand(int)
342E3A:  B.W             loc_343866
342E3E:  MOV             R0, R4; jumptable 00342D54 case 400
342E40:  MOVS            R1, #1; __int16
342E42:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342E46:  LDR.W           R0, =(ScriptParams_ptr - 0x342E52)
342E4A:  LDR.W           R2, =(_ZN11CTheScripts14UpsideDownCarsE_ptr - 0x342E54)
342E4E:  ADD             R0, PC; ScriptParams_ptr
342E50:  ADD             R2, PC; _ZN11CTheScripts14UpsideDownCarsE_ptr
342E52:  LDR             R0, [R0]; ScriptParams
342E54:  LDR             R1, [R0]; int
342E56:  LDR             R0, [R2]; this
342E58:  BLX             j__ZN19CUpsideDownCarCheck13AddCarToCheckEi; CUpsideDownCarCheck::AddCarToCheck(int)
342E5C:  B.W             loc_343866
342E60:  MOV             R0, R4; jumptable 00342D54 case 401
342E62:  MOVS            R1, #1; __int16
342E64:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342E68:  LDR.W           R0, =(ScriptParams_ptr - 0x342E74)
342E6C:  LDR.W           R2, =(_ZN11CTheScripts14UpsideDownCarsE_ptr - 0x342E76)
342E70:  ADD             R0, PC; ScriptParams_ptr
342E72:  ADD             R2, PC; _ZN11CTheScripts14UpsideDownCarsE_ptr
342E74:  LDR             R0, [R0]; ScriptParams
342E76:  LDR             R1, [R0]; int
342E78:  LDR             R0, [R2]; this
342E7A:  BLX             j__ZN19CUpsideDownCarCheck18RemoveCarFromCheckEi; CUpsideDownCarCheck::RemoveCarFromCheck(int)
342E7E:  B.W             loc_343866
342E82:  MOV             R0, R4; jumptable 00342D54 case 434
342E84:  MOVS            R1, #3; __int16
342E86:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342E8A:  LDR.W           R0, =(ScriptParams_ptr - 0x342E92)
342E8E:  ADD             R0, PC; ScriptParams_ptr
342E90:  LDR             R0, [R0]; ScriptParams
342E92:  LDR             R1, [R0]
342E94:  CMP             R1, #0
342E96:  BLT.W           loc_34355C
342E9A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x342EA6)
342E9E:  UXTB            R3, R1
342EA0:  LSRS            R1, R1, #8
342EA2:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
342EA4:  LDR             R0, [R0]; CPools::ms_pPedPool ...
342EA6:  LDR             R0, [R0]; CPools::ms_pPedPool
342EA8:  LDR             R2, [R0,#4]
342EAA:  LDRB            R2, [R2,R1]
342EAC:  CMP             R2, R3
342EAE:  BNE.W           loc_34355C
342EB2:  MOVW            R2, #0x7CC
342EB6:  LDR             R0, [R0]
342EB8:  MLA.W           R4, R1, R2, R0
342EBC:  B               loc_34355E
342EBE:  MOV             R0, R4; jumptable 00342D54 case 436
342EC0:  MOVS            R1, #2; __int16
342EC2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342EC6:  LDR.W           R0, =(ScriptParams_ptr - 0x342ED2)
342ECA:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x342ED4)
342ECE:  ADD             R0, PC; ScriptParams_ptr
342ED0:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
342ED2:  LDR             R0, [R0]; ScriptParams
342ED4:  LDR             R1, [R1]; CWorld::Players ...
342ED6:  LDRD.W          R2, R3, [R0]
342EDA:  MOV.W           R0, #0x194
342EDE:  CMP             R3, #0
342EE0:  MLA.W           R0, R2, R0, R1; this
342EE4:  BEQ.W           loc_343720
342EE8:  LDR.W           R1, =(_ZN12CCutsceneMgr21IntroTextIsActiveHackE_ptr - 0x342EF0)
342EEC:  ADD             R1, PC; _ZN12CCutsceneMgr21IntroTextIsActiveHackE_ptr
342EEE:  LDR             R1, [R1]; CCutsceneMgr::IntroTextIsActiveHack ...
342EF0:  LDRB            R1, [R1]; CCutsceneMgr::IntroTextIsActiveHack
342EF2:  CBZ             R1, loc_342F00
342EF4:  LDR.W           R1, =(_ZN12CCutsceneMgr21IntroTextIsActiveHackE_ptr - 0x342EFE)
342EF8:  MOVS            R2, #0
342EFA:  ADD             R1, PC; _ZN12CCutsceneMgr21IntroTextIsActiveHackE_ptr
342EFC:  LDR             R1, [R1]; CCutsceneMgr::IntroTextIsActiveHack ...
342EFE:  STRB            R2, [R1]; CCutsceneMgr::IntroTextIsActiveHack
342F00:  MOVS            R2, #0
342F02:  MOVS            R1, #0; bool
342F04:  MOVT            R2, #0x4120; float
342F08:  MOVS            R5, #0
342F0A:  BLX             j__ZN11CPlayerInfo14MakePlayerSafeEbf; CPlayerInfo::MakePlayerSafe(bool,float)
342F0E:  B.W             def_342D54; jumptable 00342D54 default case, cases 402-416,433,435,440,442,446,447,454,457-482,486,493-495,497,498
342F12:  MOV             R0, R4; jumptable 00342D54 case 437
342F14:  MOVS            R1, #1; __int16
342F16:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342F1A:  LDR.W           R0, =(ScriptParams_ptr - 0x342F22)
342F1E:  ADD             R0, PC; ScriptParams_ptr
342F20:  LDR             R0, [R0]; ScriptParams
342F22:  LDRSH.W         R0, [R0]; this
342F26:  BLX             j__ZN8CWeather12ForceWeatherEs; CWeather::ForceWeather(short)
342F2A:  B.W             loc_343866
342F2E:  MOV             R0, R4; jumptable 00342D54 case 438
342F30:  MOVS            R1, #1; __int16
342F32:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342F36:  LDR.W           R0, =(ScriptParams_ptr - 0x342F3E)
342F3A:  ADD             R0, PC; ScriptParams_ptr
342F3C:  LDR             R0, [R0]; ScriptParams
342F3E:  LDRSH.W         R0, [R0]; this
342F42:  BLX             j__ZN8CWeather15ForceWeatherNowEs; CWeather::ForceWeatherNow(short)
342F46:  B.W             loc_343866
342F4A:  BLX             j__ZN8CWeather14ReleaseWeatherEv; jumptable 00342D54 case 439
342F4E:  B.W             loc_343866
342F52:  MOV             R0, R4; jumptable 00342D54 case 441
342F54:  MOVS            R1, #2; __int16
342F56:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342F5A:  LDR.W           R0, =(ScriptParams_ptr - 0x342F62)
342F5E:  ADD             R0, PC; ScriptParams_ptr
342F60:  LDR             R0, [R0]; ScriptParams
342F62:  LDR             R1, [R0]
342F64:  CMP             R1, #0
342F66:  BLT.W           loc_34358A
342F6A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x342F76)
342F6E:  UXTB            R3, R1
342F70:  LSRS            R1, R1, #8
342F72:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
342F74:  LDR             R0, [R0]; CPools::ms_pPedPool ...
342F76:  LDR             R0, [R0]; CPools::ms_pPedPool
342F78:  LDR             R2, [R0,#4]
342F7A:  LDRB            R2, [R2,R1]
342F7C:  CMP             R2, R3
342F7E:  BNE.W           loc_34358A
342F82:  MOVW            R2, #0x7CC
342F86:  LDR             R0, [R0]
342F88:  MLA.W           R4, R1, R2, R0
342F8C:  B               loc_34358C
342F8E:  MOV             R0, R4; jumptable 00342D54 case 443
342F90:  MOVS            R1, #1; __int16
342F92:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342F96:  LDR.W           R0, =(ScriptParams_ptr - 0x342F9E)
342F9A:  ADD             R0, PC; ScriptParams_ptr
342F9C:  LDR             R0, [R0]; ScriptParams
342F9E:  LDR             R1, [R0]
342FA0:  CMP             R1, #0
342FA2:  BLT.W           loc_3435E2
342FA6:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x342FB2)
342FAA:  UXTB            R3, R1
342FAC:  LSRS            R1, R1, #8
342FAE:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
342FB0:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
342FB2:  LDR             R0, [R0]; CPools::ms_pObjectPool
342FB4:  LDR             R2, [R0,#4]
342FB6:  LDRB            R2, [R2,R1]
342FB8:  CMP             R2, R3
342FBA:  BNE.W           loc_3435E2
342FBE:  MOV.W           R2, #0x1A4
342FC2:  LDR             R0, [R0]
342FC4:  MLA.W           R0, R1, R2, R0
342FC8:  B               loc_3435E4
342FCA:  MOV             R0, R4; jumptable 00342D54 case 444
342FCC:  MOVS            R1, #4; __int16
342FCE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
342FD2:  LDR.W           R0, =(ScriptParams_ptr - 0x342FDA)
342FD6:  ADD             R0, PC; ScriptParams_ptr
342FD8:  LDR             R0, [R0]; ScriptParams
342FDA:  LDR             R1, [R0]
342FDC:  CMP             R1, #0
342FDE:  BLT.W           loc_343866
342FE2:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x342FEE)
342FE6:  UXTB            R3, R1
342FE8:  LSRS            R1, R1, #8
342FEA:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
342FEC:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
342FEE:  LDR             R0, [R0]; CPools::ms_pObjectPool
342FF0:  LDR             R2, [R0,#4]
342FF2:  LDRB            R2, [R2,R1]
342FF4:  CMP             R2, R3
342FF6:  BNE.W           loc_343866
342FFA:  MOV.W           R2, #0x1A4; float
342FFE:  LDR             R0, [R0]
343000:  MLA.W           R4, R1, R2, R0
343004:  CMP             R4, #0
343006:  BEQ.W           loc_343866
34300A:  LDR.W           R0, =(ScriptParams_ptr - 0x343016)
34300E:  VLDR            S0, =-100.0
343012:  ADD             R0, PC; ScriptParams_ptr
343014:  LDR             R0, [R0]; ScriptParams
343016:  VLDR            S20, [R0,#0xC]
34301A:  VLDR            S16, [R0,#4]
34301E:  VCMPE.F32       S20, S0
343022:  VLDR            S18, [R0,#8]
343026:  VMRS            APSR_nzcv, FPSCR
34302A:  BGT             loc_34303C
34302C:  VMOV            R0, S16; this
343030:  VMOV            R1, S18; float
343034:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
343038:  VMOV            S20, R0
34303C:  VMOV            R1, S16
343040:  LDR             R0, [R4]
343042:  VMOV            R2, S18
343046:  MOVS            R5, #0
343048:  VMOV            R3, S20
34304C:  LDR             R6, [R0,#0x3C]
34304E:  MOV             R0, R4
343050:  STR             R5, [SP,#0x70+var_70]
343052:  BLX             R6
343054:  ADD             R0, SP, #0x70+var_54; this
343056:  MOV             R1, R4; CVector *
343058:  VSTR            S18, [SP,#0x70+var_50]
34305C:  VSTR            S16, [SP,#0x70+var_54]
343060:  VSTR            S20, [SP,#0x70+var_4C]
343064:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
343068:  B               def_342D54; jumptable 00342D54 default case, cases 402-416,433,435,440,442,446,447,454,457-482,486,493-495,497,498
34306A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x343076); jumptable 00342D54 case 445
34306E:  LDR.W           R1, =(ScriptParams_ptr - 0x343078)
343072:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
343074:  ADD             R1, PC; ScriptParams_ptr
343076:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
343078:  LDR             R1, [R1]; ScriptParams
34307A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
34307C:  STR             R0, [R1]
34307E:  B               loc_343438
343080:  MOV             R0, R4; jumptable 00342D54 case 448
343082:  MOVS            R1, #1; __int16
343084:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343088:  LDR.W           R0, =(ScriptParams_ptr - 0x343098)
34308C:  MOV.W           R3, #0x194
343090:  LDR.W           R2, =(_ZN6CWorld7PlayersE_ptr - 0x34309A)
343094:  ADD             R0, PC; ScriptParams_ptr
343096:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
343098:  LDR             R0, [R0]; ScriptParams
34309A:  LDR             R2, [R2]; CWorld::Players ...
34309C:  LDR             R1, [R0]
34309E:  MULS            R1, R3
3430A0:  LDR             R1, [R2,R1]
3430A2:  LDR.W           R1, [R1,#0x444]
3430A6:  LDR             R1, [R1]
3430A8:  LDR             R1, [R1,#0x2C]
3430AA:  B               loc_343436
3430AC:  MOV             R0, R4; jumptable 00342D54 case 449
3430AE:  MOVS            R1, #1; __int16
3430B0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3430B4:  LDR.W           R0, =(ScriptParams_ptr - 0x3430BC)
3430B8:  ADD             R0, PC; ScriptParams_ptr
3430BA:  LDR             R0, [R0]; ScriptParams
3430BC:  LDR             R1, [R0]; CVehicle *
3430BE:  CMP             R1, #0
3430C0:  BLT.W           loc_343604
3430C4:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3430D0)
3430C8:  UXTB            R3, R1
3430CA:  LSRS            R1, R1, #8
3430CC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3430CE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3430D0:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3430D2:  LDR             R2, [R0,#4]
3430D4:  LDRB            R2, [R2,R1]
3430D6:  CMP             R2, R3
3430D8:  BNE.W           loc_343604
3430DC:  MOVW            R2, #0xA2C
3430E0:  LDR             R0, [R0]
3430E2:  MLA.W           R0, R1, R2, R0
3430E6:  B               loc_343606
3430E8:  MOV             R0, R4; jumptable 00342D54 case 450
3430EA:  MOVS            R1, #1; __int16
3430EC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3430F0:  LDR.W           R0, =(ScriptParams_ptr - 0x3430F8)
3430F4:  ADD             R0, PC; ScriptParams_ptr
3430F6:  LDR             R0, [R0]; ScriptParams
3430F8:  LDR             R1, [R0]; CPed *
3430FA:  CMP             R1, #0
3430FC:  BLT.W           loc_34361A
343100:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x34310C)
343104:  UXTB            R3, R1
343106:  LSRS            R1, R1, #8
343108:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
34310A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
34310C:  LDR             R0, [R0]; CPools::ms_pPedPool
34310E:  LDR             R2, [R0,#4]
343110:  LDRB            R2, [R2,R1]
343112:  CMP             R2, R3
343114:  BNE.W           loc_34361A
343118:  MOVW            R2, #0x7CC
34311C:  LDR             R0, [R0]
34311E:  MLA.W           R0, R1, R2, R0
343122:  B               loc_34361C
343124:  MOV             R0, R4; jumptable 00342D54 case 451
343126:  MOVS            R1, #1; __int16
343128:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34312C:  LDR.W           R0, =(ScriptParams_ptr - 0x343134)
343130:  ADD             R0, PC; ScriptParams_ptr
343132:  LDR             R0, [R0]; ScriptParams
343134:  LDR             R1, [R0]; CVehicle *
343136:  CMP             R1, #0
343138:  BLT.W           loc_343640
34313C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x343148)
343140:  UXTB            R3, R1
343142:  LSRS            R1, R1, #8
343144:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
343146:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
343148:  LDR             R0, [R0]; CPools::ms_pVehiclePool
34314A:  LDR             R2, [R0,#4]
34314C:  LDRB            R2, [R2,R1]
34314E:  CMP             R2, R3
343150:  BNE.W           loc_343640
343154:  MOVW            R2, #0xA2C
343158:  LDR             R0, [R0]
34315A:  MLA.W           R0, R1, R2, R0
34315E:  B               loc_343642
343160:  MOV             R0, R4; jumptable 00342D54 case 452
343162:  MOVS            R1, #1; __int16
343164:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343168:  LDR.W           R0, =(ScriptParams_ptr - 0x343170)
34316C:  ADD             R0, PC; ScriptParams_ptr
34316E:  LDR             R0, [R0]; ScriptParams
343170:  LDR             R1, [R0]; CObject *
343172:  CMP             R1, #0
343174:  BLT.W           loc_343666
343178:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x343184)
34317C:  UXTB            R3, R1
34317E:  LSRS            R1, R1, #8
343180:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
343182:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
343184:  LDR             R0, [R0]; CPools::ms_pObjectPool
343186:  LDR             R2, [R0,#4]
343188:  LDRB            R2, [R2,R1]
34318A:  CMP             R2, R3
34318C:  BNE.W           loc_343666
343190:  MOV.W           R2, #0x1A4
343194:  LDR             R0, [R0]
343196:  MLA.W           R0, R1, R2, R0
34319A:  B               loc_343668
34319C:  MOV             R0, R4; jumptable 00342D54 case 453
34319E:  MOVS            R1, #1; __int16
3431A0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3431A4:  LDR.W           R0, =(ScriptParams_ptr - 0x3431B0)
3431A8:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x3431B2)
3431AC:  ADD             R0, PC; ScriptParams_ptr
3431AE:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
3431B0:  B               loc_343632
3431B2:  MOV             R0, R4; jumptable 00342D54 case 455
3431B4:  MOVS            R1, #1; __int16
3431B6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3431BA:  LDR.W           R0, =(ScriptParams_ptr - 0x3431C6)
3431BE:  LDR.W           R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x3431C8)
3431C2:  ADD             R0, PC; ScriptParams_ptr
3431C4:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
3431C6:  B               loc_34367E
3431C8:  MOV             R0, R4; jumptable 00342D54 case 456
3431CA:  MOVS            R1, #4; __int16
3431CC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3431D0:  LDR.W           R0, =(ScriptParams_ptr - 0x3431D8)
3431D4:  ADD             R0, PC; ScriptParams_ptr
3431D6:  LDR             R0, [R0]; ScriptParams
3431D8:  LDR             R1, [R0]
3431DA:  CMP             R1, #0
3431DC:  BLT.W           loc_34368C
3431E0:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3431EC)
3431E4:  UXTB            R3, R1
3431E6:  LSRS            R1, R1, #8
3431E8:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3431EA:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3431EC:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3431EE:  LDR             R2, [R0,#4]
3431F0:  LDRB            R2, [R2,R1]
3431F2:  CMP             R2, R3
3431F4:  BNE.W           loc_34368C
3431F8:  MOVW            R2, #0xA2C
3431FC:  LDR             R0, [R0]
3431FE:  MLA.W           R8, R1, R2, R0
343202:  B               loc_343690
343204:  ADD             R5, SP, #0x70+var_54; jumptable 00342D54 case 483
343206:  MOV             R0, R4; this
343208:  MOVS            R2, #8; unsigned __int8
34320A:  MOV             R1, R5; char *
34320C:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
343210:  LDR.W           R0, =(TheText_ptr - 0x34321A)
343214:  MOV             R1, R5; CKeyGen *
343216:  ADD             R0, PC; TheText_ptr
343218:  LDR             R0, [R0]; TheText ; this
34321A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
34321E:  MOV             R5, R0
343220:  MOV             R0, R4; this
343222:  MOVS            R1, #3; __int16
343224:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343228:  LDR.W           R0, =(ScriptParams_ptr - 0x343234)
34322C:  MOV.W           R2, #0xFFFFFFFF
343230:  ADD             R0, PC; ScriptParams_ptr
343232:  LDR             R0, [R0]; ScriptParams
343234:  LDRD.W          R3, R1, [R0]; unsigned __int16 *
343238:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
34323A:  STRD.W          R2, R2, [SP,#0x70+var_70]; int
34323E:  STRD.W          R2, R2, [SP,#0x70+var_68]; int
343242:  STR             R2, [SP,#0x70+var_60]; int
343244:  MOVW            R2, #0xFFFF
343248:  ADD             R0, R2
34324A:  UXTH            R2, R0; unsigned int
34324C:  MOV             R0, R5; this
34324E:  BLX             j__ZN9CMessages23AddBigMessageWithNumberEPtjtiiiiii; CMessages::AddBigMessageWithNumber(ushort *,uint,ushort,int,int,int,int,int,int)
343252:  B               loc_343866
343254:  ADD.W           R8, SP, #0x70+var_54; jumptable 00342D54 case 484
343258:  MOV             R0, R4; this
34325A:  MOVS            R2, #8; unsigned __int8
34325C:  MOV             R1, R8; char *
34325E:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
343262:  LDR.W           R0, =(TheText_ptr - 0x34326C)
343266:  MOV             R1, R8; CKeyGen *
343268:  ADD             R0, PC; TheText_ptr
34326A:  LDR             R0, [R0]; TheText ; this
34326C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
343270:  MOV             R6, R0
343272:  MOV             R0, R4; this
343274:  MOVS            R1, #3; __int16
343276:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34327A:  LDR.W           R0, =(ScriptParams_ptr - 0x34328A)
34327E:  MOV.W           R5, #0xFFFFFFFF
343282:  LDR.W           R1, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x34328C)
343286:  ADD             R0, PC; ScriptParams_ptr
343288:  ADD             R1, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
34328A:  LDR             R0, [R0]; ScriptParams
34328C:  LDR             R4, [R1]; CTheScripts::bAddNextMessageToPreviousBriefs ...
34328E:  LDRD.W          R1, R2, [R0]; unsigned __int16 *
343292:  LDRH            R3, [R0,#(dword_81A910 - 0x81A908)]; unsigned int
343294:  LDRB            R0, [R4]; CTheScripts::bAddNextMessageToPreviousBriefs
343296:  CMP             R0, #0
343298:  IT NE
34329A:  MOVNE           R0, #1
34329C:  STRD.W          R1, R5, [SP,#0x70+var_70]; unsigned __int16
3432A0:  STRD.W          R5, R5, [SP,#0x70+var_68]; int
3432A4:  MOV             R1, R6; CMessages *
3432A6:  STRD.W          R5, R5, [SP,#0x70+var_60]; int
3432AA:  STR             R0, [SP,#0x70+var_58]; int
3432AC:  MOV             R0, R8; this
3432AE:  BLX             j__ZN9CMessages20AddMessageWithNumberEPKcPtjtiiiiiib; CMessages::AddMessageWithNumber(char const*,ushort *,uint,ushort,int,int,int,int,int,int,bool)
3432B2:  B               loc_34330C
3432B4:  ADD             R5, SP, #0x70+var_54; jumptable 00342D54 case 485
3432B6:  MOV             R0, R4; this
3432B8:  MOVS            R2, #8; unsigned __int8
3432BA:  MOV             R1, R5; char *
3432BC:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3432C0:  LDR.W           R0, =(TheText_ptr - 0x3432CA)
3432C4:  MOV             R1, R5; CKeyGen *
3432C6:  ADD             R0, PC; TheText_ptr
3432C8:  LDR             R0, [R0]; TheText ; this
3432CA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3432CE:  MOV             R5, R0
3432D0:  MOV             R0, R4; this
3432D2:  MOVS            R1, #3; __int16
3432D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3432D8:  LDR.W           R0, =(ScriptParams_ptr - 0x3432E8)
3432DC:  MOV.W           R6, #0xFFFFFFFF
3432E0:  LDR.W           R1, =(_ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr - 0x3432EA)
3432E4:  ADD             R0, PC; ScriptParams_ptr
3432E6:  ADD             R1, PC; _ZN11CTheScripts31bAddNextMessageToPreviousBriefsE_ptr
3432E8:  LDR             R0, [R0]; ScriptParams
3432EA:  LDR             R4, [R1]; CTheScripts::bAddNextMessageToPreviousBriefs ...
3432EC:  LDRD.W          R3, R1, [R0]; unsigned __int16 *
3432F0:  LDRH            R2, [R0,#(dword_81A910 - 0x81A908)]; unsigned int
3432F2:  LDRB            R0, [R4]; CTheScripts::bAddNextMessageToPreviousBriefs
3432F4:  CMP             R0, #0
3432F6:  IT NE
3432F8:  MOVNE           R0, #1
3432FA:  STRD.W          R6, R6, [SP,#0x70+var_70]; int
3432FE:  STRD.W          R6, R6, [SP,#0x70+var_68]; int
343302:  STRD.W          R6, R0, [SP,#0x70+var_60]; int
343306:  MOV             R0, R5; this
343308:  BLX             j__ZN9CMessages25AddMessageJumpQWithNumberEPtjtiiiiiib; CMessages::AddMessageJumpQWithNumber(ushort *,uint,ushort,int,int,int,int,int,int,bool)
34330C:  MOVS            R0, #1
34330E:  STRB            R0, [R4]; CTheScripts::bAddNextMessageToPreviousBriefs
343310:  B               loc_343866
343312:  MOV             R0, R4; jumptable 00342D54 case 487
343314:  MOVS            R1, #6; __int16
343316:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34331A:  LDR.W           R0, =(ScriptParams_ptr - 0x343328)
34331E:  MOVS            R5, #0
343320:  LDR.W           R6, =(ThePaths_ptr - 0x34332C)
343324:  ADD             R0, PC; ScriptParams_ptr
343326:  STR             R5, [SP,#0x70+var_64]
343328:  ADD             R6, PC; ThePaths_ptr
34332A:  LDR             R0, [R0]; ScriptParams
34332C:  VLDR            S2, [R0]
343330:  VLDR            S6, [R0,#0xC]
343334:  VLDR            S4, [R0,#4]
343338:  VLDR            S10, [R0,#0x10]
34333C:  VMIN.F32        D4, D1, D3
343340:  VMAX.F32        D1, D1, D3
343344:  VLDR            S0, [R0,#8]
343348:  VMIN.F32        D3, D2, D5
34334C:  VMAX.F32        D2, D2, D5
343350:  VMOV            R1, S8
343354:  VMOV            R2, S2
343358:  VLDR            S2, [R0,#0x14]
34335C:  VMOV            R3, S6
343360:  LDR             R0, [R6]; ThePaths
343362:  MOVS            R6, #1
343364:  B               loc_3433B8
343366:  MOV             R0, R4; jumptable 00342D54 case 488
343368:  MOVS            R1, #6; __int16
34336A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34336E:  LDR.W           R0, =(ScriptParams_ptr - 0x34337C)
343372:  MOVS            R5, #0
343374:  LDR.W           R6, =(ThePaths_ptr - 0x34337E)
343378:  ADD             R0, PC; ScriptParams_ptr
34337A:  ADD             R6, PC; ThePaths_ptr
34337C:  LDR             R0, [R0]; ScriptParams
34337E:  VLDR            S2, [R0]
343382:  VLDR            S6, [R0,#0xC]
343386:  VLDR            S4, [R0,#4]
34338A:  VLDR            S10, [R0,#0x10]
34338E:  VMIN.F32        D4, D1, D3
343392:  VMAX.F32        D1, D1, D3
343396:  VLDR            S0, [R0,#8]
34339A:  VMIN.F32        D3, D2, D5
34339E:  VMAX.F32        D2, D2, D5
3433A2:  VMOV            R1, S8; float
3433A6:  VMOV            R2, S2; float
3433AA:  VLDR            S2, [R0,#0x14]
3433AE:  LDR             R0, [R6]; ThePaths ; this
3433B0:  MOVS            R6, #1
3433B2:  VMOV            R3, S6; float
3433B6:  STR             R6, [SP,#0x70+var_64]; bool
3433B8:  VMAX.F32        D3, D0, D1
3433BC:  STRD.W          R6, R5, [SP,#0x70+var_60]; bool
3433C0:  VMIN.F32        D0, D0, D1
3433C4:  VSTR            S4, [SP,#0x70+var_70]
3433C8:  VSTR            S0, [SP,#0x70+var_6C]
3433CC:  VSTR            S6, [SP,#0x70+var_68]
3433D0:  BLX             j__ZN9CPathFind20SwitchRoadsOffInAreaEffffffbbb; CPathFind::SwitchRoadsOffInArea(float,float,float,float,float,float,bool,bool,bool)
3433D4:  B               def_342D54; jumptable 00342D54 default case, cases 402-416,433,435,440,442,446,447,454,457-482,486,493-495,497,498
3433D6:  ALIGN 4
3433D8:  DCFS -100.0
3433DC:  MOV             R0, R4; jumptable 00342D54 case 489
3433DE:  MOVS            R1, #1; __int16
3433E0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3433E4:  LDR.W           R0, =(ScriptParams_ptr - 0x3433F4)
3433E8:  MOVW            R3, #0xA2C
3433EC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3433F6)
3433F0:  ADD             R0, PC; ScriptParams_ptr
3433F2:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3433F4:  LDR             R0, [R0]; ScriptParams
3433F6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3433F8:  LDR             R2, [R0]
3433FA:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3433FC:  LSRS            R2, R2, #8
3433FE:  LDR             R1, [R1]
343400:  MLA.W           R1, R2, R3, R1
343404:  LDRB.W          R1, [R1,#0x488]
343408:  B               loc_343436
34340A:  MOV             R0, R4; jumptable 00342D54 case 490
34340C:  MOVS            R1, #1; __int16
34340E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343412:  LDR.W           R0, =(ScriptParams_ptr - 0x343422)
343416:  MOVW            R3, #0xA2C
34341A:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x343424)
34341E:  ADD             R0, PC; ScriptParams_ptr
343420:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
343422:  LDR             R0, [R0]; ScriptParams
343424:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
343426:  LDR             R2, [R0]
343428:  LDR             R1, [R1]; CPools::ms_pVehiclePool
34342A:  LSRS            R2, R2, #8
34342C:  LDR             R1, [R1]
34342E:  MLA.W           R1, R2, R3, R1
343432:  LDRB.W          R1, [R1,#0x48C]
343436:  STR             R1, [R0]
343438:  MOV             R0, R4; this
34343A:  MOVS            R1, #1; __int16
34343C:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
343440:  B               loc_343866
343442:  MOV             R0, R4; jumptable 00342D54 case 491
343444:  MOVS            R1, #1; __int16
343446:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34344A:  LDR.W           R0, =(ScriptParams_ptr - 0x343456)
34344E:  LDR.W           R1, =(_ZN8CCarCtrl20CarDensityMultiplierE_ptr - 0x343458)
343452:  ADD             R0, PC; ScriptParams_ptr
343454:  ADD             R1, PC; _ZN8CCarCtrl20CarDensityMultiplierE_ptr
343456:  LDR             R0, [R0]; ScriptParams
343458:  LDR             R1, [R1]; CCarCtrl::CarDensityMultiplier ...
34345A:  LDR             R0, [R0]
34345C:  STR             R0, [R1]; CCarCtrl::CarDensityMultiplier
34345E:  B               loc_343866
343460:  MOV             R0, R4; jumptable 00342D54 case 492
343462:  MOVS            R1, #2; __int16
343464:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343468:  LDR.W           R0, =(ScriptParams_ptr - 0x343470)
34346C:  ADD             R0, PC; ScriptParams_ptr
34346E:  LDR             R0, [R0]; ScriptParams
343470:  LDR             R0, [R0]
343472:  CMP             R0, #0
343474:  BLT.W           loc_343866
343478:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x343484)
34347C:  UXTB            R3, R0
34347E:  LSRS            R0, R0, #8
343480:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
343482:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
343484:  LDR             R1, [R1]; CPools::ms_pVehiclePool
343486:  LDR             R2, [R1,#4]
343488:  LDRB            R2, [R2,R0]
34348A:  CMP             R2, R3
34348C:  BNE.W           loc_343866
343490:  MOVW            R2, #0xA2C
343494:  LDR             R1, [R1]
343496:  MLA.W           R2, R0, R2, R1
34349A:  CMP             R2, #0
34349C:  BEQ.W           loc_343866
3434A0:  LDR.W           R3, =(ScriptParams_ptr - 0x3434A8)
3434A4:  ADD             R3, PC; ScriptParams_ptr
3434A6:  LDR             R6, [R3]; ScriptParams
3434A8:  LDR.W           R3, [R2,#0x44]!
3434AC:  LDR             R6, [R6,#(dword_81A90C - 0x81A908)]
3434AE:  CMP             R6, #0
3434B0:  BEQ.W           loc_343838
3434B4:  MOVW            R6, #0xA2C
3434B8:  VMOV.F32        S0, #3.0
3434BC:  MLA.W           R6, R0, R6, R1
3434C0:  ORR.W           R3, R3, #1
3434C4:  STR             R3, [R2]
3434C6:  LDR.W           R2, [R6,#0x388]
3434CA:  VLDR            S2, [R2,#4]
3434CE:  VMUL.F32        S0, S2, S0
3434D2:  VMOV.F32        S2, #5.0
3434D6:  VSTR            S0, [R6,#0x90]
3434DA:  VLDR            S0, [R2,#0xC]
3434DE:  VMUL.F32        S0, S0, S2
3434E2:  VSTR            S0, [R6,#0x94]
3434E6:  VLDR            S0, [R2,#0x24]
3434EA:  VADD.F32        S0, S0, S0
3434EE:  B               loc_34385A
3434F0:  MOV             R0, R4; jumptable 00342D54 case 496
3434F2:  MOVS            R1, #1; __int16
3434F4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3434F8:  LDR.W           R0, =(ScriptParams_ptr - 0x343500)
3434FC:  ADD             R0, PC; ScriptParams_ptr
3434FE:  LDR             R0, [R0]; ScriptParams
343500:  LDR             R0, [R0]; this
343502:  BLX             j__ZN7CWanted21SetMaximumWantedLevelEi; CWanted::SetMaximumWantedLevel(int)
343506:  B               loc_343866
343508:  MOV             R0, R4; jumptable 00342D54 case 499
34350A:  MOVS            R1, #1; __int16
34350C:  MOVS            R5, #1
34350E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
343512:  LDR             R0, =(ScriptParams_ptr - 0x34351E)
343514:  MOVW            R2, #0xA2C
343518:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x343520)
34351A:  ADD             R0, PC; ScriptParams_ptr
34351C:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
34351E:  LDR             R0, [R0]; ScriptParams
343520:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
343522:  LDR             R0, [R0]
343524:  LDR             R1, [R1]; CPools::ms_pVehiclePool
343526:  LSRS            R0, R0, #8
343528:  LDR             R1, [R1]
34352A:  MLA.W           R1, R0, R2, R1
34352E:  LDRB.W          R0, [R1,#0xBD]
343532:  CBZ             R0, loc_343558
343534:  ADDS            R1, #0xC0
343536:  MOVS            R2, #0
343538:  MOVS            R5, #1
34353A:  LDR.W           R3, [R1,R2,LSL#2]
34353E:  CBZ             R3, loc_343552
343540:  LDRB.W          R3, [R3,#0x3A]
343544:  AND.W           R3, R3, #7
343548:  SUBS            R3, #1
34354A:  UXTB            R3, R3
34354C:  CMP             R3, #2
34354E:  IT CC
343550:  MOVCC           R5, #0
343552:  ADDS            R2, #1
343554:  CMP             R2, R0
343556:  BCC             loc_34353A
343558:  UXTB            R1, R5
34355A:  B               loc_343612
34355C:  MOVS            R4, #0
34355E:  LDR.W           R0, =(ScriptParams_ptr - 0x343568)
343562:  MOVS            R3, #1
343564:  ADD             R0, PC; ScriptParams_ptr
343566:  LDR             R0, [R0]; ScriptParams
343568:  LDRD.W          R1, R2, [R0,#(dword_81A90C - 0x81A908)]
34356C:  MOV             R0, R4
34356E:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
343572:  MOV             R5, R0
343574:  MOV             R0, R4; this
343576:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
34357A:  CMP             R0, #1
34357C:  BNE.W           loc_3436C2
343580:  LDR.W           R0, [R4,#0x444]
343584:  STRB.W          R5, [R0,#0x20]
343588:  B               loc_343866
34358A:  MOVS            R4, #0
34358C:  LDR.W           R0, =(ScriptParams_ptr - 0x343594)
343590:  ADD             R0, PC; ScriptParams_ptr
343592:  LDR             R0, [R0]; ScriptParams
343594:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]
343596:  CMP             R0, #0
343598:  BEQ.W           loc_34372E
34359C:  LDR.W           R1, =(ScriptParams_ptr - 0x3435AA)
3435A0:  MOVS            R5, #0
3435A2:  MOVW            R6, #0x5A4
3435A6:  ADD             R1, PC; ScriptParams_ptr
3435A8:  LDR.W           R8, [R1]; ScriptParams
3435AC:  B               loc_3435B6
3435AE:  ADDS            R5, #1
3435B0:  LDR.W           R0, [R8,#(dword_81A90C - 0x81A908)]
3435B4:  ADDS            R6, #0x1C
3435B6:  LDR             R1, [R4,R6]
3435B8:  CMP             R1, R0
3435BA:  BNE             loc_3435CE
3435BC:  MOV             R0, R4; this
3435BE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3435C2:  CMP             R0, #1
3435C4:  BNE             loc_3435D4
3435C6:  LDR.W           R0, [R4,#0x444]
3435CA:  STRB.W          R5, [R0,#0x20]
3435CE:  CMP             R5, #0xC
3435D0:  BNE             loc_3435AE
3435D2:  B               loc_343866
3435D4:  MOV             R0, R4; this
3435D6:  MOV             R1, R5; int
3435D8:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
3435DC:  CMP             R5, #0xC
3435DE:  BNE             loc_3435AE
3435E0:  B               loc_343866
3435E2:  MOVS            R0, #0
3435E4:  LDR             R1, =(ScriptParams_ptr - 0x3435EC)
3435E6:  LDR             R2, [R0,#0x14]
3435E8:  ADD             R1, PC; ScriptParams_ptr
3435EA:  ADD.W           R3, R2, #0x30 ; '0'
3435EE:  CMP             R2, #0
3435F0:  IT EQ
3435F2:  ADDEQ           R3, R0, #4
3435F4:  LDR             R1, [R1]; ScriptParams
3435F6:  LDM             R3, {R0,R2,R3}
3435F8:  STM             R1!, {R0,R2,R3}
3435FA:  MOV             R0, R4; this
3435FC:  MOVS            R1, #3; __int16
3435FE:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
343602:  B               loc_343866
343604:  MOVS            R0, #0; this
343606:  BLX             j__ZN11CTheScripts16IsVehicleStoppedEP8CVehicle; CTheScripts::IsVehicleStopped(CVehicle *)
34360A:  MOV             R1, R0
34360C:  CMP             R1, #0
34360E:  IT NE
343610:  MOVNE           R1, #1; unsigned __int8
343612:  MOV             R0, R4; this
343614:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
343618:  B               loc_343866
34361A:  MOVS            R0, #0; this
34361C:  BLX             j__ZN11CTheScripts14CleanUpThisPedEP4CPed; CTheScripts::CleanUpThisPed(CPed *)
343620:  LDRB.W          R0, [R4,#0xE6]
343624:  CMP             R0, #0
343626:  BEQ.W           loc_343866
34362A:  LDR             R0, =(ScriptParams_ptr - 0x343632)
34362C:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x343634)
34362E:  ADD             R0, PC; ScriptParams_ptr
343630:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
343632:  LDR             R2, [R0]; ScriptParams
343634:  LDR             R0, [R1]; this
343636:  LDR             R1, [R2]; int
343638:  MOVS            R2, #2; unsigned __int8
34363A:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
34363E:  B               loc_343866
343640:  MOVS            R0, #0; this
343642:  BLX             j__ZN11CTheScripts18CleanUpThisVehicleEP8CVehicle; CTheScripts::CleanUpThisVehicle(CVehicle *)
343646:  LDRB.W          R0, [R4,#0xE6]
34364A:  CMP             R0, #0
34364C:  BEQ.W           loc_343866
343650:  LDR             R0, =(ScriptParams_ptr - 0x343658)
343652:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x34365A)
343654:  ADD             R0, PC; ScriptParams_ptr
343656:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
343658:  LDR             R2, [R0]; ScriptParams
34365A:  LDR             R0, [R1]; this
34365C:  LDR             R1, [R2]; int
34365E:  MOVS            R2, #1; unsigned __int8
343660:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
343664:  B               loc_343866
343666:  MOVS            R0, #0; this
343668:  BLX             j__ZN11CTheScripts17CleanUpThisObjectEP7CObject; CTheScripts::CleanUpThisObject(CObject *)
34366C:  LDRB.W          R0, [R4,#0xE6]
343670:  CMP             R0, #0
343672:  BEQ.W           loc_343866
343676:  LDR             R0, =(ScriptParams_ptr - 0x34367E)
343678:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x343680)
34367A:  ADD             R0, PC; ScriptParams_ptr
34367C:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
34367E:  LDR             R2, [R0]; ScriptParams
343680:  LDR             R0, [R1]; this
343682:  LDR             R1, [R2]; int
343684:  MOVS            R2, #3; unsigned __int8
343686:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
34368A:  B               loc_343866
34368C:  MOV.W           R8, #0
343690:  LDR             R0, =(ScriptParams_ptr - 0x343696)
343692:  ADD             R0, PC; ScriptParams_ptr
343694:  LDR             R5, [R0]; ScriptParams
343696:  MOV             R0, R4; this
343698:  ADD.W           R2, R5, #8; int *
34369C:  LDR             R1, [R5,#(dword_81A90C - 0x81A908)]; int
34369E:  BLX             j__ZN14CRunningScript46GetCorrectPedModelIndexForEmergencyServiceTypeEiPi; CRunningScript::GetCorrectPedModelIndexForEmergencyServiceType(int,int *)
3436A2:  LDR             R0, [R5,#(dword_81A90C - 0x81A908)]
3436A4:  CMP             R0, #6
3436A6:  BNE             loc_3436FC
3436A8:  MOVW            R0, #(elf_hash_bucket+0x6D0); this
3436AC:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
3436B0:  MOV             R6, R0
3436B2:  LDR             R0, =(ScriptParams_ptr - 0x3436B8)
3436B4:  ADD             R0, PC; ScriptParams_ptr
3436B6:  LDR             R0, [R0]; ScriptParams
3436B8:  LDR             R1, [R0,#(dword_81A910 - 0x81A908)]
3436BA:  MOV             R0, R6
3436BC:  BLX             j__ZN7CCopPedC2E8eCopType; CCopPed::CCopPed(eCopType)
3436C0:  B               loc_343754
3436C2:  MOV             R0, R4; this
3436C4:  MOV             R1, R5; int
3436C6:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
3436CA:  LDRB.W          R0, [R4,#0x485]
3436CE:  LSLS            R0, R0, #0x1F
3436D0:  ITT NE
3436D2:  LDRNE.W         R0, [R4,#0x590]
3436D6:  CMPNE           R0, #0
3436D8:  BEQ.W           loc_343866
3436DC:  LDRSB.W         R0, [R4,#0x71C]
3436E0:  MOVS            R1, #1
3436E2:  RSB.W           R0, R0, R0,LSL#3
3436E6:  ADD.W           R0, R4, R0,LSL#2
3436EA:  LDR.W           R0, [R0,#0x5A4]
3436EE:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3436F2:  LDR             R1, [R0,#0xC]; int
3436F4:  MOV             R0, R4; this
3436F6:  BLX             j__ZN4CPed17RemoveWeaponModelEi; CPed::RemoveWeaponModel(int)
3436FA:  B               loc_343866
3436FC:  ORR.W           R5, R0, #1
343700:  MOVW            R0, #(elf_hash_bucket+0x6A8); this
343704:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
343708:  MOV             R6, R0
34370A:  CMP             R5, #0x13
34370C:  BNE             loc_343744
34370E:  LDR             R0, =(ScriptParams_ptr - 0x343714)
343710:  ADD             R0, PC; ScriptParams_ptr
343712:  LDR             R0, [R0]; ScriptParams
343714:  LDRD.W          R1, R2, [R0,#(dword_81A90C - 0x81A908)]; unsigned int
343718:  MOV             R0, R6; this
34371A:  BLX             j__ZN13CEmergencyPedC2Ejj; CEmergencyPed::CEmergencyPed(uint,uint)
34371E:  B               loc_343754
343720:  MOVS            R2, #0
343722:  MOVS            R1, #1; bool
343724:  MOVT            R2, #0x4120; float
343728:  BLX             j__ZN11CPlayerInfo14MakePlayerSafeEbf; CPlayerInfo::MakePlayerSafe(bool,float)
34372C:  B               loc_343866
34372E:  MOV             R0, R4; this
343730:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
343734:  CMP             R0, #1
343736:  BNE             loc_34382C
343738:  LDR.W           R0, [R4,#0x444]
34373C:  MOVS            R5, #0
34373E:  STRB.W          R5, [R0,#0x20]
343742:  B               def_342D54; jumptable 00342D54 default case, cases 402-416,433,435,440,442,446,447,454,457-482,486,493-495,497,498
343744:  LDR             R0, =(ScriptParams_ptr - 0x34374A)
343746:  ADD             R0, PC; ScriptParams_ptr
343748:  LDR             R0, [R0]; ScriptParams
34374A:  LDRD.W          R1, R2, [R0,#(dword_81A90C - 0x81A908)]
34374E:  MOV             R0, R6
343750:  BLX             j__ZN12CCivilianPedC2E8ePedTypej; CCivilianPed::CCivilianPed(ePedType,uint)
343754:  MOV             R0, R6; this
343756:  MOVS            R1, #2; unsigned __int8
343758:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
34375C:  LDR.W           R3, [R6,#0x484]
343760:  LDR.W           R12, [R6,#0x488]
343764:  LDR.W           R1, [R6,#0x48C]
343768:  BIC.W           R5, R3, #0x80000000
34376C:  LDR.W           R2, [R6,#0x490]; int
343770:  STR.W           R5, [R6,#0x484]
343774:  LDRB.W          R5, [R8,#0x42D]
343778:  LSLS            R5, R5, #0x1E
34377A:  BPL             loc_343792
34377C:  MOVW            R0, #0xDFFF
343780:  ADDW            R5, R6, #0x484
343784:  MOVT            R0, #0x7FFF
343788:  ANDS            R0, R3
34378A:  STRD.W          R0, R12, [R5]
34378E:  STRD.W          R1, R2, [R5,#8]
343792:  LDR             R0, =(ScriptParams_ptr - 0x343798)
343794:  ADD             R0, PC; ScriptParams_ptr
343796:  LDR             R0, [R0]; ScriptParams
343798:  LDR             R1, [R0,#(dword_81A914 - 0x81A908)]; CVehicle *
34379A:  CMP             R1, #0
34379C:  BLT             loc_3437A8
34379E:  MOV             R0, R8; this
3437A0:  BLX             j__ZN13CCarEnterExit35ComputeTargetDoorToEnterAsPassengerERK8CVehiclei; CCarEnterExit::ComputeTargetDoorToEnterAsPassenger(CVehicle const&,int)
3437A4:  MOV             R2, R0
3437A6:  B               loc_3437AA
3437A8:  MOVS            R2, #0; int
3437AA:  ADD.W           R9, SP, #0x70+var_54
3437AE:  MOV             R1, R8; CVehicle *
3437B0:  MOVS            R3, #0; CTaskUtilityLineUpPedWithCar *
3437B2:  MOVS            R5, #0
3437B4:  MOV             R0, R9; this
3437B6:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsPassenger::CTaskSimpleCarSetPedInAsPassenger(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
3437BA:  MOVS            R0, #1
3437BC:  MOV             R1, R6; CPed *
3437BE:  STRB.W          R0, [SP,#0x70+var_38]
3437C2:  MOV             R0, R9; this
3437C4:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassenger10ProcessPedEP4CPed; CTaskSimpleCarSetPedInAsPassenger::ProcessPed(CPed *)
3437C8:  MOV             R0, R9; this
3437CA:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerD2Ev; CTaskSimpleCarSetPedInAsPassenger::~CTaskSimpleCarSetPedInAsPassenger()
3437CE:  LDR             R0, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x3437D4)
3437D0:  ADD             R0, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
3437D2:  LDR             R0, [R0]; CPopulation::ms_nTotalMissionPeds ...
3437D4:  LDR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
3437D6:  ADDS            R1, #1; CEntity *
3437D8:  STR             R1, [R0]; CPopulation::ms_nTotalMissionPeds
3437DA:  MOV             R0, R6; this
3437DC:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
3437E0:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3437EE)
3437E2:  MOV             R2, #0xBED87F3B
3437EA:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3437EC:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3437EE:  LDR             R0, [R0]; CPools::ms_pPedPool
3437F0:  LDRD.W          R1, R0, [R0]
3437F4:  SUBS            R1, R6, R1
3437F6:  ASRS            R1, R1, #2
3437F8:  MULS            R1, R2
3437FA:  LDR             R2, =(ScriptParams_ptr - 0x343800)
3437FC:  ADD             R2, PC; ScriptParams_ptr
3437FE:  LDR             R2, [R2]; ScriptParams
343800:  LDRB            R0, [R0,R1]
343802:  ORR.W           R0, R0, R1,LSL#8
343806:  STR             R0, [R2]
343808:  MOV             R0, R4; this
34380A:  MOVS            R1, #1; __int16
34380C:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
343810:  LDRB.W          R0, [R4,#0xE6]
343814:  CBZ             R0, def_342D54; jumptable 00342D54 default case, cases 402-416,433,435,440,442,446,447,454,457-482,486,493-495,497,498
343816:  LDR             R0, =(ScriptParams_ptr - 0x34381E)
343818:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x343820)
34381A:  ADD             R0, PC; ScriptParams_ptr
34381C:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
34381E:  LDR             R2, [R0]; ScriptParams
343820:  LDR             R0, [R1]; this
343822:  LDR             R1, [R2]; int
343824:  MOVS            R2, #2; unsigned __int8
343826:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
34382A:  B               loc_343866
34382C:  MOV             R0, R4; this
34382E:  MOVS            R1, #0; int
343830:  MOVS            R5, #0
343832:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
343836:  B               def_342D54; jumptable 00342D54 default case, cases 402-416,433,435,440,442,446,447,454,457-482,486,493-495,497,498
343838:  MOVW            R6, #0xA2C
34383C:  BIC.W           R3, R3, #1
343840:  MLA.W           R6, R0, R6, R1
343844:  STR             R3, [R2]
343846:  LDR.W           R2, [R6,#0x388]
34384A:  LDR             R3, [R2,#4]
34384C:  STR.W           R3, [R6,#0x90]
343850:  LDR             R3, [R2,#0xC]
343852:  STR.W           R3, [R6,#0x94]
343856:  VLDR            S0, [R2,#0x24]
34385A:  MOVW            R2, #0xA2C
34385E:  MLA.W           R0, R0, R2, R1
343862:  VSTR            S0, [R0,#0xA4]
343866:  MOVS            R5, #0
343868:  LDR             R0, =(__stack_chk_guard_ptr - 0x343870); jumptable 00342D54 default case, cases 402-416,433,435,440,442,446,447,454,457-482,486,493-495,497,498
34386A:  LDR             R1, [SP,#0x70+var_34]
34386C:  ADD             R0, PC; __stack_chk_guard_ptr
34386E:  LDR             R0, [R0]; __stack_chk_guard
343870:  LDR             R0, [R0]
343872:  SUBS            R0, R0, R1
343874:  ITTTT EQ
343876:  SXTBEQ          R0, R5
343878:  ADDEQ           SP, SP, #0x40 ; '@'
34387A:  VPOPEQ          {D8-D10}
34387E:  POPEQ.W         {R8,R9,R11}
343882:  IT EQ
343884:  POPEQ           {R4-R7,PC}
343886:  BLX             __stack_chk_fail
