; =========================================================
; Game Engine Function: _ZN10MobileMenu15PrepareToRenderEv
; Address            : 0x29A504 - 0x29A5A0
; =========================================================

29A504:  PUSH            {R4,R6,R7,LR}
29A506:  ADD             R7, SP, #8
29A508:  MOVS            R0, #0x437F0000; this
29A50E:  BLX             j__ZN5CFont12SetAlphaFadeEf; CFont::SetAlphaFade(float)
29A512:  BLX             j__ZN9CSprite2d12InitPerFrameEv; CSprite2d::InitPerFrame(void)
29A516:  BLX             j__ZN5CFont12InitPerFrameEv; CFont::InitPerFrame(void)
29A51A:  MOVS            R0, #0; this
29A51C:  MOVS            R1, #0; unsigned __int8
29A51E:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
29A522:  LDR             R0, =(RsGlobal_ptr - 0x29A528)
29A524:  ADD             R0, PC; RsGlobal_ptr
29A526:  LDR             R4, [R0]; RsGlobal
29A528:  LDR             R0, [R4,#(dword_9FC900 - 0x9FC8FC)]
29A52A:  VMOV            S0, R0
29A52E:  VCVT.F32.S32    S0, S0
29A532:  VMOV            R0, S0; this
29A536:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
29A53A:  MOVS            R0, #(stderr+1); this
29A53C:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
29A540:  LDR             R0, [R4,#(dword_9FC900 - 0x9FC8FC)]
29A542:  VMOV            S0, R0
29A546:  VCVT.F32.S32    S0, S0
29A54A:  VMOV            R0, S0; this
29A54E:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
29A552:  MOVS            R0, #(stderr+1); this
29A554:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
29A558:  BLX             j__Z14DefinedState2dv; DefinedState2d(void)
29A55C:  MOVS            R0, #6
29A55E:  MOVS            R1, #0
29A560:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A564:  MOVS            R0, #8
29A566:  MOVS            R1, #0
29A568:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A56C:  MOVS            R0, #0xE
29A56E:  MOVS            R1, #0
29A570:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A574:  MOVS            R0, #0xA
29A576:  MOVS            R1, #5
29A578:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A57C:  MOVS            R0, #0xB
29A57E:  MOVS            R1, #6
29A580:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A584:  MOVS            R0, #0xC
29A586:  MOVS            R1, #1
29A588:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A58C:  MOVS            R0, #9
29A58E:  MOVS            R1, #2
29A590:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A594:  MOVS            R0, #2
29A596:  MOVS            R1, #3
29A598:  POP.W           {R4,R6,R7,LR}
29A59C:  B.W             sub_192888
