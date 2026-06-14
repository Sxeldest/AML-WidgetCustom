; =========================================================
; Game Engine Function: _ZN11CAutomobile16HydraulicControlEv
; Address            : 0x54F118 - 0x54FC12
; =========================================================

54F118:  PUSH            {R4-R7,LR}
54F11A:  ADD             R7, SP, #0xC
54F11C:  PUSH.W          {R8-R11}
54F120:  SUB             SP, SP, #4
54F122:  VPUSH           {D8-D15}
54F126:  SUB             SP, SP, #0x28
54F128:  MOV             R11, R0
54F12A:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x54F136)
54F12E:  LDRSH.W         R1, [R11,#0x26]
54F132:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
54F134:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
54F136:  LDR.W           R9, [R0,R1,LSL#2]
54F13A:  MOVS            R1, #0
54F13C:  LDRB.W          R0, [R11,#0x3A]
54F140:  VLDR            S18, [R9,#0x58]
54F144:  CMP.W           R1, R0,LSR#3
54F148:  BEQ             loc_54F164
54F14A:  LSRS            R1, R0, #3
54F14C:  CMP             R1, #3
54F14E:  ITT EQ
54F150:  LDRBEQ.W        R1, [R11,#0x4A8]
54F154:  CMPEQ           R1, #2
54F156:  BNE.W           loc_54FC04
54F15A:  LDRSB.W         R1, [R11,#0x48F]
54F15E:  CMP             R1, #0
54F160:  BLT.W           loc_54FC04
54F164:  LDRB.W          R1, [R11,#0x392]
54F168:  LSLS            R1, R1, #0x1D
54F16A:  BMI.W           loc_54FC04
54F16E:  CMP             R0, #7
54F170:  BHI             loc_54F188
54F172:  LDR.W           R0, [R11,#0x464]; this
54F176:  CBZ             R0, loc_54F18C
54F178:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
54F17C:  CMP             R0, #1
54F17E:  ITE EQ
54F180:  LDREQ.W         R6, [R11,#0x464]
54F184:  MOVNE           R6, #0
54F186:  B               loc_54F18E
54F188:  MOVS            R6, #0
54F18A:  B               loc_54F19E
54F18C:  MOVS            R6, #0
54F18E:  LDR.W           R0, =(_ZN10CGameLogic9GameStateE_ptr - 0x54F196)
54F192:  ADD             R0, PC; _ZN10CGameLogic9GameStateE_ptr
54F194:  LDR             R0, [R0]; CGameLogic::GameState ...
54F196:  LDRB            R0, [R0]; CGameLogic::GameState
54F198:  CMP             R0, #0
54F19A:  BNE.W           loc_54FC04
54F19E:  MOV             R0, R11; this
54F1A0:  BLX             j__ZN8CVehicle18GetSpecialColModelEv; CVehicle::GetSpecialColModel(void)
54F1A4:  CMP             R0, #1
54F1A6:  BNE.W           loc_54FC04
54F1AA:  VMOV.F32        S16, #0.5
54F1AE:  LDR.W           R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x54F1BE)
54F1B2:  LDR.W           R1, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x54F1C0)
54F1B6:  LDRSB.W         R2, [R11,#0x48F]
54F1BA:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
54F1BC:  ADD             R1, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
54F1BE:  VLDR            S0, =100.0
54F1C2:  LDR             R3, [R0]; CVehicle::m_aSpecialColModel ...
54F1C4:  ADD.W           R0, R2, R2,LSL#2
54F1C8:  LDR             R1, [R1]; CVehicle::m_aSpecialHydraulicData ...
54F1CA:  ADD.W           R2, R2, R2,LSL#1
54F1CE:  ADD.W           R1, R1, R0,LSL#3
54F1D2:  VMUL.F32        S18, S18, S16
54F1D6:  VLDR            S28, [R1,#8]
54F1DA:  ADD.W           R1, R3, R2,LSL#4
54F1DE:  LDR.W           R8, [R1,#0x2C]
54F1E2:  VCMPE.F32       S28, S0
54F1E6:  VMRS            APSR_nzcv, FPSCR
54F1EA:  BGE             loc_54F20E
54F1EC:  LDR.W           R1, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x54F1F4)
54F1F0:  ADD             R1, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
54F1F2:  LDR             R1, [R1]; CVehicle::m_aSpecialHydraulicData ...
54F1F4:  ADD.W           R0, R1, R0,LSL#3
54F1F8:  VLDR            S19, [R0,#0xC]
54F1FC:  VLDR            S26, [R0]
54F200:  VLDR            S20, [R0,#4]
54F204:  VSUB.F32        S30, S28, S19
54F208:  VSUB.F32        S24, S26, S20
54F20C:  B               loc_54F37A
54F20E:  VLDR            S22, =0.0
54F212:  LDRSH.W         R0, [R8]
54F216:  VMOV            D14, D11
54F21A:  CMP             R0, #1
54F21C:  BLT             loc_54F242
54F21E:  LDR.W           R1, [R8,#8]
54F222:  MOVS            R2, #0
54F224:  VLDR            S28, =0.0
54F228:  ADDS            R1, #8
54F22A:  VLDR            S0, [R1]
54F22E:  ADDS            R2, #1
54F230:  VLDR            S2, [R1,#4]
54F234:  ADDS            R1, #0x14
54F236:  CMP             R2, R0
54F238:  VSUB.F32        S0, S0, S2
54F23C:  VMIN.F32        D14, D0, D14
54F240:  BLT             loc_54F22A
54F242:  ADD             R2, SP, #0x88+var_70; CVector *
54F244:  MOV             R0, R9; this
54F246:  MOVS            R1, #0; int
54F248:  MOVS            R3, #0; bool
54F24A:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
54F24E:  LDR.W           R0, [R11,#0x388]
54F252:  VMOV.F32        S2, #1.5
54F256:  LDR.W           R1, [R11,#0x390]
54F25A:  ADR.W           R2, dword_54FC38
54F25E:  VLDR            S0, [R0,#0xB8]
54F262:  TST.W           R1, #0x10000
54F266:  VLDR            S20, [R0,#0xBC]
54F26A:  LDR.W           R0, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x54F276)
54F26E:  VSUB.F32        S0, S0, S20
54F272:  ADD             R0, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
54F274:  LDR             R0, [R0]; CVehicle::m_aSpecialHydraulicData ...
54F276:  VMUL.F32        S24, S0, S2
54F27A:  VLDR            S2, =0.15
54F27E:  IT EQ
54F280:  VMOVEQ.F32      S24, S0
54F284:  LDRSB.W         R1, [R11,#0x48F]
54F288:  VADD.F32        S26, S20, S24
54F28C:  VLDR            S0, [SP,#0x88+var_68]
54F290:  VMUL.F32        S2, S24, S2
54F294:  ADD.W           R1, R1, R1,LSL#2
54F298:  VSUB.F32        S0, S28, S0
54F29C:  ADD.W           R1, R0, R1,LSL#3
54F2A0:  VSTR            S26, [R1]
54F2A4:  LDRSB.W         R1, [R11,#0x48F]
54F2A8:  VADD.F32        S4, S0, S22
54F2AC:  VADD.F32        S0, S18, S0
54F2B0:  ADD.W           R1, R1, R1,LSL#2
54F2B4:  ADD.W           R1, R0, R1,LSL#3
54F2B8:  VSTR            S20, [R1,#4]
54F2BC:  LDR.W           R1, [R11,#0x390]
54F2C0:  LDRSB.W         R3, [R11,#0x48F]
54F2C4:  TST.W           R1, #0x10000
54F2C8:  IT EQ
54F2CA:  ADDEQ           R2, #4
54F2CC:  VLDR            S6, [R2]
54F2D0:  ADD.W           R1, R3, R3,LSL#2
54F2D4:  VADD.F32        S8, S26, S6
54F2D8:  ADD.W           R1, R0, R1,LSL#3
54F2DC:  VADD.F32        S19, S20, S6
54F2E0:  VMAX.F32        D14, D4, D2
54F2E4:  VSUB.F32        S4, S26, S2
54F2E8:  VADD.F32        S2, S20, S2
54F2EC:  VSTR            S28, [R1,#8]
54F2F0:  VSUB.F32        S30, S28, S19
54F2F4:  LDRSB.W         R1, [R11,#0x48F]
54F2F8:  ADD.W           R1, R1, R1,LSL#2
54F2FC:  ADD.W           R1, R0, R1,LSL#3
54F300:  VSTR            S19, [R1,#0xC]
54F304:  LDRSB.W         R1, [R11,#0x48F]
54F308:  ADD.W           R1, R1, R1,LSL#2
54F30C:  ADD.W           R1, R0, R1,LSL#3
54F310:  VSTR            S4, [R1,#0x10]
54F314:  LDRSB.W         R1, [R11,#0x48F]
54F318:  VLDR            S4, =-0.1
54F31C:  ADD.W           R1, R1, R1,LSL#2
54F320:  VADD.F32        S0, S0, S4
54F324:  ADD.W           R1, R0, R1,LSL#3
54F328:  VSTR            S2, [R1,#0x14]
54F32C:  LDRSB.W         R1, [R11,#0x48F]
54F330:  ADD.W           R1, R1, R1,LSL#2
54F334:  ADD.W           R0, R0, R1,LSL#3
54F338:  VLDR            S2, [R0,#0x14]
54F33C:  VCMPE.F32       S2, S0
54F340:  VMRS            APSR_nzcv, FPSCR
54F344:  BLE             loc_54F37A
54F346:  LDR.W           R0, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x54F352)
54F34A:  VSUB.F32        S0, S2, S0
54F34E:  ADD             R0, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
54F350:  LDR             R0, [R0]; CVehicle::m_aSpecialHydraulicData ...
54F352:  ADD.W           R1, R0, R1,LSL#3
54F356:  VLDR            S2, [R1,#0x10]
54F35A:  VSUB.F32        S2, S2, S0
54F35E:  VSTR            S2, [R1,#0x10]
54F362:  LDRSB.W         R1, [R11,#0x48F]
54F366:  ADD.W           R1, R1, R1,LSL#2
54F36A:  ADD.W           R0, R0, R1,LSL#3
54F36E:  VLDR            S2, [R0,#0x14]
54F372:  VSUB.F32        S0, S2, S0
54F376:  VSTR            S0, [R0,#0x14]
54F37A:  LDRH.W          R0, [R11,#0x880]
54F37E:  CMP             R0, #0x13
54F380:  BHI             loc_54F3B8
54F382:  ADDW            R1, R11, #0x8C4
54F386:  VLDR            S0, =0.02
54F38A:  VLDR            S2, [R1]
54F38E:  VCMPE.F32       S2, S0
54F392:  VMRS            APSR_nzcv, FPSCR
54F396:  BLE             loc_54F3B8
54F398:  ADD.W           R1, R11, #0x4A0
54F39C:  VLDR            S0, [R1]
54F3A0:  VCMP.F32        S0, #0.0
54F3A4:  VMRS            APSR_nzcv, FPSCR
54F3A8:  BEQ             loc_54F3B8
54F3AA:  CMP             R0, #0
54F3AC:  BEQ.W           loc_54F5EE
54F3B0:  ADDS            R0, #1
54F3B2:  STRH.W          R0, [R11,#0x880]
54F3B6:  B               loc_54F3E4
54F3B8:  SUBS            R0, #1
54F3BA:  UXTH            R1, R0
54F3BC:  CMP             R1, #0x3B ; ';'
54F3BE:  BHI             loc_54F3E4
54F3C0:  ADDW            R1, R11, #0x8C4
54F3C4:  VLDR            S0, =0.01
54F3C8:  VLDR            S2, [R1]
54F3CC:  VCMPE.F32       S2, S0
54F3D0:  VMRS            APSR_nzcv, FPSCR
54F3D4:  BGE             loc_54F3E4
54F3D6:  MOVW            R1, #0xFFFF
54F3DA:  TST             R0, R1
54F3DC:  STRH.W          R0, [R11,#0x880]
54F3E0:  BEQ.W           loc_54F5D6
54F3E4:  MOV.W           R10, #0
54F3E8:  CMP             R6, #0
54F3EA:  BEQ.W           loc_54F60A
54F3EE:  MOV             R0, R6; this
54F3F0:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
54F3F4:  BLX             j__ZN4CPad12HornJustDownEv; CPad::HornJustDown(void)
54F3F8:  CMP             R0, #1
54F3FA:  BNE.W           loc_54F60A
54F3FE:  LDRH.W          R0, [R11,#0x880]
54F402:  MOVS            R1, #0x3C ; '<'
54F404:  CMP.W           R0, #0x1F4
54F408:  IT CC
54F40A:  MOVCC.W         R1, #0x1F4
54F40E:  STRH.W          R1, [R11,#0x880]
54F412:  BCS             loc_54F500
54F414:  VADD.F32        S16, S18, S30
54F418:  ADD.W           R5, R11, #0x7E8
54F41C:  VMOV.F32        S18, #1.0
54F420:  ADD.W           R10, SP, #0x88+var_70
54F424:  MOVS            R4, #0
54F426:  MOVS            R6, #0
54F428:  LDR.W           R0, [R8,#0x10]
54F42C:  MOV             R1, R6; int
54F42E:  MOV             R2, R10; CVector *
54F430:  MOVS            R3, #0; bool
54F432:  ADD             R0, R4
54F434:  VLDR            S20, [R5]
54F438:  VLDR            S22, [R5,#0xB4]
54F43C:  VLDR            S24, [R0,#8]
54F440:  MOV             R0, R9; this
54F442:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
54F446:  VLDR            S0, [SP,#0x88+var_68]
54F44A:  VADD.F32        S0, S28, S0
54F44E:  VSTR            S0, [SP,#0x88+var_68]
54F452:  LDR.W           R0, [R8,#0x10]
54F456:  VLDR            D16, [SP,#0x88+var_70]
54F45A:  ADD             R0, R4
54F45C:  LDR             R1, [SP,#0x88+var_68]
54F45E:  STR             R1, [R0,#8]
54F460:  VSTR            D16, [R0]
54F464:  VLDR            S0, [SP,#0x88+var_68]
54F468:  VSUB.F32        S0, S0, S16
54F46C:  VSTR            S0, [SP,#0x88+var_68]
54F470:  LDR.W           R0, [R8,#0x10]
54F474:  VLDR            D16, [SP,#0x88+var_70]
54F478:  ADD             R0, R4
54F47A:  LDR             R1, [SP,#0x88+var_68]
54F47C:  STR             R1, [R0,#0x18]
54F47E:  VSTR            D16, [R0,#0x10]
54F482:  VLDR            S0, [R5]
54F486:  VSTR            S16, [R5,#0xB4]
54F48A:  VCMPE.F32       S0, S18
54F48E:  VSTR            S30, [R5,#0xA4]
54F492:  VMRS            APSR_nzcv, FPSCR
54F496:  BGE             loc_54F4C6
54F498:  VMUL.F32        S0, S20, S22
54F49C:  LDR.W           R0, [R8,#0x10]
54F4A0:  ADD             R0, R4
54F4A2:  VLDR            S2, [R0,#8]
54F4A6:  VSUB.F32        S0, S24, S0
54F4AA:  VSUB.F32        S0, S2, S0
54F4AE:  VDIV.F32        S0, S0, S16
54F4B2:  VCMPE.F32       S0, S18
54F4B6:  VSTR            S0, [R5]
54F4BA:  VMRS            APSR_nzcv, FPSCR
54F4BE:  ITT GT
54F4C0:  MOVGT.W         R0, #0x3F800000
54F4C4:  STRGT           R0, [R5]
54F4C6:  ADDS            R4, #0x20 ; ' '
54F4C8:  ADDS            R5, #4
54F4CA:  ADDS            R6, #1
54F4CC:  CMP             R4, #0x80
54F4CE:  BNE             loc_54F428
54F4D0:  ADD.W           R0, R11, #0x13C; this
54F4D4:  MOVS            R1, #0x6D ; 'm'; int
54F4D6:  MOVS            R2, #0; float
54F4D8:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
54F4DC:  B               loc_54FAF0
54F4DE:  ALIGN 0x10
54F4E0:  DCFS 100.0
54F4E4:  DCFS 0.0
54F4E8:  DCFS 0.15
54F4EC:  DCFS -0.1
54F4F0:  DCFS 0.02
54F4F4:  DCFS 0.01
54F4F8:  DCFS -0.7854
54F4FC:  DCFS 0.0078125
54F500:  VADD.F32        S16, S18, S24
54F504:  STR.W           R10, [SP,#0x88+var_84]
54F508:  VMOV.F32        S18, #1.0
54F50C:  ADD.W           R5, R11, #0x7E8
54F510:  ADD.W           R10, SP, #0x88+var_70
54F514:  MOVS            R4, #0
54F516:  MOVS            R6, #0
54F518:  LDR.W           R0, [R8,#0x10]
54F51C:  MOV             R1, R6; int
54F51E:  MOV             R2, R10; CVector *
54F520:  MOVS            R3, #0; bool
54F522:  ADD             R0, R4
54F524:  VLDR            S20, [R5]
54F528:  VLDR            S22, [R5,#0xB4]
54F52C:  VLDR            S28, [R0,#8]
54F530:  MOV             R0, R9; this
54F532:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
54F536:  VLDR            S0, [SP,#0x88+var_68]
54F53A:  VADD.F32        S0, S26, S0
54F53E:  VSTR            S0, [SP,#0x88+var_68]
54F542:  LDR.W           R0, [R8,#0x10]
54F546:  VLDR            D16, [SP,#0x88+var_70]
54F54A:  ADD             R0, R4
54F54C:  LDR             R1, [SP,#0x88+var_68]
54F54E:  STR             R1, [R0,#8]
54F550:  VSTR            D16, [R0]
54F554:  VLDR            S0, [SP,#0x88+var_68]
54F558:  VSUB.F32        S0, S0, S16
54F55C:  VSTR            S0, [SP,#0x88+var_68]
54F560:  LDR.W           R0, [R8,#0x10]
54F564:  VLDR            D16, [SP,#0x88+var_70]
54F568:  ADD             R0, R4
54F56A:  LDR             R1, [SP,#0x88+var_68]
54F56C:  STR             R1, [R0,#0x18]
54F56E:  VSTR            D16, [R0,#0x10]
54F572:  VLDR            S0, [R5]
54F576:  VSTR            S16, [R5,#0xB4]
54F57A:  VCMPE.F32       S0, S18
54F57E:  VSTR            S24, [R5,#0xA4]
54F582:  VMRS            APSR_nzcv, FPSCR
54F586:  BGE             loc_54F5B6
54F588:  VMUL.F32        S0, S20, S22
54F58C:  LDR.W           R0, [R8,#0x10]
54F590:  ADD             R0, R4
54F592:  VLDR            S2, [R0,#8]
54F596:  VSUB.F32        S0, S28, S0
54F59A:  VSUB.F32        S0, S2, S0
54F59E:  VDIV.F32        S0, S0, S16
54F5A2:  VCMPE.F32       S0, S18
54F5A6:  VSTR            S0, [R5]
54F5AA:  VMRS            APSR_nzcv, FPSCR
54F5AE:  ITT GT
54F5B0:  MOVGT.W         R0, #0x3F800000
54F5B4:  STRGT           R0, [R5]
54F5B6:  ADDS            R4, #0x20 ; ' '
54F5B8:  ADDS            R5, #4
54F5BA:  ADDS            R6, #1
54F5BC:  CMP             R4, #0x80
54F5BE:  BNE             loc_54F518
54F5C0:  ADD.W           R0, R11, #0x13C; this
54F5C4:  MOVS            R1, #0x6B ; 'k'; int
54F5C6:  MOVS            R2, #0; float
54F5C8:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
54F5CC:  LDR             R0, [SP,#0x88+var_84]
54F5CE:  CMP             R0, #0
54F5D0:  BNE.W           loc_54FAF0
54F5D4:  B               loc_54FBC4
54F5D6:  ADD.W           R0, R11, #0x13C; this
54F5DA:  MOVS            R1, #0x6F ; 'o'; int
54F5DC:  MOVS            R2, #0; float
54F5DE:  MOV.W           R10, #0
54F5E2:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
54F5E6:  CMP             R6, #0
54F5E8:  BNE.W           loc_54F3EE
54F5EC:  B               loc_54F60A
54F5EE:  MOVS            R0, #0x14
54F5F0:  MOVS            R1, #0x6E ; 'n'; int
54F5F2:  STRH.W          R0, [R11,#0x880]
54F5F6:  ADD.W           R0, R11, #0x13C; this
54F5FA:  MOVS            R2, #0; float
54F5FC:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
54F600:  MOV.W           R10, #1
54F604:  CMP             R6, #0
54F606:  BNE.W           loc_54F3EE
54F60A:  LDR.W           R0, =(unk_5E87F8 - 0x54F614)
54F60E:  ADD             R5, SP, #0x88+var_80
54F610:  ADD             R0, PC; unk_5E87F8
54F612:  VLD1.64         {D16-D17}, [R0]
54F616:  VST1.64         {D16-D17}, [R5]
54F61A:  LDRB.W          R0, [R11,#0x3A]
54F61E:  AND.W           R0, R0, #0xF8
54F622:  CMP             R0, #0x18
54F624:  BNE             loc_54F65E
54F626:  LDR.W           R0, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x54F636)
54F62A:  ADD.W           R12, SP, #0x88+var_80
54F62E:  LDRSB.W         R1, [R11,#0x48F]
54F632:  ADD             R0, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
54F634:  LDR             R0, [R0]; CVehicle::m_aSpecialHydraulicData ...
54F636:  ADD.W           R1, R1, R1,LSL#2
54F63A:  ADD.W           R0, R0, R1,LSL#3
54F63E:  ADD.W           R3, R0, #0x18
54F642:  LDM             R3, {R1-R3}
54F644:  LDR             R0, [R0,#0x24]
54F646:  STM.W           R12, {R1-R3}
54F64A:  VMOV            S22, R1
54F64E:  VMOV            S4, R2
54F652:  VMOV            S2, R3
54F656:  STR             R0, [SP,#0x88+var_74]
54F658:  VMOV            S0, R0
54F65C:  B               loc_54F750
54F65E:  VMOV.F32        S22, #1.0
54F662:  CMP             R6, #0
54F664:  BEQ             loc_54F744
54F666:  MOV             R0, R6; this
54F668:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
54F66C:  BLX             j__ZN4CPad16GetHydraulicJumpEv; CPad::GetHydraulicJump(void)
54F670:  VMOV.F64        D0, D11
54F674:  ADD             R5, SP, #0x88+var_80
54F676:  CMP             R0, #0
54F678:  VMOV.F64        D1, D11
54F67C:  VMOV.F64        D2, D11
54F680:  BNE             loc_54F750
54F682:  MOV             R0, R6; this
54F684:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
54F688:  MOVS            R1, #1; bool
54F68A:  MOVS            R2, #1; bool
54F68C:  MOVS            R5, #1
54F68E:  BLX             j__ZN4CPad18GetCarGunLeftRightEbb; CPad::GetCarGunLeftRight(bool,bool)
54F692:  MOV             R4, R0
54F694:  MOV             R0, R6; this
54F696:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
54F69A:  MOVW            R3, #0x4000
54F69E:  MOVS            R1, #1; bool
54F6A0:  MOVT            R3, #0x451C; float
54F6A4:  MOVS            R2, #0; CAutomobile *
54F6A6:  STR             R5, [SP,#0x88+var_88]; CHID *
54F6A8:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
54F6AC:  VMOV            S0, R4
54F6B0:  VMOV            S2, R0
54F6B4:  VCVT.F32.S32    S0, S0
54F6B8:  VCVT.F32.S32    S2, S2
54F6BC:  VMOV            R0, S0; y
54F6C0:  VMOV            R1, S2; x
54F6C4:  VMUL.F32        S4, S0, S0
54F6C8:  VMUL.F32        S6, S2, S2
54F6CC:  VADD.F32        S4, S4, S6
54F6D0:  VSQRT.F32       S22, S4
54F6D4:  BLX             atan2f
54F6D8:  VLDR            S0, =-0.7854
54F6DC:  VMOV            S2, R0
54F6E0:  VADD.F32        S0, S2, S0
54F6E4:  VMOV.F32        S2, #1.5
54F6E8:  VMOV            R6, S0
54F6EC:  VMUL.F32        S0, S22, S2
54F6F0:  VLDR            S2, =0.0078125
54F6F4:  VMUL.F32        S22, S0, S2
54F6F8:  MOV             R0, R6; x
54F6FA:  BLX             cosf
54F6FE:  VMOV            S17, R0
54F702:  MOV             R0, R6; x
54F704:  BLX             sinf
54F708:  VMOV            S0, R0
54F70C:  VLDR            S8, =0.0
54F710:  VMUL.F32        S4, S17, S22
54F714:  ADD             R5, SP, #0x88+var_80
54F716:  VMUL.F32        S2, S0, S22
54F71A:  VNMUL.F32       S10, S0, S22
54F71E:  VNMUL.F32       S6, S17, S22
54F722:  VMAX.F32        D0, D2, D4
54F726:  VMAX.F32        D1, D1, D4
54F72A:  VMAX.F32        D2, D5, D4
54F72E:  VMAX.F32        D11, D3, D4
54F732:  VSTR            S22, [SP,#0x88+var_80]
54F736:  VSTR            S4, [SP,#0x88+var_7C]
54F73A:  VSTR            S2, [SP,#0x88+var_78]
54F73E:  VSTR            S0, [SP,#0x88+var_74]
54F742:  B               loc_54F750
54F744:  VMOV.F64        D0, D11
54F748:  VMOV.F64        D1, D11
54F74C:  VMOV.F64        D2, D11
54F750:  LDRH.W          R0, [R11,#0x880]
54F754:  STR.W           R10, [SP,#0x88+var_84]
54F758:  CMP.W           R0, #0x1F4
54F75C:  BCC.W           loc_54F890
54F760:  VSUB.F32        S24, S24, S30
54F764:  VLDR            S17, =0.0
54F768:  VSUB.F32        S26, S26, S28
54F76C:  ADD.W           R10, R11, #0x7E8
54F770:  VMOV.F32        S21, #1.0
54F774:  ORR.W           R5, R5, #4
54F778:  LSRS            R1, R0, #3
54F77A:  CMP             R1, #0x3E ; '>'
54F77C:  MOV.W           R4, #0
54F780:  MOV.W           R6, #0
54F784:  ITT LS
54F786:  ADDLS           R0, #1
54F788:  STRHLS.W        R0, [R11,#0x880]
54F78C:  B               loc_54F79E
54F78E:  ADDS            R0, R5, #4
54F790:  VLDR            S22, [R5]
54F794:  ADDS            R6, #1
54F796:  ADD.W           R10, R10, #4
54F79A:  ADDS            R4, #0x20 ; ' '
54F79C:  MOV             R5, R0
54F79E:  VCMPE.F32       S22, S21
54F7A2:  ADD             R2, SP, #0x88+var_70; CVector *
54F7A4:  VMRS            APSR_nzcv, FPSCR
54F7A8:  MOV             R1, R6; int
54F7AA:  MOV.W           R3, #0; bool
54F7AE:  ITTT GT
54F7B0:  MOVGT.W         R0, #0x3F800000
54F7B4:  STRGT.W         R0, [R5,#-4]
54F7B8:  VMOVGT.F32      S22, S21
54F7BC:  LDR.W           R0, [R8,#0x10]
54F7C0:  VLDR            S25, [R10]
54F7C4:  ADD             R0, R4
54F7C6:  VLDR            S27, [R10,#0xB4]
54F7CA:  VLDR            S31, [R0,#8]
54F7CE:  MOV             R0, R9; this
54F7D0:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
54F7D4:  VMUL.F32        S0, S26, S22
54F7D8:  VLDR            S4, [SP,#0x88+var_68]
54F7DC:  VMUL.F32        S2, S24, S22
54F7E0:  VADD.F32        S0, S28, S0
54F7E4:  VADD.F32        S2, S30, S2
54F7E8:  VADD.F32        S0, S0, S4
54F7EC:  VSTR            S0, [SP,#0x88+var_68]
54F7F0:  VADD.F32        S0, S18, S2
54F7F4:  LDR.W           R0, [R8,#0x10]
54F7F8:  VLDR            D16, [SP,#0x88+var_70]
54F7FC:  ADD             R0, R4
54F7FE:  LDR             R1, [SP,#0x88+var_68]
54F800:  STR             R1, [R0,#8]
54F802:  VSTR            D16, [R0]
54F806:  VLDR            S4, [SP,#0x88+var_68]
54F80A:  VSUB.F32        S4, S4, S0
54F80E:  VSTR            S4, [SP,#0x88+var_68]
54F812:  LDR.W           R0, [R8,#0x10]
54F816:  VLDR            D16, [SP,#0x88+var_70]
54F81A:  ADD             R0, R4
54F81C:  LDR             R1, [SP,#0x88+var_68]
54F81E:  VLDR            S6, [R0,#0x18]
54F822:  VSUB.F32        S4, S4, S6
54F826:  VABS.F32        S6, S17
54F82A:  VABS.F32        S8, S4
54F82E:  VCMPE.F32       S8, S6
54F832:  VMRS            APSR_nzcv, FPSCR
54F836:  IT GT
54F838:  VMOVGT.F32      S17, S4
54F83C:  VSTR            D16, [R0,#0x10]
54F840:  STR             R1, [R0,#0x18]
54F842:  VLDR            S4, [R10]
54F846:  VSTR            S0, [R10,#0xB4]
54F84A:  VCMPE.F32       S4, S21
54F84E:  VSTR            S2, [R10,#0xA4]
54F852:  VMRS            APSR_nzcv, FPSCR
54F856:  BGE             loc_54F888
54F858:  VMUL.F32        S2, S25, S27
54F85C:  LDR.W           R0, [R8,#0x10]
54F860:  ADD             R0, R4
54F862:  VLDR            S4, [R0,#8]
54F866:  VSUB.F32        S2, S31, S2
54F86A:  VSUB.F32        S2, S4, S2
54F86E:  VDIV.F32        S0, S2, S0
54F872:  VCMPE.F32       S0, S21
54F876:  VSTR            S0, [R10]
54F87A:  VMRS            APSR_nzcv, FPSCR
54F87E:  ITT GT
54F880:  MOVGT.W         R0, #0x3F800000
54F884:  STRGT.W         R0, [R10]
54F888:  CMP             R4, #0x60 ; '`'
54F88A:  BNE.W           loc_54F78E
54F88E:  B               loc_54FA0A
54F890:  VCMP.F32        S22, #0.0
54F894:  VMRS            APSR_nzcv, FPSCR
54F898:  BNE             loc_54F8DA
54F89A:  VCMP.F32        S4, #0.0
54F89E:  VMRS            APSR_nzcv, FPSCR
54F8A2:  ITT EQ
54F8A4:  VCMPEQ.F32      S2, #0.0
54F8A8:  VMRSEQ          APSR_nzcv, FPSCR
54F8AC:  BNE             loc_54F8DA
54F8AE:  VCMP.F32        S0, #0.0
54F8B2:  VMRS            APSR_nzcv, FPSCR
54F8B6:  BNE             loc_54F8DA
54F8B8:  CBNZ            R0, loc_54F8EE
54F8BA:  LDR             R0, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x54F8C4)
54F8BC:  LDRSB.W         R1, [R11,#0x48F]
54F8C0:  ADD             R0, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
54F8C2:  LDR             R0, [R0]; CVehicle::m_aSpecialHydraulicData ...
54F8C4:  ADD.W           R1, R1, R1,LSL#2
54F8C8:  ADD.W           R0, R0, R1,LSL#3
54F8CC:  VLDR            S26, [R0,#0x10]
54F8D0:  VLDR            S20, [R0,#0x14]
54F8D4:  VSUB.F32        S24, S26, S20
54F8D8:  B               loc_54F8EE
54F8DA:  CBNZ            R0, loc_54F8E8
54F8DC:  VMOV.I32        Q8, #0
54F8E0:  VLDR            S22, =0.0
54F8E4:  VST1.64         {D16-D17}, [R5]
54F8E8:  MOVS            R0, #0x3C ; '<'
54F8EA:  STRH.W          R0, [R11,#0x880]
54F8EE:  VSUB.F32        S30, S30, S24
54F8F2:  ORR.W           R10, R5, #4
54F8F6:  VSUB.F32        S28, S28, S26
54F8FA:  VLDR            S17, =0.0
54F8FE:  VMOV.F32        S21, #1.0
54F902:  ADD.W           R4, R11, #0x7E8
54F906:  MOVS            R5, #0
54F908:  MOVS            R6, #0
54F90A:  B               loc_54F91C
54F90C:  ADD.W           R0, R10, #4
54F910:  VLDR            S22, [R10]
54F914:  ADDS            R6, #1
54F916:  ADDS            R4, #4
54F918:  ADDS            R5, #0x20 ; ' '
54F91A:  MOV             R10, R0
54F91C:  VCMPE.F32       S22, S21
54F920:  ADD             R2, SP, #0x88+var_70; CVector *
54F922:  VMRS            APSR_nzcv, FPSCR
54F926:  MOV             R1, R6; int
54F928:  MOV.W           R3, #0; bool
54F92C:  ITTT GT
54F92E:  MOVGT.W         R0, #0x3F800000
54F932:  STRGT.W         R0, [R10,#-4]
54F936:  VMOVGT.F32      S22, S21
54F93A:  LDR.W           R0, [R8,#0x10]
54F93E:  VLDR            S25, [R4]
54F942:  ADD             R0, R5
54F944:  VLDR            S27, [R4,#0xB4]
54F948:  VLDR            S29, [R0,#8]
54F94C:  MOV             R0, R9; this
54F94E:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
54F952:  VMUL.F32        S0, S28, S22
54F956:  VLDR            S4, [SP,#0x88+var_68]
54F95A:  VMUL.F32        S2, S30, S22
54F95E:  VADD.F32        S0, S26, S0
54F962:  VADD.F32        S2, S24, S2
54F966:  VADD.F32        S0, S0, S4
54F96A:  VSTR            S0, [SP,#0x88+var_68]
54F96E:  VADD.F32        S0, S18, S2
54F972:  LDR.W           R0, [R8,#0x10]
54F976:  VLDR            D16, [SP,#0x88+var_70]
54F97A:  ADD             R0, R5
54F97C:  LDR             R1, [SP,#0x88+var_68]
54F97E:  STR             R1, [R0,#8]
54F980:  VSTR            D16, [R0]
54F984:  VLDR            S4, [SP,#0x88+var_68]
54F988:  VSUB.F32        S4, S4, S0
54F98C:  VSTR            S4, [SP,#0x88+var_68]
54F990:  LDR.W           R0, [R8,#0x10]
54F994:  VLDR            D16, [SP,#0x88+var_70]
54F998:  ADD             R0, R5
54F99A:  LDR             R1, [SP,#0x88+var_68]
54F99C:  VLDR            S6, [R0,#0x18]
54F9A0:  VSUB.F32        S4, S4, S6
54F9A4:  VABS.F32        S6, S17
54F9A8:  VABS.F32        S8, S4
54F9AC:  VCMPE.F32       S8, S6
54F9B0:  VMRS            APSR_nzcv, FPSCR
54F9B4:  IT GT
54F9B6:  VMOVGT.F32      S17, S4
54F9BA:  VSTR            D16, [R0,#0x10]
54F9BE:  STR             R1, [R0,#0x18]
54F9C0:  VLDR            S4, [R4]
54F9C4:  VSTR            S0, [R4,#0xB4]
54F9C8:  VCMPE.F32       S4, S21
54F9CC:  VSTR            S2, [R4,#0xA4]
54F9D0:  VMRS            APSR_nzcv, FPSCR
54F9D4:  BGE             loc_54FA04
54F9D6:  VMUL.F32        S2, S25, S27
54F9DA:  LDR.W           R0, [R8,#0x10]
54F9DE:  ADD             R0, R5
54F9E0:  VLDR            S4, [R0,#8]
54F9E4:  VSUB.F32        S2, S29, S2
54F9E8:  VSUB.F32        S2, S4, S2
54F9EC:  VDIV.F32        S0, S2, S0
54F9F0:  VCMPE.F32       S0, S21
54F9F4:  VSTR            S0, [R4]
54F9F8:  VMRS            APSR_nzcv, FPSCR
54F9FC:  ITT GT
54F9FE:  MOVGT.W         R0, #0x3F800000
54FA02:  STRGT           R0, [R4]
54FA04:  CMP             R5, #0x60 ; '`'
54FA06:  BNE.W           loc_54F90C
54FA0A:  VSUB.F32        S0, S19, S20
54FA0E:  LDR             R4, [SP,#0x88+var_84]
54FA10:  VCMP.F32        S0, #0.0
54FA14:  VMRS            APSR_nzcv, FPSCR
54FA18:  BEQ             loc_54FAEC
54FA1A:  VDIV.F32        S2, S17, S0
54FA1E:  VABS.F32        S2, S2
54FA22:  VLDR            D16, =0.01
54FA26:  VCVT.F64.F32    D17, S2
54FA2A:  VCMPE.F64       D17, D16
54FA2E:  VMRS            APSR_nzcv, FPSCR
54FA32:  BLE             loc_54FAEC
54FA34:  VADD.F32        S2, S17, S0
54FA38:  VMUL.F32        S2, S2, S16
54FA3C:  VDIV.F32        S0, S2, S0
54FA40:  VCMPE.F32       S0, #0.0
54FA44:  VMRS            APSR_nzcv, FPSCR
54FA48:  BGE             loc_54FA50
54FA4A:  VLDR            S0, =0.0
54FA4E:  B               loc_54FA62
54FA50:  VMOV.F32        S2, #1.0
54FA54:  VCMPE.F32       S0, S2
54FA58:  VMRS            APSR_nzcv, FPSCR
54FA5C:  IT GT
54FA5E:  VMOVGT.F32      S0, S2
54FA62:  VLDR            S8, =0.6
54FA66:  MOVS            R1, #0
54FA68:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x54FA7A)
54FA6A:  VCMPE.F32       S0, S8
54FA6E:  VLDR            S10, =0.4
54FA72:  VMRS            APSR_nzcv, FPSCR
54FA76:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
54FA78:  VCMPE.F32       S0, S10
54FA7C:  VLDR            S4, =0.05
54FA80:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
54FA82:  VLDR            S2, [R0]
54FA86:  MOV.W           R0, #0
54FA8A:  VMUL.F32        S4, S2, S4
54FA8E:  VSUB.F32        S6, S16, S4
54FA92:  IT GT
54FA94:  MOVGT           R1, #1
54FA96:  VMRS            APSR_nzcv, FPSCR
54FA9A:  VCMPE.F32       S0, S6
54FA9E:  IT LT
54FAA0:  MOVLT           R0, #1
54FAA2:  VMRS            APSR_nzcv, FPSCR
54FAA6:  ORR.W           R0, R0, R1
54FAAA:  ORR.W           R4, R4, R0
54FAAE:  BLT             loc_54FADC
54FAB0:  VADD.F32        S4, S4, S16
54FAB4:  VCMPE.F32       S0, S4
54FAB8:  VMRS            APSR_nzcv, FPSCR
54FABC:  BLE             loc_54FAC6
54FABE:  ADD.W           R0, R11, #0x13C
54FAC2:  MOVS            R1, #0x6D ; 'm'
54FAC4:  B               loc_54FAE2
54FAC6:  VLDR            S4, =0.025
54FACA:  VMUL.F32        S2, S2, S4
54FACE:  VADD.F32        S2, S2, S16
54FAD2:  VCMPE.F32       S0, S2
54FAD6:  VMRS            APSR_nzcv, FPSCR
54FADA:  BLE             loc_54FAEC
54FADC:  ADD.W           R0, R11, #0x13C; this
54FAE0:  MOVS            R1, #0x6B ; 'k'; int
54FAE2:  MOVS            R2, #0; float
54FAE4:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
54FAE8:  CBNZ            R4, loc_54FAF0
54FAEA:  B               loc_54FBC4
54FAEC:  CMP             R4, #1
54FAEE:  BNE             loc_54FBC4
54FAF0:  ADDW            R1, R11, #0x894
54FAF4:  ADDW            R0, R11, #0x88C
54FAF8:  ADDW            R3, R11, #0x8A8
54FAFC:  ADD.W           R2, R11, #0x890
54FB00:  VLDR            S8, [R1]
54FB04:  ADDW            R1, R11, #0x89C
54FB08:  VLDR            S0, [R3]
54FB0C:  ADD.W           R3, R11, #0x8A0
54FB10:  VLDR            S10, [R1]
54FB14:  ADD.W           R1, R11, #0x7E8
54FB18:  VLDR            S12, [R0]
54FB1C:  ADDW            R0, R11, #0x898
54FB20:  VLDR            S4, [R2]
54FB24:  ADDW            R2, R11, #0x8A4
54FB28:  VLDR            S2, [R3]
54FB2C:  VDIV.F32        S10, S12, S10
54FB30:  VLDR            S6, [R2]
54FB34:  VDIV.F32        S2, S4, S2
54FB38:  VLDR            S14, [R0]
54FB3C:  VMOV.F32        S4, #1.0
54FB40:  VDIV.F32        S6, S8, S6
54FB44:  ADDW            R0, R11, #0x7EC
54FB48:  VDIV.F32        S0, S14, S0
54FB4C:  VSUB.F32        S8, S4, S10
54FB50:  VLDR            S10, [R1]
54FB54:  VSUB.F32        S2, S4, S2
54FB58:  ADD.W           R1, R11, #0x7F0
54FB5C:  VSUB.F32        S6, S4, S6
54FB60:  VSUB.F32        S0, S4, S0
54FB64:  VLDR            S14, [R1]
54FB68:  VSUB.F32        S12, S4, S8
54FB6C:  VSUB.F32        S8, S10, S8
54FB70:  VLDR            S10, [R0]
54FB74:  VSUB.F32        S3, S4, S2
54FB78:  ADDW            R0, R11, #0x7F4
54FB7C:  VSUB.F32        S2, S10, S2
54FB80:  VSUB.F32        S1, S4, S6
54FB84:  VLDR            S10, [R0]
54FB88:  VSUB.F32        S6, S14, S6
54FB8C:  ADD.W           R0, R11, #0x7F8
54FB90:  VSUB.F32        S4, S4, S0
54FB94:  VSUB.F32        S0, S10, S0
54FB98:  VDIV.F32        S8, S8, S12
54FB9C:  VDIV.F32        S2, S2, S3
54FBA0:  VDIV.F32        S6, S6, S1
54FBA4:  VDIV.F32        S0, S0, S4
54FBA8:  VSTR            S8, [R0]
54FBAC:  ADDW            R0, R11, #0x7FC
54FBB0:  VSTR            S2, [R0]
54FBB4:  ADD.W           R0, R11, #0x800
54FBB8:  VSTR            S6, [R0]
54FBBC:  ADDW            R0, R11, #0x804
54FBC0:  VSTR            S0, [R0]
54FBC4:  LDR             R0, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x54FBD0)
54FBC6:  MOVS            R2, #0
54FBC8:  LDRSB.W         R1, [R11,#0x48F]
54FBCC:  ADD             R0, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
54FBCE:  LDR             R0, [R0]; CVehicle::m_aSpecialHydraulicData ...
54FBD0:  ADD.W           R1, R1, R1,LSL#2
54FBD4:  ADD.W           R1, R0, R1,LSL#3
54FBD8:  STR             R2, [R1,#0x18]
54FBDA:  LDRSB.W         R1, [R11,#0x48F]
54FBDE:  ADD.W           R1, R1, R1,LSL#2
54FBE2:  ADD.W           R1, R0, R1,LSL#3
54FBE6:  STR             R2, [R1,#0x1C]
54FBE8:  LDRSB.W         R1, [R11,#0x48F]
54FBEC:  ADD.W           R1, R1, R1,LSL#2
54FBF0:  ADD.W           R1, R0, R1,LSL#3
54FBF4:  STR             R2, [R1,#0x20]
54FBF6:  LDRSB.W         R1, [R11,#0x48F]
54FBFA:  ADD.W           R1, R1, R1,LSL#2
54FBFE:  ADD.W           R0, R0, R1,LSL#3
54FC02:  STR             R2, [R0,#0x24]
54FC04:  ADD             SP, SP, #0x28 ; '('
54FC06:  VPOP            {D8-D15}
54FC0A:  ADD             SP, SP, #4
54FC0C:  POP.W           {R8-R11}
54FC10:  POP             {R4-R7,PC}
