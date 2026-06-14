; =========================================================
; Game Engine Function: sub_EC820
; Address            : 0xEC820 - 0xEC832
; =========================================================

EC820:  LDR             R1, [R0,#4]
EC822:  LDRB            R0, [R0]
EC824:  LSLS            R2, R0, #0x1F
EC826:  IT EQ
EC828:  LSREQ           R1, R0, #1
EC82A:  CLZ.W           R0, R1
EC82E:  LSRS            R0, R0, #5
EC830:  BX              LR
