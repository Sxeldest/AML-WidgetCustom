; =========================================================
; Game Engine Function: _Z8TextCopyPtPKt
; Address            : 0x54D794 - 0x54D7AC
; =========================================================

54D794:  LDRH            R2, [R1]
54D796:  CBZ             R2, loc_54D7A6
54D798:  ADDS            R1, #2
54D79A:  STRH.W          R2, [R0],#2
54D79E:  LDRH.W          R2, [R1],#2
54D7A2:  CMP             R2, #0
54D7A4:  BNE             loc_54D79A
54D7A6:  MOVS            R1, #0
54D7A8:  STRH            R1, [R0]
54D7AA:  BX              LR
