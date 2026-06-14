; =========================================================
; Game Engine Function: sub_FE0B4
; Address            : 0xFE0B4 - 0xFE11A
; =========================================================

FE0B4:  PUSH            {R4-R7,LR}
FE0B6:  ADD             R7, SP, #0xC
FE0B8:  PUSH.W          {R11}
FE0BC:  MOV             R4, R0
FE0BE:  MOVW            R0, #0x1198
FE0C2:  ADDS            R5, R4, R0
FE0C4:  ADD.W           R6, R4, #0x198
FE0C8:  LDR             R0, [R5]; ptr
FE0CA:  CBZ             R0, loc_FE0DA
FE0CC:  LDR             R1, [R0]
FE0CE:  CMP             R6, R0
FE0D0:  STR             R1, [R5]
FE0D2:  BEQ             loc_FE0C8
FE0D4:  BLX             free
FE0D8:  B               loc_FE0C8
FE0DA:  MOVS            R0, #0
FE0DC:  ADD.W           R1, R4, #0x174
FE0E0:  STRD.W          R0, R0, [R4,#0x198]
FE0E4:  LDR.W           R0, [R4,#0x168]; ptr
FE0E8:  STR             R6, [R5]
FE0EA:  CMP             R0, R1
FE0EC:  IT NE
FE0EE:  BLXNE           free
FE0F2:  ADD.W           R0, R4, #0x14C
FE0F6:  BL              sub_FE11A
FE0FA:  ADD.W           R0, R4, #0x120
FE0FE:  BL              sub_FE132
FE102:  ADD.W           R0, R4, #0x94
FE106:  BL              sub_FE14A
FE10A:  ADD.W           R0, R4, #8
FE10E:  BL              sub_FE14A
FE112:  MOV             R0, R4
FE114:  POP.W           {R11}
FE118:  POP             {R4-R7,PC}
