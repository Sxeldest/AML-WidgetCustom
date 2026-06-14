; =========================================================
; Game Engine Function: sub_A3662
; Address            : 0xA3662 - 0xA36CC
; =========================================================

A3662:  PUSH            {R4,R5,R7,LR}
A3664:  ADD             R7, SP, #8
A3666:  MOV             R4, R0
A3668:  LDR             R0, [R0,#0x28]
A366A:  MOVS            R1, #0
A366C:  STRD.W          R1, R1, [R4,#0xC]
A3670:  CBZ             R0, loc_A367E
A3672:  STRD.W          R1, R1, [R4,#0x20]
A3676:  BL              sub_88614
A367A:  MOVS            R0, #0
A367C:  STR             R0, [R4,#0x28]
A367E:  LDR             R0, [R4,#8]
A3680:  CBZ             R0, loc_A368E
A3682:  MOVS            R5, #0
A3684:  STRD.W          R5, R5, [R4]
A3688:  BL              sub_88614
A368C:  STR             R5, [R4,#8]
A368E:  LDR             R0, [R4,#0x1C]
A3690:  CBZ             R0, loc_A369E
A3692:  MOVS            R5, #0
A3694:  STRD.W          R5, R5, [R4,#0x14]
A3698:  BL              sub_88614
A369C:  STR             R5, [R4,#0x1C]
A369E:  MOVS            R0, #1
A36A0:  MOVS            R1, #0
A36A2:  STRB.W          R0, [R4,#0x54]
A36A6:  LDR             R0, [R4,#0x28]
A36A8:  STR             R1, [R4,#0x38]
A36AA:  STR             R1, [R4,#0x2C]
A36AC:  STRD.W          R1, R1, [R4,#0x48]
A36B0:  STR             R1, [R4,#0x50]
A36B2:  CBZ             R0, loc_A36C0
A36B4:  BL              sub_88614
A36B8:  LDR             R0, [R4,#0x1C]
A36BA:  CBZ             R0, loc_A36C0
A36BC:  BL              sub_88614
A36C0:  LDR             R0, [R4,#8]
A36C2:  CBZ             R0, loc_A36C8
A36C4:  BL              sub_88614
A36C8:  MOV             R0, R4
A36CA:  POP             {R4,R5,R7,PC}
