; =========================================================
; Game Engine Function: _Z11NVLogEnable11ENVLogLevelh
; Address            : 0x277004 - 0x277028
; =========================================================

277004:  CBZ             R1, loc_277012
277006:  LDR             R1, =(g_NVLogMask_ptr - 0x27700C)
277008:  ADD             R1, PC; g_NVLogMask_ptr
27700A:  LDR             R1, [R1]; g_NVLogMask
27700C:  LDR             R1, [R1]
27700E:  ORRS            R0, R1
277010:  B               loc_27701E
277012:  LDR             R1, =(g_NVLogMask_ptr - 0x277018)
277014:  ADD             R1, PC; g_NVLogMask_ptr
277016:  LDR             R1, [R1]; g_NVLogMask
277018:  LDR             R1, [R1]
27701A:  BIC.W           R0, R1, R0
27701E:  LDR             R1, =(g_NVLogMask_ptr - 0x277024)
277020:  ADD             R1, PC; g_NVLogMask_ptr
277022:  LDR             R1, [R1]; g_NVLogMask
277024:  STR             R0, [R1]
277026:  BX              LR
