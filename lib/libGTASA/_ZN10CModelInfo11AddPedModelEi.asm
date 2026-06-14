; =========================================================
; Game Engine Function: _ZN10CModelInfo11AddPedModelEi
; Address            : 0x3860C4 - 0x3860F2
; =========================================================

3860C4:  PUSH            {R4,R5,R7,LR}
3860C6:  ADD             R7, SP, #8
3860C8:  MOV             R4, R0
3860CA:  LDR             R0, =(dword_915FC8 - 0x3860D2)
3860CC:  MOVS            R2, #0x5C ; '\'
3860CE:  ADD             R0, PC; dword_915FC8
3860D0:  LDR             R1, [R0]
3860D2:  MLA.W           R5, R1, R2, R0
3860D6:  ADDS            R1, #1
3860D8:  STR             R1, [R0]
3860DA:  LDR.W           R0, [R5,#4]!
3860DE:  LDR             R1, [R0,#0x1C]
3860E0:  MOV             R0, R5
3860E2:  BLX             R1
3860E4:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3860EA)
3860E6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3860E8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3860EA:  STR.W           R5, [R0,R4,LSL#2]
3860EE:  MOV             R0, R5
3860F0:  POP             {R4,R5,R7,PC}
