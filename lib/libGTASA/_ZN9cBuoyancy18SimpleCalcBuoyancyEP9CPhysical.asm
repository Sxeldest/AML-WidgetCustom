; =========================================================
; Game Engine Function: _ZN9cBuoyancy18SimpleCalcBuoyancyEP9CPhysical
; Address            : 0x5701D8 - 0x5704D4
; =========================================================

5701D8:  PUSH            {R4-R7,LR}
5701DA:  ADD             R7, SP, #0xC
5701DC:  PUSH.W          {R8-R11}
5701E0:  SUB             SP, SP, #4
5701E2:  VPUSH           {D8-D9}
5701E6:  SUB             SP, SP, #0xB8
5701E8:  MOV             R5, R0
5701EA:  ADD             R0, SP, #0xE8+var_48
5701EC:  ADD.W           R4, R0, #8
5701F0:  LDR             R0, =(fVolMultiplier_ptr - 0x5701FC)
5701F2:  STR             R1, [SP,#0xE8+var_C4]
5701F4:  ADD.W           R6, R5, #0xC
5701F8:  ADD             R0, PC; fVolMultiplier_ptr
5701FA:  VLDR            S16, [R5,#0x7C]
5701FE:  ADD.W           R10, SP, #0xE8+var_B4
570202:  MOV.W           R8, #0
570206:  LDR             R0, [R0]; fVolMultiplier
570208:  STR             R0, [SP,#0xE8+var_B8]
57020A:  LDR             R0, =(fVolMultiplier_ptr - 0x570210)
57020C:  ADD             R0, PC; fVolMultiplier_ptr
57020E:  LDR             R0, [R0]; fVolMultiplier
570210:  STR             R0, [SP,#0xE8+var_BC]
570212:  MOVS            R0, #0
570214:  STR             R0, [SP,#0xE8+var_C0]
570216:  MOV.W           R11, #0
57021A:  VLDR            S18, [R5,#0x80]
57021E:  ADD.W           R9, R10, R11
570222:  ADD             R0, SP, #0xE8+var_3C; CMatrix *
570224:  ADD             R2, SP, #0xE8+var_48
570226:  MOV             R1, R6; CVector *
570228:  STR.W           R8, [R10,R11]
57022C:  STRD.W          R8, R8, [R9,#4]
570230:  VSTR            S18, [SP,#0xE8+var_48+4]
570234:  VSTR            S16, [SP,#0xE8+var_48]
570238:  STR.W           R8, [SP,#0xE8+var_40]
57023C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
570240:  VLDR            S0, [SP,#0xE8+var_3C]
570244:  MOVS            R3, #(stderr+1)
570246:  VLDR            S4, [R5]
57024A:  VLDR            S2, [SP,#0xE8+var_38]
57024E:  VLDR            S6, [R5,#4]
570252:  VADD.F32        S0, S4, S0
570256:  VADD.F32        S2, S6, S2
57025A:  VMOV            R0, S0; this
57025E:  VSTR            S0, [SP,#0xE8+var_3C]
570262:  VMOV            R1, S2; float
570266:  VSTR            S2, [SP,#0xE8+var_38]
57026A:  LDR             R2, [R5,#8]; float
57026C:  STRD.W          R3, R8, [SP,#0xE8+var_E8]; float *
570270:  MOV             R3, R4; float
570272:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
570276:  VLDR            S0, [R5,#0x60]
57027A:  VLDR            S2, [SP,#0xE8+var_34]
57027E:  VADD.F32        S0, S2, S0
570282:  VLDR            S2, [SP,#0xE8+var_40]
570286:  VSUB.F32        S0, S2, S0
57028A:  VSTR            S0, [SP,#0xE8+var_40]
57028E:  VLDR            S2, [R5,#0x78]
570292:  VCMPE.F32       S0, S2
570296:  VMRS            APSR_nzcv, FPSCR
57029A:  BLE             loc_5702A2
57029C:  VSTR            S2, [SP,#0xE8+var_40]
5702A0:  B               loc_5702C2
5702A2:  VLDR            S2, [R5,#0x84]
5702A6:  VCMPE.F32       S0, S2
5702AA:  VMRS            APSR_nzcv, FPSCR
5702AE:  BGE             loc_5702C2
5702B0:  LDR             R1, [SP,#0xE8+var_BC]
5702B2:  MOV.W           R0, #0x3F800000
5702B6:  VSTR            S2, [SP,#0xE8+var_40]
5702BA:  VSTR            S2, [R9,#8]
5702BE:  STR             R0, [R1]
5702C0:  B               loc_5702E0
5702C2:  LDR             R0, [SP,#0xE8+var_B8]
5702C4:  MOV.W           R1, #0x3F800000
5702C8:  STR             R1, [R0]
5702CA:  ADD             R1, SP, #0xE8+var_48
5702CC:  MOV             R0, R5
5702CE:  BLX             j__ZN9cBuoyancy21SimpleSumBuoyancyDataER7CVector11tWaterLevel; cBuoyancy::SimpleSumBuoyancyData(CVector &,tWaterLevel)
5702D2:  VLDR            D16, [SP,#0xE8+var_48]
5702D6:  LDR             R0, [SP,#0xE8+var_40]
5702D8:  STR.W           R0, [R9,#8]
5702DC:  VSTR            D16, [R9]
5702E0:  VLDR            S0, [R5,#0xA0]
5702E4:  ADD.W           R11, R11, #0xC
5702E8:  CMP.W           R11, #0x24 ; '$'
5702EC:  VADD.F32        S18, S18, S0
5702F0:  BNE             loc_57021E
5702F2:  VLDR            S0, [R5,#0x9C]
5702F6:  ADD.W           R10, R10, #0x24 ; '$'
5702FA:  LDR             R0, [SP,#0xE8+var_C0]
5702FC:  VADD.F32        S16, S16, S0
570300:  ADDS            R0, #1
570302:  CMP             R0, #3
570304:  BNE             loc_570214
570306:  VLDR            S0, [R5,#0x78]
57030A:  VMOV.F32        S6, #9.0
57030E:  VLDR            S2, [R5,#0x84]
570312:  MOVW            R8, #0
570316:  VLDR            S4, [R5,#0xBC]
57031A:  MOV.W           R10, #0
57031E:  VSUB.F32        S0, S0, S2
570322:  MOVT            R8, #0xBF80
570326:  MOV.W           R9, #0x3F800000
57032A:  MOVS            R4, #0
57032C:  VMUL.F32        S6, S0, S6
570330:  VDIV.F32        S4, S4, S6
570334:  VMOV.F32        S6, #0.5
570338:  VSTR            S4, [R5,#0xBC]
57033C:  LDR.W           R11, [SP,#0xE8+var_C4]
570340:  VMUL.F32        S0, S0, S6
570344:  VADD.F32        S16, S2, S0
570348:  ADD             R0, SP, #0xE8+var_B4
57034A:  ADDS            R6, R0, R4
57034C:  VLDR            S0, [R6,#8]
570350:  VCMPE.F32       S0, S16
570354:  VMRS            APSR_nzcv, FPSCR
570358:  BLE             loc_5703A6
57035A:  VLDR            S4, [R5,#0x78]
57035E:  VCMPE.F32       S0, S4
570362:  VMRS            APSR_nzcv, FPSCR
570366:  BGE             loc_5703A6
570368:  VLDR            S2, [R6,#0x2C]
57036C:  VCMPE.F32       S2, S16
570370:  VMRS            APSR_nzcv, FPSCR
570374:  BLE             loc_5703A6
570376:  VCMPE.F32       S2, S4
57037A:  VMRS            APSR_nzcv, FPSCR
57037E:  BGE             loc_5703A6
570380:  VMOV            R12, S0
570384:  ADD             R0, SP, #0xE8+var_B4
570386:  LDR             R3, [R6,#4]
570388:  LDR             R2, [R0,R4]
57038A:  LDRD.W          R1, R0, [R6,#0x24]
57038E:  STRD.W          R10, R8, [SP,#0xE8+var_D8]
570392:  STRD.W          R10, R10, [SP,#0xE8+var_D0]
570396:  VSTR            S2, [SP,#0xE8+var_DC]
57039A:  STRD.W          R12, R1, [SP,#0xE8+var_E8]
57039E:  MOV             R1, R11
5703A0:  STR             R0, [SP,#0xE8+var_E0]
5703A2:  BLX             j__ZN9cBuoyancy18AddSplashParticlesEP9CPhysical7CVectorS2_S2_h; cBuoyancy::AddSplashParticles(CPhysical *,CVector,CVector,CVector,uchar)
5703A6:  VLDR            S0, [R6,#0x20]
5703AA:  VCMPE.F32       S0, S16
5703AE:  VMRS            APSR_nzcv, FPSCR
5703B2:  BLE             loc_5703FC
5703B4:  VLDR            S4, [R5,#0x78]
5703B8:  VCMPE.F32       S0, S4
5703BC:  VMRS            APSR_nzcv, FPSCR
5703C0:  BGE             loc_5703FC
5703C2:  VLDR            S2, [R6,#0x44]
5703C6:  VCMPE.F32       S2, S16
5703CA:  VMRS            APSR_nzcv, FPSCR
5703CE:  BLE             loc_5703FC
5703D0:  VCMPE.F32       S2, S4
5703D4:  VMRS            APSR_nzcv, FPSCR
5703D8:  BGE             loc_5703FC
5703DA:  VMOV            R0, S0
5703DE:  LDRD.W          R2, R3, [R6,#0x18]
5703E2:  LDRD.W          R1, R6, [R6,#0x3C]
5703E6:  STRD.W          R10, R9, [SP,#0xE8+var_D8]
5703EA:  STRD.W          R10, R10, [SP,#0xE8+var_D0]
5703EE:  VSTR            S2, [SP,#0xE8+var_DC]
5703F2:  STMEA.W         SP, {R0,R1,R6}
5703F6:  MOV             R1, R11
5703F8:  BLX             j__ZN9cBuoyancy18AddSplashParticlesEP9CPhysical7CVectorS2_S2_h; cBuoyancy::AddSplashParticles(CPhysical *,CVector,CVector,CVector,uchar)
5703FC:  ADDS            R4, #0x24 ; '$'
5703FE:  CMP             R4, #0x48 ; 'H'
570400:  BNE             loc_570348
570402:  MOV.W           R10, #0
570406:  MOV.W           R9, #0x3F800000
57040A:  MOVS            R4, #0
57040C:  ADD             R0, SP, #0xE8+var_B4
57040E:  ADDS            R6, R0, R4
570410:  VLDR            S0, [R6,#8]
570414:  VCMPE.F32       S0, S16
570418:  VMRS            APSR_nzcv, FPSCR
57041C:  BLE             loc_57046A
57041E:  VLDR            S4, [R5,#0x78]
570422:  VCMPE.F32       S0, S4
570426:  VMRS            APSR_nzcv, FPSCR
57042A:  BGE             loc_57046A
57042C:  VLDR            S2, [R6,#0x14]
570430:  VCMPE.F32       S2, S16
570434:  VMRS            APSR_nzcv, FPSCR
570438:  BLE             loc_57046A
57043A:  VCMPE.F32       S2, S4
57043E:  VMRS            APSR_nzcv, FPSCR
570442:  BGE             loc_57046A
570444:  VMOV            R12, S0
570448:  ADD             R0, SP, #0xE8+var_B4
57044A:  LDR             R3, [R6,#4]
57044C:  LDR             R2, [R0,R4]
57044E:  LDRD.W          R1, R0, [R6,#0xC]
570452:  STRD.W          R8, R10, [SP,#0xE8+var_D8]
570456:  STRD.W          R10, R10, [SP,#0xE8+var_D0]
57045A:  VSTR            S2, [SP,#0xE8+var_DC]
57045E:  STRD.W          R12, R1, [SP,#0xE8+var_E8]
570462:  MOV             R1, R11
570464:  STR             R0, [SP,#0xE8+var_E0]
570466:  BLX             j__ZN9cBuoyancy18AddSplashParticlesEP9CPhysical7CVectorS2_S2_h; cBuoyancy::AddSplashParticles(CPhysical *,CVector,CVector,CVector,uchar)
57046A:  VLDR            S0, [R6,#0x50]
57046E:  VCMPE.F32       S0, S16
570472:  VMRS            APSR_nzcv, FPSCR
570476:  BLE             loc_5704C0
570478:  VLDR            S4, [R5,#0x78]
57047C:  VCMPE.F32       S0, S4
570480:  VMRS            APSR_nzcv, FPSCR
570484:  BGE             loc_5704C0
570486:  VLDR            S2, [R6,#0x5C]
57048A:  VCMPE.F32       S2, S16
57048E:  VMRS            APSR_nzcv, FPSCR
570492:  BLE             loc_5704C0
570494:  VCMPE.F32       S2, S4
570498:  VMRS            APSR_nzcv, FPSCR
57049C:  BGE             loc_5704C0
57049E:  VMOV            R0, S0
5704A2:  LDRD.W          R2, R3, [R6,#0x48]
5704A6:  LDRD.W          R1, R6, [R6,#0x54]
5704AA:  STRD.W          R9, R10, [SP,#0xE8+var_D8]
5704AE:  STRD.W          R10, R10, [SP,#0xE8+var_D0]
5704B2:  VSTR            S2, [SP,#0xE8+var_DC]
5704B6:  STMEA.W         SP, {R0,R1,R6}
5704BA:  MOV             R1, R11
5704BC:  BLX             j__ZN9cBuoyancy18AddSplashParticlesEP9CPhysical7CVectorS2_S2_h; cBuoyancy::AddSplashParticles(CPhysical *,CVector,CVector,CVector,uchar)
5704C0:  ADDS            R4, #0xC
5704C2:  CMP             R4, #0x18
5704C4:  BNE             loc_57040C
5704C6:  ADD             SP, SP, #0xB8
5704C8:  VPOP            {D8-D9}
5704CC:  ADD             SP, SP, #4
5704CE:  POP.W           {R8-R11}
5704D2:  POP             {R4-R7,PC}
