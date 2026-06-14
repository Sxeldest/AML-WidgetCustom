; =========================================================
; Game Engine Function: sub_1703DC
; Address            : 0x1703DC - 0x170450
; =========================================================

1703DC:  PUSH            {R4,R5,R7,LR}
1703DE:  ADD             R7, SP, #8
1703E0:  LDR             R0, =(dword_381B58 - 0x1703EA)
1703E2:  MOVW            R1, #0x1AA8
1703E6:  ADD             R0, PC; dword_381B58
1703E8:  LDR             R0, [R0]
1703EA:  LDR             R1, [R0,R1]
1703EC:  CMP             R1, #1
1703EE:  BLT             locret_17044E
1703F0:  MOVW            R2, #0x1A9C
1703F4:  ADDS            R4, R0, R2
1703F6:  LDR             R0, [R4]
1703F8:  CMP             R1, R0
1703FA:  BGT             locret_17044E
1703FC:  SUBS            R0, R1, #1
1703FE:  LDR.W           R12, [R4,#8]
170402:  LDR             R5, [R4,#0x14]
170404:  ADD.W           R3, R0, R0,LSL#3
170408:  LDR.W           R2, [R12,R3,LSL#2]
17040C:  LDR.W           R5, [R5,R3,LSL#2]
170410:  CMP             R5, R2
170412:  IT NE
170414:  POPNE           {R4,R5,R7,PC}
170416:  CMP             R1, #2
170418:  BCC             loc_17043C
17041A:  ADD.W           R1, R12, R3,LSL#2
17041E:  LDR             R2, [R1,#4]
170420:  SUBS            R1, #0x20 ; ' '
170422:  CBZ             R2, loc_17043E
170424:  LDRB            R2, [R2,#0xB]
170426:  LSLS            R2, R2, #0x1B
170428:  BPL             loc_17043E
17042A:  LDR             R2, [R1]
17042C:  CBZ             R2, loc_170434
17042E:  LDRB            R3, [R2,#0xB]
170430:  LSLS            R3, R3, #0x1C
170432:  BMI             loc_17043E
170434:  SUBS            R0, #1
170436:  SUB.W           R1, R1, #0x24 ; '$'
17043A:  BNE             loc_170422
17043C:  MOVS            R0, #0
17043E:  MOVS            R1, #1
170440:  MOVS            R5, #1
170442:  BL              sub_1702CC
170446:  LDR             R0, [R4,#0x18]
170448:  CBZ             R0, locret_17044E
17044A:  STRB.W          R5, [R0,#0x140]
17044E:  POP             {R4,R5,R7,PC}
