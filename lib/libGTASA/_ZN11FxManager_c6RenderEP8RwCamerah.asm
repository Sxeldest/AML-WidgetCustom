; =========================================================
; Game Engine Function: _ZN11FxManager_c6RenderEP8RwCamerah
; Address            : 0x36D508 - 0x36D590
; =========================================================

36D508:  PUSH            {R4-R7,LR}
36D50A:  ADD             R7, SP, #0xC
36D50C:  PUSH.W          {R8}
36D510:  VPUSH           {D8}
36D514:  MOV             R4, R0
36D516:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x36D520)
36D518:  MOV             R5, R1
36D51A:  MOVS            R1, #0
36D51C:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr
36D51E:  MOV             R8, R2
36D520:  LDR             R0, [R0]; CCustomBuildingDNPipeline::m_fDNBalanceParam ...
36D522:  VLDR            S16, [R0]
36D526:  MOVS            R0, #6
36D528:  STRB.W          R1, [R4,#0xB8]
36D52C:  MOVS            R1, #1
36D52E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
36D532:  MOVS            R0, #8
36D534:  MOVS            R1, #0
36D536:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
36D53A:  MOVS            R0, #0x1E
36D53C:  MOVS            R1, #0
36D53E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
36D542:  LDR             R6, [R4]
36D544:  CBZ             R6, loc_36D574
36D546:  VMOV.F32        S0, #1.0
36D54A:  VLDR            S2, =0.6
36D54E:  VSUB.F32        S0, S0, S16
36D552:  VMUL.F32        S0, S0, S2
36D556:  VLDR            S2, =0.4
36D55A:  VADD.F32        S0, S0, S2
36D55E:  VMOV            R4, S0
36D562:  MOV             R0, R6
36D564:  MOV             R1, R5
36D566:  MOV             R2, R4
36D568:  MOV             R3, R8
36D56A:  BLX             j__ZN12FxSystemBP_c6RenderEP8RwCamerafh; FxSystemBP_c::Render(RwCamera *,float,uchar)
36D56E:  LDR             R6, [R6,#4]
36D570:  CMP             R6, #0
36D572:  BNE             loc_36D562
36D574:  MOVS            R0, #8
36D576:  MOVS            R1, #1
36D578:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
36D57C:  MOVS            R0, #6
36D57E:  MOVS            R1, #1
36D580:  VPOP            {D8}
36D584:  POP.W           {R8}
36D588:  POP.W           {R4-R7,LR}
36D58C:  B.W             sub_192888
