; =========================================================
; Game Engine Function: _ZN11CTheScripts30InitialiseAllConnectLodObjectsEv
; Address            : 0x335528 - 0x33553C
; =========================================================

335528:  PUSH            {R7,LR}
33552A:  MOV             R7, SP
33552C:  LDR             R0, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x335536)
33552E:  MOVS            R1, #0x50 ; 'P'
335530:  MOVS            R2, #0xFF
335532:  ADD             R0, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
335534:  LDR             R0, [R0]; CTheScripts::ScriptConnectLodsObjects ...
335536:  BLX             j___aeabi_memset8_0
33553A:  POP             {R7,PC}
