; =========================================================
; Game Engine Function: sub_1785E0
; Address            : 0x1785E0 - 0x17862E
; =========================================================

1785E0:  PUSH            {R4,R5,R7,LR}
1785E2:  ADD             R7, SP, #8
1785E4:  MOV             R4, R0
1785E6:  LDR             R0, [R0,#0x28]
1785E8:  MOVS            R5, #0
1785EA:  STRD.W          R5, R5, [R4,#0xC]
1785EE:  CBZ             R0, loc_1785FA
1785F0:  STRD.W          R5, R5, [R4,#0x20]
1785F4:  BL              sub_165578
1785F8:  STR             R5, [R4,#0x28]
1785FA:  LDR             R0, [R4,#8]
1785FC:  CBZ             R0, loc_17860A
1785FE:  MOVS            R5, #0
178600:  STRD.W          R5, R5, [R4]
178604:  BL              sub_165578
178608:  STR             R5, [R4,#8]
17860A:  LDR             R0, [R4,#0x1C]
17860C:  CBZ             R0, loc_17861A
17860E:  MOVS            R5, #0
178610:  STRD.W          R5, R5, [R4,#0x14]
178614:  BL              sub_165578
178618:  STR             R5, [R4,#0x1C]
17861A:  MOVS            R0, #1
17861C:  STRB.W          R0, [R4,#0x54]
178620:  MOVS            R0, #0
178622:  STR             R0, [R4,#0x38]
178624:  STR             R0, [R4,#0x2C]
178626:  STRD.W          R0, R0, [R4,#0x48]
17862A:  STR             R0, [R4,#0x50]
17862C:  POP             {R4,R5,R7,PC}
