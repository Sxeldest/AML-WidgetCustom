; =========================================================
; Game Engine Function: _ZN4Fx_c19TriggerBulletSplashER7CVector
; Address            : 0x3665F0 - 0x366664
; =========================================================

3665F0:  LDR             R0, =(TheCamera_ptr - 0x3665FC)
3665F2:  MOV             R2, R1; int
3665F4:  VLDR            S0, [R2]
3665F8:  ADD             R0, PC; TheCamera_ptr
3665FA:  LDR             R0, [R0]; TheCamera
3665FC:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
3665FE:  ADD.W           R3, R1, #0x30 ; '0'
366602:  CMP             R1, #0
366604:  IT EQ
366606:  ADDEQ           R3, R0, #4
366608:  VLDR            D16, [R2,#4]
36660C:  VLDR            S2, [R3]
366610:  VLDR            D17, [R3,#4]
366614:  VSUB.F32        S0, S2, S0
366618:  VSUB.F32        D16, D17, D16
36661C:  VMUL.F32        D1, D16, D16
366620:  VMUL.F32        S0, S0, S0
366624:  VADD.F32        S0, S0, S2
366628:  VADD.F32        S0, S0, S3
36662C:  VLDR            S2, =625.0
366630:  VCMPE.F32       S0, S2
366634:  VMRS            APSR_nzcv, FPSCR
366638:  IT GT
36663A:  BXGT            LR
36663C:  PUSH            {R7,LR}
36663E:  MOV             R7, SP
366640:  SUB             SP, SP, #8
366642:  LDR             R0, =(g_fxMan_ptr - 0x36664E)
366644:  MOVS            R1, #0
366646:  STR             R1, [SP,#0x10+var_10]; int
366648:  ADR             R1, aWaterSplash; "water_splash"
36664A:  ADD             R0, PC; g_fxMan_ptr
36664C:  MOVS            R3, #0; int
36664E:  LDR             R0, [R0]; g_fxMan ; int
366650:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
366654:  CMP             R0, #0
366656:  ADD             SP, SP, #8
366658:  POP.W           {R7,LR}
36665C:  IT NE
36665E:  BNE.W           sub_1968F4
366662:  BX              LR
