; =========================================================
; Game Engine Function: _ZN14CRunningScript8UpdatePCEi
; Address            : 0x32B698 - 0x32B6B2
; =========================================================

32B698:  CMP.W           R1, #0xFFFFFFFF
32B69C:  BLE             loc_32B6AA
32B69E:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32B6A4)
32B6A0:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32B6A2:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
32B6A4:  ADD             R1, R2
32B6A6:  STR             R1, [R0,#0x14]
32B6A8:  BX              LR
32B6AA:  LDR             R2, [R0,#0x10]
32B6AC:  SUBS            R1, R2, R1
32B6AE:  STR             R1, [R0,#0x14]
32B6B0:  BX              LR
