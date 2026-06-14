; =========================================================
; Game Engine Function: _ZN4CPad14CheckPointSaveEv
; Address            : 0x3F98D4 - 0x3F98E6
; =========================================================

3F98D4:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x3F98DA)
3F98D6:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
3F98D8:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
3F98DA:  LDR             R0, [R0]; CTheScripts::pActiveScripts
3F98DC:  ADD.W           R1, R0, #8
3F98E0:  MOVS            R0, #4
3F98E2:  B.W             j_j__Z16SaveGameForPause10eSaveTypesPc; j_SaveGameForPause(eSaveTypes,char *)
