; =========================================================
; Game Engine Function: gzerror
; Address            : 0x20D1FC - 0x20D296
; =========================================================

20D1FC:  PUSH            {R4-R7,LR}
20D1FE:  ADD             R7, SP, #0xC
20D200:  PUSH.W          {R8,R9,R11}
20D204:  MOV             R4, R0
20D206:  CBZ             R4, loc_20D27A
20D208:  LDR             R5, =(byte_61CD7E - 0x20D210)
20D20A:  LDR             R0, [R4,#0x38]
20D20C:  ADD             R5, PC; byte_61CD7E
20D20E:  STR             R0, [R1]
20D210:  ADDS            R1, R0, #1
20D212:  BEQ             loc_20D21A
20D214:  CBZ             R0, loc_20D28E
20D216:  LDR             R5, [R4,#0x18]
20D218:  CBZ             R5, loc_20D21E
20D21A:  LDRB            R0, [R5]
20D21C:  CBNZ            R0, loc_20D22E
20D21E:  LDR             R0, =(z_errmsg_ptr - 0x20D226)
20D220:  LDR             R1, [R4,#0x38]
20D222:  ADD             R0, PC; z_errmsg_ptr
20D224:  RSB.W           R1, R1, #2
20D228:  LDR             R0, [R0]; z_errmsg
20D22A:  LDR.W           R5, [R0,R1,LSL#2]
20D22E:  MOV             R9, R4
20D230:  LDR.W           R0, [R9,#0x50]!; p
20D234:  CMP             R0, #0
20D236:  IT NE
20D238:  BLXNE           free
20D23C:  LDR             R6, [R4,#0x54]
20D23E:  MOV             R0, R6; char *
20D240:  BLX             strlen
20D244:  MOV             R8, R0
20D246:  MOV             R0, R5; char *
20D248:  BLX             strlen
20D24C:  ADD             R0, R8
20D24E:  ADDS            R0, #3; byte_count
20D250:  BLX             malloc
20D254:  MOV             R1, R6; char *
20D256:  STR             R0, [R4,#0x50]
20D258:  BLX             strcpy
20D25C:  LDR             R6, [R4,#0x50]
20D25E:  MOV             R0, R6; char *
20D260:  BLX             strlen
20D264:  MOVW            R1, #0x203A
20D268:  STRH            R1, [R6,R0]
20D26A:  ADD             R0, R6
20D26C:  MOVS            R1, #0
20D26E:  STRB            R1, [R0,#2]
20D270:  MOV             R1, R5; src
20D272:  LDR             R0, [R4,#0x50]; dest
20D274:  BLX             strcat
20D278:  B               loc_20D28A
20D27A:  LDR             R0, =(z_errmsg_ptr - 0x20D286)
20D27C:  MOV             R2, #0xFFFFFFFE
20D280:  STR             R2, [R1]
20D282:  ADD             R0, PC; z_errmsg_ptr
20D284:  LDR             R0, [R0]; z_errmsg
20D286:  ADD.W           R9, R0, #0x10
20D28A:  LDR.W           R5, [R9]; "stream error" ...
20D28E:  MOV             R0, R5
20D290:  POP.W           {R8,R9,R11}
20D294:  POP             {R4-R7,PC}
