; =========================================================
; Game Engine Function: _ZN16CAEMP3BankLoader17IsSoundBankLoadedEts
; Address            : 0x27E3F8 - 0x27E42C
; =========================================================

27E3F8:  LDRB            R3, [R0,#0x18]
27E3FA:  CMP             R3, #0
27E3FC:  ITT EQ
27E3FE:  MOVEQ           R0, #0
27E400:  BXEQ            LR
27E402:  LDR.W           R12, [R0,#0x30]
27E406:  ADD.W           R0, R2, R2,LSL#2
27E40A:  LDRH.W          R3, [R12,R0,LSL#2]
27E40E:  MOVS            R0, #0
27E410:  CMP             R3, R1
27E412:  IT NE
27E414:  BXNE            LR
27E416:  ADD.W           R1, R2, R2,LSL#2
27E41A:  MOVW            R2, #0xFFFF
27E41E:  ADD.W           R1, R12, R1,LSL#2
27E422:  LDRH            R1, [R1,#0x10]
27E424:  CMP             R1, R2
27E426:  IT EQ
27E428:  MOVEQ           R0, #1
27E42A:  BX              LR
