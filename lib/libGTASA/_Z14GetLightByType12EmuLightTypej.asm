; =========================================================
; Game Engine Function: _Z14GetLightByType12EmuLightTypej
; Address            : 0x1B9AFC - 0x1B9B0C
; =========================================================

1B9AFC:  LDR             R2, =(AssignedLights_ptr - 0x1B9B02)
1B9AFE:  ADD             R2, PC; AssignedLights_ptr
1B9B00:  LDR             R2, [R2]; AssignedLights
1B9B02:  ADD.W           R0, R2, R0,LSL#5
1B9B06:  LDR.W           R0, [R0,R1,LSL#2]
1B9B0A:  BX              LR
