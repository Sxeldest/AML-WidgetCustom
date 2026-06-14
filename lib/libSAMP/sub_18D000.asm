; =========================================================
; Game Engine Function: sub_18D000
; Address            : 0x18D000 - 0x18D042
; =========================================================

18D000:  PUSH            {R4,R5,R7,LR}
18D002:  ADD             R7, SP, #8
18D004:  SUB             SP, SP, #8
18D006:  MOV             R4, R0
18D008:  LDRB            R0, [R0,#0x14]
18D00A:  MOV             R5, R1
18D00C:  CBZ             R0, loc_18D020
18D00E:  LDR             R0, [R4,#0x10]
18D010:  LDR             R1, [R5]
18D012:  CMP             R1, R0
18D014:  BNE             loc_18D020
18D016:  LDR             R1, [R4,#0xC]
18D018:  LDR             R0, [R4]
18D01A:  ADD.W           R0, R0, R1,LSL#3
18D01E:  B               loc_18D03C
18D020:  SUB.W           R2, R7, #-var_9
18D024:  MOV             R0, R4
18D026:  MOV             R1, R5
18D028:  BL              sub_18D136
18D02C:  LDR             R1, [R4]
18D02E:  MOVS            R3, #1
18D030:  STR             R0, [R4,#0xC]
18D032:  ADD.W           R0, R1, R0,LSL#3
18D036:  LDR             R2, [R5]
18D038:  STRB            R3, [R4,#0x14]
18D03A:  STR             R2, [R4,#0x10]
18D03C:  ADDS            R0, #4
18D03E:  ADD             SP, SP, #8
18D040:  POP             {R4,R5,R7,PC}
