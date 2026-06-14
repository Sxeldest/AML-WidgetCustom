; =========================================================
; Game Engine Function: _ZN14BreakManager_c6RenderEh
; Address            : 0x452656 - 0x4526A8
; =========================================================

452656:  PUSH            {R4-R7,LR}
452658:  ADD             R7, SP, #0xC
45265A:  PUSH.W          {R11}
45265E:  MOV             R4, R1
452660:  MOV             R5, R0
452662:  MOVS            R0, #0xC
452664:  MOVS            R1, #1
452666:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
45266A:  MOVS            R0, #0xA
45266C:  MOVS            R1, #5
45266E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
452672:  MOVS            R0, #0xB
452674:  MOVS            R1, #6
452676:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
45267A:  MOVS            R0, #0xE
45267C:  MOVS            R1, #1
45267E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
452682:  MOVS            R0, #8
452684:  MOVS            R1, #0
452686:  MOVS            R6, #0
452688:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
45268C:  ADDS            R0, R5, R6; this
45268E:  LDRB            R1, [R0,#1]
452690:  CMP             R1, #0
452692:  ITT NE
452694:  MOVNE           R1, R4; unsigned __int8
452696:  BLXNE           j__ZN13BreakObject_c6RenderEh; BreakObject_c::Render(uchar)
45269A:  ADDS            R6, #0x20 ; ' '
45269C:  CMP.W           R6, #0x800
4526A0:  BNE             loc_45268C
4526A2:  POP.W           {R11}
4526A6:  POP             {R4-R7,PC}
