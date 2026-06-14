; =========================================================
; Game Engine Function: sub_FF730
; Address            : 0xFF730 - 0xFF754
; =========================================================

FF730:  LDR             R0, [R0]
FF732:  LDRD.W          R0, R1, [R0]
FF736:  CMP             R1, R0
FF738:  ITT EQ
FF73A:  MOVEQ           R0, #1
FF73C:  BXEQ            LR
FF73E:  LDRB            R1, [R0]
FF740:  MOVS            R0, #1
FF742:  CMP             R1, #0x2E ; '.'
FF744:  IT NE
FF746:  CMPNE           R1, #0x45 ; 'E'
FF748:  BNE             loc_FF74C
FF74A:  BX              LR
FF74C:  CMP             R1, #0x5F ; '_'
FF74E:  IT NE
FF750:  MOVNE           R0, #0
FF752:  BX              LR
