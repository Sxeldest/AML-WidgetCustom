; =========================================================
; Game Engine Function: _ZN11CPopulation28PedMICanBeCreatedAtAttractorEi
; Address            : 0x4CFA20 - 0x4CFA3A
; =========================================================

4CFA20:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFA26)
4CFA22:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFA24:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4CFA26:  LDR.W           R0, [R1,R0,LSL#2]
4CFA2A:  LDR             R0, [R0,#0x40]
4CFA2C:  SUB.W           R1, R0, #0x11
4CFA30:  MOVS            R0, #0
4CFA32:  CMP             R1, #5
4CFA34:  IT HI
4CFA36:  MOVHI           R0, #1
4CFA38:  BX              LR
