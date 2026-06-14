; =========================================================
; Game Engine Function: _ZN4Fx_c14TriggerGunshotEP7CEntityR7CVectorS3_b
; Address            : 0x3661C8 - 0x366342
; =========================================================

3661C8:  PUSH            {R4-R7,LR}
3661CA:  ADD             R7, SP, #0xC
3661CC:  PUSH.W          {R8}
3661D0:  SUB             SP, SP, #0x38
3661D2:  LDR             R0, =(TheCamera_ptr - 0x3661DE)
3661D4:  MOV             R4, R1
3661D6:  MOV             R5, R2
3661D8:  MOV             R6, R3
3661DA:  ADD             R0, PC; TheCamera_ptr
3661DC:  VLDR            S0, [R5]
3661E0:  VLDR            S4, [R5,#4]
3661E4:  LDR             R0, [R0]; TheCamera
3661E6:  VLDR            S2, [R5,#8]
3661EA:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
3661EC:  ADD.W           R2, R1, #0x30 ; '0'
3661F0:  CMP             R1, #0
3661F2:  IT EQ
3661F4:  ADDEQ           R2, R0, #4
3661F6:  VLDR            S6, [R2]
3661FA:  VLDR            S8, [R2,#4]
3661FE:  VSUB.F32        S6, S6, S0
366202:  VLDR            S10, [R2,#8]
366206:  VSUB.F32        S8, S8, S4
36620A:  VSUB.F32        S10, S10, S2
36620E:  VMUL.F32        S6, S6, S6
366212:  VMUL.F32        S8, S8, S8
366216:  VMUL.F32        S10, S10, S10
36621A:  VADD.F32        S6, S6, S8
36621E:  VLDR            S8, =625.0
366222:  VADD.F32        S6, S6, S10
366226:  VCMPE.F32       S6, S8
36622A:  VMRS            APSR_nzcv, FPSCR
36622E:  BGT.W           loc_36633A
366232:  CBZ             R4, loc_3662AC
366234:  LDR             R2, [R4,#0x14]
366236:  ADDS            R5, R4, #4
366238:  CMP             R2, #0
36623A:  MOV             R0, R5
36623C:  IT NE
36623E:  ADDNE.W         R0, R2, #0x30 ; '0'
366242:  CMP             R2, #0
366244:  VLDR            S6, [R0]
366248:  VLDR            S8, [R0,#4]
36624C:  VLDR            S10, [R0,#8]
366250:  VSUB.F32        S0, S0, S6
366254:  VSUB.F32        S4, S4, S8
366258:  VSUB.F32        S2, S2, S10
36625C:  VSTR            S4, [SP,#0x48+var_20+4]
366260:  VSTR            S0, [SP,#0x48+var_20]
366264:  VSTR            S2, [SP,#0x48+var_18]
366268:  VLDR            D16, [SP,#0x48+var_20]
36626C:  LDR             R0, [SP,#0x48+var_18]
36626E:  STR             R0, [SP,#0x48+var_38]
366270:  VSTR            D16, [SP,#0x48+var_40]
366274:  BNE             loc_366286
366276:  MOV             R0, R4; this
366278:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
36627C:  LDR             R1, [R4,#0x14]; CMatrix *
36627E:  MOV             R0, R5; this
366280:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
366284:  LDR             R2, [R4,#0x14]
366286:  ADD             R0, SP, #0x48+var_30; CVector *
366288:  ADD             R1, SP, #0x48+var_40; CMatrix *
36628A:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
36628E:  VLDR            D16, [SP,#0x48+var_30]
366292:  LDR             R0, [SP,#0x48+var_28]
366294:  STR             R0, [SP,#0x48+var_18]
366296:  VSTR            D16, [SP,#0x48+var_20]
36629A:  LDR             R0, [R4,#0x18]
36629C:  CMP             R0, #0
36629E:  BEQ             loc_36633A
3662A0:  LDR             R0, [R0,#4]
3662A2:  MOV.W           R8, #0
3662A6:  ADD.W           R6, R0, #0x10
3662AA:  B               loc_3662D2
3662AC:  LDR             R0, =(g_fxMan_ptr - 0x3662B2)
3662AE:  ADD             R0, PC; g_fxMan_ptr
3662B0:  LDR             R0, [R0]; g_fxMan ; this
3662B2:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
3662B6:  MOV             R8, R0
3662B8:  MOV             R2, R5
3662BA:  MOV             R1, R8
3662BC:  MOV             R3, R6
3662BE:  BLX             j__ZN4Fx_c16CreateMatFromVecEP11RwMatrixTagP7CVectorS3_; Fx_c::CreateMatFromVec(RwMatrixTag *,CVector *,CVector *)
3662C2:  MOVS            R0, #0
3662C4:  CMP.W           R8, #0
3662C8:  MOV             R6, R8
3662CA:  STR             R0, [SP,#0x48+var_18]
3662CC:  STRD.W          R0, R0, [SP,#0x48+var_20]
3662D0:  BEQ             loc_36633A
3662D2:  LDR             R0, [R7,#arg_0]
3662D4:  CMP             R0, #1
3662D6:  BNE             loc_366300
3662D8:  LDR             R0, =(g_fxMan_ptr - 0x3662E4)
3662DA:  MOVS            R1, #0
3662DC:  STR             R1, [SP,#0x48+var_48]; int
3662DE:  ADR             R1, aGunflash; "gunflash"
3662E0:  ADD             R0, PC; g_fxMan_ptr
3662E2:  ADD             R2, SP, #0x48+var_20; int
3662E4:  MOV             R3, R6; int
3662E6:  LDR             R0, [R0]; g_fxMan ; int
3662E8:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
3662EC:  MOV             R5, R0
3662EE:  CBZ             R5, loc_366300
3662F0:  CMP             R4, #0
3662F2:  ITT EQ
3662F4:  MOVEQ           R0, R5; this
3662F6:  BLXEQ           j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
3662FA:  MOV             R0, R5; this
3662FC:  BLX             j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
366300:  LDR             R0, =(g_fxMan_ptr - 0x36630C)
366302:  MOVS            R1, #0
366304:  STR             R1, [SP,#0x48+var_48]; int
366306:  ADR             R1, aGunsmoke; "gunsmoke"
366308:  ADD             R0, PC; g_fxMan_ptr
36630A:  ADD             R2, SP, #0x48+var_20; int
36630C:  MOV             R3, R6; int
36630E:  LDR             R0, [R0]; g_fxMan ; int
366310:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
366314:  MOV             R5, R0
366316:  CBZ             R5, loc_366328
366318:  CMP             R4, #0
36631A:  ITT EQ
36631C:  MOVEQ           R0, R5; this
36631E:  BLXEQ           j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
366322:  MOV             R0, R5; this
366324:  BLX             j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
366328:  CMP.W           R8, #0
36632C:  BEQ             loc_36633A
36632E:  LDR             R0, =(g_fxMan_ptr - 0x366336)
366330:  MOV             R1, R8
366332:  ADD             R0, PC; g_fxMan_ptr
366334:  LDR             R0, [R0]; g_fxMan
366336:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
36633A:  ADD             SP, SP, #0x38 ; '8'
36633C:  POP.W           {R8}
366340:  POP             {R4-R7,PC}
