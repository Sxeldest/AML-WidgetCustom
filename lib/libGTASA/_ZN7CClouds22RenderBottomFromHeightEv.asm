; =========================================================
; Game Engine Function: _ZN7CClouds22RenderBottomFromHeightEv
; Address            : 0x5A01A8 - 0x5A08C4
; =========================================================

5A01A8:  PUSH            {R4-R7,LR}
5A01AA:  ADD             R7, SP, #0xC
5A01AC:  PUSH.W          {R8-R11}
5A01B0:  SUB             SP, SP, #4
5A01B2:  VPUSH           {D8-D15}
5A01B6:  SUB             SP, SP, #0x60
5A01B8:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5A01CC)
5A01BC:  VMOV.F32        S0, #1.5
5A01C0:  LDR.W           R3, =(TheCamera_ptr - 0x5A01D2)
5A01C4:  VMOV.F32        S16, #20.0
5A01C8:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5A01CA:  VLDR            S8, =255.0
5A01CE:  ADD             R3, PC; TheCamera_ptr
5A01D0:  VLDR            S10, =-90.0
5A01D4:  LDR             R2, [R0]; CTimeCycle::m_CurrentColours ...
5A01D6:  LDR             R3, [R3]; TheCamera
5A01D8:  LDRH.W          R0, [R2,#(word_9665AE - 0x96654C)]
5A01DC:  LDRH.W          R1, [R2,#(word_9665B0 - 0x96654C)]
5A01E0:  VMOV            S2, R0
5A01E4:  VMOV            S4, R1
5A01E8:  VCVT.F32.U32    S2, S2
5A01EC:  LDRH.W          R2, [R2,#(word_9665B2 - 0x96654C)]
5A01F0:  VCVT.F32.U32    S4, S4
5A01F4:  VMOV            S6, R2
5A01F8:  VCVT.F32.U32    S6, S6
5A01FC:  LDR             R6, [R3,#(dword_951FBC - 0x951FA8)]
5A01FE:  VADD.F32        S2, S2, S2
5A0202:  ADD.W           R5, R6, #0x30 ; '0'
5A0206:  VMUL.F32        S4, S4, S0
5A020A:  CMP             R6, #0
5A020C:  IT EQ
5A020E:  ADDEQ           R5, R3, #4
5A0210:  VMUL.F32        S0, S6, S0
5A0214:  VMIN.F32        D2, D2, D4
5A0218:  VMIN.F32        D0, D0, D4
5A021C:  VCVT.S32.F32    S22, S0
5A0220:  VADD.F32        S0, S2, S16
5A0224:  VCVT.S32.F32    S24, S4
5A0228:  VMIN.F32        D0, D0, D4
5A022C:  VCVT.S32.F32    S26, S0
5A0230:  VLDR            S18, [R5,#8]
5A0234:  VCMPE.F32       S18, S10
5A0238:  VMRS            APSR_nzcv, FPSCR
5A023C:  BLT.W           loc_5A08B6
5A0240:  B               loc_5A0270
5A0242:  ALIGN 4
5A0244:  DCFS 255.0
5A0248:  DCFS -90.0
5A024C:  DCFS -190.0
5A0250:  DCFS 190.0
5A0254:  DCFS 160.0
5A0258:  DCFS 0.3
5A025C:  DCFS -250.0
5A0260:  DCFS 0.0039062
5A0264:  DCFS 60.0
5A0268:  DCFS 0.0
5A026C:  DCFS 100.0
5A0270:  ADD.W           R1, R1, R1,LSL#1
5A0274:  ADD.W           R0, R0, R0,LSL#1
5A0278:  VMOV.F32        S4, #0.25
5A027C:  ADD.W           R2, R2, R2,LSL#1
5A0280:  LSRS            R1, R1, #2
5A0282:  LSRS            R0, R0, #2
5A0284:  STR             R1, [SP,#0xC0+var_98]
5A0286:  LSRS            R2, R2, #2
5A0288:  LDR.W           R1, =(_ZN8CWeather4WindE_ptr - 0x5A029A)
5A028C:  MOV.W           R8, #0
5A0290:  STR             R0, [SP,#0xC0+var_9C]
5A0292:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5A029E)
5A0296:  ADD             R1, PC; _ZN8CWeather4WindE_ptr
5A0298:  STR             R2, [SP,#0xC0+var_94]
5A029A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5A029C:  LDR             R1, [R1]; CWeather::Wind ...
5A029E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5A02A0:  VLDR            S2, [R1]
5A02A4:  MOVS            R1, #0
5A02A6:  VLDR            S0, [R0]
5A02AA:  LDR.W           R0, =(unk_A25AD0 - 0x5A02B6)
5A02AE:  VMUL.F32        S0, S2, S0
5A02B2:  ADD             R0, PC; unk_A25AD0
5A02B4:  VLDR            S2, [R0]
5A02B8:  VMUL.F32        S0, S0, S4
5A02BC:  VADD.F32        S0, S2, S0
5A02C0:  VSTR            S0, [R0]
5A02C4:  MOVS            R0, #8
5A02C6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A02CA:  MOVS            R0, #6
5A02CC:  MOVS            R1, #1
5A02CE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A02D2:  MOVS            R0, #0xC
5A02D4:  MOVS            R1, #1
5A02D6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A02DA:  MOVS            R0, #0xE
5A02DC:  MOVS            R1, #0
5A02DE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A02E2:  MOVS            R0, #0xA
5A02E4:  MOVS            R1, #5
5A02E6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A02EA:  MOVS            R0, #0xB
5A02EC:  MOVS            R1, #6
5A02EE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A02F2:  LDR.W           R0, =(gpCloudTex_ptr - 0x5A02FA)
5A02F6:  ADD             R0, PC; gpCloudTex_ptr
5A02F8:  LDR             R0, [R0]; gpCloudTex
5A02FA:  LDR             R0, [R0,#(dword_A23DEC - 0xA23DE8)]
5A02FC:  LDR             R1, [R0]
5A02FE:  MOVS            R0, #1
5A0300:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A0304:  VLDR            S0, =-190.0
5A0308:  VMOV.F32        S2, #-10.0
5A030C:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5A0320)
5A0310:  MOVW            R1, #0x5556
5A0314:  VADD.F32        S0, S18, S0
5A0318:  VLDR            S20, =190.0
5A031C:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5A031E:  VLDR            S18, =160.0
5A0322:  MOVT            R1, #0x5555
5A0326:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
5A0328:  VADD.F32        S0, S0, S2
5A032C:  VLDR            S2, =0.3
5A0330:  VMUL.F32        S0, S0, S2
5A0334:  VLDR            S2, [R0,#0x98]
5A0338:  VCVT.S32.F32    S2, S2
5A033C:  VCMPE.F32       S0, #0.0
5A0340:  VMRS            APSR_nzcv, FPSCR
5A0344:  VADD.F32        S4, S0, S20
5A0348:  VMOV            R5, S2
5A034C:  VADD.F32        S2, S0, S18
5A0350:  ITT GT
5A0352:  VMOVGT.F32      S18, S2
5A0356:  VMOVGT.F32      S20, S4
5A035A:  LSLS            R0, R5, #1
5A035C:  SMMUL.W         R0, R0, R1
5A0360:  MOVS            R1, #2
5A0362:  ADD.W           R1, R1, R5,LSL#1
5A0366:  CMP             R1, #5
5A0368:  ADD.W           R0, R0, R0,LSR#31
5A036C:  STR             R0, [SP,#0xC0+var_84]
5A036E:  BCC.W           loc_5A0674
5A0372:  VMOV            R0, S22
5A0376:  LDR.W           R3, =(TempBufferVerticesStored_ptr - 0x5A0384)
5A037A:  VMOV            R2, S26
5A037E:  LDR             R4, [SP,#0xC0+var_84]
5A0380:  ADD             R3, PC; TempBufferVerticesStored_ptr
5A0382:  LDR.W           R6, =(TempBufferIndicesStored_ptr - 0x5A0394)
5A0386:  STR             R5, [SP,#0xC0+var_A0]
5A0388:  VMOV            R1, S24
5A038C:  LDR.W           R5, =(unk_A25AD0 - 0x5A039C)
5A0390:  ADD             R6, PC; TempBufferIndicesStored_ptr
5A0392:  VMOV            S4, R4
5A0396:  LDR             R3, [R3]; TempBufferVerticesStored
5A0398:  ADD             R5, PC; unk_A25AD0
5A039A:  LDR             R6, [R6]; TempBufferIndicesStored
5A039C:  VSUB.F32        S0, S20, S18
5A03A0:  LDR.W           R4, =(unk_61F32C - 0x5A03DC)
5A03A4:  VLDR            S2, [R5]
5A03A8:  VCVT.F32.S32    S4, S4
5A03AC:  STR.W           R8, [R3]
5A03B0:  VMOV.F32        S6, #0.5
5A03B4:  LDR             R3, [SP,#0xC0+var_9C]
5A03B6:  VMOV.F32        S8, #1.0
5A03BA:  VMOV.F32        S14, #0.75
5A03BE:  STR.W           R8, [R6]
5A03C2:  VMOV.F32        S1, #-0.75
5A03C6:  LDR             R6, [SP,#0xC0+var_98]
5A03C8:  VMOV.F32        S3, #-4.0
5A03CC:  UXTB            R3, R3
5A03CE:  BFI.W           R3, R6, #8, #8
5A03D2:  LDR             R6, [SP,#0xC0+var_94]
5A03D4:  VMOV.I32        D16, #0x44000000
5A03D8:  ADD             R4, PC; unk_61F32C
5A03DA:  VMVN.I32        D17, #0x1FF
5A03DE:  VLDR            S10, =-250.0
5A03E2:  VLDR            S12, =0.0039062
5A03E6:  LSLS            R6, R6, #0x10
5A03E8:  VLDR            S5, =60.0
5A03EC:  MOV.W           R12, #0
5A03F0:  VLDR            S7, =0.0
5A03F4:  MOV.W           LR, #0
5A03F8:  LSLS            R0, R0, #0x10
5A03FA:  VLDR            S9, =100.0
5A03FE:  UXTB            R2, R2
5A0400:  UXTB16.W        R0, R0
5A0404:  BFI.W           R2, R1, #8, #8
5A0408:  LDR.W           R1, =(TempBufferVerticesStored_ptr - 0x5A0418)
5A040C:  ORRS            R0, R2
5A040E:  STR             R0, [SP,#0xC0+var_8C]
5A0410:  LDR.W           R0, =(TheCamera_ptr - 0x5A0422)
5A0414:  ADD             R1, PC; TempBufferVerticesStored_ptr
5A0416:  LDR.W           R2, =(TempVertexBuffer_ptr - 0x5A042C)
5A041A:  UXTB16.W        R6, R6
5A041E:  ADD             R0, PC; TheCamera_ptr
5A0420:  LDR.W           R11, [R1]; TempBufferVerticesStored
5A0424:  LDR.W           R1, =(TempBufferIndicesStored_ptr - 0x5A0436)
5A0428:  ADD             R2, PC; TempVertexBuffer_ptr
5A042A:  LDR             R5, [R0]; TheCamera
5A042C:  ORRS            R3, R6
5A042E:  LDR.W           R0, =(TempBufferRenderIndexList_ptr - 0x5A043C)
5A0432:  ADD             R1, PC; TempBufferIndicesStored_ptr
5A0434:  LDR.W           R9, [R2]; TempVertexBuffer
5A0438:  ADD             R0, PC; TempBufferRenderIndexList_ptr
5A043A:  LDR.W           R8, [R1]; TempBufferIndicesStored
5A043E:  MOVS            R1, #0
5A0440:  STR             R3, [SP,#0xC0+var_88]
5A0442:  LDR             R0, [R0]; TempBufferRenderIndexList
5A0444:  STR             R0, [SP,#0xC0+var_90]
5A0446:  ADD.W           R6, R4, R12
5A044A:  LDR             R3, [R5,#(dword_951FBC - 0x951FA8)]
5A044C:  VLDR            S11, [R6,#0x18]
5A0450:  CMP             R3, #0
5A0452:  VLD1.32         {D18}, [R6]!
5A0456:  VMUL.F32        S11, S11, S6
5A045A:  VLDR            S13, [R6]
5A045E:  ADD.W           R6, R3, #0x30 ; '0'
5A0462:  IT EQ
5A0464:  ADDEQ           R6, R5, #4
5A0466:  VMUL.F32        D18, D18, D16
5A046A:  VLDR            S24, [R6]
5A046E:  ADD.W           R10, R6, #4
5A0472:  VADD.F32        S11, S11, S8
5A0476:  VMUL.F32        S22, S2, S11
5A047A:  VMUL.F32        S11, S0, S13
5A047E:  VDUP.32         D19, D11[0]
5A0482:  VMOV            D11, D12
5A0486:  VADD.F32        D18, D18, D19
5A048A:  VADD.F32        S11, S18, S11
5A048E:  VLD1.32         {D11[1]}, [R10@32]
5A0492:  VSUB.F32        D18, D18, D11
5A0496:  VCVT.S32.F32    D19, D18
5A049A:  VSTR            S11, [SP,#0xC0+var_64]
5A049E:  VLDR            S13, [R6,#8]
5A04A2:  LDR             R6, [SP,#0xC0+var_84]
5A04A4:  VSUB.F32        S13, S11, S13
5A04A8:  VAND            D19, D19, D17
5A04AC:  VORR.I32        D19, #0x100
5A04B0:  VCVT.F32.S32    D19, D19
5A04B4:  VCMPE.F32       S13, #0.0
5A04B8:  VSUB.F32        D18, D18, D19
5A04BC:  VMRS            APSR_nzcv, FPSCR
5A04C0:  BLE             loc_5A04D6
5A04C2:  VDIV.F32        S13, S13, S10
5A04C6:  VADD.F32        S13, S13, S8
5A04CA:  VMUL.F32        S13, S13, S4
5A04CE:  VCVT.S32.F32    S13, S13
5A04D2:  VMOV            R6, S13
5A04D6:  VADD.F32        D11, D11, D18
5A04DA:  CMP             R6, #0
5A04DC:  BLE.W           loc_5A0618
5A04E0:  VLD1.32         {D12[1]}, [R10@32]
5A04E4:  VSUB.F32        D18, D12, D11
5A04E8:  VCLT.F32        D12, D18, #0.0
5A04EC:  VNEG.F32        D19, D18
5A04F0:  VBSL            D12, D19, D18
5A04F4:  VMOV.F32        S26, S25
5A04F8:  VMAX.F32        D12, D12, D13
5A04FC:  VMUL.F32        S13, S24, S12
5A0500:  VCMPE.F32       S13, S14
5A0504:  VMRS            APSR_nzcv, FPSCR
5A0508:  BLE             loc_5A052E
5A050A:  VADD.F32        S13, S13, S1
5A050E:  VMOV            S15, R6
5A0512:  VCVT.F32.S32    S15, S15
5A0516:  VMUL.F32        S13, S13, S3
5A051A:  VADD.F32        S13, S13, S8
5A051E:  VMUL.F32        S13, S13, S15
5A0522:  VCVT.S32.F32    S13, S13
5A0526:  VMOV            R6, S13
5A052A:  CMP             R6, #1
5A052C:  BLT             loc_5A0618
5A052E:  LDR.W           R0, =(unk_61F32C - 0x5A053E)
5A0532:  VADD.F32        S24, S23, S7
5A0536:  MOV             R2, R4
5A0538:  ADDS            R4, R1, #2
5A053A:  ADD             R0, PC; unk_61F32C
5A053C:  ADD.W           R3, R0, R12
5A0540:  LDR             R0, [SP,#0xC0+var_8C]
5A0542:  VLDR            S13, [R3,#0xC]
5A0546:  VLDR            S15, [R3,#0x10]
5A054A:  ORR.W           R3, R0, R6,LSL#24
5A054E:  VMUL.F32        S13, S13, S9
5A0552:  LDR             R0, [SP,#0xC0+var_90]
5A0554:  VMUL.F32        S15, S15, S9
5A0558:  STRH.W          R4, [R0,LR,LSL#1]
5A055C:  ADD.W           R0, R0, LR,LSL#1
5A0560:  STRH            R4, [R0,#6]
5A0562:  ADDS            R4, R1, #3
5A0564:  STRH            R4, [R0,#8]
5A0566:  ADDS            R4, R1, #1
5A0568:  VADD.F32        S13, S13, S5
5A056C:  STRH            R4, [R0,#2]
5A056E:  VADD.F32        S15, S15, S5
5A0572:  STRH            R1, [R0,#4]
5A0574:  STRH            R4, [R0,#0xA]
5A0576:  ADD.W           R0, R1, R1,LSL#3
5A057A:  MOVS            R4, #0
5A057C:  ADD.W           R1, R9, R0,LSL#2
5A0580:  LDR             R0, [SP,#0xC0+var_88]
5A0582:  STR             R3, [R1,#0x18]
5A0584:  MOV.W           R3, #0x3F800000
5A0588:  VADD.F32        S26, S13, S22
5A058C:  VSTR            S11, [R1,#8]
5A0590:  VSUB.F32        S13, S22, S13
5A0594:  ORR.W           R0, R0, R6,LSL#24
5A0598:  VADD.F32        S28, S15, S23
5A059C:  STR             R0, [R1,#0x3C]
5A059E:  VADD.F32        S30, S15, S24
5A05A2:  VSTR            S11, [R1,#0x2C]
5A05A6:  VSUB.F32        S17, S23, S15
5A05AA:  STR             R0, [R1,#0x60]
5A05AC:  VSUB.F32        S15, S24, S15
5A05B0:  STR.W           R0, [R1,#0x84]
5A05B4:  VADD.F32        S19, S26, S7
5A05B8:  VADD.F32        S24, S13, S7
5A05BC:  VSTR            S28, [R1,#4]
5A05C0:  VSTR            S30, [R1,#0x28]
5A05C4:  VSTR            S13, [R1,#0x48]
5A05C8:  VSTR            S17, [R1,#0x4C]
5A05CC:  VSTR            S11, [R1,#0x50]
5A05D0:  VSTR            S26, [R1,#0x6C]
5A05D4:  VSTR            S15, [R1,#0x70]
5A05D8:  VSTR            S11, [R1,#0x74]
5A05DC:  VSTR            S24, [R1]
5A05E0:  VSTR            S19, [R1,#0x24]
5A05E4:  STRD.W          R4, R4, [R1,#0x1C]
5A05E8:  STRD.W          R4, R3, [R1,#0x40]
5A05EC:  LDR.W           R0, [R11]
5A05F0:  STR             R4, [R1,#0x68]
5A05F2:  MOV             R4, R2
5A05F4:  STR             R3, [R1,#0x64]
5A05F6:  STR.W           R3, [R1,#0x88]
5A05FA:  ADD.W           R1, R0, R0,LSL#3
5A05FE:  ADD.W           R1, R9, R1,LSL#2
5A0602:  STR.W           R3, [R1,#0x8C]
5A0606:  ADDS            R1, R0, #4
5A0608:  LDR.W           R3, [R8]
5A060C:  STR.W           R1, [R11]
5A0610:  ADD.W           LR, R3, #6
5A0614:  STR.W           LR, [R8]
5A0618:  ADD.W           R12, R12, #4
5A061C:  CMP.W           R12, #0x40 ; '@'
5A0620:  BNE.W           loc_5A0446
5A0624:  ADD             R0, SP, #0xC0+var_6C
5A0626:  CMP.W           LR, #0
5A062A:  VST1.32         {D11[0]}, [R0@32]
5A062E:  ADD.W           R0, R0, #4
5A0632:  VST1.32         {D11[1]}, [R0@32]
5A0636:  BEQ             loc_5A0660
5A0638:  LDR             R0, =(TempVertexBuffer_ptr - 0x5A0642)
5A063A:  MOVS            R2, #0
5A063C:  MOVS            R3, #0x19
5A063E:  ADD             R0, PC; TempVertexBuffer_ptr
5A0640:  LDR             R0, [R0]; TempVertexBuffer
5A0642:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5A0646:  CBZ             R0, loc_5A0660
5A0648:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5A0650)
5A064A:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5A0652)
5A064C:  ADD             R0, PC; TempBufferIndicesStored_ptr
5A064E:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5A0650:  LDR             R0, [R0]; TempBufferIndicesStored
5A0652:  LDR             R1, [R1]; TempBufferRenderIndexList
5A0654:  LDR             R2, [R0]
5A0656:  MOVS            R0, #3
5A0658:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5A065C:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5A0660:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5A066A)
5A0662:  MOVS            R2, #0
5A0664:  LDR             R1, =(TempBufferIndicesStored_ptr - 0x5A066E)
5A0666:  ADD             R0, PC; TempBufferVerticesStored_ptr
5A0668:  LDR             R5, [SP,#0xC0+var_A0]
5A066A:  ADD             R1, PC; TempBufferIndicesStored_ptr
5A066C:  LDR             R0, [R0]; TempBufferVerticesStored ; this
5A066E:  LDR             R1, [R1]; TempBufferIndicesStored
5A0670:  STR             R2, [R0]
5A0672:  STR             R2, [R1]
5A0674:  BLX.W           j__ZN7CSprite16InitSpriteBufferEv; CSprite::InitSpriteBuffer(void)
5A0678:  CMP             R5, #2
5A067A:  BLT.W           loc_5A0892
5A067E:  LDR             R0, [SP,#0xC0+var_84]
5A0680:  VSUB.F32        S20, S20, S18
5A0684:  VMOV.F32        S24, #0.5
5A0688:  LDR.W           R11, =(unk_A25AD0 - 0x5A06BA)
5A068C:  VMOV.F32        S28, #1.0
5A0690:  LDR             R3, =(unk_61F4E4 - 0x5A06BC)
5A0692:  VMOV            S0, R0
5A0696:  LDR             R0, =(TheCamera_ptr - 0x5A06A6)
5A0698:  VMOV.F32        S30, #12.0
5A069C:  LDR             R5, =(unk_61F46C - 0x5A06BE)
5A069E:  VCVT.F32.S32    S22, S0
5A06A2:  ADD             R0, PC; TheCamera_ptr
5A06A4:  VMOV.F32        S17, #0.75
5A06A8:  LDR             R6, =(unk_61F32C - 0x5A06C0)
5A06AA:  VMOV.F32        S21, #-0.75
5A06AE:  LDR.W           R8, [R0]; TheCamera
5A06B2:  VMOV.F32        S23, #-4.0
5A06B6:  ADD             R11, PC; unk_A25AD0
5A06B8:  ADD             R3, PC; unk_61F4E4
5A06BA:  ADD             R5, PC; unk_61F46C
5A06BC:  ADD             R6, PC; unk_61F32C
5A06BE:  VLDR            S26, =-250.0
5A06C2:  VLDR            S19, =0.0078125
5A06C6:  MOV.W           R9, #0x80
5A06CA:  VLDR            S25, =0.05
5A06CE:  MOVS            R4, #0
5A06D0:  VLDR            S27, =0.1
5A06D4:  VLDR            S31, =-0.05
5A06D8:  VLDR            S0, [R11]
5A06DC:  ADDS            R0, R3, R4
5A06DE:  LDR.W           R1, [R8,#(dword_951FBC - 0x951FA8)]
5A06E2:  VMUL.F32        S0, S0, S24
5A06E6:  VLDR            S2, [R0]
5A06EA:  ADDS            R0, R5, R4
5A06EC:  CMP             R1, #0
5A06EE:  VLDR            S4, [R0]
5A06F2:  ADD.W           R0, R1, #0x30 ; '0'
5A06F6:  IT EQ
5A06F8:  ADDEQ.W         R0, R8, #4
5A06FC:  VLDR            S8, [R0,#4]
5A0700:  VADD.F32        S2, S0, S2
5A0704:  VADD.F32        S4, S4, S0
5A0708:  VLDR            S0, [R0]
5A070C:  VSUB.F32        S2, S2, S8
5A0710:  VSUB.F32        S4, S4, S0
5A0714:  VCVT.S32.F32    S6, S2
5A0718:  VCVT.S32.F32    S10, S4
5A071C:  VMOV            R1, S6
5A0720:  VMOV            R2, S10
5A0724:  BFI.W           R1, R9, #0, #8
5A0728:  BFI.W           R2, R9, #0, #8
5A072C:  VMOV            S10, R1
5A0730:  ADDS            R1, R6, R4
5A0732:  VMOV            S6, R2
5A0736:  VLDR            S12, [R1]
5A073A:  VCVT.F32.S32    S6, S6
5A073E:  VCVT.F32.S32    S10, S10
5A0742:  VMUL.F32        S12, S20, S12
5A0746:  VSUB.F32        S4, S4, S6
5A074A:  VSUB.F32        S2, S2, S10
5A074E:  VADD.F32        S10, S18, S12
5A0752:  VADD.F32        S6, S0, S4
5A0756:  VADD.F32        S4, S8, S2
5A075A:  VSTR            S10, [SP,#0xC0+var_64]
5A075E:  VSTR            S6, [SP,#0xC0+var_6C]
5A0762:  VSTR            S4, [SP,#0xC0+var_68]
5A0766:  VLDR            S2, [R0,#8]
5A076A:  VSUB.F32        S2, S2, S10
5A076E:  VABS.F32        S2, S2
5A0772:  VDIV.F32        S2, S2, S26
5A0776:  VADD.F32        S2, S2, S28
5A077A:  VMUL.F32        S2, S2, S22
5A077E:  VCVT.S32.F32    S2, S2
5A0782:  VMOV            R10, S2
5A0786:  CMP.W           R10, #1
5A078A:  BLT             loc_5A088A
5A078C:  VSUB.F32        S0, S0, S6
5A0790:  VLDR            S6, [R0,#4]
5A0794:  VSUB.F32        S4, S6, S4
5A0798:  VABS.F32        S0, S0
5A079C:  VABS.F32        S4, S4
5A07A0:  VMAX.F32        D0, D0, D2
5A07A4:  VMUL.F32        S0, S0, S19
5A07A8:  VMIN.F32        D0, D0, D14
5A07AC:  VCMPE.F32       S0, S17
5A07B0:  VMRS            APSR_nzcv, FPSCR
5A07B4:  BLE             loc_5A07D2
5A07B6:  VADD.F32        S4, S0, S21
5A07BA:  VCVT.F32.S32    S2, S2
5A07BE:  VMUL.F32        S4, S4, S23
5A07C2:  VADD.F32        S4, S4, S28
5A07C6:  VMUL.F32        S2, S4, S2
5A07CA:  VCVT.S32.F32    S2, S2
5A07CE:  VMOV            R10, S2
5A07D2:  VCMPE.F32       S0, S25
5A07D6:  VMRS            APSR_nzcv, FPSCR
5A07DA:  BLE             loc_5A088A
5A07DC:  VCMPE.F32       S0, S27
5A07E0:  VMRS            APSR_nzcv, FPSCR
5A07E4:  BGE             loc_5A0802
5A07E6:  VADD.F32        S0, S0, S31
5A07EA:  VMOV            S2, R10
5A07EE:  VCVT.F32.S32    S2, S2
5A07F2:  VMUL.F32        S0, S0, S16
5A07F6:  VMUL.F32        S0, S0, S2
5A07FA:  VCVT.S32.F32    S0, S0
5A07FE:  VMOV            R10, S0
5A0802:  MOVS            R0, #0
5A0804:  ADD             R1, SP, #0xC0+var_78
5A0806:  STR             R0, [SP,#0xC0+var_C0]; float
5A0808:  MOVS            R0, #1
5A080A:  STR             R0, [SP,#0xC0+var_BC]; float
5A080C:  ADD             R0, SP, #0xC0+var_6C
5A080E:  ADD             R2, SP, #0xC0+var_7C
5A0810:  ADD             R3, SP, #0xC0+var_80
5A0812:  BLX.W           j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
5A0816:  CMP             R0, #1
5A0818:  BNE             loc_5A087E
5A081A:  LDR             R0, =(unk_61F32C - 0x5A082C)
5A081C:  UXTB.W          R5, R10
5A0820:  VLDR            S2, [SP,#0xC0+var_7C]
5A0824:  ADD.W           LR, SP, #0xC0+var_BC
5A0828:  ADD             R0, PC; unk_61F32C
5A082A:  VLDR            S4, [SP,#0xC0+var_70]
5A082E:  ADD             R0, R4
5A0830:  VDIV.F32        S6, S28, S4
5A0834:  VLDR            S0, [R0,#4]
5A0838:  VMOV            R2, S4; float
5A083C:  LDRD.W          R0, R1, [SP,#0xC0+var_78]; float
5A0840:  VADD.F32        S0, S0, S28
5A0844:  LDR             R6, [SP,#0xC0+var_94]
5A0846:  STR             R5, [SP,#0xC0+var_A8]; float
5A0848:  LDR             R5, [SP,#0xC0+var_9C]
5A084A:  UXTB.W          R12, R6
5A084E:  LDR             R6, [SP,#0xC0+var_98]
5A0850:  UXTB            R5, R5
5A0852:  UXTB            R6, R6
5A0854:  VMUL.F32        S0, S0, S30
5A0858:  VMUL.F32        S2, S0, S2
5A085C:  VMOV            R3, S2; float
5A0860:  VLDR            S2, [SP,#0xC0+var_80]
5A0864:  STM.W           LR, {R5,R6,R12}
5A0868:  MOV.W           R6, #0x100
5A086C:  VMUL.F32        S0, S0, S2
5A0870:  STR             R6, [SP,#0xC0+var_B0]; unsigned __int8
5A0872:  VSTR            S0, [SP,#0xC0+var_C0]
5A0876:  VSTR            S6, [SP,#0xC0+var_AC]
5A087A:  BLX.W           j__ZN7CSprite26RenderBufferedOneXLUSpriteEfffffhhhsfh; CSprite::RenderBufferedOneXLUSprite(float,float,float,float,float,uchar,uchar,uchar,short,float,uchar)
5A087E:  LDR             R3, =(unk_61F4E4 - 0x5A0888)
5A0880:  LDR             R5, =(unk_61F46C - 0x5A088A)
5A0882:  LDR             R6, =(unk_61F32C - 0x5A088C)
5A0884:  ADD             R3, PC; unk_61F4E4
5A0886:  ADD             R5, PC; unk_61F46C
5A0888:  ADD             R6, PC; unk_61F32C
5A088A:  ADDS            R4, #4
5A088C:  CMP             R4, #0x78 ; 'x'
5A088E:  BNE.W           loc_5A06D8
5A0892:  BLX.W           j__ZN7CSprite17FlushSpriteBufferEv; CSprite::FlushSpriteBuffer(void)
5A0896:  MOVS            R0, #1
5A0898:  MOVS            R1, #0
5A089A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A089E:  MOVS            R0, #0xC
5A08A0:  MOVS            R1, #0
5A08A2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A08A6:  MOVS            R0, #8
5A08A8:  MOVS            R1, #1
5A08AA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A08AE:  MOVS            R0, #6
5A08B0:  MOVS            R1, #1
5A08B2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A08B6:  ADD             SP, SP, #0x60 ; '`'
5A08B8:  VPOP            {D8-D15}
5A08BC:  ADD             SP, SP, #4
5A08BE:  POP.W           {R8-R11}
5A08C2:  POP             {R4-R7,PC}
