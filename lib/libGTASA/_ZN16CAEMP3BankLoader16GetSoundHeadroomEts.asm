; =========================================================
; Game Engine Function: _ZN16CAEMP3BankLoader16GetSoundHeadroomEts
; Address            : 0x27E4F4 - 0x27E53A
; =========================================================

27E4F4:  LDRB            R3, [R0,#0x18]
27E4F6:  CMP             R3, #0
27E4F8:  ITTT EQ
27E4FA:  VLDREQ          S0, =0.0
27E4FE:  VMOVEQ          R0, S0
27E502:  BXEQ            LR
27E504:  LDR             R0, [R0,#0x30]
27E506:  ADD.W           R2, R2, R2,LSL#2
27E50A:  VLDR            S2, =100.0
27E50E:  ADD.W           R0, R0, R2,LSL#2
27E512:  LDRH            R2, [R0,#0x10]
27E514:  LDR             R0, [R0,#0xC]
27E516:  CMP             R2, R1
27E518:  IT EQ
27E51A:  MOVEQ           R1, #0
27E51C:  RSB.W           R1, R1, R1,LSL#3
27E520:  ADD.W           R0, R0, R1,LSL#2
27E524:  LDRSH.W         R0, [R0,#0x1A]
27E528:  VMOV            S0, R0
27E52C:  VCVT.F32.S32    S0, S0
27E530:  VDIV.F32        S0, S0, S2
27E534:  VMOV            R0, S0
27E538:  BX              LR
