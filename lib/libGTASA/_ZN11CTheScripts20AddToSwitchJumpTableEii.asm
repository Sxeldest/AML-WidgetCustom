; =========================================================
; Game Engine Function: _ZN11CTheScripts20AddToSwitchJumpTableEii
; Address            : 0x335000 - 0x335024
; =========================================================

335000:  LDR             R2, =(_ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr - 0x335008)
335002:  LDR             R3, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x33500A)
335004:  ADD             R2, PC; _ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr
335006:  ADD             R3, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
335008:  LDR.W           R12, [R2]; CTheScripts::NumberOfEntriesInSwitchTable ...
33500C:  LDR             R3, [R3]; CTheScripts::SwitchJumpTable ...
33500E:  LDRH.W          R2, [R12]; CTheScripts::NumberOfEntriesInSwitchTable
335012:  STR.W           R0, [R3,R2,LSL#3]
335016:  ADD.W           R0, R3, R2,LSL#3
33501A:  STR             R1, [R0,#4]
33501C:  ADDS            R0, R2, #1
33501E:  STRH.W          R0, [R12]; CTheScripts::NumberOfEntriesInSwitchTable
335022:  BX              LR
