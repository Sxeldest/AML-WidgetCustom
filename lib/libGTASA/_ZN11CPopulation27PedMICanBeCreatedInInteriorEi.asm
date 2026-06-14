; =========================================================
; Game Engine Function: _ZN11CPopulation27PedMICanBeCreatedInInteriorEi
; Address            : 0x4CFDB0 - 0x4CFDC8
; =========================================================

4CFDB0:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFDB6)
4CFDB2:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFDB4:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4CFDB6:  LDR.W           R0, [R1,R0,LSL#2]
4CFDBA:  LDR             R0, [R0,#0x40]
4CFDBC:  SUBS            R1, R0, #6
4CFDBE:  MOVS            R0, #0
4CFDC0:  CMP             R1, #0x10
4CFDC2:  IT HI
4CFDC4:  MOVHI           R0, #1
4CFDC6:  BX              LR
