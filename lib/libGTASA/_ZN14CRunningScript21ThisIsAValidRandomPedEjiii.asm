; =========================================================
; Game Engine Function: _ZN14CRunningScript21ThisIsAValidRandomPedEjiii
; Address            : 0x34E27C - 0x34E2C2
; =========================================================

34E27C:  CMP             R1, #0x16
34E27E:  BHI             loc_34E298
34E280:  MOVS            R0, #1
34E282:  LSL.W           R12, R0, R1
34E286:  MOVW            R0, #0xFF80
34E28A:  TST.W           R12, R0
34E28E:  BEQ             loc_34E29C
34E290:  CMP             R3, #0
34E292:  ITT NE
34E294:  MOVNE           R0, #1
34E296:  BXNE            LR
34E298:  MOVS            R0, #0
34E29A:  BX              LR
34E29C:  TST.W           R12, #0x30
34E2A0:  BNE             loc_34E2B6
34E2A2:  MOVS            R0, #1
34E2A4:  LSLS            R0, R1
34E2A6:  TST.W           R0, #0x500000
34E2AA:  ITT NE
34E2AC:  LDRNE           R0, [SP,#arg_0]
34E2AE:  CMPNE           R0, #0
34E2B0:  BEQ             loc_34E298
34E2B2:  MOVS            R0, #1
34E2B4:  BX              LR
34E2B6:  CMP             R2, #0
34E2B8:  ITT NE
34E2BA:  MOVNE           R0, #1
34E2BC:  BXNE            LR
34E2BE:  MOVS            R0, #0
34E2C0:  BX              LR
