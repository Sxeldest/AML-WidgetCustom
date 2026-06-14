; =========================================================
; Game Engine Function: _ZN10CModelInfo10IsCarModelEi
; Address            : 0x386144 - 0x386176
; =========================================================

386144:  PUSH            {R4,R6,R7,LR}
386146:  ADD             R7, SP, #8
386148:  MOV             R4, R0
38614A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386150)
38614C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
38614E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386150:  LDR.W           R0, [R0,R4,LSL#2]
386154:  CBZ             R0, loc_38616E
386156:  LDR             R1, [R0]
386158:  LDR             R1, [R1,#0x14]
38615A:  BLX             R1
38615C:  CMP             R0, #6
38615E:  BNE             loc_38616E
386160:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386166)
386162:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
386164:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386166:  LDR.W           R0, [R0,R4,LSL#2]
38616A:  LDR             R0, [R0,#0x54]
38616C:  CBZ             R0, loc_386172
38616E:  MOVS            R0, #0
386170:  POP             {R4,R6,R7,PC}
386172:  MOVS            R0, #1
386174:  POP             {R4,R6,R7,PC}
