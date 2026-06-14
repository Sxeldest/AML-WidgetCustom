; =========================================================
; Game Engine Function: sub_11318C
; Address            : 0x11318C - 0x1131BE
; =========================================================

11318C:  PUSH            {R7,LR}
11318E:  MOV             R7, SP
113190:  LDR.W           R0, [R0,#0x85C]
113194:  CBZ             R0, loc_1131A8
113196:  LDR             R0, [R0,#4]
113198:  ADDS            R0, #1
11319A:  BEQ             loc_1131A8
11319C:  BL              sub_1082E4
1131A0:  LDRB.W          R1, [R0,#0x485]
1131A4:  LSLS            R1, R1, #0x1F
1131A6:  BNE             loc_1131AC
1131A8:  MOVS            R0, #0
1131AA:  POP             {R7,PC}
1131AC:  LDR.W           R1, [R0,#0x590]
1131B0:  LDR.W           R1, [R1,#0x464]
1131B4:  SUBS            R0, R1, R0
1131B6:  CLZ.W           R0, R0
1131BA:  LSRS            R0, R0, #5
1131BC:  POP             {R7,PC}
