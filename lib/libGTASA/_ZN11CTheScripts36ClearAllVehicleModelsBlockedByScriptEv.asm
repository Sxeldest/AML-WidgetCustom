; =========================================================
; Game Engine Function: _ZN11CTheScripts36ClearAllVehicleModelsBlockedByScriptEv
; Address            : 0x32F0D0 - 0x32F0E4
; =========================================================

32F0D0:  PUSH            {R7,LR}
32F0D2:  MOV             R7, SP
32F0D4:  LDR             R0, =(_ZN11CTheScripts28VehicleModelsBlockedByScriptE_ptr - 0x32F0DE)
32F0D6:  MOVS            R1, #0x50 ; 'P'
32F0D8:  MOVS            R2, #0xFF
32F0DA:  ADD             R0, PC; _ZN11CTheScripts28VehicleModelsBlockedByScriptE_ptr
32F0DC:  LDR             R0, [R0]; CTheScripts::VehicleModelsBlockedByScript ...
32F0DE:  BLX             j___aeabi_memset8_0
32F0E2:  POP             {R7,PC}
