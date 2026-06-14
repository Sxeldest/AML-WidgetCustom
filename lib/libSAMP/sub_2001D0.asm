; =========================================================
; Game Engine Function: sub_2001D0
; Address            : 0x2001D0 - 0x2001F2
; =========================================================

2001D0:  SUB.W           R1, R0, #0x30 ; '0'
2001D4:  CMP             R1, #0xA
2001D6:  ITT CS
2001D8:  SUBCS.W         R1, R0, #0x61 ; 'a'
2001DC:  CMPCS           R1, #6
2001DE:  BCS             loc_2001E4
2001E0:  MOVS            R0, #1
2001E2:  BX              LR
2001E4:  SUB.W           R1, R0, #0x41 ; 'A'
2001E8:  MOVS            R0, #0
2001EA:  CMP             R1, #6
2001EC:  IT CC
2001EE:  MOVCC           R0, #1
2001F0:  BX              LR
