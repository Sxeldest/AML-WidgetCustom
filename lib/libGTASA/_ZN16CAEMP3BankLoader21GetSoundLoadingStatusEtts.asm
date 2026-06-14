; =========================================================
; Game Engine Function: _ZN16CAEMP3BankLoader21GetSoundLoadingStatusEtts
; Address            : 0x27E5BC - 0x27E600
; =========================================================

27E5BC:  LDRB.W          R12, [R0,#0x18]
27E5C0:  CMP.W           R12, #0
27E5C4:  BEQ             loc_27E5FC
27E5C6:  LDR.W           R12, [R0,#0x30]
27E5CA:  ADD.W           R0, R3, R3,LSL#2
27E5CE:  LDRH.W          R0, [R12,R0,LSL#2]
27E5D2:  CMP             R0, R1
27E5D4:  BNE             loc_27E5FC
27E5D6:  ADD.W           R0, R3, R3,LSL#2
27E5DA:  MOVW            R3, #0xFFFF
27E5DE:  ADD.W           R0, R12, R0,LSL#2
27E5E2:  LDRH            R1, [R0,#0x10]
27E5E4:  CMP             R1, R3
27E5E6:  BNE             loc_27E5F2
27E5E8:  LDR             R0, [R0,#8]
27E5EA:  CMP             R0, R2
27E5EC:  ITT HI
27E5EE:  MOVHI           R0, #1
27E5F0:  BXHI            LR
27E5F2:  MOVS            R0, #0
27E5F4:  CMP             R1, R2
27E5F6:  IT EQ
27E5F8:  MOVEQ           R0, #1
27E5FA:  BX              LR
27E5FC:  MOVS            R0, #0
27E5FE:  BX              LR
