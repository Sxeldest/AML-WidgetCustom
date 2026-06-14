; =========================================================
; Game Engine Function: _Z25WasForegroundAppLastFramev
; Address            : 0x5E4FF8 - 0x5E5008
; =========================================================

5E4FF8:  LDR             R0, =(WasForegroundApp_ptr - 0x5E4FFE)
5E4FFA:  ADD             R0, PC; WasForegroundApp_ptr
5E4FFC:  LDR             R0, [R0]; WasForegroundApp
5E4FFE:  LDR             R0, [R0]
5E5000:  CMP             R0, #0
5E5002:  IT NE
5E5004:  MOVNE           R0, #1
5E5006:  BX              LR
