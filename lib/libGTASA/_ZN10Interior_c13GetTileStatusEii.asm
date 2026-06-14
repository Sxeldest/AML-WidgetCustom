; =========================================================
; Game Engine Function: _ZN10Interior_c13GetTileStatusEii
; Address            : 0x44673E - 0x44676C
; =========================================================

44673E:  MOV             R12, R0
446740:  LDR.W           R3, [R12,#0x14]
446744:  LDRB            R0, [R3,#2]
446746:  CMP             R0, R1
446748:  ITT LE
44674A:  MOVLE           R0, #1
44674C:  BXLE            LR
44674E:  MOVS            R0, #1
446750:  CMP             R1, #0
446752:  IT LT
446754:  BXLT            LR
446756:  LDRB            R3, [R3,#3]
446758:  CMP             R3, R2
44675A:  ITTTT HI
44675C:  RSBHI.W         R0, R1, R1,LSL#4
446760:  ADDHI.W         R0, R12, R0,LSL#1
446764:  ADDHI           R0, R2
446766:  LDRBHI.W        R0, [R0,#0x68]
44676A:  BX              LR
