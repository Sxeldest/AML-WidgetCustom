; =========================================================
; Game Engine Function: _ZNK10CPlayerPed30DrawTriangleForMouseRecruitPedEv
; Address            : 0x4C92B0 - 0x4C9670
; =========================================================

4C92B0:  PUSH            {R4-R7,LR}
4C92B2:  ADD             R7, SP, #0xC
4C92B4:  PUSH.W          {R8-R11}
4C92B8:  SUB             SP, SP, #4
4C92BA:  VPUSH           {D8-D15}
4C92BE:  SUB             SP, SP, #0x10
4C92C0:  MOV             R4, R0
4C92C2:  LDR.W           R0, [R4,#0x7A4]
4C92C6:  CMP             R0, #0
4C92C8:  BEQ.W           loc_4C9662
4C92CC:  MOVS            R0, #8
4C92CE:  MOVS            R1, #0
4C92D0:  MOV.W           R11, #0
4C92D4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C92D8:  MOVS            R0, #6
4C92DA:  MOVS            R1, #1
4C92DC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C92E0:  MOVS            R0, #0xA
4C92E2:  MOVS            R1, #5
4C92E4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C92E8:  MOVS            R0, #0xB
4C92EA:  MOVS            R1, #6
4C92EC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C92F0:  MOVS            R0, #0xC
4C92F2:  MOVS            R1, #1
4C92F4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C92F8:  MOVS            R0, #1
4C92FA:  MOVS            R1, #0
4C92FC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C9300:  MOVS            R0, #0x1D
4C9302:  MOVS            R1, #8
4C9304:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C9308:  LDR.W           R6, [R4,#0x7A4]
4C930C:  VMOV.F32        S16, #1.0
4C9310:  MOV.W           R9, #0
4C9314:  MOV.W           R10, #0
4C9318:  ADD.W           R0, R6, #0x548
4C931C:  VLDR            S0, [R0]
4C9320:  ADDW            R0, R6, #0x544
4C9324:  VLDR            S2, [R0]
4C9328:  VDIV.F32        S0, S2, S0
4C932C:  VMIN.F32        D0, D0, D8
4C9330:  VCMPE.F32       S0, #0.0
4C9334:  VMRS            APSR_nzcv, FPSCR
4C9338:  BLE             loc_4C937A
4C933A:  VSUB.F32        S2, S16, S0
4C933E:  VLDR            S4, =0.0
4C9342:  VLDR            S6, =255.0
4C9346:  VMUL.F32        S8, S0, S4
4C934A:  VMUL.F32        S0, S0, S6
4C934E:  VMUL.F32        S4, S2, S4
4C9352:  VMUL.F32        S2, S2, S6
4C9356:  VADD.F32        S6, S8, S4
4C935A:  VADD.F32        S0, S0, S4
4C935E:  VADD.F32        S2, S8, S2
4C9362:  VCVT.U32.F32    S4, S6
4C9366:  VCVT.U32.F32    S0, S0
4C936A:  VCVT.U32.F32    S2, S2
4C936E:  VMOV            R11, S4
4C9372:  VMOV            R9, S0
4C9376:  VMOV            R10, S2
4C937A:  LDR             R0, [R4,#0x14]
4C937C:  ADD.W           R8, R6, #4
4C9380:  LDR             R1, [R6,#0x14]
4C9382:  ADD.W           R2, R0, #0x30 ; '0'
4C9386:  CMP             R0, #0
4C9388:  IT EQ
4C938A:  ADDEQ           R2, R4, #4
4C938C:  CMP             R1, #0
4C938E:  MOV             R0, R8
4C9390:  VLDR            S0, [R2]
4C9394:  IT NE
4C9396:  ADDNE.W         R0, R1, #0x30 ; '0'
4C939A:  VLDR            D16, [R2,#4]
4C939E:  VLDR            S2, [R0]
4C93A2:  VLDR            D17, [R0,#4]
4C93A6:  VSUB.F32        S0, S2, S0
4C93AA:  VLDR            S24, =0.0
4C93AE:  VSUB.F32        D16, D17, D16
4C93B2:  VLDR            S4, =0.02
4C93B6:  LDR             R0, =(TheCamera_ptr - 0x4C93BC)
4C93B8:  ADD             R0, PC; TheCamera_ptr
4C93BA:  VMUL.F32        D1, D16, D16
4C93BE:  LDR             R0, [R0]; TheCamera
4C93C0:  VMUL.F32        S0, S0, S0
4C93C4:  LDR             R5, [R0,#(dword_951FBC - 0x951FA8)]
4C93C6:  CMP             R5, #0
4C93C8:  VADD.F32        S0, S0, S2
4C93CC:  VADD.F32        S0, S0, S3
4C93D0:  VMOV.F32        S2, #-10.0
4C93D4:  VSQRT.F32       S0, S0
4C93D8:  VADD.F32        S0, S0, S2
4C93DC:  VLDR            S2, =0.825
4C93E0:  VMAX.F32        D0, D0, D12
4C93E4:  VMUL.F32        S0, S0, S4
4C93E8:  VMIN.F32        D0, D0, D8
4C93EC:  VMUL.F32        S0, S0, S2
4C93F0:  VLDR            S2, =0.175
4C93F4:  VADD.F32        S19, S0, S2
4C93F8:  BEQ             loc_4C9408
4C93FA:  VLDR            S0, [R5]
4C93FE:  VLDR            S2, [R5,#4]
4C9402:  VLDR            S4, [R5,#8]
4C9406:  B               loc_4C943A
4C9408:  LDR             R0, =(TheCamera_ptr - 0x4C940E)
4C940A:  ADD             R0, PC; TheCamera_ptr
4C940C:  LDR             R0, [R0]; TheCamera
4C940E:  LDR             R4, [R0,#(dword_951FB8 - 0x951FA8)]
4C9410:  MOV             R0, R4; x
4C9412:  BLX             cosf
4C9416:  STR.W           R10, [SP,#0x70+var_70]
4C941A:  MOV             R10, R9
4C941C:  MOV             R9, R11
4C941E:  MOV             R11, R0
4C9420:  MOV             R0, R4; x
4C9422:  BLX             sinf
4C9426:  VMOV.F32        S4, S24
4C942A:  VMOV            S0, R11
4C942E:  MOV             R11, R9
4C9430:  MOV             R9, R10
4C9432:  LDR.W           R10, [SP,#0x70+var_70]
4C9436:  VMOV            S2, R0
4C943A:  LDR             R0, [R6,#0x14]
4C943C:  VMUL.F32        S6, S19, S0
4C9440:  VMUL.F32        S4, S19, S4
4C9444:  CMP             R0, #0
4C9446:  VMUL.F32        S2, S19, S2
4C944A:  IT NE
4C944C:  ADDNE.W         R8, R0, #0x30 ; '0'
4C9450:  VMUL.F32        S0, S19, S24
4C9454:  VLDR            S8, [R8]
4C9458:  VLDR            S10, [R8,#4]
4C945C:  VLDR            S12, [R8,#8]
4C9460:  VADD.F32        S26, S8, S24
4C9464:  VADD.F32        S22, S10, S24
4C9468:  LDR.W           R0, [R6,#0x59C]
4C946C:  VADD.F32        S20, S12, S16
4C9470:  CMP             R0, #7
4C9472:  BNE             loc_4C94A6
4C9474:  VADD.F32        S8, S4, S20
4C9478:  VADD.F32        S10, S2, S22
4C947C:  VADD.F32        S12, S6, S26
4C9480:  VSUB.F32        S4, S20, S4
4C9484:  VSUB.F32        S2, S22, S2
4C9488:  VSUB.F32        S6, S26, S6
4C948C:  VADD.F32        S16, S19, S8
4C9490:  VADD.F32        S18, S0, S10
4C9494:  VADD.F32        S24, S0, S12
4C9498:  VADD.F32        S30, S19, S4
4C949C:  VADD.F32        S17, S0, S2
4C94A0:  VADD.F32        S28, S0, S6
4C94A4:  B               loc_4C94CA
4C94A6:  VSUB.F32        S16, S20, S4
4C94AA:  VADD.F32        S30, S4, S20
4C94AE:  VSUB.F32        S18, S22, S2
4C94B2:  VADD.F32        S17, S2, S22
4C94B6:  VSUB.F32        S24, S26, S6
4C94BA:  VADD.F32        S28, S6, S26
4C94BE:  VADD.F32        S20, S19, S20
4C94C2:  VADD.F32        S22, S0, S22
4C94C6:  VADD.F32        S26, S0, S26
4C94CA:  LDR             R0, =(TheCamera_ptr - 0x4C94D2)
4C94CC:  CMP             R5, #0
4C94CE:  ADD             R0, PC; TheCamera_ptr
4C94D0:  LDR             R4, [R0]; TheCamera
4C94D2:  ADD.W           R6, R4, #4
4C94D6:  MOV             R0, R6
4C94D8:  IT NE
4C94DA:  ADDNE.W         R0, R5, #0x30 ; '0'
4C94DE:  ADD             R5, SP, #0x70+var_6C
4C94E0:  VLDR            S0, [R0]
4C94E4:  VLDR            S2, [R0,#4]
4C94E8:  VLDR            S4, [R0,#8]
4C94EC:  VSUB.F32        S0, S0, S26
4C94F0:  VSUB.F32        S2, S2, S22
4C94F4:  MOV             R0, R5; this
4C94F6:  VSUB.F32        S4, S4, S20
4C94FA:  VSTR            S2, [SP,#0x70+var_68]
4C94FE:  VSTR            S0, [SP,#0x70+var_6C]
4C9502:  VSTR            S4, [SP,#0x70+var_64]
4C9506:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4C950A:  LDR             R0, [R4,#(dword_951FBC - 0x951FA8)]
4C950C:  MOV             R1, R6
4C950E:  CMP             R0, #0
4C9510:  IT NE
4C9512:  ADDNE.W         R1, R0, #0x30 ; '0'
4C9516:  MOV             R0, R5; this
4C9518:  VLDR            S0, [R1]
4C951C:  VLDR            S2, [R1,#4]
4C9520:  VLDR            S4, [R1,#8]
4C9524:  VSUB.F32        S0, S0, S28
4C9528:  VSUB.F32        S2, S2, S17
4C952C:  VLDR            S19, [SP,#0x70+var_6C]
4C9530:  VSUB.F32        S4, S4, S30
4C9534:  VLDR            S21, [SP,#0x70+var_68]
4C9538:  VLDR            S23, [SP,#0x70+var_64]
4C953C:  VSTR            S0, [SP,#0x70+var_6C]
4C9540:  VSTR            S2, [SP,#0x70+var_68]
4C9544:  VSTR            S4, [SP,#0x70+var_64]
4C9548:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4C954C:  LDR             R0, [R4,#(dword_951FBC - 0x951FA8)]
4C954E:  CMP             R0, #0
4C9550:  IT NE
4C9552:  ADDNE.W         R6, R0, #0x30 ; '0'
4C9556:  MOV             R0, R5; this
4C9558:  VLDR            S0, [R6]
4C955C:  VLDR            S2, [R6,#4]
4C9560:  VLDR            S4, [R6,#8]
4C9564:  VSUB.F32        S0, S0, S24
4C9568:  VSUB.F32        S2, S2, S18
4C956C:  VLDR            S25, [SP,#0x70+var_6C]
4C9570:  VSUB.F32        S4, S4, S16
4C9574:  VLDR            S27, [SP,#0x70+var_68]
4C9578:  VLDR            S29, [SP,#0x70+var_64]
4C957C:  VSTR            S0, [SP,#0x70+var_6C]
4C9580:  VSTR            S2, [SP,#0x70+var_68]
4C9584:  VSTR            S4, [SP,#0x70+var_64]
4C9588:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4C958C:  LDR             R0, =(TempVertexBuffer_ptr - 0x4C95A0)
4C958E:  VADD.F32        S0, S26, S19
4C9592:  VADD.F32        S2, S22, S21
4C9596:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x4C95BC)
4C9598:  VADD.F32        S4, S20, S23
4C959C:  ADD             R0, PC; TempVertexBuffer_ptr
4C959E:  VADD.F32        S6, S17, S27
4C95A2:  VLDR            S10, [SP,#0x70+var_6C]
4C95A6:  LDR             R0, [R0]; TempVertexBuffer
4C95A8:  VADD.F32        S8, S30, S29
4C95AC:  VADD.F32        S1, S28, S25
4C95B0:  VLDR            S12, [SP,#0x70+var_68]
4C95B4:  VLDR            S14, [SP,#0x70+var_64]
4C95B8:  ADD             R1, PC; TempBufferRenderIndexList_ptr
4C95BA:  VSTR            S0, [R0]
4C95BE:  VADD.F32        S0, S24, S10
4C95C2:  VSTR            S2, [R0,#4]
4C95C6:  VADD.F32        S2, S16, S14
4C95CA:  VSTR            S4, [R0,#8]
4C95CE:  VADD.F32        S4, S18, S12
4C95D2:  MOV.W           R2, R11,LSL#16
4C95D6:  LDR             R1, [R1]; TempBufferRenderIndexList
4C95D8:  ORR.W           R2, R2, R9,LSL#8
4C95DC:  ORR.W           R2, R2, R10
4C95E0:  ORR.W           R3, R2, #0xFF000000
4C95E4:  STR             R3, [R0,#(dword_A5A1F0 - 0xA5A1D8)]
4C95E6:  STR             R2, [R0,#(dword_A5A214 - 0xA5A1D8)]
4C95E8:  MOVS            R3, #0x18
4C95EA:  VSTR            S1, [R0,#0x24]
4C95EE:  VSTR            S6, [R0,#0x28]
4C95F2:  VSTR            S8, [R0,#0x2C]
4C95F6:  STR             R2, [R0,#(dword_A5A238 - 0xA5A1D8)]
4C95F8:  MOVS            R2, #2
4C95FA:  STRH            R2, [R1,#(dword_A7A1DC - 0xA7A1D8)]
4C95FC:  MOV.W           R2, #0x10000
4C9600:  STR             R2, [R1]
4C9602:  MOVS            R1, #3
4C9604:  MOVS            R2, #0
4C9606:  VSTR            S0, [R0,#0x48]
4C960A:  VSTR            S4, [R0,#0x4C]
4C960E:  VSTR            S2, [R0,#0x50]
4C9612:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
4C9616:  CBZ             R0, loc_4C962A
4C9618:  LDR             R0, =(TempBufferRenderIndexList_ptr - 0x4C9620)
4C961A:  MOVS            R2, #3
4C961C:  ADD             R0, PC; TempBufferRenderIndexList_ptr
4C961E:  LDR             R1, [R0]; TempBufferRenderIndexList
4C9620:  MOVS            R0, #3
4C9622:  BLX             j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
4C9626:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
4C962A:  MOVS            R0, #1
4C962C:  MOVS            R1, #0
4C962E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C9632:  MOVS            R0, #8
4C9634:  MOVS            R1, #1
4C9636:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C963A:  MOVS            R0, #6
4C963C:  MOVS            R1, #1
4C963E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C9642:  MOVS            R0, #0xA
4C9644:  MOVS            R1, #5
4C9646:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C964A:  MOVS            R0, #0xB
4C964C:  MOVS            R1, #6
4C964E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C9652:  MOVS            R0, #0xC
4C9654:  MOVS            R1, #0
4C9656:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C965A:  MOVS            R0, #0x1D
4C965C:  MOVS            R1, #5
4C965E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4C9662:  ADD             SP, SP, #0x10
4C9664:  VPOP            {D8-D15}
4C9668:  ADD             SP, SP, #4
4C966A:  POP.W           {R8-R11}
4C966E:  POP             {R4-R7,PC}
