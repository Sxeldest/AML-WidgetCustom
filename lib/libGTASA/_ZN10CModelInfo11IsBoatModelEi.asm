; =========================================================
; Game Engine Function: _ZN10CModelInfo11IsBoatModelEi
; Address            : 0x386108 - 0x38613C
; =========================================================

386108:  PUSH            {R4,R6,R7,LR}
38610A:  ADD             R7, SP, #8
38610C:  MOV             R4, R0
38610E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386114)
386110:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
386112:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386114:  LDR.W           R0, [R0,R4,LSL#2]
386118:  CBZ             R0, loc_386138
38611A:  LDR             R1, [R0]
38611C:  LDR             R1, [R1,#0x14]
38611E:  BLX             R1
386120:  CMP             R0, #6
386122:  BNE             loc_386138
386124:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x38612A)
386126:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
386128:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
38612A:  LDR.W           R0, [R0,R4,LSL#2]
38612E:  LDR             R0, [R0,#0x54]
386130:  CMP             R0, #5
386132:  ITT EQ
386134:  MOVEQ           R0, #1
386136:  POPEQ           {R4,R6,R7,PC}
386138:  MOVS            R0, #0
38613A:  POP             {R4,R6,R7,PC}
