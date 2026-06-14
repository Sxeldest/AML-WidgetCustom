; =========================================================
; Game Engine Function: sub_182010
; Address            : 0x182010 - 0x18205E
; =========================================================

182010:  PUSH            {R4-R7,LR}
182012:  ADD             R7, SP, #0xC
182014:  PUSH.W          {R11}
182018:  MOV             R4, R0
18201A:  LDR             R0, [R0]
18201C:  MOV             R6, R1
18201E:  LDR             R1, [R0,#0x2C]
182020:  MOV             R0, R4
182022:  BLX             R1
182024:  MOV             R5, R0
182026:  CBNZ            R0, loc_182054
182028:  CBZ             R6, loc_182040
18202A:  LDR.W           R0, [R4,#0x7A4]
18202E:  CBZ             R0, loc_182054
182030:  BL              sub_17DADE
182034:  BLX             j__ZdlPv; operator delete(void *)
182038:  MOVS            R0, #0
18203A:  STR.W           R0, [R4,#0x7A4]
18203E:  B               loc_182054
182040:  LDR.W           R0, [R4,#0x7A8]
182044:  CBZ             R0, loc_182054
182046:  BL              sub_17DADE
18204A:  BLX             j__ZdlPv; operator delete(void *)
18204E:  MOVS            R0, #0
182050:  STR.W           R0, [R4,#0x7A8]
182054:  EOR.W           R0, R5, #1
182058:  POP.W           {R11}
18205C:  POP             {R4-R7,PC}
