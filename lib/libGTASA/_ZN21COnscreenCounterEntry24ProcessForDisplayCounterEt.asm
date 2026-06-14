; =========================================================
; Game Engine Function: _ZN21COnscreenCounterEntry24ProcessForDisplayCounterEt
; Address            : 0x314C1C - 0x314C54
; =========================================================

314C1C:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314C24)
314C1E:  LDR             R3, [R0]
314C20:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314C22:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
314C24:  LDR             R2, [R2,R3]
314C26:  CMP             R2, #0
314C28:  IT LE
314C2A:  MOVLE           R2, #0
314C2C:  CMP             R1, #2
314C2E:  BCS             loc_314C38
314C30:  ADDS            R0, #0x14
314C32:  ADR             R1, dword_314C58
314C34:  B.W             sub_5E6BC0
314C38:  IT NE
314C3A:  BXNE            LR
314C3C:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x314C48)
314C3E:  LDR.W           R12, [R0,#4]
314C42:  ADDS            R0, #0x14
314C44:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
314C46:  LDR             R3, [R1]; CTheScripts::ScriptSpace ...
314C48:  LDR             R1, =(aDD_1 - 0x314C52); "%d / %d"
314C4A:  LDR.W           R3, [R3,R12]
314C4E:  ADD             R1, PC; "%d / %d"
314C50:  B.W             sub_5E6BC0
