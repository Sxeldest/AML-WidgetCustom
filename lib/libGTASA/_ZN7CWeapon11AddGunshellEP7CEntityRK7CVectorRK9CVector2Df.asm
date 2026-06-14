; =========================================================
; Game Engine Function: _ZN7CWeapon11AddGunshellEP7CEntityRK7CVectorRK9CVector2Df
; Address            : 0x5E0268 - 0x5E03C0
; =========================================================

5E0268:  PUSH            {R4-R7,LR}
5E026A:  ADD             R7, SP, #0xC
5E026C:  PUSH.W          {R8}
5E0270:  VPUSH           {D8-D9}
5E0274:  SUB             SP, SP, #0x40
5E0276:  MOV             R4, R1
5E0278:  MOV             R6, R3
5E027A:  MOV             R8, R2
5E027C:  MOV             R5, R0
5E027E:  CMP             R4, #0
5E0280:  BEQ.W           loc_5E03B4
5E0284:  MOV             R0, R4; this
5E0286:  BLX.W           j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
5E028A:  CMP             R0, #1
5E028C:  BNE.W           loc_5E03B4
5E0290:  LDR             R0, =(TheCamera_ptr - 0x5E0298)
5E0292:  LDR             R1, [R4,#0x14]
5E0294:  ADD             R0, PC; TheCamera_ptr
5E0296:  ADD.W           R2, R1, #0x30 ; '0'
5E029A:  CMP             R1, #0
5E029C:  LDR             R0, [R0]; TheCamera
5E029E:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
5E02A0:  IT EQ
5E02A2:  ADDEQ           R2, R4, #4
5E02A4:  VLDR            S0, [R2]
5E02A8:  ADD.W           R1, R3, #0x30 ; '0'
5E02AC:  CMP             R3, #0
5E02AE:  IT EQ
5E02B0:  ADDEQ           R1, R0, #4
5E02B2:  VLDR            D16, [R2,#4]
5E02B6:  VLDR            S2, [R1]
5E02BA:  VLDR            D17, [R1,#4]
5E02BE:  VSUB.F32        S0, S2, S0
5E02C2:  VSUB.F32        D16, D17, D16
5E02C6:  VMUL.F32        D1, D16, D16
5E02CA:  VMUL.F32        S0, S0, S0
5E02CE:  VADD.F32        S0, S0, S2
5E02D2:  VADD.F32        S0, S0, S3
5E02D6:  VLDR            S2, =100.0
5E02DA:  VCMPE.F32       S0, S2
5E02DE:  VMRS            APSR_nzcv, FPSCR
5E02E2:  BGT             loc_5E03B4
5E02E4:  VMOV.F32        S18, #20.0
5E02E8:  VLDR            S0, [R6]
5E02EC:  VLDR            S4, =0.05
5E02F0:  VLDR            S2, [R6,#4]
5E02F4:  VLDR            S16, [R7,#arg_0]
5E02F8:  VMUL.F32        S0, S0, S18
5E02FC:  VMUL.F32        S0, S0, S4
5E0300:  VSTR            S0, [SP,#0x60+var_2C]
5E0304:  VMUL.F32        S0, S2, S18
5E0308:  VMUL.F32        S0, S0, S4
5E030C:  VSTR            S0, [SP,#0x60+var_28]
5E0310:  BLX.W           rand
5E0314:  VMOV            S0, R0
5E0318:  VLDR            S2, =4.6566e-10
5E031C:  VCVT.F32.S32    S0, S0
5E0320:  VMUL.F32        S0, S0, S2
5E0324:  VLDR            S2, =0.06
5E0328:  VMUL.F32        S0, S0, S2
5E032C:  VLDR            S2, =0.02
5E0330:  VADD.F32        S0, S0, S2
5E0334:  VMUL.F32        S0, S0, S18
5E0338:  VSTR            S0, [SP,#0x60+var_24]
5E033C:  BLX.W           rand
5E0340:  MOV.W           R0, #0x3F800000
5E0344:  MOV.W           R1, #0x3F000000; float
5E0348:  STRD.W          R0, R0, [SP,#0x60+var_58]; float
5E034C:  MOV.W           R2, #0x3F000000; float
5E0350:  VSTR            S16, [SP,#0x60+var_5C]
5E0354:  MOV.W           R3, #0x3F000000; float
5E0358:  STR             R0, [SP,#0x60+var_60]; int
5E035A:  ADD             R0, SP, #0x60+var_48; this
5E035C:  BLX.W           j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
5E0360:  LDR             R1, [R5]
5E0362:  ORR.W           R1, R1, #2
5E0366:  CMP             R1, #0x1B
5E0368:  BNE             loc_5E0380
5E036A:  MOVW            R1, #0xCCCD
5E036E:  MOVW            R2, #0x999A
5E0372:  MOVT            R1, #0x3DCC
5E0376:  MOVT            R2, #0x3F19
5E037A:  STR             R1, [SP,#0x60+var_44]
5E037C:  STR             R2, [SP,#0x60+var_48]
5E037E:  STR             R1, [SP,#0x60+var_40]
5E0380:  LDR             R1, =(g_fx_ptr - 0x5E0390)
5E0382:  MOVW            R3, #0x999A
5E0386:  MOVW            R6, #0x999A
5E038A:  MOVS            R5, #0
5E038C:  ADD             R1, PC; g_fx_ptr
5E038E:  MOVS            R2, #0
5E0390:  MOVT            R3, #0x3F19
5E0394:  MOVT            R6, #0x3F99
5E0398:  LDR             R1, [R1]; g_fx
5E039A:  MOVT            R5, #0xBF80
5E039E:  LDR             R1, [R1,#(dword_820534 - 0x820520)]
5E03A0:  STMEA.W         SP, {R0,R5,R6}
5E03A4:  STRD.W          R3, R2, [SP,#0x60+var_54]; float
5E03A8:  ADD             R2, SP, #0x60+var_2C; int
5E03AA:  MOV             R0, R1; int
5E03AC:  MOV             R1, R8; int
5E03AE:  MOVS            R3, #0; int
5E03B0:  BLX.W           j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
5E03B4:  ADD             SP, SP, #0x40 ; '@'
5E03B6:  VPOP            {D8-D9}
5E03BA:  POP.W           {R8}
5E03BE:  POP             {R4-R7,PC}
