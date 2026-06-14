; =========================================================
; Game Engine Function: _ZN14CAdjustableHUDC2Ev
; Address            : 0x2820D0 - 0x2825D2
; =========================================================

2820D0:  PUSH            {R4-R7,LR}
2820D2:  ADD             R7, SP, #0xC
2820D4:  PUSH.W          {R8-R11}
2820D8:  SUB             SP, SP, #4
2820DA:  VPUSH           {D8-D15}
2820DE:  SUB             SP, SP, #0x38
2820E0:  MOV             R11, R0
2820E2:  ADR.W           R0, dword_2825E0
2820E6:  VLD1.64         {D8-D9}, [R0@128]
2820EA:  ADD.W           R0, R11, #0x14
2820EE:  MOVW            R4, #0xFD08
2820F2:  VST1.32         {D8-D9}, [R0]
2820F6:  ADD.W           R0, R11, #4
2820FA:  MOVT            R4, #0xFFFF
2820FE:  VST1.32         {D8-D9}, [R0]
282102:  ADD.W           R0, R11, #0x24 ; '$'
282106:  VST1.32         {D8-D9}, [R0]
28210A:  ADD.W           R0, R11, #0x34 ; '4'
28210E:  VST1.32         {D8-D9}, [R0]
282112:  ADD.W           R0, R11, #0x44 ; 'D'
282116:  VST1.32         {D8-D9}, [R0]
28211A:  ADD.W           R0, R11, #0x54 ; 'T'
28211E:  VST1.32         {D8-D9}, [R0]
282122:  ADD.W           R5, R11, R4
282126:  ADD.W           R0, R5, #0x368
28212A:  VST1.32         {D8-D9}, [R0]
28212E:  ADD.W           R0, R5, #0x378; this
282132:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
282136:  ADD.W           R0, R5, #0x37C; this
28213A:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
28213E:  ADDS            R4, #0x28 ; '('
282140:  BNE             loc_282122
282142:  ADD.W           R0, R11, #0x380
282146:  MOV.W           R4, #0xFFFFFFFF
28214A:  VST1.32         {D8-D9}, [R0]
28214E:  ADD.W           R0, R11, #0x370
282152:  VST1.32         {D8-D9}, [R0]
282156:  ADD.W           R0, R11, #0x390
28215A:  VST1.32         {D8-D9}, [R0]
28215E:  ADD.W           R0, R11, #0x3A0
282162:  VST1.32         {D8-D9}, [R0]
282166:  ADD.W           R0, R11, #0x3B0
28216A:  VST1.32         {D8-D9}, [R0]
28216E:  ADD.W           R0, R11, #0x3C0
282172:  VST1.32         {D8-D9}, [R0]
282176:  ADD.W           R0, R11, #0x3D0
28217A:  VST1.32         {D8-D9}, [R0]
28217E:  ADD.W           R0, R11, #0x3E0
282182:  VST1.32         {D8-D9}, [R0]
282186:  ADD.W           R0, R11, #0x3F0
28218A:  VST1.32         {D8-D9}, [R0]
28218E:  ADD.W           R0, R11, #0x400
282192:  VST1.32         {D8-D9}, [R0]
282196:  ADD.W           R0, R11, #0x410
28219A:  VST1.32         {D8-D9}, [R0]
28219E:  ADD.W           R0, R11, #0x420
2821A2:  VST1.32         {D8-D9}, [R0]
2821A6:  ADD.W           R0, R11, #0x430
2821AA:  VST1.32         {D8-D9}, [R0]
2821AE:  ADD.W           R0, R11, #0x440
2821B2:  VST1.32         {D8-D9}, [R0]
2821B6:  ADD.W           R0, R11, #0x450
2821BA:  VST1.32         {D8-D9}, [R0]
2821BE:  ADD.W           R0, R11, #0x460
2821C2:  VST1.32         {D8-D9}, [R0]
2821C6:  ADD.W           R0, R11, #0x470
2821CA:  VST1.32         {D8-D9}, [R0]
2821CE:  ADD.W           R0, R11, #0x480
2821D2:  VST1.32         {D8-D9}, [R0]
2821D6:  ADD.W           R0, R11, #0x360
2821DA:  VST1.32         {D8-D9}, [R0]
2821DE:  MOV.W           R0, #0xFFFFFFFF; int
2821E2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2821E6:  MOVS            R5, #1
2821E8:  CBZ             R0, loc_2821FC
2821EA:  MOV.W           R0, #0xFFFFFFFF; int
2821EE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2821F2:  LDR.W           R0, [R0,#0x44C]
2821F6:  CMP             R0, #0x32 ; '2'
2821F8:  IT EQ
2821FA:  MOVEQ           R5, #2
2821FC:  LDR.W           R0, =(WidgetIDs_ptr - 0x282212)
282200:  MOVS            R3, #0
282202:  LDR.W           R1, =(nAdjustmentModeFlags_ptr - 0x282214)
282206:  MOV.W           R9, #0x360
28220A:  LDR.W           R2, =(PositionIDs_ptr - 0x28221A)
28220E:  ADD             R0, PC; WidgetIDs_ptr ; this
282210:  ADD             R1, PC; nAdjustmentModeFlags_ptr
282212:  STR.W           R4, [R11,#0x490]
282216:  ADD             R2, PC; PositionIDs_ptr
282218:  STR.W           R5, [R11]
28221C:  STR.W           R4, [R11,#0x64]
282220:  STR.W           R3, [R11,#0x498]
282224:  STR.W           R3, [R11,#0x49C]
282228:  STRB.W          R3, [R11,#0x496]
28222C:  STRH.W          R3, [R11,#0x494]
282230:  LDR             R6, [R2]; PositionIDs
282232:  LDR.W           R8, [R0]; WidgetIDs
282236:  LDR.W           R10, [R1]; nAdjustmentModeFlags
28223A:  BLX             j__ZN15CTouchInterface13LoadTextureDBEv; CTouchInterface::LoadTextureDB(void)
28223E:  STR             R0, [SP,#0x98+var_94]
282240:  VMOV.F32        S20, #30.0
282244:  LDR             R0, =(RsGlobal_ptr - 0x282250)
282246:  MOVS            R4, #0
282248:  VLDR            S28, =1.9
28224C:  ADD             R0, PC; RsGlobal_ptr
28224E:  VLDR            S18, =0.0
282252:  VLDR            S22, =640.0
282256:  LDR             R0, [R0]; RsGlobal
282258:  STR             R0, [SP,#0x98+var_78]
28225A:  LDR             R0, =(RsGlobal_ptr - 0x282264)
28225C:  VLDR            S31, =1.8
282260:  ADD             R0, PC; RsGlobal_ptr
282262:  VLDR            S16, =448.0
282266:  STR.W           R11, [SP,#0x98+var_74]
28226A:  LDR             R0, [R0]; RsGlobal
28226C:  STR             R0, [SP,#0x98+var_7C]
28226E:  LDR             R0, =(RsGlobal_ptr - 0x282274)
282270:  ADD             R0, PC; RsGlobal_ptr
282272:  LDR             R0, [R0]; RsGlobal
282274:  STR             R0, [SP,#0x98+var_8C]
282276:  LDR             R0, =(RsGlobal_ptr - 0x28227C)
282278:  ADD             R0, PC; RsGlobal_ptr
28227A:  LDR             R0, [R0]; RsGlobal
28227C:  STR             R0, [SP,#0x98+var_80]
28227E:  LDR             R0, =(RsGlobal_ptr - 0x282284)
282280:  ADD             R0, PC; RsGlobal_ptr
282282:  LDR             R0, [R0]; RsGlobal
282284:  STR             R0, [SP,#0x98+var_84]
282286:  LDR             R0, =(RsGlobal_ptr - 0x28228C)
282288:  ADD             R0, PC; RsGlobal_ptr
28228A:  LDR             R0, [R0]; RsGlobal
28228C:  STR             R0, [SP,#0x98+var_90]
28228E:  LDR             R0, =(_ZN15CTouchInterface19m_pszWidgetTexturesE_ptr - 0x282294)
282290:  ADD             R0, PC; _ZN15CTouchInterface19m_pszWidgetTexturesE_ptr
282292:  LDR             R0, [R0]; CTouchInterface::m_pszWidgetTextures ...
282294:  STR             R0, [SP,#0x98+var_88]
282296:  MOVS            R0, #0
282298:  ADD             R1, SP, #0x98+var_70
28229A:  STRD.W          R0, R0, [SP,#0x98+var_68]
28229E:  ADD             R2, SP, #0x98+var_68
2822A0:  STRD.W          R0, R0, [SP,#0x98+var_70]
2822A4:  ADD             R3, SP, #0x98+var_6C
2822A6:  LDR             R0, [R6]
2822A8:  STR             R1, [SP,#0x98+var_98]
2822AA:  ADD             R1, SP, #0x98+var_64
2822AC:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2822B0:  LDR             R5, [SP,#0x98+var_78]
2822B2:  VLDR            S30, [SP,#0x98+var_64]
2822B6:  VLDR            S0, [R5,#4]
2822BA:  VCVT.F32.S32    S17, S0
2822BE:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2822C2:  VMOV            S19, R0
2822C6:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2822CA:  VLDR            S0, [R5,#4]
2822CE:  VMOV            S4, R0
2822D2:  VLDR            S2, [R5,#8]
2822D6:  VCVT.F32.U32    S21, S19
2822DA:  VCVT.F32.U32    S23, S4
2822DE:  VCVT.F32.S32    S25, S2
2822E2:  VLDR            S19, [SP,#0x98+var_6C]
2822E6:  VCVT.F32.S32    S27, S0
2822EA:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2822EE:  VMOV            S0, R0
2822F2:  VCVT.F32.U32    S29, S0
2822F6:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2822FA:  VDIV.F32        S2, S21, S23
2822FE:  VMOV            S0, R0
282302:  VCMPE.F32       S2, S28
282306:  VCVT.F32.U32    S0, S0
28230A:  VMRS            APSR_nzcv, FPSCR
28230E:  VMOV.F32        S2, S18
282312:  VMOV.F32        S4, S18
282316:  VDIV.F32        S0, S29, S0
28231A:  IT GT
28231C:  VMOVGT.F32      S2, S20
282320:  VCMPE.F32       S0, S28
282324:  VMRS            APSR_nzcv, FPSCR
282328:  VSUB.F32        S0, S17, S2
28232C:  IT GT
28232E:  VMOVGT.F32      S4, S20
282332:  LDR             R5, [R5,#8]
282334:  VSUB.F32        S2, S27, S4
282338:  VDIV.F32        S4, S27, S25
28233C:  VDIV.F32        S23, S2, S22
282340:  VCMPE.F32       S4, S31
282344:  VMRS            APSR_nzcv, FPSCR
282348:  BLE             loc_282362
28234A:  VMOV            S2, R5
28234E:  VMOV.F32        S4, #0.5
282352:  VCVT.F32.S32    S2, S2
282356:  VDIV.F32        S2, S2, S16
28235A:  VADD.F32        S2, S23, S2
28235E:  VMUL.F32        S23, S2, S4
282362:  LDR             R0, [SP,#0x98+var_7C]
282364:  VDIV.F32        S21, S0, S22
282368:  VLDR            S0, [R0,#4]
28236C:  VLDR            S17, [SP,#0x98+var_70]
282370:  VLDR            S27, [SP,#0x98+var_68]
282374:  VCVT.F32.S32    S25, S0
282378:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28237C:  VMOV            S0, R0
282380:  VCVT.F32.U32    S29, S0
282384:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282388:  VMOV            S0, R0
28238C:  VMOV            S2, R5
282390:  VCVT.F32.U32    S0, S0
282394:  VDIV.F32        S0, S29, S0
282398:  VCMPE.F32       S0, S28
28239C:  VMRS            APSR_nzcv, FPSCR
2823A0:  VMOV.F32        S0, S18
2823A4:  IT GT
2823A6:  VMOVGT.F32      S0, S20
2823AA:  VCVT.F32.S32    S2, S2
2823AE:  VSUB.F32        S4, S25, S0
2823B2:  VDIV.F32        S0, S2, S16
2823B6:  VDIV.F32        S2, S25, S2
2823BA:  VDIV.F32        S25, S4, S22
2823BE:  VCMPE.F32       S2, S31
2823C2:  VMRS            APSR_nzcv, FPSCR
2823C6:  BLE             loc_2823E2
2823C8:  LDR             R0, [SP,#0x98+var_8C]
2823CA:  VMOV.F32        S4, #0.5
2823CE:  VLDR            S2, [R0,#8]
2823D2:  VCVT.F32.S32    S2, S2
2823D6:  VDIV.F32        S2, S2, S16
2823DA:  VADD.F32        S2, S25, S2
2823DE:  VMUL.F32        S25, S2, S4
2823E2:  LDR             R5, [SP,#0x98+var_80]
2823E4:  VMUL.F32        S23, S19, S23
2823E8:  VMUL.F32        S19, S27, S0
2823EC:  VLDR            S29, [SP,#0x98+var_64]
2823F0:  VMUL.F32        S21, S30, S21
2823F4:  VLDR            S0, [R5,#4]
2823F8:  VCVT.F32.S32    S27, S0
2823FC:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282400:  VMOV            S30, R0
282404:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282408:  VLDR            S0, [R5,#4]
28240C:  VMOV            S4, R0
282410:  VLDR            S2, [R5,#8]
282414:  VCVT.F32.U32    S31, S30
282418:  VCVT.F32.U32    S28, S4
28241C:  VCVT.F32.S32    S24, S2
282420:  VLDR            S30, [SP,#0x98+var_6C]
282424:  VCVT.F32.S32    S26, S0
282428:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28242C:  VMOV            S0, R0
282430:  VCVT.F32.U32    S16, S0
282434:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282438:  VDIV.F32        S2, S31, S28
28243C:  VMOV            S0, R0
282440:  VLDR            S28, =1.9
282444:  VDIV.F32        S4, S26, S24
282448:  VCVT.F32.U32    S0, S0
28244C:  VLDR            S31, =1.8
282450:  VCMPE.F32       S2, S28
282454:  VMRS            APSR_nzcv, FPSCR
282458:  VMOV.F32        S2, S18
28245C:  VDIV.F32        S0, S16, S0
282460:  IT GT
282462:  VMOVGT.F32      S2, S20
282466:  VCMPE.F32       S0, S28
28246A:  VMRS            APSR_nzcv, FPSCR
28246E:  VSUB.F32        S2, S27, S2
282472:  VMOV.F32        S0, S18
282476:  VCMPE.F32       S4, S31
28247A:  VDIV.F32        S2, S2, S22
28247E:  IT GT
282480:  VMOVGT.F32      S0, S20
282484:  LDR.W           R11, [R5,#8]
282488:  VSUB.F32        S0, S26, S0
28248C:  VMRS            APSR_nzcv, FPSCR
282490:  VDIV.F32        S27, S0, S22
282494:  VMUL.F32        S0, S17, S25
282498:  VMUL.F32        S25, S29, S2
28249C:  BLE             loc_2824BC
28249E:  VMOV            S2, R11
2824A2:  VLDR            S29, =448.0
2824A6:  VMOV.F32        S4, #0.5
2824AA:  VCVT.F32.S32    S2, S2
2824AE:  VDIV.F32        S2, S2, S29
2824B2:  VADD.F32        S2, S27, S2
2824B6:  VMUL.F32        S27, S2, S4
2824BA:  B               loc_2824C0
2824BC:  VLDR            S29, =448.0
2824C0:  LDR             R0, [SP,#0x98+var_84]
2824C2:  VSUB.F32        S17, S19, S0
2824C6:  VSUB.F32        S21, S21, S23
2824CA:  VLDR            S19, [SP,#0x98+var_70]
2824CE:  VLDR            S16, [SP,#0x98+var_68]
2824D2:  VLDR            S0, [R0,#4]
2824D6:  VCVT.F32.S32    S24, S0
2824DA:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2824DE:  VMOV            S0, R0
2824E2:  VCVT.F32.U32    S26, S0
2824E6:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2824EA:  VMOV            S0, R0
2824EE:  VMOV            S2, R11
2824F2:  VCVT.F32.U32    S0, S0
2824F6:  VDIV.F32        S0, S26, S0
2824FA:  VCMPE.F32       S0, S28
2824FE:  VMRS            APSR_nzcv, FPSCR
282502:  VMOV.F32        S0, S18
282506:  IT GT
282508:  VMOVGT.F32      S0, S20
28250C:  VCVT.F32.S32    S2, S2
282510:  VSUB.F32        S0, S24, S0
282514:  VDIV.F32        S4, S2, S29
282518:  VDIV.F32        S6, S24, S2
28251C:  VDIV.F32        S2, S0, S22
282520:  VMUL.F32        S0, S30, S27
282524:  VMUL.F32        S4, S16, S4
282528:  VMOV.F32        S16, S29
28252C:  VCMPE.F32       S6, S31
282530:  VMRS            APSR_nzcv, FPSCR
282534:  VADD.F32        S0, S25, S0
282538:  BLE             loc_282554
28253A:  LDR             R0, [SP,#0x98+var_90]
28253C:  VLDR            S6, [R0,#8]
282540:  VCVT.F32.S32    S6, S6
282544:  VDIV.F32        S6, S6, S16
282548:  VADD.F32        S2, S2, S6
28254C:  VMOV.F32        S6, #0.5
282550:  VMUL.F32        S2, S2, S6
282554:  VMUL.F32        S2, S19, S2
282558:  LDR             R5, [SP,#0x98+var_74]
28255A:  ADDS            R0, R5, R4
28255C:  ADD.W           R1, R0, #0x70 ; 'p'
282560:  VSTR            S21, [R0,#0x70]
282564:  VADD.F32        S2, S4, S2
282568:  VSTR            S2, [R0,#0x74]
28256C:  VSTR            S0, [R0,#0x78]
282570:  VSTR            S17, [R0,#0x7C]
282574:  VLD1.32         {D16-D17}, [R1]
282578:  ADD.W           R1, R5, R9
28257C:  VST1.32         {D16-D17}, [R1]
282580:  LDR.W           R1, [R8],#4
282584:  STR             R1, [R0,#0x68]
282586:  LDR.W           R2, [R6],#4
28258A:  STR             R2, [R0,#0x6C]
28258C:  MOV.W           R2, #0x100
282590:  STRH.W          R2, [R0,#0x8C]
282594:  LDR.W           R2, [R10],#4
282598:  STR.W           R2, [R0,#0x88]
28259C:  ADDS            R0, #0x84; this
28259E:  LDR             R2, [SP,#0x98+var_88]
2825A0:  ADD.W           R1, R2, R1,LSL#7; char *
2825A4:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2825A8:  ADDS            R4, #0x28 ; '('
2825AA:  ADD.W           R9, R9, #0x10
2825AE:  CMP.W           R4, #0x2F8
2825B2:  BNE.W           loc_282296
2825B6:  LDR             R0, [SP,#0x98+var_94]; this
2825B8:  BLX             j__ZN15CTouchInterface15UnloadTextureDBEP22TextureDatabaseRuntime; CTouchInterface::UnloadTextureDB(TextureDatabaseRuntime *)
2825BC:  MOV             R0, R5; this
2825BE:  BLX             j__ZN14CAdjustableHUD6UpdateEv; CAdjustableHUD::Update(void)
2825C2:  MOV             R0, R5
2825C4:  ADD             SP, SP, #0x38 ; '8'
2825C6:  VPOP            {D8-D15}
2825CA:  ADD             SP, SP, #4
2825CC:  POP.W           {R8-R11}
2825D0:  POP             {R4-R7,PC}
