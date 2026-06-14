; =========================================================
; Game Engine Function: sub_72050
; Address            : 0x72050 - 0x72094
; =========================================================

72050:  PUSH            {R4,R5,R7,LR}
72052:  ADD             R7, SP, #8
72054:  MOV             R4, R0
72056:  MOVS            R0, #0
72058:  STRD.W          R0, R0, [R4]
7205C:  STR             R0, [R4,#8]
7205E:  MOV.W           R0, #0x2000
72062:  BL              sub_885E4
72066:  LDR             R1, [R4,#8]; src
72068:  MOV             R5, R0
7206A:  CBZ             R1, loc_7207C
7206C:  LDR             R0, [R4]
7206E:  LSLS            R2, R0, #2; n
72070:  MOV             R0, R5; dest
72072:  BLX             j_memcpy
72076:  LDR             R0, [R4,#8]
72078:  BL              sub_88614
7207C:  MOV.W           R0, #0x800
72080:  MOV.W           R1, #0x2000; n
72084:  STRD.W          R0, R0, [R4]
72088:  MOV             R0, R5; int
7208A:  STR             R5, [R4,#8]
7208C:  BLX             sub_10967C
72090:  MOV             R0, R4
72092:  POP             {R4,R5,R7,PC}
