; =========================================================
; Game Engine Function: _ZN4Fx_c18TriggerWaterSplashER7CVector
; Address            : 0x36655C - 0x3665D0
; =========================================================

36655C:  LDR             R0, =(TheCamera_ptr - 0x366568)
36655E:  MOV             R2, R1; int
366560:  VLDR            S0, [R2]
366564:  ADD             R0, PC; TheCamera_ptr
366566:  LDR             R0, [R0]; TheCamera
366568:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
36656A:  ADD.W           R3, R1, #0x30 ; '0'
36656E:  CMP             R1, #0
366570:  IT EQ
366572:  ADDEQ           R3, R0, #4
366574:  VLDR            D16, [R2,#4]
366578:  VLDR            S2, [R3]
36657C:  VLDR            D17, [R3,#4]
366580:  VSUB.F32        S0, S2, S0
366584:  VSUB.F32        D16, D17, D16
366588:  VMUL.F32        D1, D16, D16
36658C:  VMUL.F32        S0, S0, S0
366590:  VADD.F32        S0, S0, S2
366594:  VADD.F32        S0, S0, S3
366598:  VLDR            S2, =625.0
36659C:  VCMPE.F32       S0, S2
3665A0:  VMRS            APSR_nzcv, FPSCR
3665A4:  IT GT
3665A6:  BXGT            LR
3665A8:  PUSH            {R7,LR}
3665AA:  MOV             R7, SP
3665AC:  SUB             SP, SP, #8
3665AE:  LDR             R0, =(g_fxMan_ptr - 0x3665BA)
3665B0:  MOVS            R1, #0
3665B2:  STR             R1, [SP,#0x10+var_10]; int
3665B4:  ADR             R1, aWaterSplashBig; "water_splash_big"
3665B6:  ADD             R0, PC; g_fxMan_ptr
3665B8:  MOVS            R3, #0; int
3665BA:  LDR             R0, [R0]; g_fxMan ; int
3665BC:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
3665C0:  CMP             R0, #0
3665C2:  ADD             SP, SP, #8
3665C4:  POP.W           {R7,LR}
3665C8:  IT NE
3665CA:  BNE.W           sub_1968F4
3665CE:  BX              LR
