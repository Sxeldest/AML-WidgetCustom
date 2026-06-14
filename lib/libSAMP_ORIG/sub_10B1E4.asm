; =========================================================
; Game Engine Function: sub_10B1E4
; Address            : 0x10B1E4 - 0x10B278
; =========================================================

10B1E4:  PUSH            {R4-R6,R10,R11,LR}
10B1E8:  ADD             R11, SP, #0x10
10B1EC:  SUB             SP, SP, #8
10B1F0:  MOV             R5, R0
10B1F4:  LDRB            R0, [R0,#0x180]
10B1F8:  MOV             R4, #0
10B1FC:  CMP             R0, #0
10B200:  BEQ             loc_10B210
10B204:  MOV             R0, R4
10B208:  SUB             SP, R11, #0x10
10B20C:  POP             {R4-R6,R10,R11,PC}
10B210:  LDR             R0, [R5,#0x178]
10B214:  ADD             R2, SP, #0x18+var_14
10B218:  MOV             R4, #0
10B21C:  MOV             R1, SP
10B220:  STR             R4, [SP,#0x18+var_14]
10B224:  STR             R4, [SP,#0x18+var_18]
10B228:  BL              sub_1096C8
10B22C:  MOV             R1, R0
10B230:  LDMFD           SP, {R2,R3}
10B234:  MOV             R0, R5
10B238:  BL              sub_109748
10B23C:  SUBS            R6, R0, #8
10B240:  BNE             loc_10B264
10B244:  LDR             R0, [R5]
10B248:  MOV             R1, #1
10B24C:  LDR             R2, [R0,#0x34]
10B250:  MOV             R0, R5
10B254:  BLX             R2
10B258:  LDRB            R0, [R5,#0x180]
10B25C:  CMP             R0, #0
10B260:  BNE             loc_10B204
10B264:  CLZ             R0, R6
10B268:  MOV             R4, R0,LSR#5
10B26C:  MOV             R0, R4
10B270:  SUB             SP, R11, #0x10
10B274:  POP             {R4-R6,R10,R11,PC}
