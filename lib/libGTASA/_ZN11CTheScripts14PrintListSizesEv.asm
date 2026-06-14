; =========================================================
; Game Engine Function: _ZN11CTheScripts14PrintListSizesEv
; Address            : 0x329990 - 0x3299AA
; =========================================================

329990:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x329996)
329992:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
329994:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
329996:  LDR             R0, [R0]; CTheScripts::pActiveScripts
329998:  CMP             R0, #0
32999A:  BNE             loc_329996
32999C:  LDR             R0, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x3299A2)
32999E:  ADD             R0, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
3299A0:  LDR             R0, [R0]; CTheScripts::pIdleScripts ...
3299A2:  LDR             R0, [R0]; CTheScripts::pIdleScripts
3299A4:  CMP             R0, #0
3299A6:  BNE             loc_3299A2
3299A8:  BX              LR
