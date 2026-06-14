; =========================================================
; Game Engine Function: sub_E5608
; Address            : 0xE5608 - 0xE5646
; =========================================================

E5608:  LDR             R2, [R0,#0x40]
E560A:  CBZ             R2, loc_E5636
E560C:  LDRD.W          R3, R2, [R0,#8]
E5610:  CMP             R3, R2
E5612:  BCS             loc_E5636
E5614:  ADDS            R3, R1, #1
E5616:  BEQ             loc_E563E
E5618:  LDRB.W          R3, [R0,#0x50]
E561C:  LSLS            R3, R3, #0x1B
E561E:  BMI             loc_E562C
E5620:  LDRB.W          R3, [R2,#-1]
E5624:  UXTB.W          R12, R1
E5628:  CMP             R3, R12
E562A:  BNE             loc_E5636
E562C:  SUBS            R3, R2, #1
E562E:  STR             R3, [R0,#0xC]
E5630:  STRB.W          R1, [R2,#-1]
E5634:  B               loc_E563A
E5636:  MOV.W           R1, #0xFFFFFFFF
E563A:  MOV             R0, R1
E563C:  BX              LR
E563E:  SUBS            R1, R2, #1
E5640:  STR             R1, [R0,#0xC]
E5642:  MOVS            R1, #0
E5644:  B               loc_E563A
