; =========================================================
; Game Engine Function: sub_1E3152
; Address            : 0x1E3152 - 0x1E31E8
; =========================================================

1E3152:  PUSH            {R4-R7,LR}
1E3154:  ADD             R7, SP, #0xC
1E3156:  PUSH.W          {R8-R11}
1E315A:  SUB             SP, SP, #4
1E315C:  MOV             R6, R0
1E315E:  LDR             R0, [R0,#4]
1E3160:  MOV             R10, R1
1E3162:  LDR             R1, [R1,#0x18]
1E3164:  LDRB.W          R4, [R10,#0x10]
1E3168:  LDR.W           R11, [R0]
1E316C:  ANDS.W          R8, R4, #1
1E3170:  IT EQ
1E3172:  ADDEQ.W         R1, R10, #0x11
1E3176:  STR             R1, [SP,#0x20+s]
1E3178:  MOV             R0, R11; s
1E317A:  BLX             strlen
1E317E:  CBZ             R0, loc_1E31DE
1E3180:  LDR.W           R1, [R10,#0x14]
1E3184:  CMP.W           R8, #0
1E3188:  IT EQ
1E318A:  LSREQ           R1, R4, #1
1E318C:  MOV             R5, R0
1E318E:  CMP             R1, R0
1E3190:  BGE             loc_1E319E
1E3192:  LDR             R0, [R6,#8]
1E3194:  LDR.W           R1, [R10]
1E3198:  STR             R1, [R0]
1E319A:  MOVS            R0, #1
1E319C:  B               loc_1E31E0
1E319E:  LDR             R0, [SP,#0x20+s]; s
1E31A0:  LDRB.W          R9, [R11]
1E31A4:  ADD.W           R8, R0, R1
1E31A8:  SUBS            R1, R1, R5
1E31AA:  ADDS            R2, R1, #1; n
1E31AC:  BCS             loc_1E3192
1E31AE:  MOV             R1, R9; c
1E31B0:  BLX             memchr
1E31B4:  CMP             R0, #0
1E31B6:  BEQ             loc_1E3192
1E31B8:  MOV             R1, R11; s2
1E31BA:  MOV             R2, R5; n
1E31BC:  MOV             R4, R0
1E31BE:  BLX             memcmp
1E31C2:  CBZ             R0, loc_1E31D0
1E31C4:  ADDS            R0, R4, #1
1E31C6:  SUB.W           R1, R8, R0
1E31CA:  CMP             R1, R5
1E31CC:  BGE             loc_1E31A8
1E31CE:  B               loc_1E3192
1E31D0:  CMP             R4, R8
1E31D2:  ITTT NE
1E31D4:  LDRNE           R0, [SP,#0x20+s]
1E31D6:  SUBNE           R0, R4, R0
1E31D8:  ADDSNE.W        R0, R0, #1
1E31DC:  BEQ             loc_1E3192
1E31DE:  MOVS            R0, #0
1E31E0:  ADD             SP, SP, #4
1E31E2:  POP.W           {R8-R11}
1E31E6:  POP             {R4-R7,PC}
