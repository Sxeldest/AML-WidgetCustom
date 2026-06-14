; =========================================================
; Game Engine Function: sub_781B2
; Address            : 0x781B2 - 0x78244
; =========================================================

781B2:  PUSH            {R4-R7,LR}
781B4:  ADD             R7, SP, #0xC
781B6:  PUSH.W          {R8-R10}
781BA:  LDR             R4, [R0,#4]
781BC:  LDRB            R2, [R1]
781BE:  LDRD.W          R9, R8, [R1,#4]
781C2:  ANDS.W          R0, R2, #1
781C6:  ITT EQ
781C8:  ADDEQ.W         R8, R1, #1
781CC:  MOVEQ.W         R9, R2,LSR#1
781D0:  B               loc_781DC
781D2:  CMP.W           R0, #0xFFFFFFFF
781D6:  BGT             loc_78234
781D8:  ADDS            R4, #4
781DA:  LDR             R4, [R4]
781DC:  CBZ             R4, loc_7823C
781DE:  MOV             R0, R4
781E0:  MOV             R5, R9
781E2:  LDRB.W          R2, [R0,#0x10]!
781E6:  LDR             R6, [R0,#4]
781E8:  ANDS.W          R1, R2, #1
781EC:  IT EQ
781EE:  LSREQ           R6, R2, #1
781F0:  CMP             R6, R9
781F2:  IT CC
781F4:  MOVCC           R5, R6
781F6:  CBZ             R5, loc_78218
781F8:  LDR.W           R10, [R4,#0x18]
781FC:  CMP             R1, #0
781FE:  IT EQ
78200:  ADDEQ.W         R10, R0, #1
78204:  MOV             R0, R8; s1
78206:  MOV             R1, R10; s2
78208:  MOV             R2, R5; n
7820A:  BLX             memcmp
7820E:  CBZ             R0, loc_7821E
78210:  CMP.W           R0, #0xFFFFFFFF
78214:  BLE             loc_781DA
78216:  B               loc_78222
78218:  CMP             R9, R6
7821A:  BCC             loc_781DA
7821C:  B               loc_78230
7821E:  CMP             R9, R6
78220:  BCC             loc_781DA
78222:  MOV             R0, R10; s1
78224:  MOV             R1, R8; s2
78226:  MOV             R2, R5; n
78228:  BLX             memcmp
7822C:  CMP             R0, #0
7822E:  BNE             loc_781D2
78230:  CMP             R6, R9
78232:  BCC             loc_781D8
78234:  MOVS            R0, #1
78236:  POP.W           {R8-R10}
7823A:  POP             {R4-R7,PC}
7823C:  MOVS            R0, #0
7823E:  POP.W           {R8-R10}
78242:  POP             {R4-R7,PC}
