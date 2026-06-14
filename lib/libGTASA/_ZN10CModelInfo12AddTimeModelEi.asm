; =========================================================
; Game Engine Function: _ZN10CModelInfo12AddTimeModelEi
; Address            : 0x385FB4 - 0x385FE4
; =========================================================

385FB4:  PUSH            {R4,R5,R7,LR}
385FB6:  ADD             R7, SP, #8
385FB8:  MOV             R4, R0
385FBA:  LDR             R0, =(dword_8E0E68 - 0x385FC0)
385FBC:  ADD             R0, PC; dword_8E0E68
385FBE:  LDR             R1, [R0]
385FC0:  ADDS            R2, R1, #1
385FC2:  STR             R2, [R0]
385FC4:  RSB.W           R1, R1, R1,LSL#4
385FC8:  ADD.W           R5, R0, R1,LSL#2
385FCC:  LDR.W           R0, [R5,#4]!
385FD0:  LDR             R1, [R0,#0x1C]
385FD2:  MOV             R0, R5
385FD4:  BLX             R1
385FD6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x385FDC)
385FD8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
385FDA:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
385FDC:  STR.W           R5, [R0,R4,LSL#2]
385FE0:  MOV             R0, R5
385FE2:  POP             {R4,R5,R7,PC}
