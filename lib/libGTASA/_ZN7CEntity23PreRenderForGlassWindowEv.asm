; =========================================================
; Game Engine Function: _ZN7CEntity23PreRenderForGlassWindowEv
; Address            : 0x3ECFDC - 0x3ED00E
; =========================================================

3ECFDC:  PUSH            {R4,R6,R7,LR}
3ECFDE:  ADD             R7, SP, #8
3ECFE0:  MOV             R4, R0
3ECFE2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3ECFEC)
3ECFE4:  LDRSH.W         R1, [R4,#0x26]; CEntity *
3ECFE8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3ECFEA:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3ECFEC:  LDR.W           R0, [R0,R1,LSL#2]
3ECFF0:  LDRH            R0, [R0,#0x28]
3ECFF2:  AND.W           R0, R0, #0x7800
3ECFF6:  CMP.W           R0, #0x2800
3ECFFA:  IT EQ
3ECFFC:  POPEQ           {R4,R6,R7,PC}
3ECFFE:  MOV             R0, R4; this
3ED000:  BLX             j__ZN6CGlass31AskForObjectToBeRenderedInGlassEP7CEntity; CGlass::AskForObjectToBeRenderedInGlass(CEntity *)
3ED004:  LDR             R0, [R4,#0x1C]
3ED006:  BIC.W           R0, R0, #0x80
3ED00A:  STR             R0, [R4,#0x1C]
3ED00C:  POP             {R4,R6,R7,PC}
