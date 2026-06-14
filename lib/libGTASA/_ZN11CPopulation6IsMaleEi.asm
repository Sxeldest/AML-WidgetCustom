; =========================================================
; Game Engine Function: _ZN11CPopulation6IsMaleEi
; Address            : 0x4CFFE8 - 0x4CFFFE
; =========================================================

4CFFE8:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CFFEE)
4CFFEA:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CFFEC:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4CFFEE:  LDR.W           R0, [R1,R0,LSL#2]
4CFFF2:  LDR             R1, [R0,#0x40]
4CFFF4:  MOVS            R0, #0
4CFFF6:  CMP             R1, #4
4CFFF8:  IT EQ
4CFFFA:  MOVEQ           R0, #1
4CFFFC:  BX              LR
