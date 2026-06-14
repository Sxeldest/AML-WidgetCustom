; =========================================================
; Game Engine Function: _Z29RwTexDictionaryGetNumTexturesP15RwTexDictionary
; Address            : 0x1DBA0E - 0x1DBA22
; =========================================================

1DBA0E:  ADD.W           R1, R0, #8
1DBA12:  MOV.W           R0, #0xFFFFFFFF
1DBA16:  MOV             R2, R1
1DBA18:  LDR             R2, [R2]
1DBA1A:  ADDS            R0, #1
1DBA1C:  CMP             R2, R1
1DBA1E:  BNE             loc_1DBA18
1DBA20:  BX              LR
