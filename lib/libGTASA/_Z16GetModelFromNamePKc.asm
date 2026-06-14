; =========================================================
; Game Engine Function: _Z16GetModelFromNamePKc
; Address            : 0x389284 - 0x389294
; =========================================================

389284:  LDR             R1, =(_ZN10CModelInfo23ms_lastPositionSearchedE_ptr - 0x38928C)
389286:  MOVS            R2, #0; int *
389288:  ADD             R1, PC; _ZN10CModelInfo23ms_lastPositionSearchedE_ptr
38928A:  LDR             R1, [R1]; CModelInfo::ms_lastPositionSearched ...
38928C:  STR             R2, [R1]; CModelInfo::ms_lastPositionSearched
38928E:  MOVS            R1, #0; char *
389290:  B.W             sub_191F90
