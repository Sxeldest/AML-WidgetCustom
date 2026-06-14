; =========================================================
; Game Engine Function: _ZN16CAEMP3BankLoader25GetSoundBankLoadingStatusEts
; Address            : 0x27E544 - 0x27E578
; =========================================================

27E544:  LDRB            R3, [R0,#0x18]
27E546:  CMP             R3, #0
27E548:  ITT EQ
27E54A:  MOVEQ           R0, #0
27E54C:  BXEQ            LR
27E54E:  LDR.W           R12, [R0,#0x30]
27E552:  ADD.W           R0, R2, R2,LSL#2
27E556:  LDRH.W          R3, [R12,R0,LSL#2]
27E55A:  MOVS            R0, #0
27E55C:  CMP             R3, R1
27E55E:  IT NE
27E560:  BXNE            LR
27E562:  ADD.W           R1, R2, R2,LSL#2
27E566:  MOVW            R2, #0xFFFF
27E56A:  ADD.W           R1, R12, R1,LSL#2
27E56E:  LDRH            R1, [R1,#0x10]
27E570:  CMP             R1, R2
27E572:  IT EQ
27E574:  MOVEQ           R0, #1
27E576:  BX              LR
