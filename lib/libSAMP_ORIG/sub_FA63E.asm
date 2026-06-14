; =========================================================
; Game Engine Function: sub_FA63E
; Address            : 0xFA63E - 0xFA65E
; =========================================================

FA63E:  LDRB            R2, [R0]
FA640:  LSLS            R2, R2, #0x1F
FA642:  BNE             loc_FA652
FA644:  ADD.W           R2, R0, R1,LSL#2
FA648:  MOVS            R3, #0
FA64A:  LSLS            R1, R1, #1
FA64C:  STR             R3, [R2,#4]
FA64E:  STRB            R1, [R0]
FA650:  BX              LR
FA652:  LDR             R2, [R0,#8]
FA654:  MOVS            R3, #0
FA656:  STR.W           R3, [R2,R1,LSL#2]
FA65A:  STR             R1, [R0,#4]
FA65C:  BX              LR
