; =========================================================
; Game Engine Function: _ZN4Fx_c15TriggerTankFireER7CVectorS1_
; Address            : 0x366498 - 0x366540
; =========================================================

366498:  PUSH            {R4-R7,LR}
36649A:  ADD             R7, SP, #0xC
36649C:  PUSH.W          {R8}
3664A0:  SUB             SP, SP, #0x18
3664A2:  LDR             R0, =(TheCamera_ptr - 0x3664B0)
3664A4:  MOV             R6, R1
3664A6:  MOV             R8, R2
3664A8:  VLDR            S0, [R6]
3664AC:  ADD             R0, PC; TheCamera_ptr
3664AE:  LDR             R0, [R0]; TheCamera
3664B0:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
3664B2:  ADD.W           R2, R1, #0x30 ; '0'
3664B6:  CMP             R1, #0
3664B8:  IT EQ
3664BA:  ADDEQ           R2, R0, #4
3664BC:  VLDR            D16, [R6,#4]
3664C0:  VLDR            S2, [R2]
3664C4:  VLDR            D17, [R2,#4]
3664C8:  VSUB.F32        S0, S2, S0
3664CC:  VSUB.F32        D16, D17, D16
3664D0:  VMUL.F32        D1, D16, D16
3664D4:  VMUL.F32        S0, S0, S0
3664D8:  VADD.F32        S0, S0, S2
3664DC:  VADD.F32        S0, S0, S3
3664E0:  VLDR            S2, =625.0
3664E4:  VCMPE.F32       S0, S2
3664E8:  VMRS            APSR_nzcv, FPSCR
3664EC:  BGT             loc_366538
3664EE:  LDR             R0, =(g_fxMan_ptr - 0x3664F4)
3664F0:  ADD             R0, PC; g_fxMan_ptr
3664F2:  LDR             R5, [R0]; g_fxMan
3664F4:  MOV             R0, R5; this
3664F6:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
3664FA:  MOV             R4, R0
3664FC:  MOV             R2, R6
3664FE:  MOV             R1, R4
366500:  MOV             R3, R8
366502:  BLX             j__ZN4Fx_c16CreateMatFromVecEP11RwMatrixTagP7CVectorS3_; Fx_c::CreateMatFromVec(RwMatrixTag *,CVector *,CVector *)
366506:  MOVS            R0, #0
366508:  ADR             R1, aTankFire; "tank_fire"
36650A:  ADD             R2, SP, #0x28+var_20; int
36650C:  STRD.W          R0, R0, [SP,#0x28+var_20]
366510:  STR             R0, [SP,#0x28+var_18]
366512:  MOV             R3, R4; int
366514:  STR             R0, [SP,#0x28+var_28]; int
366516:  MOV             R0, R5; int
366518:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
36651C:  MOV             R5, R0
36651E:  CBZ             R5, loc_36652C
366520:  MOV             R0, R5; this
366522:  BLX             j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
366526:  MOV             R0, R5; this
366528:  BLX             j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
36652C:  LDR             R0, =(g_fxMan_ptr - 0x366534)
36652E:  MOV             R1, R4
366530:  ADD             R0, PC; g_fxMan_ptr
366532:  LDR             R0, [R0]; g_fxMan
366534:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
366538:  ADD             SP, SP, #0x18
36653A:  POP.W           {R8}
36653E:  POP             {R4-R7,PC}
