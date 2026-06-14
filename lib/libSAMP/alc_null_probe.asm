; =========================================================
; Game Engine Function: alc_null_probe
; Address            : 0x1E2200 - 0x1E2228
; =========================================================

1E2200:  CMP             R0, #1
1E2204:  BEQ             loc_1E221C
1E2208:  CMP             R0, #0
1E220C:  BXNE            LR
1E2210:  LDR             R0, =(aNoOutput - 0x1E221C); "No Output" ...
1E2214:  ADD             R0, PC, R0; "No Output"
1E2218:  B               j_AppendDeviceList
1E221C:  LDR             R0, =(aNoOutput - 0x1E2228); "No Output" ...
1E2220:  ADD             R0, PC, R0; "No Output"
1E2224:  B               j_AppendAllDeviceList
