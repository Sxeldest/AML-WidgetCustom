; =========================================================
; Game Engine Function: _Z14GetGTA3ImgSizev
; Address            : 0x2C9A18 - 0x2C9A22
; =========================================================

2C9A18:  LDR             R0, =(dword_70BE58 - 0x2C9A1E)
2C9A1A:  ADD             R0, PC; dword_70BE58
2C9A1C:  LDR             R0, [R0]; void *
2C9A1E:  B.W             j_j__Z11OS_FileSizePv; j_OS_FileSize(void *)
