; =========================================================
; Game Engine Function: _Z25RwTexDictionaryGetCurrentv
; Address            : 0x1DBA64 - 0x1DBA78
; =========================================================

1DBA64:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBA6C)
1DBA66:  LDR             R1, =(dword_6BCF84 - 0x1DBA6E)
1DBA68:  ADD             R0, PC; RwEngineInstance_ptr
1DBA6A:  ADD             R1, PC; dword_6BCF84
1DBA6C:  LDR             R0, [R0]; RwEngineInstance
1DBA6E:  LDR             R1, [R1]
1DBA70:  LDR             R0, [R0]
1DBA72:  ADD             R0, R1
1DBA74:  LDR             R0, [R0,#0x10]
1DBA76:  BX              LR
