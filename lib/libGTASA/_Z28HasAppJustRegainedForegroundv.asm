; =========================================================
; Game Engine Function: _Z28HasAppJustRegainedForegroundv
; Address            : 0x5E500C - 0x5E501E
; =========================================================

5E500C:  LDR             R0, =(WasForegroundApp_ptr - 0x5E5012)
5E500E:  ADD             R0, PC; WasForegroundApp_ptr
5E5010:  LDR             R0, [R0]; WasForegroundApp
5E5012:  LDR             R1, [R0]
5E5014:  MOVS            R0, #0
5E5016:  CMP             R1, #0
5E5018:  IT EQ
5E501A:  MOVEQ           R0, #1
5E501C:  BX              LR
