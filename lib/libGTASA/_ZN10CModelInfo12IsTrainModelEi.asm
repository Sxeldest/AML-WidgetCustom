; =========================================================
; Game Engine Function: _ZN10CModelInfo12IsTrainModelEi
; Address            : 0x386180 - 0x3861B4
; =========================================================

386180:  PUSH            {R4,R6,R7,LR}
386182:  ADD             R7, SP, #8
386184:  MOV             R4, R0
386186:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x38618C)
386188:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
38618A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
38618C:  LDR.W           R0, [R0,R4,LSL#2]
386190:  CBZ             R0, loc_3861B0
386192:  LDR             R1, [R0]
386194:  LDR             R1, [R1,#0x14]
386196:  BLX             R1
386198:  CMP             R0, #6
38619A:  BNE             loc_3861B0
38619C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3861A2)
38619E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3861A0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3861A2:  LDR.W           R0, [R0,R4,LSL#2]
3861A6:  LDR             R0, [R0,#0x54]
3861A8:  CMP             R0, #6
3861AA:  ITT EQ
3861AC:  MOVEQ           R0, #1
3861AE:  POPEQ           {R4,R6,R7,PC}
3861B0:  MOVS            R0, #0
3861B2:  POP             {R4,R6,R7,PC}
