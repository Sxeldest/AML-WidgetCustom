; =========================================================
; Game Engine Function: _ZN13CBrightLights6RenderEv
; Address            : 0x5C2474 - 0x5C2B8E
; =========================================================

5C2474:  LDR.W           R0, =(_ZN13CBrightLights15NumBrightLightsE_ptr - 0x5C247C)
5C2478:  ADD             R0, PC; _ZN13CBrightLights15NumBrightLightsE_ptr
5C247A:  LDR             R0, [R0]; CBrightLights::NumBrightLights ...
5C247C:  LDR             R0, [R0]; CBrightLights::NumBrightLights
5C247E:  CMP             R0, #0
5C2480:  IT EQ
5C2482:  BXEQ            LR
5C2484:  PUSH            {R4-R7,LR}
5C2486:  ADD             R7, SP, #0x14+var_8
5C2488:  PUSH.W          {R8-R11}
5C248C:  SUB             SP, SP, #4
5C248E:  VPUSH           {D8-D15}
5C2492:  SUB             SP, SP, #0x80
5C2494:  MOVS            R0, #0xC
5C2496:  MOVS            R1, #1
5C2498:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C249C:  MOVS            R0, #8
5C249E:  MOVS            R1, #1
5C24A0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C24A4:  MOVS            R0, #0xA
5C24A6:  MOVS            R1, #5
5C24A8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C24AC:  MOVS            R0, #0xB
5C24AE:  MOVS            R1, #6
5C24B0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C24B4:  MOVS            R0, #1
5C24B6:  MOVS            R1, #0
5C24B8:  MOVS            R4, #0
5C24BA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C24BE:  MOVS            R0, #0x14
5C24C0:  MOVS            R1, #1
5C24C2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C24C6:  LDR.W           R0, =(_ZN13CBrightLights15NumBrightLightsE_ptr - 0x5C24D2)
5C24CA:  LDR.W           R1, =(TempBufferIndicesStored_ptr - 0x5C24D8)
5C24CE:  ADD             R0, PC; _ZN13CBrightLights15NumBrightLightsE_ptr
5C24D0:  LDR.W           R2, =(TempBufferVerticesStored_ptr - 0x5C24DC)
5C24D4:  ADD             R1, PC; TempBufferIndicesStored_ptr
5C24D6:  LDR             R0, [R0]; CBrightLights::NumBrightLights ...
5C24D8:  ADD             R2, PC; TempBufferVerticesStored_ptr
5C24DA:  LDR             R1, [R1]; TempBufferIndicesStored
5C24DC:  LDR             R2, [R2]; TempBufferVerticesStored
5C24DE:  LDR             R0, [R0]; CBrightLights::NumBrightLights
5C24E0:  STR             R4, [R1]
5C24E2:  CMP             R0, #1
5C24E4:  STR             R4, [R2]
5C24E6:  BLT.W           loc_5C2B6A
5C24EA:  LDR.W           R0, =(_ZN13CBrightLights13aBrightLightsE_ptr - 0x5C24FC)
5C24EE:  VMOV.F32        S30, #1.0
5C24F2:  LDR.W           R1, =(_ZN13CBrightLights13aBrightLightsE_ptr - 0x5C2506)
5C24F6:  MOVS            R5, #0
5C24F8:  ADD             R0, PC; _ZN13CBrightLights13aBrightLightsE_ptr
5C24FA:  LDR.W           R3, =(TrafficLightsUp_ptr - 0x5C250C)
5C24FE:  LDR.W           R2, =(TempVertexBuffer_ptr - 0x5C2512)
5C2502:  ADD             R1, PC; _ZN13CBrightLights13aBrightLightsE_ptr
5C2504:  LDR.W           R8, [R0]; CBrightLights::aBrightLights ...
5C2508:  ADD             R3, PC; TrafficLightsUp_ptr
5C250A:  LDR.W           R0, =(_ZN13CBrightLights13aBrightLightsE_ptr - 0x5C2518)
5C250E:  ADD             R2, PC; TempVertexBuffer_ptr
5C2510:  VLDR            S16, =0.2
5C2514:  ADD             R0, PC; _ZN13CBrightLights13aBrightLightsE_ptr
5C2516:  VLDR            S18, =45.0
5C251A:  VLDR            S22, =0.7854
5C251E:  LDR.W           R9, [R0]; CBrightLights::aBrightLights ...
5C2522:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5C252E)
5C2526:  VLDR            S24, =0.1
5C252A:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C252C:  VLDR            S28, =-0.066667
5C2530:  VLDR            S17, =255.0
5C2534:  LDR             R0, [R0]; TempBufferVerticesStored
5C2536:  STR             R0, [SP,#0xE8+var_A4]
5C2538:  LDR             R0, [R1]; CBrightLights::aBrightLights ...
5C253A:  STR             R0, [SP,#0xE8+var_A8]
5C253C:  LDR             R0, [R3]; TrafficLightsUp
5C253E:  STR             R0, [SP,#0xE8+var_AC]
5C2540:  LDR             R0, [R2]; TempVertexBuffer
5C2542:  STR             R0, [SP,#0xE8+var_B0]
5C2544:  LDR.W           R0, =(TrafficLightsSide_ptr - 0x5C2550)
5C2548:  LDR.W           R1, =(TempBufferRenderIndexList_ptr - 0x5C2556)
5C254C:  ADD             R0, PC; TrafficLightsSide_ptr
5C254E:  LDR.W           R2, =(TempBufferVerticesStored_ptr - 0x5C255A)
5C2552:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C2554:  LDR             R0, [R0]; TrafficLightsSide
5C2556:  ADD             R2, PC; TempBufferVerticesStored_ptr
5C2558:  STR             R0, [SP,#0xE8+var_B4]
5C255A:  LDR.W           R0, =(TrafficLightIndices_ptr - 0x5C2562)
5C255E:  ADD             R0, PC; TrafficLightIndices_ptr
5C2560:  LDR             R0, [R0]; TrafficLightIndices
5C2562:  STR             R0, [SP,#0xE8+var_B8]
5C2564:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x5C256C)
5C2568:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C256A:  LDR             R0, [R0]; TempBufferIndicesStored
5C256C:  STR             R0, [SP,#0xE8+var_BC]
5C256E:  LDR             R0, [R1]; TempBufferRenderIndexList
5C2570:  LDR.W           R1, =(TempBufferIndicesStored_ptr - 0x5C257E)
5C2574:  STR             R0, [SP,#0xE8+var_C0]
5C2576:  LDR.W           R0, =(TempBufferRenderIndexList_ptr - 0x5C2580)
5C257A:  ADD             R1, PC; TempBufferIndicesStored_ptr
5C257C:  ADD             R0, PC; TempBufferRenderIndexList_ptr
5C257E:  LDR.W           R10, [R0]; TempBufferRenderIndexList
5C2582:  LDR             R0, [R1]; TempBufferIndicesStored
5C2584:  STR             R0, [SP,#0xE8+var_84]
5C2586:  LDR             R0, [R2]; TempBufferVerticesStored
5C2588:  STR             R0, [SP,#0xE8+var_88]
5C258A:  LDR.W           R0, =(_ZN13CBrightLights15NumBrightLightsE_ptr - 0x5C2596)
5C258E:  LDR.W           R1, =(_ZN13CBrightLights13aBrightLightsE_ptr - 0x5C259C)
5C2592:  ADD             R0, PC; _ZN13CBrightLights15NumBrightLightsE_ptr
5C2594:  LDR.W           R2, =(TempVertexBuffer_ptr - 0x5C25A0)
5C2598:  ADD             R1, PC; _ZN13CBrightLights13aBrightLightsE_ptr
5C259A:  LDR             R0, [R0]; CBrightLights::NumBrightLights ...
5C259C:  ADD             R2, PC; TempVertexBuffer_ptr
5C259E:  STR             R0, [SP,#0xE8+var_7C]
5C25A0:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5C25A8)
5C25A4:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C25A6:  LDR             R0, [R0]; TempBufferVerticesStored
5C25A8:  STR             R0, [SP,#0xE8+var_80]
5C25AA:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5C25B2)
5C25AE:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C25B0:  LDR             R0, [R0]; TempBufferVerticesStored
5C25B2:  STR             R0, [SP,#0xE8+var_C8]
5C25B4:  LDR             R0, [R1]; CBrightLights::aBrightLights ...
5C25B6:  STR             R0, [SP,#0xE8+var_CC]
5C25B8:  LDR             R0, [R2]; TempVertexBuffer
5C25BA:  STR             R0, [SP,#0xE8+var_D0]
5C25BC:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x5C25C8)
5C25C0:  LDR.W           R1, =(TempBufferRenderIndexList_ptr - 0x5C25CC)
5C25C4:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C25C6:  STR             R2, [SP,#0xE8+var_6C]
5C25C8:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C25CA:  LDR             R0, [R0]; TempBufferIndicesStored
5C25CC:  STR             R0, [SP,#0xE8+var_D4]
5C25CE:  LDR             R0, [R1]; TempBufferRenderIndexList
5C25D0:  STR             R0, [SP,#0xE8+var_D8]
5C25D2:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x5C25DE)
5C25D6:  LDR.W           R1, =(TempVertexBuffer_ptr - 0x5C25E0)
5C25DA:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C25DC:  ADD             R1, PC; TempVertexBuffer_ptr
5C25DE:  LDR             R0, [R0]; TempBufferIndicesStored
5C25E0:  STR             R0, [SP,#0xE8+var_E4]
5C25E2:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5C25EA)
5C25E6:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C25E8:  LDR             R0, [R0]; TempBufferVerticesStored
5C25EA:  STR             R0, [SP,#0xE8+var_8C]
5C25EC:  LDR             R0, [R1]; TempVertexBuffer
5C25EE:  STR             R0, [SP,#0xE8+var_90]
5C25F0:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x5C25FC)
5C25F4:  LDR.W           R1, =(TempBufferVerticesStored_ptr - 0x5C25FE)
5C25F8:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C25FA:  ADD             R1, PC; TempBufferVerticesStored_ptr
5C25FC:  LDR             R0, [R0]; TempBufferIndicesStored
5C25FE:  STR             R0, [SP,#0xE8+var_94]
5C2600:  LDR             R0, [R1]; TempBufferVerticesStored
5C2602:  STR             R0, [SP,#0xE8+var_98]
5C2604:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x5C2610)
5C2608:  LDR.W           R1, =(TempBufferRenderIndexList_ptr - 0x5C2612)
5C260C:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C260E:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C2610:  LDR             R0, [R0]; TempBufferIndicesStored
5C2612:  STR             R0, [SP,#0xE8+var_DC]
5C2614:  LDR             R0, [R1]; TempBufferRenderIndexList
5C2616:  MOVS            R1, #0
5C2618:  STR             R0, [SP,#0xE8+var_E0]
5C261A:  MOVS            R0, #0
5C261C:  STRD.W          R9, R8, [SP,#0xE8+var_A0]
5C2620:  STR.W           R10, [SP,#0xE8+var_C4]
5C2624:  B               loc_5C262A
5C2626:  LDR             R1, [SP,#0xE8+var_80]
5C2628:  LDR             R1, [R1]
5C262A:  MOVW            R2, #0xFD9
5C262E:  CMP             R0, R2
5C2630:  MOV.W           R2, #0
5C2634:  IT LT
5C2636:  MOVLT           R2, #1
5C2638:  CMP.W           R1, #0x7D8
5C263C:  MOV.W           R1, #0
5C2640:  IT LE
5C2642:  MOVLE           R1, #1
5C2644:  CBZ             R0, loc_5C267A
5C2646:  ANDS.W          R0, R2, R1
5C264A:  BNE             loc_5C267A
5C264C:  BLX.W           j__Z10LittleTestv; LittleTest(void)
5C2650:  LDR             R0, [SP,#0xE8+var_8C]
5C2652:  MOVS            R2, #0
5C2654:  MOVS            R3, #1
5C2656:  LDR             R1, [R0]
5C2658:  LDR             R0, [SP,#0xE8+var_90]
5C265A:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5C265E:  CBZ             R0, loc_5C2670
5C2660:  LDR             R0, [SP,#0xE8+var_DC]
5C2662:  LDR             R1, [SP,#0xE8+var_E0]
5C2664:  LDR             R2, [R0]
5C2666:  MOVS            R0, #3
5C2668:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5C266C:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5C2670:  LDR             R1, [SP,#0xE8+var_94]
5C2672:  MOVS            R0, #0
5C2674:  STR             R0, [R1]
5C2676:  LDR             R1, [SP,#0xE8+var_98]
5C2678:  STR             R0, [R1]
5C267A:  BLX.W           rand
5C267E:  UXTB            R0, R0
5C2680:  VMOV            S0, R0
5C2684:  RSB.W           R0, R5, R5,LSL#3
5C2688:  VCVT.F32.S32    S0, S0
5C268C:  ADD.W           R1, R8, R0,LSL#3
5C2690:  LDRB.W          R2, [R1,#0x34]
5C2694:  CMP             R2, #0xF
5C2696:  BHI             loc_5C26EA
5C2698:  VMUL.F32        S0, S0, S16
5C269C:  MOVS            R3, #1
5C269E:  LSLS            R3, R2
5C26A0:  MOVW            R6, #0x2002
5C26A4:  TST             R3, R6
5C26A6:  BNE             loc_5C26CA
5C26A8:  MOVW            R6, #0x4004
5C26AC:  TST             R3, R6
5C26AE:  BNE             loc_5C26DA
5C26B0:  MOVW            R6, #0x8008
5C26B4:  TST             R3, R6
5C26B6:  ITTTT NE
5C26B8:  VCVTNE.U32.F32  S0, S0
5C26BC:  VMOVNE          R4, S0
5C26C0:  MOVNE           R3, #0xFF
5C26C2:  STRNE           R3, [SP,#0xE8+var_6C]
5C26C4:  IT NE
5C26C6:  MOVNE           R11, R4
5C26C8:  B               loc_5C26EA
5C26CA:  VCVT.U32.F32    S0, S0
5C26CE:  MOV.W           R11, #0xFF
5C26D2:  VMOV            R4, S0
5C26D6:  STR             R4, [SP,#0xE8+var_6C]
5C26D8:  B               loc_5C26EA
5C26DA:  VCVT.U32.F32    S0, S0
5C26DE:  MOVS            R3, #0xFF
5C26E0:  MOV.W           R11, #0x80
5C26E4:  STR             R3, [SP,#0xE8+var_6C]
5C26E6:  VMOV            R4, S0
5C26EA:  ADD.W           R3, R9, R0,LSL#3
5C26EE:  VLDR            S0, [R3,#0x30]
5C26F2:  VCMPE.F32       S0, S18
5C26F6:  VMRS            APSR_nzcv, FPSCR
5C26FA:  BGE             loc_5C2700
5C26FC:  MOVS            R3, #0xFF
5C26FE:  B               loc_5C271C
5C2700:  VLDR            S2, =-45.0
5C2704:  VADD.F32        S0, S0, S2
5C2708:  VMUL.F32        S0, S0, S28
5C270C:  VADD.F32        S0, S0, S30
5C2710:  VMUL.F32        S0, S0, S17
5C2714:  VCVT.U32.F32    S0, S0
5C2718:  VMOV            R3, S0
5C271C:  SUBS            R6, R2, #1
5C271E:  CMP             R6, #3
5C2720:  BCC.W           loc_5C288C
5C2724:  SUBS            R2, #0xD
5C2726:  CMP             R2, #3
5C2728:  BCS.W           loc_5C2B1C
5C272C:  UXTB.W          R2, R11
5C2730:  VLDR            S19, [R1]
5C2734:  UXTB            R1, R4
5C2736:  LSLS            R2, R2, #8
5C2738:  ORR.W           R1, R2, R1,LSL#16
5C273C:  LDR             R2, [SP,#0xE8+var_C8]
5C273E:  STR.W           R11, [SP,#0xE8+var_78]
5C2742:  MOV.W           R10, #0
5C2746:  STR             R4, [SP,#0xE8+var_74]
5C2748:  MOVS            R4, #0
5C274A:  LDR.W           R11, [R2]
5C274E:  LDR             R2, [SP,#0xE8+var_CC]
5C2750:  STR             R5, [SP,#0xE8+var_70]
5C2752:  ADD.W           R0, R2, R0,LSL#3
5C2756:  VLDR            S21, [R0,#4]
5C275A:  VLDR            S23, [R0,#8]
5C275E:  VLDR            S25, [R0,#0xC]
5C2762:  VLDR            S27, [R0,#0x10]
5C2766:  VLDR            S29, [R0,#0x14]
5C276A:  VLDR            S31, [R0,#0x18]
5C276E:  VLDR            S20, [R0,#0x1C]
5C2772:  VLDR            S26, [R0,#0x20]
5C2776:  LDR             R0, [SP,#0xE8+var_6C]
5C2778:  UXTB            R0, R0
5C277A:  ORRS            R0, R1
5C277C:  LDR             R1, [SP,#0xE8+var_D0]
5C277E:  ORR.W           R9, R0, R3,LSL#24
5C2782:  ADD.W           R0, R11, R11,LSL#3
5C2786:  ADD.W           R8, R1, R0,LSL#2
5C278A:  VMOV            S0, R10
5C278E:  VCVT.F32.S32    S0, S0
5C2792:  VMUL.F32        S0, S0, S22
5C2796:  VMOV            R6, S0
5C279A:  MOV             R0, R6; x
5C279C:  BLX.W           sinf
5C27A0:  MOV             R5, R0
5C27A2:  MOV             R0, R6; x
5C27A4:  BLX.W           cosf
5C27A8:  VMOV            S0, R0
5C27AC:  ADD.W           R0, R8, R4
5C27B0:  VMOV            S2, R5
5C27B4:  ADDS            R4, #0x24 ; '$'
5C27B6:  VMUL.F32        S0, S0, S24
5C27BA:  ADD.W           R10, R10, #1
5C27BE:  VMUL.F32        S2, S2, S24
5C27C2:  CMP.W           R4, #0x120
5C27C6:  STR.W           R9, [R0,#0x18]
5C27CA:  VMUL.F32        S4, S0, S25
5C27CE:  VMUL.F32        S6, S0, S27
5C27D2:  VMUL.F32        S0, S0, S29
5C27D6:  VMUL.F32        S8, S2, S31
5C27DA:  VMUL.F32        S10, S2, S20
5C27DE:  VMUL.F32        S2, S2, S26
5C27E2:  VADD.F32        S4, S19, S4
5C27E6:  VADD.F32        S6, S21, S6
5C27EA:  VADD.F32        S0, S23, S0
5C27EE:  VADD.F32        S4, S4, S8
5C27F2:  VADD.F32        S6, S6, S10
5C27F6:  VADD.F32        S0, S0, S2
5C27FA:  VSTR            S4, [R0]
5C27FE:  VSTR            S6, [R0,#4]
5C2802:  VSTR            S0, [R0,#8]
5C2806:  BNE             loc_5C278A
5C2808:  LDR             R0, [SP,#0xE8+var_D4]
5C280A:  ADD.W           R2, R11, #1
5C280E:  LDR             R1, [SP,#0xE8+var_D8]
5C2810:  MOVS            R3, #8
5C2812:  MOVS            R6, #0x12
5C2814:  LDR             R0, [R0]
5C2816:  STRH.W          R11, [R1,R0,LSL#1]
5C281A:  ADD.W           R1, R1, R0,LSL#1
5C281E:  STRH            R2, [R1,#2]
5C2820:  ADD.W           R2, R11, #2
5C2824:  STRH            R2, [R1,#4]
5C2826:  STRH.W          R11, [R1,#6]
5C282A:  STRH            R2, [R1,#8]
5C282C:  ADD.W           R2, R11, #3
5C2830:  STRH            R2, [R1,#0xA]
5C2832:  STRH.W          R11, [R1,#0xC]
5C2836:  STRH            R2, [R1,#0xE]
5C2838:  ADD.W           R2, R11, #4
5C283C:  STRH            R2, [R1,#0x10]
5C283E:  STRH.W          R11, [R1,#0x12]
5C2842:  STRH            R2, [R1,#0x14]
5C2844:  ADD.W           R2, R11, #5
5C2848:  STRH            R2, [R1,#0x16]
5C284A:  STRH.W          R11, [R1,#0x18]
5C284E:  STRH            R2, [R1,#0x1A]
5C2850:  ADD.W           R2, R11, #6
5C2854:  STRH            R2, [R1,#0x1C]
5C2856:  STRH.W          R11, [R1,#0x1E]
5C285A:  STRH            R2, [R1,#0x20]
5C285C:  ADD.W           R1, R11, #7
5C2860:  LDRD.W          R9, R8, [SP,#0xE8+var_A0]
5C2864:  ADD.W           R2, R0, #0x11
5C2868:  LDR.W           R10, [SP,#0xE8+var_C4]
5C286C:  B               loc_5C2AF6
5C286E:  ALIGN 0x10
5C2870:  DCFS 0.2
5C2874:  DCFS 45.0
5C2878:  DCFS 0.7854
5C287C:  DCFS 0.1
5C2880:  DCFS -0.066667
5C2884:  DCFS 255.0
5C2888:  DCFS -45.0
5C288C:  VMOV            S0, R3
5C2890:  STR             R5, [SP,#0xE8+var_70]
5C2892:  VMOV.F32        S4, #0.5
5C2896:  VCVT.F32.U32    S2, S0
5C289A:  LDR             R2, [SP,#0xE8+var_A8]
5C289C:  LDR             R6, [SP,#0xE8+var_A4]
5C289E:  ADD.W           R0, R2, R0,LSL#3
5C28A2:  UXTB.W          R2, R11
5C28A6:  VLDR            S0, [R1]
5C28AA:  UXTB            R1, R4
5C28AC:  LSLS            R2, R2, #8
5C28AE:  ORR.W           R1, R2, R1,LSL#16
5C28B2:  LDR             R2, [SP,#0xE8+var_6C]
5C28B4:  STR             R4, [SP,#0xE8+var_74]
5C28B6:  VMUL.F32        S1, S2, S4
5C28BA:  STR.W           R11, [SP,#0xE8+var_78]
5C28BE:  LDR             R3, [R6]
5C28C0:  UXTB            R2, R2
5C28C2:  VLDR            S4, [R0,#4]
5C28C6:  ORRS            R1, R2
5C28C8:  VLDR            S2, [R0,#8]
5C28CC:  VLDR            S8, [R0,#0xC]
5C28D0:  VLDR            S12, [R0,#0x10]
5C28D4:  VLDR            S6, [R0,#0x20]
5C28D8:  VLDR            S10, [R0,#0x18]
5C28DC:  VLDR            S14, [R0,#0x1C]
5C28E0:  VCVT.U32.F32    S3, S1
5C28E4:  VLDR            S1, [R0,#0x14]
5C28E8:  LDR             R2, [SP,#0xE8+var_B0]
5C28EA:  LDR.W           R11, [R6]
5C28EE:  LDR             R6, [SP,#0xE8+var_B8]
5C28F0:  VDUP.32         Q9, R11
5C28F4:  VMOV            R0, S3
5C28F8:  ORR.W           R1, R1, R0,LSL#24
5C28FC:  ADD.W           R0, R3, R3,LSL#3
5C2900:  LDR             R3, [SP,#0xE8+var_B4]
5C2902:  ADD.W           R0, R2, R0,LSL#2
5C2906:  LDR             R2, [SP,#0xE8+var_AC]
5C2908:  VLDR            S9, [R3]
5C290C:  VLDR            S3, [R2]
5C2910:  VMUL.F32        S11, S9, S14
5C2914:  STR             R1, [R0,#0x18]
5C2916:  VMUL.F32        S5, S3, S12
5C291A:  STR             R1, [R0,#0x3C]
5C291C:  VMUL.F32        S7, S3, S8
5C2920:  VMUL.F32        S3, S3, S1
5C2924:  VMUL.F32        S13, S9, S10
5C2928:  VMUL.F32        S9, S9, S6
5C292C:  VADD.F32        S5, S4, S5
5C2930:  VADD.F32        S7, S0, S7
5C2934:  VADD.F32        S3, S2, S3
5C2938:  VADD.F32        S5, S5, S11
5C293C:  VADD.F32        S7, S7, S13
5C2940:  VADD.F32        S3, S3, S9
5C2944:  VLDR            S9, [R3,#4]
5C2948:  VMUL.F32        S11, S9, S14
5C294C:  VMUL.F32        S13, S9, S10
5C2950:  VMUL.F32        S9, S9, S6
5C2954:  VSTR            S7, [R0]
5C2958:  VSTR            S5, [R0,#4]
5C295C:  VSTR            S3, [R0,#8]
5C2960:  VLDR            S3, [R2,#4]
5C2964:  STR             R1, [R0,#0x60]
5C2966:  VMUL.F32        S5, S3, S12
5C296A:  VMUL.F32        S7, S3, S8
5C296E:  VMUL.F32        S3, S3, S1
5C2972:  VADD.F32        S5, S4, S5
5C2976:  VADD.F32        S7, S0, S7
5C297A:  VADD.F32        S3, S2, S3
5C297E:  VADD.F32        S5, S5, S11
5C2982:  VADD.F32        S7, S7, S13
5C2986:  VADD.F32        S3, S3, S9
5C298A:  VLDR            S9, [R3,#8]
5C298E:  VMUL.F32        S11, S9, S14
5C2992:  VMUL.F32        S13, S9, S10
5C2996:  VMUL.F32        S9, S9, S6
5C299A:  VSTR            S7, [R0,#0x24]
5C299E:  VSTR            S5, [R0,#0x28]
5C29A2:  VSTR            S3, [R0,#0x2C]
5C29A6:  VLDR            S3, [R2,#8]
5C29AA:  STR.W           R1, [R0,#0x84]
5C29AE:  VMUL.F32        S5, S3, S12
5C29B2:  VMUL.F32        S7, S3, S8
5C29B6:  VMUL.F32        S3, S3, S1
5C29BA:  VADD.F32        S5, S4, S5
5C29BE:  VADD.F32        S7, S0, S7
5C29C2:  VADD.F32        S3, S2, S3
5C29C6:  VADD.F32        S5, S5, S11
5C29CA:  VADD.F32        S7, S7, S13
5C29CE:  VADD.F32        S3, S3, S9
5C29D2:  VLDR            S9, [R3,#0xC]
5C29D6:  VMUL.F32        S11, S9, S14
5C29DA:  VMUL.F32        S13, S9, S10
5C29DE:  VMUL.F32        S9, S9, S6
5C29E2:  VSTR            S7, [R0,#0x48]
5C29E6:  VSTR            S5, [R0,#0x4C]
5C29EA:  VSTR            S3, [R0,#0x50]
5C29EE:  VLDR            S3, [R2,#0xC]
5C29F2:  STR.W           R1, [R0,#0xA8]
5C29F6:  VMUL.F32        S5, S3, S12
5C29FA:  VMUL.F32        S7, S3, S8
5C29FE:  VMUL.F32        S3, S3, S1
5C2A02:  VADD.F32        S5, S4, S5
5C2A06:  VADD.F32        S7, S0, S7
5C2A0A:  VADD.F32        S3, S2, S3
5C2A0E:  VADD.F32        S5, S5, S11
5C2A12:  VADD.F32        S7, S7, S13
5C2A16:  VADD.F32        S3, S3, S9
5C2A1A:  VLDR            S9, [R3,#0x10]
5C2A1E:  VMUL.F32        S11, S9, S14
5C2A22:  VMUL.F32        S13, S9, S10
5C2A26:  VMUL.F32        S9, S9, S6
5C2A2A:  VSTR            S7, [R0,#0x6C]
5C2A2E:  VSTR            S5, [R0,#0x70]
5C2A32:  VSTR            S3, [R0,#0x74]
5C2A36:  VLDR            S3, [R2,#0x10]
5C2A3A:  STR.W           R1, [R0,#0xCC]
5C2A3E:  MOV             R1, R6
5C2A40:  VMUL.F32        S5, S3, S12
5C2A44:  VLD1.16         {D16-D17}, [R1]!
5C2A48:  VMUL.F32        S7, S3, S8
5C2A4C:  VMUL.F32        S3, S3, S1
5C2A50:  LDRH            R1, [R1]
5C2A52:  VADDW.U16       Q10, Q9, D17
5C2A56:  VADDW.U16       Q8, Q9, D16
5C2A5A:  ADD             R1, R11
5C2A5C:  VMOVN.I32       D19, Q10
5C2A60:  VADD.F32        S5, S4, S5
5C2A64:  VADD.F32        S7, S0, S7
5C2A68:  VADD.F32        S3, S2, S3
5C2A6C:  VMOVN.I32       D18, Q8
5C2A70:  VADD.F32        S5, S5, S11
5C2A74:  VADD.F32        S7, S7, S13
5C2A78:  VADD.F32        S3, S3, S9
5C2A7C:  VSTR            S7, [R0,#0x90]
5C2A80:  VSTR            S5, [R0,#0x94]
5C2A84:  VSTR            S3, [R0,#0x98]
5C2A88:  VLDR            S3, [R2,#0x14]
5C2A8C:  VLDR            S5, [R3,#0x14]
5C2A90:  VMUL.F32        S12, S3, S12
5C2A94:  LDR             R2, [SP,#0xE8+var_C0]
5C2A96:  VMUL.F32        S8, S3, S8
5C2A9A:  VMUL.F32        S1, S3, S1
5C2A9E:  VMUL.F32        S14, S5, S14
5C2AA2:  VMUL.F32        S10, S5, S10
5C2AA6:  VMUL.F32        S6, S5, S6
5C2AAA:  VADD.F32        S4, S4, S12
5C2AAE:  VADD.F32        S0, S0, S8
5C2AB2:  VADD.F32        S2, S2, S1
5C2AB6:  VADD.F32        S4, S4, S14
5C2ABA:  VADD.F32        S0, S0, S10
5C2ABE:  VADD.F32        S2, S2, S6
5C2AC2:  VSTR            S0, [R0,#0xB4]
5C2AC6:  VSTR            S4, [R0,#0xB8]
5C2ACA:  VSTR            S2, [R0,#0xBC]
5C2ACE:  LDR             R0, [SP,#0xE8+var_BC]
5C2AD0:  LDR             R0, [R0]
5C2AD2:  ADD.W           R2, R2, R0,LSL#1
5C2AD6:  MOV             R3, R2
5C2AD8:  VST1.16         {D18-D19}, [R3]!
5C2ADC:  STRH            R1, [R3]
5C2ADE:  MOVS            R3, #6
5C2AE0:  LDRH            R1, [R6,#0x12]
5C2AE2:  ADD             R1, R11
5C2AE4:  STRH            R1, [R2,#0x12]
5C2AE6:  LDRH            R1, [R6,#0x14]
5C2AE8:  ADD             R1, R11
5C2AEA:  STRH            R1, [R2,#0x14]
5C2AEC:  LDRH            R1, [R6,#0x16]
5C2AEE:  ADD.W           R2, R0, #0xB
5C2AF2:  MOVS            R6, #0xC
5C2AF4:  ADD             R1, R11
5C2AF6:  STRH.W          R1, [R10,R2,LSL#1]
5C2AFA:  ADD.W           R1, R11, R3
5C2AFE:  ADD             R0, R6
5C2B00:  LDR             R2, [SP,#0xE8+var_88]
5C2B02:  LDR             R5, [SP,#0xE8+var_70]
5C2B04:  STR             R1, [R2]
5C2B06:  LDR             R1, [SP,#0xE8+var_84]
5C2B08:  STR             R0, [R1]
5C2B0A:  LDRD.W          R11, R4, [SP,#0xE8+var_78]
5C2B0E:  LDR             R1, [SP,#0xE8+var_7C]
5C2B10:  ADDS            R5, #1
5C2B12:  LDR             R1, [R1]
5C2B14:  CMP             R5, R1
5C2B16:  BLT.W           loc_5C2626
5C2B1A:  B               loc_5C2B22
5C2B1C:  LDR             R0, [SP,#0xE8+var_E4]
5C2B1E:  LDR             R0, [R0]
5C2B20:  B               loc_5C2B0E
5C2B22:  CBZ             R0, loc_5C2B6A
5C2B24:  BLX.W           j__Z10LittleTestv; LittleTest(void)
5C2B28:  LDR             R0, =(TempBufferVerticesStored_ptr - 0x5C2B34)
5C2B2A:  MOVS            R3, #1
5C2B2C:  LDR             R1, =(TempVertexBuffer_ptr - 0x5C2B36)
5C2B2E:  MOVS            R4, #0
5C2B30:  ADD             R0, PC; TempBufferVerticesStored_ptr
5C2B32:  ADD             R1, PC; TempVertexBuffer_ptr
5C2B34:  LDR             R2, [R0]; TempBufferVerticesStored
5C2B36:  LDR             R0, [R1]; TempVertexBuffer
5C2B38:  LDR             R1, [R2]
5C2B3A:  MOVS            R2, #0
5C2B3C:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5C2B40:  CBZ             R0, loc_5C2B5A
5C2B42:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C2B4A)
5C2B44:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C2B4C)
5C2B46:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C2B48:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C2B4A:  LDR             R0, [R0]; TempBufferIndicesStored
5C2B4C:  LDR             R1, [R1]; TempBufferRenderIndexList
5C2B4E:  LDR             R2, [R0]
5C2B50:  MOVS            R0, #3
5C2B52:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5C2B56:  BLX.W           j__Z9RwIm3DEndv; RwIm3DEnd(void)
5C2B5A:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x5C2B62)
5C2B5C:  LDR             R1, =(TempBufferVerticesStored_ptr - 0x5C2B64)
5C2B5E:  ADD             R0, PC; TempBufferIndicesStored_ptr
5C2B60:  ADD             R1, PC; TempBufferVerticesStored_ptr
5C2B62:  LDR             R0, [R0]; TempBufferIndicesStored
5C2B64:  LDR             R1, [R1]; TempBufferVerticesStored
5C2B66:  STR             R4, [R0]
5C2B68:  STR             R4, [R1]
5C2B6A:  MOVS            R0, #0xC
5C2B6C:  MOVS            R1, #0
5C2B6E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C2B72:  LDR             R0, =(_ZN13CBrightLights15NumBrightLightsE_ptr - 0x5C2B7A)
5C2B74:  MOVS            R1, #0
5C2B76:  ADD             R0, PC; _ZN13CBrightLights15NumBrightLightsE_ptr
5C2B78:  LDR             R0, [R0]; CBrightLights::NumBrightLights ...
5C2B7A:  STR             R1, [R0]; CBrightLights::NumBrightLights
5C2B7C:  ADD             SP, SP, #0x80
5C2B7E:  VPOP            {D8-D15}
5C2B82:  ADD             SP, SP, #4
5C2B84:  POP.W           {R8-R11}
5C2B88:  POP.W           {R4-R7,LR}
5C2B8C:  BX              LR
