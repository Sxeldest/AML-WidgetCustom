; =========================================================
; Game Engine Function: _ZN10CModelInfo11IsHeliModelEi
; Address            : 0x3861BC - 0x3861F0
; =========================================================

3861BC:  PUSH            {R4,R6,R7,LR}
3861BE:  ADD             R7, SP, #8
3861C0:  MOV             R4, R0
3861C2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3861C8)
3861C4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3861C6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3861C8:  LDR.W           R0, [R0,R4,LSL#2]
3861CC:  CBZ             R0, loc_3861EC
3861CE:  LDR             R1, [R0]
3861D0:  LDR             R1, [R1,#0x14]
3861D2:  BLX             R1
3861D4:  CMP             R0, #6
3861D6:  BNE             loc_3861EC
3861D8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3861DE)
3861DA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3861DC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3861DE:  LDR.W           R0, [R0,R4,LSL#2]
3861E2:  LDR             R0, [R0,#0x54]
3861E4:  CMP             R0, #3
3861E6:  ITT EQ
3861E8:  MOVEQ           R0, #1
3861EA:  POPEQ           {R4,R6,R7,PC}
3861EC:  MOVS            R0, #0
3861EE:  POP             {R4,R6,R7,PC}
