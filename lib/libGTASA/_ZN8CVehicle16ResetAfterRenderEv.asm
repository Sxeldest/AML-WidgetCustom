; =========================================================
; Game Engine Function: _ZN8CVehicle16ResetAfterRenderEv
; Address            : 0x582380 - 0x5823B6
; =========================================================

582380:  PUSH            {R4,R6,R7,LR}
582382:  ADD             R7, SP, #8
582384:  MOV             R4, R0
582386:  MOVS            R0, #0x14
582388:  MOVS            R1, #2
58238A:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
58238E:  LDR             R0, [R4,#0x18]
582390:  BLX             j__ZN17CVehicleModelInfo22ResetEditableMaterialsEP7RpClump; CVehicleModelInfo::ResetEditableMaterials(RpClump *)
582394:  LDR.W           R0, [R4,#0x5A0]
582398:  CMP             R0, #0
58239A:  IT NE
58239C:  POPNE           {R4,R6,R7,PC}
58239E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5823A8)
5823A0:  LDRSH.W         R1, [R4,#0x26]
5823A4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5823A6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5823A8:  LDR.W           R1, [R0,R1,LSL#2]
5823AC:  MOV             R0, R4
5823AE:  POP.W           {R4,R6,R7,LR}
5823B2:  B.W             sub_197EB0
