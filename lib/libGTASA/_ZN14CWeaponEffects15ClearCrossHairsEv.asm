; =========================================================
; Game Engine Function: _ZN14CWeaponEffects15ClearCrossHairsEv
; Address            : 0x5E32CC - 0x5E32DC
; =========================================================

5E32CC:  LDR             R0, =(gCrossHair_ptr - 0x5E32D4)
5E32CE:  MOVS            R1, #0
5E32D0:  ADD             R0, PC; gCrossHair_ptr
5E32D2:  LDR             R0, [R0]; gCrossHair
5E32D4:  STRB.W          R1, [R0,#(byte_A86238 - 0xA8620C)]
5E32D8:  STRB            R1, [R0]
5E32DA:  BX              LR
