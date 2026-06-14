; =========================================================
; Game Engine Function: sub_9BC18
; Address            : 0x9BC18 - 0x9BC90
; =========================================================

9BC18:  PUSH            {R4,R5,R7,LR}
9BC1A:  ADD             R7, SP, #8
9BC1C:  MOV             R4, R0
9BC1E:  LDR             R0, [R0,#8]
9BC20:  CBZ             R0, loc_9BC2E
9BC22:  MOVS            R5, #0
9BC24:  STRD.W          R5, R5, [R4]
9BC28:  BL              sub_88614
9BC2C:  STR             R5, [R4,#8]
9BC2E:  LDR             R0, [R4,#0x14]
9BC30:  CBZ             R0, loc_9BC3E
9BC32:  MOVS            R5, #0
9BC34:  STRD.W          R5, R5, [R4,#0xC]
9BC38:  BL              sub_88614
9BC3C:  STR             R5, [R4,#0x14]
9BC3E:  LDR             R0, [R4,#0x20]
9BC40:  CBZ             R0, loc_9BC4E
9BC42:  MOVS            R5, #0
9BC44:  STRD.W          R5, R5, [R4,#0x18]
9BC48:  BL              sub_88614
9BC4C:  STR             R5, [R4,#0x20]
9BC4E:  LDR             R0, [R4,#0x48]
9BC50:  MOVS            R5, #0
9BC52:  STRD.W          R5, R5, [R4,#0x34]
9BC56:  STR             R5, [R4,#0x3C]
9BC58:  CBZ             R0, loc_9BC64
9BC5A:  STRD.W          R5, R5, [R4,#0x40]
9BC5E:  BL              sub_88614
9BC62:  STR             R5, [R4,#0x48]
9BC64:  LDR             R0, [R4,#0x54]
9BC66:  CBZ             R0, loc_9BC74
9BC68:  MOVS            R5, #0
9BC6A:  STRD.W          R5, R5, [R4,#0x4C]
9BC6E:  BL              sub_88614
9BC72:  STR             R5, [R4,#0x54]
9BC74:  LDR             R0, [R4,#0x60]
9BC76:  CBZ             R0, loc_9BC84
9BC78:  MOVS            R5, #0
9BC7A:  STRD.W          R5, R5, [R4,#0x58]
9BC7E:  BL              sub_88614
9BC82:  STR             R5, [R4,#0x60]
9BC84:  ADD.W           R0, R4, #0x64 ; 'd'
9BC88:  POP.W           {R4,R5,R7,LR}
9BC8C:  B.W             sub_9BC90
