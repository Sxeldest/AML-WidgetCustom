; =========================================================
; Game Engine Function: JNI_OnUnload
; Address            : 0xF11AC - 0xF11BA
; =========================================================

F11AC:  LDR             R1, =(aAxl - 0xF11B6); "AXL" ...
F11AE:  MOVS            R0, #4
F11B0:  LDR             R2, =(aSaMpLibraryUnl - 0xF11B8); "SA-MP library unloaded!" ...
F11B2:  ADD             R1, PC; "AXL"
F11B4:  ADD             R2, PC; "SA-MP library unloaded!"
F11B6:  B.W             sub_2242C8
