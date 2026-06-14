; =========================================================
; Game Engine Function: _Z38RwTexDictionarySetFreeListCreateParamsii
; Address            : 0x1DBD98 - 0x1DBDA6
; =========================================================

1DBD98:  LDR             R2, =(dword_6825F4 - 0x1DBDA0)
1DBD9A:  LDR             R3, =(dword_6825F0 - 0x1DBDA2)
1DBD9C:  ADD             R2, PC; dword_6825F4
1DBD9E:  ADD             R3, PC; dword_6825F0
1DBDA0:  STR             R1, [R2]
1DBDA2:  STR             R0, [R3]
1DBDA4:  BX              LR
