; =========================================================
; Game Engine Function: _ZN11CPopulation21CanSolicitPlayerInCarEi
; Address            : 0x4D0DB8 - 0x4D0DCE
; =========================================================

4D0DB8:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D0DBE)
4D0DBA:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D0DBC:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4D0DBE:  LDR.W           R0, [R1,R0,LSL#2]
4D0DC2:  LDR             R1, [R0,#0x40]
4D0DC4:  MOVS            R0, #0
4D0DC6:  CMP             R1, #0x16
4D0DC8:  IT EQ
4D0DCA:  MOVEQ           R0, #1
4D0DCC:  BX              LR
