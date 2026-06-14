; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime12SetWriteModeEb
; Address            : 0x1EA08C - 0x1EA096
; =========================================================

1EA08C:  LDR             R1, =(_ZN22TextureDatabaseRuntime11isWriteModeE_ptr - 0x1EA092)
1EA08E:  ADD             R1, PC; _ZN22TextureDatabaseRuntime11isWriteModeE_ptr
1EA090:  LDR             R1, [R1]; TextureDatabaseRuntime::isWriteMode ...
1EA092:  STRB            R0, [R1]; TextureDatabaseRuntime::isWriteMode
1EA094:  BX              LR
