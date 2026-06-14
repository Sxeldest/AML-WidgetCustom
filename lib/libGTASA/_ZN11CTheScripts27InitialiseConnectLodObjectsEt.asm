; =========================================================
; Game Engine Function: _ZN11CTheScripts27InitialiseConnectLodObjectsEt
; Address            : 0x33550C - 0x335522
; =========================================================

33550C:  LDR             R1, =(_ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr - 0x335516)
33550E:  MOV.W           R2, #0xFFFFFFFF
335512:  ADD             R1, PC; _ZN11CTheScripts24ScriptConnectLodsObjectsE_ptr
335514:  LDR             R1, [R1]; CTheScripts::ScriptConnectLodsObjects ...
335516:  STR.W           R2, [R1,R0,LSL#3]
33551A:  ADD.W           R0, R1, R0,LSL#3
33551E:  STR             R2, [R0,#4]
335520:  BX              LR
