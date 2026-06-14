; =========================================================
; Game Engine Function: _ZN11CTheScripts25GetScriptIndexFromPointerEP14CRunningScript
; Address            : 0x32AE74 - 0x32AE82
; =========================================================

32AE74:  LDR             R1, =(_ZN11CTheScripts12ScriptsArrayE_ptr - 0x32AE7A)
32AE76:  ADD             R1, PC; _ZN11CTheScripts12ScriptsArrayE_ptr
32AE78:  LDR             R1, [R1]; CTheScripts::ScriptsArray ...
32AE7A:  SUBS            R0, R0, R1
32AE7C:  UBFX.W          R0, R0, #8, #0x10
32AE80:  BX              LR
