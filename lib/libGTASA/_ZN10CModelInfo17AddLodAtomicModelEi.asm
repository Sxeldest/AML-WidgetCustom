; =========================================================
; Game Engine Function: _ZN10CModelInfo17AddLodAtomicModelEi
; Address            : 0x385F7C - 0x385FAC
; =========================================================

385F7C:  PUSH            {R4,R5,R7,LR}
385F7E:  ADD             R7, SP, #8
385F80:  MOV             R4, R0
385F82:  LDR             R0, =(dword_8E0E28 - 0x385F88)
385F84:  ADD             R0, PC; dword_8E0E28
385F86:  LDR             R1, [R0]
385F88:  ADDS            R2, R1, #1
385F8A:  STR             R2, [R0]
385F8C:  RSB.W           R1, R1, R1,LSL#4
385F90:  ADD.W           R5, R0, R1,LSL#2
385F94:  LDR.W           R0, [R5,#4]!
385F98:  LDR             R1, [R0,#0x1C]
385F9A:  MOV             R0, R5
385F9C:  BLX             R1
385F9E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x385FA4)
385FA0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
385FA2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
385FA4:  STR.W           R5, [R0,R4,LSL#2]
385FA8:  MOV             R0, R5
385FAA:  POP             {R4,R5,R7,PC}
