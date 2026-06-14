; =========================================================
; Game Engine Function: _ZN16CAEMP3BankLoader13GetLoopOffsetEts
; Address            : 0x27E578 - 0x27E5BC
; =========================================================

27E578:  LDRB            R3, [R0,#0x18]
27E57A:  CMP             R3, #0
27E57C:  ITT EQ
27E57E:  MOVEQ.W         R0, #0xFFFFFFFF
27E582:  BXEQ            LR
27E584:  LDR             R0, [R0,#0x30]
27E586:  ADD.W           R2, R2, R2,LSL#2
27E58A:  ADD.W           R0, R0, R2,LSL#2
27E58E:  LDRH            R2, [R0,#0x10]
27E590:  LDR             R0, [R0,#0xC]
27E592:  CMP             R2, R1
27E594:  IT EQ
27E596:  MOVEQ           R1, #0
27E598:  RSB.W           R1, R1, R1,LSL#3
27E59C:  ADD.W           R1, R0, R1,LSL#2
27E5A0:  LDR             R0, [R1,#0x14]
27E5A2:  CMP             R0, #1
27E5A4:  IT LT
27E5A6:  BXLT            LR
27E5A8:  PUSH            {R7,LR}
27E5AA:  MOV             R7, SP
27E5AC:  LDR             R2, [R1,#4]
27E5AE:  LDRH            R1, [R1,#0x18]
27E5B0:  MULS            R0, R2
27E5B2:  BLX             __aeabi_uidiv
27E5B6:  POP.W           {R7,LR}
27E5BA:  BX              LR
