; =========================================================
; Game Engine Function: sub_263234
; Address            : 0x263234 - 0x26330E
; =========================================================

263234:  PUSH            {R4,R6,R7,LR}
263236:  ADD             R7, SP, #8
263238:  MOV             R4, R1
26323A:  SUBS            R1, R2, #1; switch 22 cases
26323C:  CMP             R1, #0x15
26323E:  BHI             def_263240; jumptable 00263240 default case, cases 11,14
263240:  TBB.W           [PC,R1]; switch jump
263244:  DCB 0xB; jump table for switch statement
263245:  DCB 0xE
263246:  DCB 0x11
263247:  DCB 0x14
263248:  DCB 0x17
263249:  DCB 0x1A
26324A:  DCB 0x1D
26324B:  DCB 0x20
26324C:  DCB 0x23
26324D:  DCB 0x26
26324E:  DCB 0x29
26324F:  DCB 0x47
263250:  DCB 0x4A
263251:  DCB 0x29
263252:  DCB 0x4D
263253:  DCB 0x50
263254:  DCB 0x53
263255:  DCB 0x56
263256:  DCB 0x59
263257:  DCB 0x5C
263258:  DCB 0x5F
263259:  DCB 0x62
26325A:  LDR             R0, [R0,#4]; jumptable 00263240 case 1
26325C:  STR             R0, [R3]
26325E:  POP             {R4,R6,R7,PC}
263260:  LDR             R0, [R0,#8]; jumptable 00263240 case 2
263262:  STR             R0, [R3]
263264:  POP             {R4,R6,R7,PC}
263266:  LDR             R0, [R0,#0xC]; jumptable 00263240 case 3
263268:  STR             R0, [R3]
26326A:  POP             {R4,R6,R7,PC}
26326C:  LDR             R0, [R0,#0x10]; jumptable 00263240 case 4
26326E:  STR             R0, [R3]
263270:  POP             {R4,R6,R7,PC}
263272:  LDR             R0, [R0,#0x38]; jumptable 00263240 case 5
263274:  STR             R0, [R3]
263276:  POP             {R4,R6,R7,PC}
263278:  LDR             R0, [R0,#0x14]; jumptable 00263240 case 6
26327A:  STR             R0, [R3]
26327C:  POP             {R4,R6,R7,PC}
26327E:  LDR             R0, [R0,#0x18]; jumptable 00263240 case 7
263280:  STR             R0, [R3]
263282:  POP             {R4,R6,R7,PC}
263284:  LDR             R0, [R0,#0x3C]; jumptable 00263240 case 8
263286:  STR             R0, [R3]
263288:  POP             {R4,R6,R7,PC}
26328A:  LDR             R0, [R0,#0x1C]; jumptable 00263240 case 9
26328C:  STR             R0, [R3]
26328E:  POP             {R4,R6,R7,PC}
263290:  LDR             R0, [R0,#0x20]; jumptable 00263240 case 10
263292:  STR             R0, [R3]
263294:  POP             {R4,R6,R7,PC}
263296:  LDR             R0, =(TrapALError_ptr - 0x26329C); jumptable 00263240 default case, cases 11,14
263298:  ADD             R0, PC; TrapALError_ptr
26329A:  LDR             R0, [R0]; TrapALError
26329C:  LDRB            R0, [R0]
26329E:  CMP             R0, #0
2632A0:  ITT NE
2632A2:  MOVNE           R0, #5; sig
2632A4:  BLXNE           raise
2632A8:  LDREX.W         R0, [R4,#0x50]
2632AC:  CBNZ            R0, loc_2632C8
2632AE:  ADD.W           R0, R4, #0x50 ; 'P'
2632B2:  MOVW            R1, #0xA002
2632B6:  DMB.W           ISH
2632BA:  STREX.W         R2, R1, [R0]
2632BE:  CBZ             R2, loc_2632CC
2632C0:  LDREX.W         R2, [R0]
2632C4:  CMP             R2, #0
2632C6:  BEQ             loc_2632BA
2632C8:  CLREX.W
2632CC:  DMB.W           ISH
2632D0:  POP             {R4,R6,R7,PC}
2632D2:  LDR             R0, [R0,#0x24]; jumptable 00263240 case 12
2632D4:  STR             R0, [R3]
2632D6:  POP             {R4,R6,R7,PC}
2632D8:  LDR             R0, [R0,#0x28]; jumptable 00263240 case 13
2632DA:  STR             R0, [R3]
2632DC:  POP             {R4,R6,R7,PC}
2632DE:  LDR             R0, [R0,#0x58]; jumptable 00263240 case 15
2632E0:  STR             R0, [R3]
2632E2:  POP             {R4,R6,R7,PC}
2632E4:  LDR             R0, [R0,#0x5C]; jumptable 00263240 case 16
2632E6:  STR             R0, [R3]
2632E8:  POP             {R4,R6,R7,PC}
2632EA:  LDR             R0, [R0,#0x60]; jumptable 00263240 case 17
2632EC:  STR             R0, [R3]
2632EE:  POP             {R4,R6,R7,PC}
2632F0:  LDR             R0, [R0,#0x64]; jumptable 00263240 case 18
2632F2:  STR             R0, [R3]
2632F4:  POP             {R4,R6,R7,PC}
2632F6:  LDR             R0, [R0,#0x2C]; jumptable 00263240 case 19
2632F8:  STR             R0, [R3]
2632FA:  POP             {R4,R6,R7,PC}
2632FC:  LDR             R0, [R0,#0x68]; jumptable 00263240 case 20
2632FE:  STR             R0, [R3]
263300:  POP             {R4,R6,R7,PC}
263302:  LDR             R0, [R0,#0x6C]; jumptable 00263240 case 21
263304:  STR             R0, [R3]
263306:  POP             {R4,R6,R7,PC}
263308:  LDR             R0, [R0,#0x30]; jumptable 00263240 case 22
26330A:  STR             R0, [R3]
26330C:  POP             {R4,R6,R7,PC}
