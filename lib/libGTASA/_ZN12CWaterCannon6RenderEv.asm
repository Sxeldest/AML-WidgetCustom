; =========================================================
; Game Engine Function: _ZN12CWaterCannon6RenderEv
; Address            : 0x5CB0D8 - 0x5CB7A4
; =========================================================

5CB0D8:  PUSH            {R4-R7,LR}
5CB0DA:  ADD             R7, SP, #0xC
5CB0DC:  PUSH.W          {R8-R11}
5CB0E0:  SUB             SP, SP, #4
5CB0E2:  VPUSH           {D8-D15}
5CB0E6:  SUB             SP, SP, #0xE0
5CB0E8:  MOV             R5, R0
5CB0EA:  MOVS            R0, #8
5CB0EC:  MOVS            R1, #0
5CB0EE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB0F2:  MOVS            R0, #6
5CB0F4:  MOVS            R1, #1
5CB0F6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB0FA:  MOVS            R0, #0xC
5CB0FC:  MOVS            R1, #1
5CB0FE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB102:  MOVS            R0, #0xA
5CB104:  MOVS            R1, #5
5CB106:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB10A:  MOVS            R0, #0xB
5CB10C:  MOVS            R1, #6
5CB10E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB112:  MOVS            R0, #0xE
5CB114:  MOVS            R1, #1
5CB116:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB11A:  MOVS            R0, #1
5CB11C:  MOVS            R1, #0
5CB11E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB122:  MOVS            R0, #0x1D
5CB124:  MOVS            R1, #5
5CB126:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB12A:  MOVS            R0, #0x1E
5CB12C:  MOVS            R1, #0
5CB12E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB132:  BLX.W           rand
5CB136:  ADD.W           R0, R5, #0x32C; this
5CB13A:  LDRSH.W         R4, [R5,#4]
5CB13E:  STR             R0, [SP,#0x140+var_10C]
5CB140:  BLX.W           j__ZN25CAEWaterCannonAudioEntity15ClearSplashInfoEv; CAEWaterCannonAudioEntity::ClearSplashInfo(void)
5CB144:  ASRS            R0, R4, #0x1F
5CB146:  MOVW            R12, #0xFFFF
5CB14A:  ADD.W           R0, R4, R0,LSR#27
5CB14E:  VMOV.F32        S16, #25.0
5CB152:  BIC.W           R0, R0, #0x1F
5CB156:  VMOV.F32        S22, #3.0
5CB15A:  SUBS            R1, R4, R0
5CB15C:  VMOV.F32        S23, #1.0
5CB160:  ADD.W           R10, R1, R12
5CB164:  VLDR            S18, =0.03125
5CB168:  VLDR            S20, =64.0
5CB16C:  MOVS            R6, #0x20 ; ' '
5CB16E:  MOV.W           R0, R10,LSL#16
5CB172:  CMP             R0, #0
5CB174:  SXTH.W          R2, R10
5CB178:  ADD             R0, SP, #0x140+var_88
5CB17A:  IT LT
5CB17C:  ADDLT.W         R10, R2, #0x20 ; ' '
5CB180:  ORR.W           R2, R0, #4
5CB184:  STR             R2, [SP,#0x140+var_104]
5CB186:  ADD.W           R2, R0, #0x18
5CB18A:  ADDS            R0, #0xC
5CB18C:  STR             R0, [SP,#0x140+var_114]
5CB18E:  LDR.W           R0, =(g_fx_ptr - 0x5CB19E)
5CB192:  MOVS            R3, #0
5CB194:  STR             R2, [SP,#0x140+var_110]
5CB196:  LDR.W           R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5CB1A4)
5CB19A:  ADD             R0, PC; g_fx_ptr
5CB19C:  VLDR            S24, =4.6566e-10
5CB1A0:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5CB1A2:  LDR             R0, [R0]; g_fx
5CB1A4:  STR             R0, [SP,#0x140+var_118]
5CB1A6:  LDR             R0, [R2]; CTimer::ms_fTimeStep ...
5CB1A8:  STR             R0, [SP,#0x140+var_108]
5CB1AA:  LDR.W           R0, =(TheCamera_ptr - 0x5CB1B6)
5CB1AE:  VLDR            S26, =1.6
5CB1B2:  ADD             R0, PC; TheCamera_ptr
5CB1B4:  VLDR            S28, =0.2
5CB1B8:  VLDR            S30, =0.6
5CB1BC:  LDR             R0, [R0]; TheCamera
5CB1BE:  VLDR            S17, =50.0
5CB1C2:  ADDW            R0, R0, #0x90C
5CB1C6:  VLDR            S19, =1000.0
5CB1CA:  VLDR            S21, =0.0
5CB1CE:  VLDR            S25, =0.05
5CB1D2:  STR             R0, [SP,#0x140+var_11C]
5CB1D4:  MOVS            R0, #0
5CB1D6:  STR             R5, [SP,#0x140+var_100]
5CB1D8:  B               loc_5CB204
5CB1DA:  ALIGN 4
5CB1DC:  DCFS 0.03125
5CB1E0:  DCFS 64.0
5CB1E4:  DCFS 4.6566e-10
5CB1E8:  DCFS 1.6
5CB1EC:  DCFS 0.2
5CB1F0:  DCFS 0.6
5CB1F4:  DCFS 50.0
5CB1F8:  DCFS 1000.0
5CB1FC:  DCFS 0.0
5CB200:  DCFS 0.05
5CB204:  SXTAH.W         R2, R5, R1
5CB208:  LDRB.W          R2, [R2,#0x30C]
5CB20C:  CMP             R2, #0
5CB20E:  BEQ.W           loc_5CB75E
5CB212:  SXTAH.W         R2, R5, R10
5CB216:  LDRB.W          R2, [R2,#0x30C]
5CB21A:  CMP             R2, #0
5CB21C:  BEQ.W           loc_5CB75E
5CB220:  SXTH            R1, R1
5CB222:  SXTH.W          R2, R10
5CB226:  ADD.W           R1, R1, R1,LSL#1
5CB22A:  ADD.W           R4, R5, #0xC
5CB22E:  ADD.W           R8, R4, R1,LSL#2
5CB232:  ADD.W           R1, R2, R2,LSL#1
5CB236:  ADD.W           R9, R4, R1,LSL#2
5CB23A:  VLDR            S0, [R8]
5CB23E:  VLDR            S2, [R8,#4]
5CB242:  VLDR            S6, [R9]
5CB246:  VLDR            S8, [R9,#4]
5CB24A:  VSUB.F32        S0, S6, S0
5CB24E:  VLDR            S4, [R8,#8]
5CB252:  VSUB.F32        S2, S8, S2
5CB256:  VLDR            S10, [R9,#8]
5CB25A:  VSUB.F32        S4, S10, S4
5CB25E:  VMUL.F32        S8, S0, S0
5CB262:  VMUL.F32        S6, S2, S2
5CB266:  VSTR            S2, [SP,#0x140+var_90]
5CB26A:  VSTR            S0, [SP,#0x140+var_94]
5CB26E:  VMUL.F32        S10, S4, S4
5CB272:  VSTR            S4, [SP,#0x140+var_8C]
5CB276:  VADD.F32        S6, S8, S6
5CB27A:  VADD.F32        S6, S6, S10
5CB27E:  VCMPE.F32       S6, S16
5CB282:  VMRS            APSR_nzcv, FPSCR
5CB286:  BGE.W           loc_5CB75E
5CB28A:  ADD.W           R5, R8, #8
5CB28E:  ADD.W           R4, R9, #8
5CB292:  ADD.W           R6, R8, #4
5CB296:  ADD.W           R11, R9, #4
5CB29A:  LSLS            R0, R0, #0x1F
5CB29C:  STR             R3, [SP,#0x140+var_FC]
5CB29E:  BNE.W           loc_5CB3EA
5CB2A2:  LDR             R2, [SP,#0x140+var_11C]
5CB2A4:  ADD             R0, SP, #0x140+var_C0; CVector *
5CB2A6:  ADD             R1, SP, #0x140+var_94; CVector *
5CB2A8:  VSTR            S2, [SP,#0x140+var_90]
5CB2AC:  VSTR            S0, [SP,#0x140+var_94]
5CB2B0:  VSTR            S4, [SP,#0x140+var_8C]
5CB2B4:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5CB2B8:  VLDR            D16, [SP,#0x140+var_C0]
5CB2BC:  LDR             R0, [SP,#0x140+var_B8]
5CB2BE:  STR             R0, [SP,#0x140+var_80]
5CB2C0:  VSTR            D16, [SP,#0x140+var_88]
5CB2C4:  VLDR            S0, [SP,#0x140+var_88]
5CB2C8:  VLDR            S2, [SP,#0x140+var_88+4]
5CB2CC:  VMUL.F32        S8, S0, S0
5CB2D0:  VLDR            S4, [SP,#0x140+var_80]
5CB2D4:  VMUL.F32        S6, S2, S2
5CB2D8:  VMUL.F32        S10, S4, S4
5CB2DC:  VADD.F32        S6, S8, S6
5CB2E0:  VADD.F32        S6, S6, S10
5CB2E4:  VSQRT.F32       S6, S6
5CB2E8:  VDIV.F32        S6, S25, S6
5CB2EC:  VMUL.F32        S0, S0, S6
5CB2F0:  VMUL.F32        S2, S2, S6
5CB2F4:  VMUL.F32        S4, S4, S6
5CB2F8:  VSTR            S0, [SP,#0x140+var_88]
5CB2FC:  VSTR            S2, [SP,#0x140+var_88+4]
5CB300:  VSTR            S4, [SP,#0x140+var_80]
5CB304:  BLX.W           rand
5CB308:  VMOV            S0, R0
5CB30C:  VCVT.F32.S32    S0, S0
5CB310:  VMUL.F32        S0, S0, S24
5CB314:  VADD.F32        S0, S0, S21
5CB318:  VSTR            S0, [SP,#0x140+var_7C]
5CB31C:  BLX.W           rand
5CB320:  VMOV            S0, R0
5CB324:  VCVT.F32.S32    S0, S0
5CB328:  VMUL.F32        S0, S0, S24
5CB32C:  VADD.F32        S0, S0, S21
5CB330:  VSTR            S0, [SP,#0x140+var_78]
5CB334:  BLX.W           rand
5CB338:  VMOV            S0, R0
5CB33C:  VCVT.F32.S32    S0, S0
5CB340:  LDR             R0, [SP,#0x140+var_114]; this
5CB342:  VMUL.F32        S0, S0, S24
5CB346:  VADD.F32        S0, S0, S21
5CB34A:  VSTR            S0, [SP,#0x140+var_74]
5CB34E:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5CB352:  VLDR            S0, [SP,#0x140+var_7C]
5CB356:  VLDR            S2, [SP,#0x140+var_78]
5CB35A:  VLDR            S4, [SP,#0x140+var_74]
5CB35E:  VMUL.F32        S0, S0, S25
5CB362:  VMUL.F32        S2, S2, S25
5CB366:  VMUL.F32        S4, S4, S25
5CB36A:  VSTR            S0, [SP,#0x140+var_7C]
5CB36E:  VSTR            S2, [SP,#0x140+var_78]
5CB372:  VSTR            S4, [SP,#0x140+var_74]
5CB376:  BLX.W           rand
5CB37A:  VMOV            S0, R0
5CB37E:  VCVT.F32.S32    S0, S0
5CB382:  VMUL.F32        S0, S0, S24
5CB386:  VADD.F32        S0, S0, S21
5CB38A:  VSTR            S0, [SP,#0x140+var_70]
5CB38E:  BLX.W           rand
5CB392:  VMOV            S0, R0
5CB396:  VCVT.F32.S32    S0, S0
5CB39A:  VMUL.F32        S0, S0, S24
5CB39E:  VADD.F32        S0, S0, S21
5CB3A2:  VSTR            S0, [SP,#0x140+var_6C]
5CB3A6:  BLX.W           rand
5CB3AA:  VMOV            S0, R0
5CB3AE:  VCVT.F32.S32    S0, S0
5CB3B2:  LDR             R0, [SP,#0x140+var_110]; this
5CB3B4:  VMUL.F32        S0, S0, S24
5CB3B8:  VADD.F32        S0, S0, S21
5CB3BC:  VSTR            S0, [SP,#0x140+var_68]
5CB3C0:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5CB3C4:  VLDR            S0, [SP,#0x140+var_70]
5CB3C8:  VLDR            S2, [SP,#0x140+var_6C]
5CB3CC:  VLDR            S4, [SP,#0x140+var_68]
5CB3D0:  VMUL.F32        S0, S0, S25
5CB3D4:  VMUL.F32        S2, S2, S25
5CB3D8:  LDR             R3, [SP,#0x140+var_FC]
5CB3DA:  VMUL.F32        S4, S4, S25
5CB3DE:  VSTR            S0, [SP,#0x140+var_70]
5CB3E2:  VSTR            S2, [SP,#0x140+var_6C]
5CB3E6:  VSTR            S4, [SP,#0x140+var_68]
5CB3EA:  SXTH            R0, R3
5CB3EC:  MOVW            R1, #0xC8C8
5CB3F0:  VMOV            S0, R0
5CB3F4:  MUL.W           R0, R3, R3
5CB3F8:  MOVT            R1, #0xFF
5CB3FC:  VCVT.F32.S32    S0, S0
5CB400:  LDR             R3, =(unk_A7CEC4 - 0x5CB406)
5CB402:  ADD             R3, PC; unk_A7CEC4
5CB404:  VMOV            S2, R0
5CB408:  VCVT.F32.S32    S2, S2
5CB40C:  VMUL.F32        S0, S0, S18
5CB410:  VMUL.F32        S2, S2, S18
5CB414:  VMUL.F32        S0, S0, S20
5CB418:  VSUB.F32        S0, S20, S0
5CB41C:  VCVT.S32.F32    S4, S0
5CB420:  VADD.F32        S0, S2, S22
5CB424:  VMOV            R0, S4
5CB428:  ORR.W           R0, R1, R0,LSL#24
5CB42C:  LDR             R1, =(unk_A7CEC4 - 0x5CB432)
5CB42E:  ADD             R1, PC; unk_A7CEC4
5CB430:  STR             R0, [R1,#(dword_A7CF00 - 0xA7CEC4)]
5CB432:  STR             R0, [R1,#(dword_A7CEDC - 0xA7CEC4)]
5CB434:  STR             R0, [R1,#(dword_A7CF24 - 0xA7CEC4)]
5CB436:  STR.W           R0, [R1,#(dword_A7CF48 - 0xA7CEC4)]
5CB43A:  STR.W           R0, [R1,#(dword_A7CF6C - 0xA7CEC4)]
5CB43E:  STR.W           R0, [R1,#(dword_A7CF90 - 0xA7CEC4)]
5CB442:  STR.W           R0, [R1,#(dword_A7CFB4 - 0xA7CEC4)]
5CB446:  STR.W           R0, [R1,#(dword_A7CFD8 - 0xA7CEC4)]
5CB44A:  STR.W           R0, [R1,#(dword_A7CFFC - 0xA7CEC4)]
5CB44E:  STR.W           R0, [R1,#(dword_A7D020 - 0xA7CEC4)]
5CB452:  STR.W           R0, [R1,#(dword_A7D044 - 0xA7CEC4)]
5CB456:  STR.W           R0, [R1,#(dword_A7D068 - 0xA7CEC4)]
5CB45A:  MOVS            R0, #0
5CB45C:  LDR             R1, [SP,#0x140+var_104]
5CB45E:  VLDR            S2, [R1,#-4]
5CB462:  ADDS            R2, R3, R0
5CB464:  VLDR            S4, [R1]
5CB468:  ADDS            R0, #0x90
5CB46A:  VLDR            S6, [R1,#4]
5CB46E:  VMUL.F32        S2, S0, S2
5CB472:  VMUL.F32        S4, S0, S4
5CB476:  VLDR            S8, [R6]
5CB47A:  VMUL.F32        S6, S0, S6
5CB47E:  VLDR            S10, [R8]
5CB482:  VLDR            S12, [R5]
5CB486:  ADDS            R1, #0xC
5CB488:  CMP.W           R0, #0x1B0
5CB48C:  VSUB.F32        S10, S10, S2
5CB490:  VSUB.F32        S8, S8, S4
5CB494:  VSUB.F32        S12, S12, S6
5CB498:  VSTR            S10, [R2]
5CB49C:  VSTR            S8, [R2,#4]
5CB4A0:  VSTR            S12, [R2,#8]
5CB4A4:  VLDR            S8, [R6]
5CB4A8:  VLDR            S10, [R8]
5CB4AC:  VLDR            S12, [R5]
5CB4B0:  VADD.F32        S8, S8, S4
5CB4B4:  VADD.F32        S10, S10, S2
5CB4B8:  VADD.F32        S12, S12, S6
5CB4BC:  VSTR            S10, [R2,#0x24]
5CB4C0:  VSTR            S8, [R2,#0x28]
5CB4C4:  VSTR            S12, [R2,#0x2C]
5CB4C8:  VLDR            S8, [R11]
5CB4CC:  VLDR            S10, [R9]
5CB4D0:  VLDR            S12, [R4]
5CB4D4:  VSUB.F32        S8, S8, S4
5CB4D8:  VSUB.F32        S10, S10, S2
5CB4DC:  VSUB.F32        S12, S12, S6
5CB4E0:  VSTR            S10, [R2,#0x48]
5CB4E4:  VSTR            S8, [R2,#0x4C]
5CB4E8:  VSTR            S12, [R2,#0x50]
5CB4EC:  VLDR            S8, [R11]
5CB4F0:  VLDR            S10, [R9]
5CB4F4:  VLDR            S12, [R4]
5CB4F8:  VADD.F32        S4, S8, S4
5CB4FC:  VADD.F32        S2, S10, S2
5CB500:  VADD.F32        S6, S12, S6
5CB504:  VSTR            S2, [R2,#0x6C]
5CB508:  VSTR            S4, [R2,#0x70]
5CB50C:  VSTR            S6, [R2,#0x74]
5CB510:  BNE             loc_5CB45E
5CB512:  MOVS            R0, #1
5CB514:  ADD             R2, SP, #0x140+var_C0
5CB516:  ADD             R3, SP, #0x140+var_C4
5CB518:  STRD.W          R0, R0, [SP,#0x140+var_140]
5CB51C:  MOVS            R4, #0
5CB51E:  MOV             R0, R9
5CB520:  MOV             R1, R8
5CB522:  STRD.W          R4, R4, [SP,#0x140+var_138]
5CB526:  STRD.W          R4, R4, [SP,#0x140+var_130]
5CB52A:  STRD.W          R4, R4, [SP,#0x140+var_128]
5CB52E:  BLX.W           j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5CB532:  CMP             R0, #0
5CB534:  BEQ.W           loc_5CB730
5CB538:  MOVW            R0, #0x999A
5CB53C:  ADD.W           R8, SP, #0x140+var_E0
5CB540:  MOVT            R0, #0x3E19
5CB544:  MOV.W           R1, #0x3F800000; float
5CB548:  STR             R0, [SP,#0x140+var_140]; float
5CB54A:  MOV.W           R0, #0x3F400000
5CB54E:  STR             R0, [SP,#0x140+var_13C]; float
5CB550:  MOV.W           R0, #0x3F800000
5CB554:  STR             R0, [SP,#0x140+var_138]; float
5CB556:  MOV             R0, #0x3E4CCCCD
5CB55E:  MOV.W           R2, #0x3F800000; float
5CB562:  STR             R0, [SP,#0x140+var_134]; float
5CB564:  MOV             R0, R8; this
5CB566:  MOV.W           R3, #0x3F800000; float
5CB56A:  MOV             R5, R0
5CB56C:  BLX.W           j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
5CB570:  VLDR            S0, [SP,#0x140+var_B0]
5CB574:  VLDR            S2, [SP,#0x140+var_AC]
5CB578:  VLDR            S4, [SP,#0x140+var_A8]
5CB57C:  VMUL.F32        S0, S0, S22
5CB580:  VMUL.F32        S2, S2, S22
5CB584:  VMUL.F32        S4, S4, S22
5CB588:  VSTR            S0, [SP,#0x140+var_EC]
5CB58C:  VSTR            S2, [SP,#0x140+var_E8]
5CB590:  VSTR            S4, [SP,#0x140+var_E4]
5CB594:  BLX.W           rand
5CB598:  VMOV            S0, R0
5CB59C:  VCVT.F32.S32    S0, S0
5CB5A0:  VLDR            S2, [SP,#0x140+var_EC]
5CB5A4:  VMUL.F32        S0, S0, S24
5CB5A8:  VMUL.F32        S0, S0, S26
5CB5AC:  VADD.F32        S0, S0, S28
5CB5B0:  VMUL.F32        S0, S2, S0
5CB5B4:  VSTR            S0, [SP,#0x140+var_EC]
5CB5B8:  BLX.W           rand
5CB5BC:  VMOV            S0, R0
5CB5C0:  VCVT.F32.S32    S0, S0
5CB5C4:  VLDR            S2, [SP,#0x140+var_E8]
5CB5C8:  VMUL.F32        S0, S0, S24
5CB5CC:  VMUL.F32        S0, S0, S26
5CB5D0:  VADD.F32        S0, S0, S28
5CB5D4:  VMUL.F32        S0, S2, S0
5CB5D8:  VSTR            S0, [SP,#0x140+var_E8]
5CB5DC:  BLX.W           rand
5CB5E0:  VMOV            S0, R0
5CB5E4:  MOVW            R9, #0x999A
5CB5E8:  MOVW            R8, #0x999A
5CB5EC:  MOVT            R9, #0x3F99
5CB5F0:  VCVT.F32.S32    S0, S0
5CB5F4:  VLDR            S2, [SP,#0x140+var_E4]
5CB5F8:  LDR             R1, [SP,#0x140+var_108]
5CB5FA:  MOVT            R8, #0x3F19
5CB5FE:  LDR             R4, [SP,#0x140+var_118]
5CB600:  MOV             R11, R5
5CB602:  STR             R5, [SP,#0x140+var_140]; int
5CB604:  ADD             R6, SP, #0x140+var_C0
5CB606:  VLDR            S6, [R1]
5CB60A:  MOVS            R1, #0xBF800000
5CB610:  LDR             R0, [R4,#0x38]; int
5CB612:  STR             R1, [SP,#0x140+var_13C]; float
5CB614:  MOVS            R1, #0
5CB616:  VMUL.F32        S0, S0, S24
5CB61A:  STR.W           R9, [SP,#0x140+var_138]; float
5CB61E:  STR.W           R8, [SP,#0x140+var_134]; float
5CB622:  ADD             R2, SP, #0x140+var_EC; int
5CB624:  STR             R1, [SP,#0x140+var_130]; int
5CB626:  MOV             R1, R6; int
5CB628:  VMUL.F32        S0, S0, S26
5CB62C:  VADD.F32        S0, S0, S28
5CB630:  VMUL.F32        S0, S2, S0
5CB634:  VSTR            S0, [SP,#0x140+var_E4]
5CB638:  VMUL.F32        S0, S0, S30
5CB63C:  VLDR            S2, [SP,#0x140+var_EC]
5CB640:  VLDR            S4, [SP,#0x140+var_E8]
5CB644:  VMUL.F32        S2, S2, S30
5CB648:  VMUL.F32        S4, S4, S30
5CB64C:  VSTR            S0, [SP,#0x140+var_F0]
5CB650:  VDIV.F32        S0, S6, S17
5CB654:  VMUL.F32        S0, S0, S19
5CB658:  VSTR            S2, [SP,#0x140+var_F8]
5CB65C:  VSTR            S4, [SP,#0x140+var_F4]
5CB660:  VCVT.U32.F32    S0, S0
5CB664:  VCVT.F32.U32    S0, S0
5CB668:  VDIV.F32        S0, S21, S0
5CB66C:  VMOV            R5, S0
5CB670:  MOV             R3, R5; int
5CB672:  BLX.W           j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
5CB676:  MOV             R8, R11
5CB678:  MOVW            R9, #0
5CB67C:  MOVW            R6, #0x999A
5CB680:  MOVW            R11, #0x999A
5CB684:  LDR             R0, [R4,#0x24]; int
5CB686:  MOVT            R9, #0xBF80
5CB68A:  MOVT            R6, #0x3F99
5CB68E:  MOVT            R11, #0x3F19
5CB692:  MOVS            R1, #0
5CB694:  STR.W           R8, [SP,#0x140+var_140]; int
5CB698:  STR.W           R9, [SP,#0x140+var_13C]; float
5CB69C:  ADD             R2, SP, #0x140+var_F8; int
5CB69E:  STR             R6, [SP,#0x140+var_138]; float
5CB6A0:  MOV             R3, R5; int
5CB6A2:  STR.W           R11, [SP,#0x140+var_134]; float
5CB6A6:  STR             R1, [SP,#0x140+var_130]; int
5CB6A8:  ADD             R1, SP, #0x140+var_C0; int
5CB6AA:  BLX.W           j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
5CB6AE:  LDR             R0, [SP,#0x140+var_108]
5CB6B0:  MOVS            R1, #0
5CB6B2:  ADD             R2, SP, #0x140+var_EC; int
5CB6B4:  VLDR            S0, [R0]
5CB6B8:  LDR             R0, [R4,#0x38]; int
5CB6BA:  VDIV.F32        S0, S0, S17
5CB6BE:  STRD.W          R8, R9, [SP,#0x140+var_140]; int
5CB6C2:  STRD.W          R6, R11, [SP,#0x140+var_138]; float
5CB6C6:  STR             R1, [SP,#0x140+var_130]; int
5CB6C8:  ADD             R1, SP, #0x140+var_C0; int
5CB6CA:  VMUL.F32        S0, S0, S19
5CB6CE:  VCVT.U32.F32    S0, S0
5CB6D2:  VCVT.F32.U32    S0, S0
5CB6D6:  VDIV.F32        S0, S23, S0
5CB6DA:  VMOV            R5, S0
5CB6DE:  MOV             R3, R5; int
5CB6E0:  BLX.W           j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
5CB6E4:  LDR             R0, [R4,#0x24]; int
5CB6E6:  MOVS            R1, #0
5CB6E8:  STRD.W          R8, R9, [SP,#0x140+var_140]; int
5CB6EC:  ADD             R2, SP, #0x140+var_F8; int
5CB6EE:  STRD.W          R6, R11, [SP,#0x140+var_138]; float
5CB6F2:  MOV             R3, R5; int
5CB6F4:  STR             R1, [SP,#0x140+var_130]; int
5CB6F6:  ADD             R1, SP, #0x140+var_C0; int
5CB6F8:  BLX.W           j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
5CB6FC:  VLDR            S0, [SP,#0x140+var_EC]
5CB700:  ADD             R3, SP, #0x140+var_C0
5CB702:  VLDR            S2, [SP,#0x140+var_E8]
5CB706:  VMUL.F32        S0, S0, S0
5CB70A:  VLDR            S4, [SP,#0x140+var_E4]
5CB70E:  VMUL.F32        S2, S2, S2
5CB712:  LDM             R3, {R1-R3}
5CB714:  VMUL.F32        S4, S4, S4
5CB718:  LDR             R0, [SP,#0x140+var_10C]
5CB71A:  VADD.F32        S0, S0, S2
5CB71E:  VADD.F32        S0, S0, S4
5CB722:  VSQRT.F32       S0, S0
5CB726:  VSTR            S0, [SP,#0x140+var_140]
5CB72A:  BLX.W           j__ZN25CAEWaterCannonAudioEntity13SetSplashInfoE7CVectorf; CAEWaterCannonAudioEntity::SetSplashInfo(CVector,float)
5CB72E:  MOVS            R4, #1
5CB730:  LDR             R0, =(unk_A7CEC4 - 0x5CB73C)
5CB732:  MOVS            R1, #0xC
5CB734:  MOVS            R2, #0
5CB736:  MOVS            R3, #0x10
5CB738:  ADD             R0, PC; unk_A7CEC4
5CB73A:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5CB73E:  CBZ             R0, loc_5CB750
5CB740:  LDR             R1, =(unk_A7D080 - 0x5CB74A)
5CB742:  MOVS            R0, #3
5CB744:  MOVS            R2, #0x12
5CB746:  ADD             R1, PC; unk_A7D080
5CB748:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5CB74C:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5CB750:  LDR             R5, [SP,#0x140+var_100]
5CB752:  MOVS            R0, #1
5CB754:  LDR             R3, [SP,#0x140+var_FC]
5CB756:  MOVW            R12, #0xFFFF
5CB75A:  MOVS            R6, #0x20 ; ' '
5CB75C:  B               loc_5CB760
5CB75E:  MOVS            R4, #0
5CB760:  UXTAH.W         R2, R12, R10
5CB764:  TST.W           R2, #0x8000
5CB768:  IT NE
5CB76A:  UXTAHNE.W       R2, R6, R2
5CB76E:  CBNZ            R4, loc_5CB77E
5CB770:  ADDS            R1, R3, #1
5CB772:  CMP             R3, #0x1E
5CB774:  MOV             R3, R1
5CB776:  MOV             R1, R10
5CB778:  MOV             R10, R2
5CB77A:  BLT.W           loc_5CB204
5CB77E:  MOVS            R0, #8
5CB780:  MOVS            R1, #1
5CB782:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB786:  MOVS            R0, #0xC
5CB788:  MOVS            R1, #0
5CB78A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB78E:  MOVS            R0, #0xE
5CB790:  MOVS            R1, #0
5CB792:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CB796:  ADD             SP, SP, #0xE0
5CB798:  VPOP            {D8-D15}
5CB79C:  ADD             SP, SP, #4
5CB79E:  POP.W           {R8-R11}
5CB7A2:  POP             {R4-R7,PC}
