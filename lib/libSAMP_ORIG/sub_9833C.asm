; =========================================================
; Game Engine Function: sub_9833C
; Address            : 0x9833C - 0x9845C
; =========================================================

9833C:  PUSH            {R4-R7,LR}
9833E:  ADD             R7, SP, #0xC
98340:  PUSH.W          {R8-R10}
98344:  SUB             SP, SP, #0x18
98346:  LDR             R4, =(dword_1ACF68 - 0x98354)
98348:  MOV             R8, R0
9834A:  MOVW            R9, #0x2CD0
9834E:  ADD             R5, SP, #0x30+s
98350:  ADD             R4, PC; dword_1ACF68
98352:  MOV             R6, R1
98354:  MOVS            R1, #0x10
98356:  LDR.W           R10, [R4]
9835A:  LDR             R0, =(__stack_chk_guard_ptr - 0x98360)
9835C:  ADD             R0, PC; __stack_chk_guard_ptr
9835E:  LDR             R0, [R0]; __stack_chk_guard
98360:  LDR             R0, [R0]
98362:  STR             R0, [SP,#0x30+var_1C]
98364:  MOV             R0, R5; s
98366:  LDR.W           R3, [R10,R9]
9836A:  LDR             R2, =(aTooltip02d - 0x98370); "##Tooltip_%02d" ...
9836C:  ADD             R2, PC; "##Tooltip_%02d"
9836E:  BL              sub_886C0
98372:  CMP             R6, #0
98374:  BEQ             loc_9842E
98376:  LDRB.W          R2, [SP,#0x30+s]
9837A:  CBZ             R2, loc_983B8
9837C:  LDR             R3, =(unk_52D88 - 0x98388)
9837E:  ADDS            R1, R5, #1
98380:  MOV.W           R0, #0xFFFFFFFF
98384:  ADD             R3, PC; unk_52D88
98386:  B               loc_98398
98388:  UXTB            R5, R0
9838A:  EORS            R6, R5
9838C:  ADDS            R1, #1
9838E:  LDR.W           R6, [R3,R6,LSL#2]
98392:  EOR.W           R0, R6, R0,LSR#8
98396:  CBZ             R2, loc_983B4
98398:  MOV             R6, R2
9839A:  LDRB            R2, [R1]
9839C:  CMP             R6, #0x23 ; '#'
9839E:  IT EQ
983A0:  CMPEQ           R2, #0x23 ; '#'
983A2:  BNE             loc_98388
983A4:  LDRB            R2, [R1,#1]
983A6:  CMP             R2, #0x23 ; '#'
983A8:  MOV.W           R2, #0x23 ; '#'
983AC:  IT EQ
983AE:  MOVEQ.W         R0, #0xFFFFFFFF
983B2:  B               loc_98388
983B4:  MVNS            R0, R0
983B6:  B               loc_983BA
983B8:  MOVS            R0, #0
983BA:  LDR             R1, [R4]
983BC:  MOVW            R2, #0x199C
983C0:  LDR.W           R12, [R1,R2]
983C4:  ADD             R1, R2
983C6:  LDR.W           LR, [R1,#8]
983CA:  CMP.W           R12, #0
983CE:  MOV             R1, LR
983D0:  BEQ             loc_983F2
983D2:  MOV             R1, LR
983D4:  MOV             R6, R12
983D6:  LSRS            R2, R6, #1
983D8:  MVN.W           R3, R6,LSR#1
983DC:  ADD.W           R4, R1, R2,LSL#3
983E0:  LDR.W           R5, [R4],#8
983E4:  CMP             R5, R0
983E6:  ITT CC
983E8:  ADDCC           R2, R6, R3
983EA:  MOVCC           R1, R4
983EC:  CMP             R2, #0
983EE:  MOV             R6, R2
983F0:  BNE             loc_983D6
983F2:  ADD.W           R2, LR, R12,LSL#3
983F6:  CMP             R1, R2
983F8:  BEQ             loc_9842E
983FA:  LDR             R2, [R1]
983FC:  CMP             R2, R0
983FE:  BNE             loc_9842E
98400:  LDR             R0, [R1,#4]
98402:  CMP             R0, #0
98404:  ITT NE
98406:  LDRBNE.W        R1, [R0,#0x7A]
9840A:  CMPNE           R1, #0
9840C:  BEQ             loc_9842E
9840E:  ADD.W           R1, R10, R9
98412:  LDR             R2, =(aTooltip02d - 0x9841C); "##Tooltip_%02d" ...
98414:  MOVS            R3, #1
98416:  LDR             R6, [R1]
98418:  ADD             R2, PC; "##Tooltip_%02d"
9841A:  STR.W           R3, [R0,#0xA4]
9841E:  STRB.W          R3, [R0,#0x81]
98422:  ADDS            R3, R6, #1
98424:  ADD             R0, SP, #0x30+s; s
98426:  STR             R3, [R1]
98428:  MOVS            R1, #0x10
9842A:  BL              sub_886C0
9842E:  MOVW            R0, #0x347
98432:  MOVS            R1, #0
98434:  MOVT            R0, #0x20C
98438:  ORR.W           R2, R8, R0
9843C:  ADD             R0, SP, #0x30+s
9843E:  BL              sub_8FD20
98442:  LDR             R0, [SP,#0x30+var_1C]
98444:  LDR             R1, =(__stack_chk_guard_ptr - 0x9844A)
98446:  ADD             R1, PC; __stack_chk_guard_ptr
98448:  LDR             R1, [R1]; __stack_chk_guard
9844A:  LDR             R1, [R1]
9844C:  CMP             R1, R0
9844E:  ITTT EQ
98450:  ADDEQ           SP, SP, #0x18
98452:  POPEQ.W         {R8-R10}
98456:  POPEQ           {R4-R7,PC}
98458:  BLX             __stack_chk_fail
