; =========================================================
; Game Engine Function: _ZN11CAutomobile13DoNitroEffectEf
; Address            : 0x55E324 - 0x55E4E6
; =========================================================

55E324:  PUSH            {R4-R7,LR}
55E326:  ADD             R7, SP, #0xC
55E328:  PUSH.W          {R8,R9,R11}
55E32C:  SUB             SP, SP, #0x38
55E32E:  MOV             R4, R0
55E330:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55E33C)
55E332:  MOV             R8, R1
55E334:  LDRSH.W         R1, [R4,#0x26]
55E338:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55E33A:  MOVS            R5, #0
55E33C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55E33E:  LDR.W           R0, [R0,R1,LSL#2]
55E342:  LDR             R0, [R0,#0x74]
55E344:  VLDR            D16, [R0,#0x48]
55E348:  LDR             R0, [R0,#0x50]
55E34A:  STR             R0, [SP,#0x50+var_20]
55E34C:  VSTR            D16, [SP,#0x50+var_28]
55E350:  LDRB.W          R0, [R4,#0x47]
55E354:  LSLS            R0, R0, #0x1C
55E356:  BPL             loc_55E38C
55E358:  LDR             R1, [R4,#0x14]
55E35A:  ADD             R0, SP, #0x50+var_38
55E35C:  ADD             R2, SP, #0x50+var_28
55E35E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55E362:  ADD             R2, SP, #0x50+var_38
55E364:  MOVS            R3, #(stderr+1)
55E366:  LDM             R2, {R0-R2}; float
55E368:  STRD.W          R3, R5, [SP,#0x50+var_50]; float *
55E36C:  ADD             R3, SP, #0x50+var_44; float
55E36E:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
55E372:  CMP             R0, #1
55E374:  BNE             loc_55E38C
55E376:  VLDR            S0, [SP,#0x50+var_30]
55E37A:  VLDR            S2, [SP,#0x50+var_44]
55E37E:  VCMPE.F32       S2, S0
55E382:  VMRS            APSR_nzcv, FPSCR
55E386:  ITE GE
55E388:  MOVGE           R5, #1
55E38A:  MOVLT           R5, #0
55E38C:  MOV             R0, R4; this
55E38E:  BLX             j__ZN8CVehicle18GetHasDualExhaustsEv; CVehicle::GetHasDualExhausts(void)
55E392:  CMP             R0, #1
55E394:  BNE             loc_55E3F4
55E396:  VLDR            D16, [SP,#0x50+var_28]
55E39A:  MOV.W           R9, #0
55E39E:  LDR             R0, [SP,#0x50+var_20]
55E3A0:  VSTR            D16, [SP,#0x50+var_38]
55E3A4:  VLDR            S0, [SP,#0x50+var_38]
55E3A8:  STR             R0, [SP,#0x50+var_30]
55E3AA:  VNEG.F32        S0, S0
55E3AE:  VSTR            S0, [SP,#0x50+var_38]
55E3B2:  LDRB.W          R0, [R4,#0x47]
55E3B6:  LSLS            R0, R0, #0x1C
55E3B8:  BPL             loc_55E3F8
55E3BA:  LDR             R1, [R4,#0x14]
55E3BC:  ADD             R0, SP, #0x50+var_44
55E3BE:  ADD             R2, SP, #0x50+var_38
55E3C0:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55E3C4:  ADD             R2, SP, #0x50+var_44
55E3C6:  MOVS            R3, #(stderr+1)
55E3C8:  LDM             R2, {R0-R2}; float
55E3CA:  STRD.W          R3, R9, [SP,#0x50+var_50]; float *
55E3CE:  ADD             R3, SP, #0x50+var_48; float
55E3D0:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
55E3D4:  CMP             R0, #1
55E3D6:  BNE             loc_55E3F8
55E3D8:  VLDR            S0, [SP,#0x50+var_3C]
55E3DC:  VLDR            S2, [SP,#0x50+var_48]
55E3E0:  VCMPE.F32       S2, S0
55E3E4:  VMRS            APSR_nzcv, FPSCR
55E3E8:  ITE GE
55E3EA:  MOVGE.W         R9, #1
55E3EE:  MOVLT.W         R9, #0
55E3F2:  B               loc_55E3F8
55E3F4:  MOV.W           R9, #0
55E3F8:  LDR             R0, [R4,#0x18]
55E3FA:  CMP             R0, #0
55E3FC:  ITTE NE
55E3FE:  LDRNE           R0, [R0,#4]
55E400:  ADDNE.W         R6, R0, #0x10
55E404:  MOVEQ           R6, #0
55E406:  LDR.W           R0, [R4,#0x98C]; this
55E40A:  CBZ             R0, loc_55E42E
55E40C:  BIC.W           R2, R8, #0x80000000; float
55E410:  MOVS            R1, #1; unsigned __int8
55E412:  BLX             j__ZN10FxSystem_c12SetConstTimeEhf; FxSystem_c::SetConstTime(uchar,float)
55E416:  LDR.W           R0, [R4,#0x98C]; this
55E41A:  BLX             j__ZN10FxSystem_c13GetPlayStatusEv; FxSystem_c::GetPlayStatus(void)
55E41E:  MOV             R1, R0
55E420:  LDR.W           R0, [R4,#0x98C]; this
55E424:  CBZ             R5, loc_55E456
55E426:  CBNZ            R1, loc_55E456
55E428:  BLX             j__ZN10FxSystem_c4StopEv; FxSystem_c::Stop(void)
55E42C:  B               loc_55E46A
55E42E:  CBNZ            R5, loc_55E46A
55E430:  CBZ             R6, loc_55E46A
55E432:  LDR             R0, =(g_fxMan_ptr - 0x55E43E)
55E434:  MOVS            R1, #1
55E436:  STR             R1, [SP,#0x50+var_50]; int
55E438:  ADR             R1, aNitro; "nitro"
55E43A:  ADD             R0, PC; g_fxMan_ptr
55E43C:  ADD             R2, SP, #0x50+var_28; int
55E43E:  MOV             R3, R6; int
55E440:  LDR             R0, [R0]; g_fxMan ; int
55E442:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
55E446:  CMP             R0, #0
55E448:  STR.W           R0, [R4,#0x98C]
55E44C:  BEQ             loc_55E46A
55E44E:  MOVS            R1, #1; unsigned __int8
55E450:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
55E454:  B               loc_55E462
55E456:  BLX             j__ZN10FxSystem_c13GetPlayStatusEv; FxSystem_c::GetPlayStatus(void)
55E45A:  CMP             R5, #0
55E45C:  IT EQ
55E45E:  CMPEQ           R0, #1
55E460:  BNE             loc_55E46A
55E462:  LDR.W           R0, [R4,#0x98C]; this
55E466:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
55E46A:  MOV             R0, R4; this
55E46C:  BLX             j__ZN8CVehicle18GetHasDualExhaustsEv; CVehicle::GetHasDualExhausts(void)
55E470:  CMP             R0, #1
55E472:  BNE             loc_55E4DE
55E474:  LDR.W           R0, [R4,#0x990]; this
55E478:  CBZ             R0, loc_55E4A0
55E47A:  BIC.W           R2, R8, #0x80000000; float
55E47E:  MOVS            R1, #1; unsigned __int8
55E480:  BLX             j__ZN10FxSystem_c12SetConstTimeEhf; FxSystem_c::SetConstTime(uchar,float)
55E484:  LDR.W           R0, [R4,#0x990]; this
55E488:  BLX             j__ZN10FxSystem_c13GetPlayStatusEv; FxSystem_c::GetPlayStatus(void)
55E48C:  MOV             R1, R0
55E48E:  LDR.W           R0, [R4,#0x990]; this
55E492:  CMP.W           R9, #0
55E496:  BEQ             loc_55E4C8
55E498:  CBNZ            R1, loc_55E4C8
55E49A:  BLX             j__ZN10FxSystem_c4StopEv; FxSystem_c::Stop(void)
55E49E:  B               loc_55E4DE
55E4A0:  CBNZ            R5, loc_55E4DE
55E4A2:  CBZ             R6, loc_55E4DE
55E4A4:  LDR             R0, =(g_fxMan_ptr - 0x55E4B0)
55E4A6:  MOVS            R1, #1
55E4A8:  STR             R1, [SP,#0x50+var_50]; int
55E4AA:  ADR             R1, aNitro; "nitro"
55E4AC:  ADD             R0, PC; g_fxMan_ptr
55E4AE:  ADD             R2, SP, #0x50+var_38; int
55E4B0:  MOV             R3, R6; int
55E4B2:  LDR             R0, [R0]; g_fxMan ; int
55E4B4:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
55E4B8:  CMP             R0, #0
55E4BA:  STR.W           R0, [R4,#0x990]
55E4BE:  BEQ             loc_55E4DE
55E4C0:  MOVS            R1, #1; unsigned __int8
55E4C2:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
55E4C6:  B               loc_55E4D6
55E4C8:  BLX             j__ZN10FxSystem_c13GetPlayStatusEv; FxSystem_c::GetPlayStatus(void)
55E4CC:  CMP.W           R9, #0
55E4D0:  IT EQ
55E4D2:  CMPEQ           R0, #1
55E4D4:  BNE             loc_55E4DE
55E4D6:  LDR.W           R0, [R4,#0x990]; this
55E4DA:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
55E4DE:  ADD             SP, SP, #0x38 ; '8'
55E4E0:  POP.W           {R8,R9,R11}
55E4E4:  POP             {R4-R7,PC}
