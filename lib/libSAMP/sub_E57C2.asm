; =========================================================
; Game Engine Function: sub_E57C2
; Address            : 0xE57C2 - 0xE57FC
; =========================================================

E57C2:  LDRB.W          R1, [R0,#0x54]
E57C6:  LSLS            R1, R1, #0x1B
E57C8:  IT MI
E57CA:  BXMI            LR
E57CC:  LDR             R3, [R0,#0x34]
E57CE:  MOVS            R1, #0
E57D0:  MOVS            R2, #0
E57D2:  STRD.W          R1, R1, [R0,#8]
E57D6:  CMP             R3, #9
E57D8:  STR             R1, [R0,#0x10]
E57DA:  BCC             loc_E57F0
E57DC:  LDRB.W          R1, [R0,#0x5A]
E57E0:  CBZ             R1, loc_E57E8
E57E2:  LDR             R1, [R0,#0x20]
E57E4:  ADDS            R2, R3, R1
E57E6:  B               loc_E57EE
E57E8:  LDRD.W          R1, R2, [R0,#0x38]
E57EC:  ADD             R2, R1
E57EE:  SUBS            R2, #1
E57F0:  MOVS            R3, #0x10
E57F2:  STRD.W          R1, R1, [R0,#0x14]
E57F6:  STR             R3, [R0,#0x54]
E57F8:  STR             R2, [R0,#0x1C]
E57FA:  BX              LR
