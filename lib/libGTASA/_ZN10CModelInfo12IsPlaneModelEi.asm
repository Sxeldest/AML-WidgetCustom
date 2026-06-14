; =========================================================
; Game Engine Function: _ZN10CModelInfo12IsPlaneModelEi
; Address            : 0x3861F8 - 0x38622C
; =========================================================

3861F8:  PUSH            {R4,R6,R7,LR}
3861FA:  ADD             R7, SP, #8
3861FC:  MOV             R4, R0
3861FE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386204)
386200:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
386202:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386204:  LDR.W           R0, [R0,R4,LSL#2]
386208:  CBZ             R0, loc_386228
38620A:  LDR             R1, [R0]
38620C:  LDR             R1, [R1,#0x14]
38620E:  BLX             R1
386210:  CMP             R0, #6
386212:  BNE             loc_386228
386214:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x38621A)
386216:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
386218:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
38621A:  LDR.W           R0, [R0,R4,LSL#2]
38621E:  LDR             R0, [R0,#0x54]
386220:  CMP             R0, #4
386222:  ITT EQ
386224:  MOVEQ           R0, #1
386226:  POPEQ           {R4,R6,R7,PC}
386228:  MOVS            R0, #0
38622A:  POP             {R4,R6,R7,PC}
