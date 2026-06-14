; =========================================================
; Game Engine Function: _ZN11CTheScripts18RemoveScriptSphereEi
; Address            : 0x34A594 - 0x34A5DC
; =========================================================

34A594:  ADDS            R1, R0, #1
34A596:  BEQ             locret_34A5DA
34A598:  LDR             R2, =(_ZN11CTheScripts17ScriptSphereArrayE_ptr - 0x34A5A2)
34A59A:  UXTH            R1, R0
34A59C:  LSLS            R3, R1, #1
34A59E:  ADD             R2, PC; _ZN11CTheScripts17ScriptSphereArrayE_ptr
34A5A0:  UXTAH.W         R3, R3, R0
34A5A4:  LDR             R2, [R2]; CTheScripts::ScriptSphereArray ...
34A5A6:  ADD.W           R2, R2, R3,LSL#3
34A5AA:  LDRH            R2, [R2,#2]
34A5AC:  CMP.W           R2, R0,LSR#16
34A5B0:  BNE             locret_34A5DA
34A5B2:  LDR             R0, =(_ZN11CTheScripts17ScriptSphereArrayE_ptr - 0x34A5B8)
34A5B4:  ADD             R0, PC; _ZN11CTheScripts17ScriptSphereArrayE_ptr
34A5B6:  LDR             R2, [R0]; CTheScripts::ScriptSphereArray ...
34A5B8:  ADD.W           R0, R1, R1,LSL#1
34A5BC:  LDRB.W          R1, [R2,R0,LSL#3]
34A5C0:  CMP             R1, #0
34A5C2:  IT EQ
34A5C4:  BXEQ            LR
34A5C6:  ADD.W           R1, R2, R0,LSL#3
34A5CA:  LDR             R2, =(_ZN11CTheScripts17ScriptSphereArrayE_ptr - 0x34A5D2)
34A5CC:  MOVS            R3, #0
34A5CE:  ADD             R2, PC; _ZN11CTheScripts17ScriptSphereArrayE_ptr
34A5D0:  STRB            R3, [R1]
34A5D2:  LDR             R1, [R2]; CTheScripts::ScriptSphereArray ...
34A5D4:  ADD.W           R0, R1, R0,LSL#3
34A5D8:  STR             R3, [R0,#4]
34A5DA:  BX              LR
