; =========================================================
; Game Engine Function: _ZN16CAEMP3BankLoader14GetSoundBufferEtsPt
; Address            : 0x27E2B0 - 0x27E2E4
; =========================================================

27E2B0:  LDR             R0, [R0,#0x30]
27E2B2:  ADD.W           R2, R2, R2,LSL#2
27E2B6:  ADD.W           R0, R0, R2,LSL#2
27E2BA:  LDRH            R2, [R0,#0x10]
27E2BC:  CMP             R2, R1
27E2BE:  BNE             loc_27E2C4
27E2C0:  MOVS            R1, #0
27E2C2:  B               loc_27E2CE
27E2C4:  LDR             R2, [R0,#8]
27E2C6:  CMP             R2, R1
27E2C8:  ITT LS
27E2CA:  MOVLS           R0, #0
27E2CC:  BXLS            LR
27E2CE:  LDR             R2, [R0,#0xC]
27E2D0:  RSB.W           R1, R1, R1,LSL#3
27E2D4:  ADD.W           R2, R2, R1,LSL#2
27E2D8:  LDR             R2, [R2,#4]
27E2DA:  STRH            R2, [R3]
27E2DC:  LDR             R0, [R0,#0xC]
27E2DE:  LDR.W           R0, [R0,R1,LSL#2]
27E2E2:  BX              LR
