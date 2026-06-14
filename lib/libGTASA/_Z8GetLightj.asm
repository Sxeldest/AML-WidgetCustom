; =========================================================
; Game Engine Function: _Z8GetLightj
; Address            : 0x1B9AE8 - 0x1B9AF6
; =========================================================

1B9AE8:  LDR             R1, =(EmulatorLights_ptr - 0x1B9AF0)
1B9AEA:  MOVS            R2, #0x6C ; 'l'
1B9AEC:  ADD             R1, PC; EmulatorLights_ptr
1B9AEE:  LDR             R1, [R1]; EmulatorLights
1B9AF0:  MLA.W           R0, R0, R2, R1
1B9AF4:  BX              LR
