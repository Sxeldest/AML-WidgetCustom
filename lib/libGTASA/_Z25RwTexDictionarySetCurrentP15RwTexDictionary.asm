; =========================================================
; Game Engine Function: _Z25RwTexDictionarySetCurrentP15RwTexDictionary
; Address            : 0x1DBA48 - 0x1DBA5C
; =========================================================

1DBA48:  LDR             R1, =(RwEngineInstance_ptr - 0x1DBA50)
1DBA4A:  LDR             R2, =(dword_6BCF84 - 0x1DBA52)
1DBA4C:  ADD             R1, PC; RwEngineInstance_ptr
1DBA4E:  ADD             R2, PC; dword_6BCF84
1DBA50:  LDR             R1, [R1]; RwEngineInstance
1DBA52:  LDR             R2, [R2]
1DBA54:  LDR             R1, [R1]
1DBA56:  ADD             R1, R2
1DBA58:  STR             R0, [R1,#0x10]
1DBA5A:  BX              LR
