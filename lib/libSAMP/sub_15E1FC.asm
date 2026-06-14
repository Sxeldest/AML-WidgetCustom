; =========================================================
; Game Engine Function: sub_15E1FC
; Address            : 0x15E1FC - 0x15E20C
; =========================================================

15E1FC:  LDRB            R2, [R0,#0xC]
15E1FE:  LDR             R1, [R0,#0x14]
15E200:  LSLS            R2, R2, #0x1F
15E202:  IT EQ
15E204:  ADDEQ.W         R1, R0, #0xD
15E208:  MOV             R0, R1
15E20A:  BX              LR
