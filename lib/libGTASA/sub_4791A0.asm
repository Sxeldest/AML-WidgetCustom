; =========================================================
; Game Engine Function: sub_4791A0
; Address            : 0x4791A0 - 0x479278
; =========================================================

4791A0:  PUSH            {R4-R7,LR}
4791A2:  ADD             R7, SP, #0xC
4791A4:  PUSH.W          {R11}
4791A8:  MOV             R4, R0
4791AA:  MOV             R5, R2
4791AC:  MOVW            R0, #0xFFFE
4791B0:  MOV             R6, R1
4791B2:  CMP             R5, R0
4791B4:  BCC             loc_4791C4
4791B6:  LDR             R0, [R4]
4791B8:  MOVS            R1, #0xB
4791BA:  STR             R1, [R0,#0x14]
4791BC:  LDR             R0, [R4]
4791BE:  LDR             R1, [R0]
4791C0:  MOV             R0, R4
4791C2:  BLX             R1
4791C4:  LDR             R0, [R4,#0x18]
4791C6:  LDR             R1, [R0]
4791C8:  ADDS            R2, R1, #1
4791CA:  STR             R2, [R0]
4791CC:  MOVS            R2, #0xFF
4791CE:  STRB            R2, [R1]
4791D0:  LDR             R1, [R0,#4]
4791D2:  SUBS            R1, #1
4791D4:  STR             R1, [R0,#4]
4791D6:  BNE             loc_4791EE
4791D8:  LDR             R1, [R0,#0xC]
4791DA:  MOV             R0, R4
4791DC:  BLX             R1
4791DE:  CBNZ            R0, loc_4791EE
4791E0:  LDR             R0, [R4]
4791E2:  MOVS            R1, #0x18
4791E4:  STR             R1, [R0,#0x14]
4791E6:  LDR             R0, [R4]
4791E8:  LDR             R1, [R0]
4791EA:  MOV             R0, R4
4791EC:  BLX             R1
4791EE:  LDR             R0, [R4,#0x18]
4791F0:  LDR             R1, [R0]
4791F2:  ADDS            R2, R1, #1
4791F4:  STR             R2, [R0]
4791F6:  STRB            R6, [R1]
4791F8:  LDR             R1, [R0,#4]
4791FA:  SUBS            R1, #1
4791FC:  STR             R1, [R0,#4]
4791FE:  BNE             loc_479216
479200:  LDR             R1, [R0,#0xC]
479202:  MOV             R0, R4
479204:  BLX             R1
479206:  CBNZ            R0, loc_479216
479208:  LDR             R0, [R4]
47920A:  MOVS            R1, #0x18
47920C:  STR             R1, [R0,#0x14]
47920E:  LDR             R0, [R4]
479210:  LDR             R1, [R0]
479212:  MOV             R0, R4
479214:  BLX             R1
479216:  LDR             R0, [R4,#0x18]
479218:  ADDS            R5, #2
47921A:  LDR             R1, [R0]
47921C:  ADDS            R2, R1, #1
47921E:  STR             R2, [R0]
479220:  LSRS            R2, R5, #8
479222:  STRB            R2, [R1]
479224:  LDR             R1, [R0,#4]
479226:  SUBS            R1, #1
479228:  STR             R1, [R0,#4]
47922A:  BNE             loc_479242
47922C:  LDR             R1, [R0,#0xC]
47922E:  MOV             R0, R4
479230:  BLX             R1
479232:  CBNZ            R0, loc_479242
479234:  LDR             R0, [R4]
479236:  MOVS            R1, #0x18
479238:  STR             R1, [R0,#0x14]
47923A:  LDR             R0, [R4]
47923C:  LDR             R1, [R0]
47923E:  MOV             R0, R4
479240:  BLX             R1
479242:  LDR             R0, [R4,#0x18]
479244:  LDR             R1, [R0]
479246:  ADDS            R2, R1, #1
479248:  STR             R2, [R0]
47924A:  STRB            R5, [R1]
47924C:  LDR             R1, [R0,#4]
47924E:  SUBS            R1, #1
479250:  STR             R1, [R0,#4]
479252:  BNE             loc_47925C
479254:  LDR             R1, [R0,#0xC]
479256:  MOV             R0, R4
479258:  BLX             R1
47925A:  CBZ             R0, loc_479262
47925C:  POP.W           {R11}
479260:  POP             {R4-R7,PC}
479262:  LDR             R0, [R4]
479264:  MOVS            R1, #0x18
479266:  STR             R1, [R0,#0x14]
479268:  LDR             R0, [R4]
47926A:  LDR             R1, [R0]
47926C:  MOV             R0, R4
47926E:  POP.W           {R11}
479272:  POP.W           {R4-R7,LR}
479276:  BX              R1
