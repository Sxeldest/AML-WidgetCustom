; =========================================================
; Game Engine Function: sub_14D8AC
; Address            : 0x14D8AC - 0x14D934
; =========================================================

14D8AC:  PUSH            {R7,LR}
14D8AE:  MOV             R7, SP
14D8B0:  SUB             SP, SP, #0x118
14D8B2:  LDRD.W          R1, R0, [R0]; src
14D8B6:  MOVS            R3, #0
14D8B8:  ASRS            R2, R0, #0x1F
14D8BA:  ADD.W           R0, R0, R2,LSR#29
14D8BE:  MOVS            R2, #1
14D8C0:  ADD.W           R2, R2, R0,ASR#3; size
14D8C4:  MOV             R0, SP; int
14D8C6:  BL              sub_17D4F2
14D8CA:  SUBS            R1, R7, #2; int
14D8CC:  MOVS            R2, #0x10
14D8CE:  MOVS            R3, #1
14D8D0:  BL              sub_17D786
14D8D4:  SUBS            R1, R7, #3; int
14D8D6:  MOV             R0, SP; int
14D8D8:  MOVS            R2, #8
14D8DA:  MOVS            R3, #1
14D8DC:  BL              sub_17D786
14D8E0:  LDR             R0, =(off_23496C - 0x14D8E6)
14D8E2:  ADD             R0, PC; off_23496C
14D8E4:  LDR             R0, [R0]; dword_23DEF4
14D8E6:  LDR             R0, [R0]
14D8E8:  LDR.W           R0, [R0,#0x3B0]
14D8EC:  LDR             R0, [R0]
14D8EE:  CBZ             R0, loc_14D92A
14D8F0:  ADD.W           R3, R0, #0x13A0
14D8F4:  LDR             R2, [R3,#0x1C]
14D8F6:  CBZ             R2, loc_14D92A
14D8F8:  LDRH.W          R1, [R7,#-2]
14D8FC:  LDRH            R3, [R3]
14D8FE:  CMP             R1, R3
14D900:  BNE             loc_14D90A
14D902:  LDRB.W          R0, [R7,#-3]
14D906:  STRB            R0, [R2,#0x12]
14D908:  B               loc_14D92A
14D90A:  CMP.W           R1, #0x3EC
14D90E:  BHI             loc_14D92A
14D910:  ADDS            R2, R0, R1
14D912:  LDRB.W          R2, [R2,#0xFB4]
14D916:  CBZ             R2, loc_14D92A
14D918:  ADD.W           R0, R0, R1,LSL#2
14D91C:  LDR             R0, [R0,#4]
14D91E:  CBZ             R0, loc_14D92A
14D920:  LDR             R0, [R0]
14D922:  CBZ             R0, loc_14D92A
14D924:  LDRB.W          R1, [R7,#-3]
14D928:  STRB            R1, [R0,#0x12]
14D92A:  MOV             R0, SP
14D92C:  BL              sub_17D542
14D930:  ADD             SP, SP, #0x118
14D932:  POP             {R7,PC}
