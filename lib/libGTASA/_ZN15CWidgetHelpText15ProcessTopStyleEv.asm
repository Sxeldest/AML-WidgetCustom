; =========================================================
; Game Engine Function: _ZN15CWidgetHelpText15ProcessTopStyleEv
; Address            : 0x2B72C8 - 0x2B76F2
; =========================================================

2B72C8:  PUSH            {R4-R7,LR}
2B72CA:  ADD             R7, SP, #0xC
2B72CC:  PUSH.W          {R8}
2B72D0:  VPUSH           {D8}
2B72D4:  MOV             R4, R0
2B72D6:  MOVS            R1, #0
2B72D8:  LDR.W           R0, [R4,#0x9C]
2B72DC:  ADD.W           R5, R4, #0xB8
2B72E0:  CMP             R0, #3
2B72E2:  MOV.W           R0, #0x334
2B72E6:  IT EQ
2B72E8:  MOVEQ           R1, #1
2B72EA:  SMLABB.W        R1, R1, R0, R5; unsigned __int16 *
2B72EE:  MOV             R0, R4; this
2B72F0:  BLX             j__ZN15CWidgetHelpText12SetFontPropsEPt; CWidgetHelpText::SetFontProps(ushort *)
2B72F4:  MOV             R6, R0
2B72F6:  LDR.W           R0, [R4,#0x9C]
2B72FA:  VLDR            S16, =0.0
2B72FE:  CMP             R0, #5; switch 6 cases
2B7300:  BHI.W           def_2B7304; jumptable 002B7304 default case
2B7304:  TBH.W           [PC,R0,LSL#1]; switch jump
2B7308:  DCW 6; jump table for switch statement
2B730A:  DCW 0x40
2B730C:  DCW 0x75
2B730E:  DCW 0xA3
2B7310:  DCW 0x17
2B7312:  DCW 0x14E
2B7314:  MOVS            R6, #0; jumptable 002B7304 case 0
2B7316:  MOV             R0, R5; this
2B7318:  STRD.W          R6, R6, [R4,#0x90]
2B731C:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B7320:  CMP             R0, #0
2B7322:  BEQ.W           def_2B7304; jumptable 002B7304 default case
2B7326:  LDR.W           R0, =(AudioEngine_ptr - 0x2B7334)
2B732A:  MOVS            R1, #1
2B732C:  STRD.W          R6, R1, [R4,#0x98]
2B7330:  ADD             R0, PC; AudioEngine_ptr
2B7332:  LDR             R0, [R0]; AudioEngine
2B7334:  B               loc_2B7596
2B7336:  LDR.W           R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2B734A); jumptable 002B7304 case 4
2B733A:  VMOV            S6, R6
2B733E:  VLDR            S0, [R4,#0x98]
2B7342:  VMOV.F32        S8, #1.0
2B7346:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2B7348:  VLDR            S4, =0.325
2B734C:  VCVT.F64.F32    D16, S0
2B7350:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2B7352:  VLDR            D17, [R0]
2B7356:  MOV.W           R0, #0x3F800000
2B735A:  VLDR            S2, [R4,#0xA0]
2B735E:  VCVT.F32.S32    S6, S6
2B7362:  VADD.F64        D16, D17, D16
2B7366:  STR.W           R0, [R4,#0x94]
2B736A:  VCVT.F32.F64    S0, D16
2B736E:  VMIN.F32        D0, D0, D2
2B7372:  VMUL.F32        S16, S2, S6
2B7376:  VDIV.F32        S4, S0, S4
2B737A:  VMIN.F32        D1, D2, D4
2B737E:  VSTR            S0, [R4,#0x98]
2B7382:  VSTR            S2, [R4,#0x90]
2B7386:  B               loc_2B73D2
2B7388:  LDR             R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2B739A); jumptable 002B7304 case 1
2B738A:  VMOV            S6, R6
2B738E:  VLDR            S0, [R4,#0x98]
2B7392:  VMOV.F32        S8, #1.0
2B7396:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2B7398:  VLDR            S4, =0.325
2B739C:  VCVT.F64.F32    D16, S0
2B73A0:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2B73A2:  VLDR            D17, [R0]
2B73A6:  VLDR            S2, [R4,#0xA0]
2B73AA:  VCVT.F32.S32    S6, S6
2B73AE:  VADD.F64        D16, D17, D16
2B73B2:  VCVT.F32.F64    S0, D16
2B73B6:  VMIN.F32        D0, D0, D2
2B73BA:  VMUL.F32        S16, S2, S6
2B73BE:  VDIV.F32        S4, S0, S4
2B73C2:  VMIN.F32        D1, D2, D4
2B73C6:  VSTR            S2, [R4,#0x90]
2B73CA:  VSTR            S2, [R4,#0x94]
2B73CE:  VSTR            S0, [R4,#0x98]
2B73D2:  VCMP.F32        S2, S8
2B73D6:  VMRS            APSR_nzcv, FPSCR
2B73DA:  ITTT EQ
2B73DC:  VLDREQ          S0, [R4,#0xA4]
2B73E0:  VCMPEQ.F32      S0, S16
2B73E4:  VMRSEQ          APSR_nzcv, FPSCR
2B73E8:  BNE.W           def_2B7304; jumptable 002B7304 default case
2B73EC:  MOVS            R0, #0
2B73EE:  MOVS            R1, #2
2B73F0:  B               loc_2B7636
2B73F2:  LDR             R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2B7400); jumptable 002B7304 case 2
2B73F4:  MOVS            R1, #0
2B73F6:  VLDR            S0, [R4,#0x98]
2B73FA:  MOVS            R2, #1
2B73FC:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2B73FE:  VLDR            S2, [R4,#0x3D8]
2B7402:  VCVT.F64.F32    D16, S0
2B7406:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2B7408:  VLDR            D17, [R0]
2B740C:  MOV.W           R0, #0x3F800000
2B7410:  VLDR            S16, [R4,#0xA0]
2B7414:  VADD.F64        D16, D17, D16
2B7418:  STRD.W          R0, R0, [R4,#0x90]
2B741C:  MOVS            R0, #0xA2
2B741E:  VCVT.F32.F64    S0, D16
2B7422:  VMIN.F32        D0, D1, D0
2B7426:  VSTR            S0, [R4,#0x98]
2B742A:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
2B742E:  VMOV            S0, R6
2B7432:  CMP             R0, #0
2B7434:  VCVT.F32.S32    S0, S0
2B7438:  BEQ.W           loc_2B760C
2B743C:  LDR.W           R0, [R4,#0x3D8]
2B7440:  STR.W           R0, [R4,#0x98]
2B7444:  VMOV            S2, R0
2B7448:  VMOV.F32        S4, S2
2B744C:  B               loc_2B7614
2B744E:  LDR             R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2B7460); jumptable 002B7304 case 3
2B7450:  VMOV.F32        S6, #1.0
2B7454:  VLDR            S0, [R4,#0x98]
2B7458:  VMOV            S8, R6
2B745C:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2B745E:  VLDR            S4, =0.325
2B7462:  VCVT.F64.F32    D16, S0
2B7466:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2B7468:  VLDR            D17, [R0]
2B746C:  MOV.W           R0, #0x3F800000
2B7470:  VLDR            S2, [R4,#0xA0]
2B7474:  VCVT.F32.S32    S8, S8
2B7478:  VADD.F64        D16, D17, D16
2B747C:  STR.W           R0, [R4,#0x94]
2B7480:  VCVT.F32.F64    S0, D16
2B7484:  VMIN.F32        D0, D0, D2
2B7488:  VMUL.F32        S16, S2, S8
2B748C:  VDIV.F32        S4, S0, S4
2B7490:  VMIN.F32        D2, D2, D3
2B7494:  VSTR            S0, [R4,#0x98]
2B7498:  VSUB.F32        S4, S6, S4
2B749C:  VCMP.F32        S4, #0.0
2B74A0:  VSTR            S4, [R4,#0x90]
2B74A4:  VMRS            APSR_nzcv, FPSCR
2B74A8:  ITTT EQ
2B74AA:  VLDREQ          S0, [R4,#0xA4]
2B74AE:  VCMPEQ.F32      S0, S16
2B74B2:  VMRSEQ          APSR_nzcv, FPSCR
2B74B6:  BNE.W           def_2B7304; jumptable 002B7304 default case
2B74BA:  ADD.W           R6, R4, #0x3EC
2B74BE:  MOV.W           R8, #0
2B74C2:  MOVS            R0, #4
2B74C4:  MOV.W           R2, #0x334; size_t
2B74C8:  STRD.W          R8, R0, [R4,#0x98]
2B74CC:  MOV             R0, R5; void *
2B74CE:  MOV             R1, R6; void *
2B74D0:  BLX             memcpy_0
2B74D4:  ADD.W           R5, R4, #0x720
2B74D8:  MOV             R0, R6; void *
2B74DA:  MOV.W           R2, #0x334; size_t
2B74DE:  MOV             R1, R5; void *
2B74E0:  BLX             memcpy_0
2B74E4:  ADDW            R6, R4, #0xA54
2B74E8:  MOV             R0, R5; void *
2B74EA:  MOV.W           R2, #0x334; size_t
2B74EE:  MOV             R1, R6; void *
2B74F0:  BLX             memcpy_0
2B74F4:  ADDW            R5, R4, #0xD88
2B74F8:  MOV             R0, R6; void *
2B74FA:  MOV.W           R2, #0x334; size_t
2B74FE:  MOV             R1, R5; void *
2B7500:  BLX             memcpy_0
2B7504:  MOVW            R0, #0x10BC
2B7508:  ADDS            R6, R4, R0
2B750A:  MOV             R0, R5; void *
2B750C:  MOV.W           R2, #0x334; size_t
2B7510:  MOV             R1, R6; void *
2B7512:  BLX             memcpy_0
2B7516:  MOVW            R0, #0x13F0
2B751A:  ADDS            R5, R4, R0
2B751C:  MOV             R0, R6; void *
2B751E:  MOV.W           R2, #0x334; size_t
2B7522:  MOV             R1, R5; void *
2B7524:  BLX             memcpy_0
2B7528:  MOVW            R0, #0x1724
2B752C:  ADDS            R6, R4, R0
2B752E:  MOV             R0, R5; void *
2B7530:  MOV.W           R2, #0x334; size_t
2B7534:  MOV             R1, R6; void *
2B7536:  BLX             memcpy_0
2B753A:  MOVW            R0, #0x1A58
2B753E:  ADDS            R5, R4, R0
2B7540:  MOV             R0, R6; void *
2B7542:  MOV.W           R2, #0x334; size_t
2B7546:  MOV             R1, R5; void *
2B7548:  BLX             memcpy_0
2B754C:  MOVW            R0, #0x1D8C
2B7550:  ADDS            R6, R4, R0
2B7552:  MOV             R0, R5; void *
2B7554:  MOV.W           R2, #0x334; size_t
2B7558:  MOV             R1, R6; void *
2B755A:  BLX             memcpy_0
2B755E:  LDR             R0, =(byte_61CD7E - 0x2B7566)
2B7560:  MOV             R1, R6; unsigned __int16 *
2B7562:  ADD             R0, PC; byte_61CD7E ; char *
2B7564:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B7568:  MOVW            R1, #0x20B0
2B756C:  LDR             R0, =(AudioEngine_ptr - 0x2B757A)
2B756E:  STRH.W          R8, [R4,R1]
2B7572:  MOVW            R1, #0x20AC
2B7576:  ADD             R0, PC; AudioEngine_ptr
2B7578:  STR.W           R8, [R4,R1]
2B757C:  MOVW            R1, #0x20B4
2B7580:  STR.W           R8, [R4,R1]
2B7584:  MOVW            R1, #0x20B8
2B7588:  STR.W           R8, [R4,R1]
2B758C:  MOVW            R1, #0x20BC
2B7590:  LDR             R0, [R0]; AudioEngine ; this
2B7592:  STR.W           R8, [R4,R1]
2B7596:  MOVS            R1, #0x20 ; ' '; int
2B7598:  MOVS            R2, #0; float
2B759A:  MOV.W           R3, #0x3F800000; float
2B759E:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
2B75A2:  B               def_2B7304; jumptable 002B7304 default case
2B75A4:  LDR             R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2B75B2); jumptable 002B7304 case 5
2B75A6:  VMOV.F32        S4, #1.0
2B75AA:  VLDR            S0, [R4,#0x98]
2B75AE:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2B75B0:  VLDR            S2, =0.325
2B75B4:  VCVT.F64.F32    D16, S0
2B75B8:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2B75BA:  VLDR            D17, [R0]
2B75BE:  VADD.F64        D16, D17, D16
2B75C2:  VCVT.F32.F64    S0, D16
2B75C6:  VMIN.F32        D0, D0, D1
2B75CA:  VDIV.F32        S2, S0, S2
2B75CE:  VMIN.F32        D1, D1, D2
2B75D2:  VSUB.F32        S2, S4, S2
2B75D6:  VCMP.F32        S2, #0.0
2B75DA:  VSTR            S2, [R4,#0x90]
2B75DE:  VMRS            APSR_nzcv, FPSCR
2B75E2:  VSTR            S2, [R4,#0x94]
2B75E6:  VSTR            S0, [R4,#0x98]
2B75EA:  ITTT EQ
2B75EC:  VLDREQ          S0, [R4,#0xA4]
2B75F0:  VCMPEQ.F32      S0, #0.0
2B75F4:  VMRSEQ          APSR_nzcv, FPSCR
2B75F8:  BNE             def_2B7304; jumptable 002B7304 default case
2B75FA:  LDR             R0, =(byte_61CD7E - 0x2B7608)
2B75FC:  MOVS            R1, #0
2B75FE:  STRD.W          R1, R1, [R4,#0x98]
2B7602:  MOV             R1, R5; unsigned __int16 *
2B7604:  ADD             R0, PC; byte_61CD7E ; char *
2B7606:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B760A:  B               def_2B7304; jumptable 002B7304 default case
2B760C:  VLDR            S4, [R4,#0x98]
2B7610:  VLDR            S2, [R4,#0x3D8]
2B7614:  VMUL.F32        S16, S16, S0
2B7618:  VCMP.F32        S4, S2
2B761C:  VMRS            APSR_nzcv, FPSCR
2B7620:  BNE             def_2B7304; jumptable 002B7304 default case
2B7622:  ADD.W           R0, R4, #0x3EC; this
2B7626:  BLX             j__ZN9CMessages18GetGxtStringLengthEPt; CMessages::GetGxtStringLength(ushort *)
2B762A:  CMP             R0, #0
2B762C:  MOV.W           R1, #5
2B7630:  IT NE
2B7632:  MOVNE           R1, #3
2B7634:  MOVS            R0, #0
2B7636:  STR.W           R0, [R4,#0x98]
2B763A:  STR.W           R1, [R4,#0x9C]
2B763E:  VLDR            S0, [R4,#0xA4]; jumptable 002B7304 default case
2B7642:  VCMPE.F32       S16, S0
2B7646:  VMRS            APSR_nzcv, FPSCR
2B764A:  BLE             loc_2B7688
2B764C:  LDR             R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2B7654)
2B764E:  LDR             R1, =(RsGlobal_ptr - 0x2B765A)
2B7650:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2B7652:  VLDR            D16, =0.224999994
2B7656:  ADD             R1, PC; RsGlobal_ptr
2B7658:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2B765A:  VLDR            D17, [R0]
2B765E:  LDR             R0, [R1]; RsGlobal
2B7660:  VMUL.F64        D16, D17, D16
2B7664:  VLDR            S2, [R0,#8]
2B7668:  VCVT.F64.S32    D17, S2
2B766C:  VMUL.F64        D16, D16, D17
2B7670:  VCVT.F64.F32    D17, S0
2B7674:  VADD.F64        D16, D16, D17
2B7678:  VCVT.F32.F64    S0, D16
2B767C:  VMIN.F32        D0, D8, D0
2B7680:  B               loc_2B76BE
2B7682:  ALIGN 4
2B7684:  DCFS 0.0
2B7688:  BGE             loc_2B76C2
2B768A:  LDR             R0, =(_ZN7CWidget14m_fElapsedTimeE_ptr - 0x2B7692)
2B768C:  LDR             R1, =(RsGlobal_ptr - 0x2B7698)
2B768E:  ADD             R0, PC; _ZN7CWidget14m_fElapsedTimeE_ptr
2B7690:  VLDR            D16, =-0.224999994
2B7694:  ADD             R1, PC; RsGlobal_ptr
2B7696:  LDR             R0, [R0]; CWidget::m_fElapsedTime ...
2B7698:  VLDR            D17, [R0]
2B769C:  LDR             R0, [R1]; RsGlobal
2B769E:  VMUL.F64        D16, D17, D16
2B76A2:  VLDR            S2, [R0,#8]
2B76A6:  VCVT.F64.S32    D17, S2
2B76AA:  VMUL.F64        D16, D16, D17
2B76AE:  VCVT.F64.F32    D17, S0
2B76B2:  VADD.F64        D16, D17, D16
2B76B6:  VCVT.F32.F64    S0, D16
2B76BA:  VMAX.F32        D0, D8, D0
2B76BE:  VSTR            S0, [R4,#0xA4]
2B76C2:  VLDR            S2, [R4,#0x2C]
2B76C6:  LDR.W           R0, [R4,#0x9C]
2B76CA:  VADD.F32        S0, S2, S0
2B76CE:  CMP             R0, #0
2B76D0:  VSTR            S0, [R4,#0x24]
2B76D4:  BEQ             loc_2B76E8
2B76D6:  MOV             R0, R4; this
2B76D8:  VPOP            {D8}
2B76DC:  POP.W           {R8}
2B76E0:  POP.W           {R4-R7,LR}
2B76E4:  B.W             _ZN15CWidgetHelpText14RenderTopStyleEv; CWidgetHelpText::RenderTopStyle(void)
2B76E8:  VPOP            {D8}
2B76EC:  POP.W           {R8}
2B76F0:  POP             {R4-R7,PC}
