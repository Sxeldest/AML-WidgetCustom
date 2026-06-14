; =========================================================
; Game Engine Function: _ZN11CTheScripts27ClearAllSuppressedCarModelsEv
; Address            : 0x32EFA0 - 0x32EFB4
; =========================================================

32EFA0:  PUSH            {R7,LR}
32EFA2:  MOV             R7, SP
32EFA4:  LDR             R0, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x32EFAE)
32EFA6:  MOVS            R1, #0xA0
32EFA8:  MOVS            R2, #0xFF
32EFAA:  ADD             R0, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
32EFAC:  LDR             R0, [R0]; CTheScripts::SuppressedVehicleModels ...
32EFAE:  BLX             j___aeabi_memset8_0
32EFB2:  POP             {R7,PC}
