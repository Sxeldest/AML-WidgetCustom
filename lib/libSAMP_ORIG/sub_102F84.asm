; =========================================================
; Game Engine Function: sub_102F84
; Address            : 0x102F84 - 0x102FA6
; =========================================================

102F84:  SUB.W           R1, R0, #0x30 ; '0'
102F88:  CMP             R1, #0xA
102F8A:  ITT CS
102F8C:  SUBCS.W         R1, R0, #0x61 ; 'a'
102F90:  CMPCS           R1, #6
102F92:  BCS             loc_102F98
102F94:  MOVS            R0, #1
102F96:  BX              LR
102F98:  SUB.W           R1, R0, #0x41 ; 'A'
102F9C:  MOVS            R0, #0
102F9E:  CMP             R1, #6
102FA0:  IT CC
102FA2:  MOVCC           R0, #1
102FA4:  BX              LR
