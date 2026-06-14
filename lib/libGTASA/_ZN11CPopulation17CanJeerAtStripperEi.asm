; =========================================================
; Game Engine Function: _ZN11CPopulation17CanJeerAtStripperEi
; Address            : 0x4D0DD4 - 0x4D0DEA
; =========================================================

4D0DD4:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D0DDA)
4D0DD6:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D0DD8:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4D0DDA:  LDR.W           R0, [R1,R0,LSL#2]
4D0DDE:  LDR             R1, [R0,#0x40]
4D0DE0:  MOVS            R0, #0
4D0DE2:  CMP             R1, #4
4D0DE4:  IT EQ
4D0DE6:  MOVEQ           R0, #1
4D0DE8:  BX              LR
