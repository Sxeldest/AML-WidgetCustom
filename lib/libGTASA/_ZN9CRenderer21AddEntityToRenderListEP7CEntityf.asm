; =========================================================
; Game Engine Function: _ZN9CRenderer21AddEntityToRenderListEP7CEntityf
; Address            : 0x410F98 - 0x411012
; =========================================================

410F98:  PUSH            {R4,R5,R7,LR}
410F9A:  ADD             R7, SP, #8
410F9C:  MOV             R4, R0
410F9E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x410FAA)
410FA0:  LDRSH.W         R2, [R4,#0x26]
410FA4:  MOV             R5, R4
410FA6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
410FA8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
410FAA:  LDR.W           R0, [R0,R2,LSL#2]
410FAE:  LDRH            R2, [R0,#0x28]
410FB0:  BIC.W           R2, R2, #1; float
410FB4:  STRH            R2, [R0,#0x28]
410FB6:  LDR.W           R0, [R5,#0x1C]!
410FBA:  TST.W           R0, #0x8000
410FBE:  BNE             loc_410FD8
410FC0:  LSLS            R0, R0, #0x11
410FC2:  BPL             loc_410FE4
410FC4:  MOV             R0, R4; this
410FC6:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
410FCA:  CMP             R0, #1
410FCC:  BNE             loc_410FE4
410FCE:  LDR             R0, [R5]
410FD0:  BIC.W           R0, R0, #0x8000
410FD4:  STR             R0, [R5]
410FD6:  POP             {R4,R5,R7,PC}
410FD8:  MOV             R0, R4; this
410FDA:  BLX             j__ZN18CVisibilityPlugins26InsertEntityIntoSortedListEP7CEntityf; CVisibilityPlugins::InsertEntityIntoSortedList(CEntity *,float)
410FDE:  CMP             R0, #0
410FE0:  IT NE
410FE2:  POPNE           {R4,R5,R7,PC}
410FE4:  LDRB.W          R0, [R4,#0x3B]
410FE8:  CBZ             R0, loc_410FFA
410FEA:  LDRB            R0, [R5,#2]
410FEC:  LSLS            R0, R0, #0x1B
410FEE:  BMI             loc_410FFA
410FF0:  LDR             R0, =(_ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr - 0x410FF8)
410FF2:  LDR             R1, =(_ZN9CRenderer18ms_aVisibleLodPtrsE_ptr - 0x410FFA)
410FF4:  ADD             R0, PC; _ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr
410FF6:  ADD             R1, PC; _ZN9CRenderer18ms_aVisibleLodPtrsE_ptr
410FF8:  B               loc_411002
410FFA:  LDR             R0, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x411002)
410FFC:  LDR             R1, =(_ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr - 0x411004)
410FFE:  ADD             R0, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
411000:  ADD             R1, PC; _ZN9CRenderer21ms_aVisibleEntityPtrsE_ptr
411002:  LDR             R0, [R0]; CRenderer::ms_nNoOfVisibleEntities
411004:  LDR             R1, [R1]; CRenderer::ms_aVisibleEntityPtrs
411006:  LDR             R2, [R0]; CRenderer::ms_nNoOfVisibleEntities
411008:  B.W             loc_3F679A
41100C:  ADDS            R1, R2, #1
41100E:  STR             R1, [R0]; CRenderer::ms_nNoOfVisibleEntities
411010:  POP             {R4,R5,R7,PC}
