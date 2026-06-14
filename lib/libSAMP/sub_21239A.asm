; =========================================================
; Game Engine Function: sub_21239A
; Address            : 0x21239A - 0x2123BA
; =========================================================

21239A:  LDRB            R2, [R0]
21239C:  LSLS            R2, R2, #0x1F
21239E:  BNE             loc_2123AE
2123A0:  ADD.W           R2, R0, R1,LSL#2
2123A4:  MOVS            R3, #0
2123A6:  LSLS            R1, R1, #1
2123A8:  STR             R3, [R2,#4]
2123AA:  STRB            R1, [R0]
2123AC:  BX              LR
2123AE:  LDR             R2, [R0,#8]
2123B0:  MOVS            R3, #0
2123B2:  STR.W           R3, [R2,R1,LSL#2]
2123B6:  STR             R1, [R0,#4]
2123B8:  BX              LR
