; =========================================================
; Game Engine Function: _ZN11CPopulation8IsFemaleEi
; Address            : 0x4D0004 - 0x4D001A
; =========================================================

4D0004:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D000A)
4D0006:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D0008:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4D000A:  LDR.W           R0, [R1,R0,LSL#2]
4D000E:  LDR             R1, [R0,#0x40]
4D0010:  MOVS            R0, #0
4D0012:  CMP             R1, #5
4D0014:  IT EQ
4D0016:  MOVEQ           R0, #1
4D0018:  BX              LR
