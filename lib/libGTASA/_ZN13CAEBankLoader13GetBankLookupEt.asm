; =========================================================
; Game Engine Function: _ZN13CAEBankLoader13GetBankLookupEt
; Address            : 0x27D758 - 0x27D774
; =========================================================

27D758:  LDRB            R2, [R0,#0x14]
27D75A:  CBZ             R2, loc_27D770
27D75C:  LDRSH.W         R2, [R0,#0xE]
27D760:  CMP             R1, R2
27D762:  ITTTT LT
27D764:  LDRLT           R0, [R0,#4]
27D766:  ADDLT.W         R1, R1, R1,LSL#1
27D76A:  ADDLT.W         R0, R0, R1,LSL#2
27D76E:  BXLT            LR
27D770:  MOVS            R0, #0
27D772:  BX              LR
