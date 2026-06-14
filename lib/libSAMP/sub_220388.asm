; =========================================================
; Game Engine Function: sub_220388
; Address            : 0x220388 - 0x220444
; =========================================================

220388:  PUSH            {R4-R7,LR}
22038A:  ADD             R7, SP, #0xC
22038C:  PUSH.W          {R2-R10}
220390:  MOV             R8, R0
220392:  LDR             R0, =(__stack_chk_guard_ptr - 0x22039C)
220394:  MOV             R9, R3
220396:  MOV             R10, R1
220398:  ADD             R0, PC; __stack_chk_guard_ptr
22039A:  LDR             R0, [R0]; __stack_chk_guard
22039C:  LDR             R0, [R0]
22039E:  STR             R0, [SP,#0x30+var_1C]
2203A0:  MOVS            R0, #0
2203A2:  STR             R0, [SP,#0x30+var_24]
2203A4:  MOV             R0, R2; s
2203A6:  STR             R2, [SP,#0x30+var_20]
2203A8:  BLX             wcslen
2203AC:  LSLS            R0, R0, #2
2203AE:  ADDS            R4, R0, #1
2203B0:  MOV             R0, R4; unsigned int
2203B2:  BLX             j__Znaj; operator new[](uint)
2203B6:  STR             R0, [SP,#0x30+var_28]
2203B8:  ADD             R1, SP, #0x30+var_20
2203BA:  ADD             R3, SP, #0x30+var_24
2203BC:  MOV             R2, R4
2203BE:  MOV             R6, R0
2203C0:  BL              sub_2200EC
2203C4:  ADDS            R0, #1
2203C6:  BEQ             loc_220412
2203C8:  MOV.W           R4, R10,LSL#2
2203CC:  MOV             R0, R4; unsigned int
2203CE:  BLX             j__Znaj; operator new[](uint)
2203D2:  MOV             R1, R4; maxlen
2203D4:  MOV             R2, R6; format
2203D6:  MOV             R3, R9; arg
2203D8:  MOV             R5, R0
2203DA:  STR             R0, [SP,#0x30+var_2C]
2203DC:  BLX             vsnprintf
2203E0:  MOV             R6, R0
2203E2:  ADDS            R0, #1
2203E4:  BEQ             loc_220418
2203E6:  STR             R5, [SP,#0x30+var_30]
2203E8:  ADD             R3, SP, #0x30+var_24
2203EA:  MOV             R1, SP
2203EC:  MOV             R0, R8
2203EE:  MOV             R2, R10
2203F0:  BL              sub_21FF8C
2203F4:  ADDS            R0, #1
2203F6:  MOV.W           R5, #0xFFFFFFFF
2203FA:  BEQ             loc_22041C
2203FC:  MOV             R0, R8; s
2203FE:  BLX             wcslen
220402:  LDR             R1, [SP,#0x30+var_30]
220404:  CMP             R1, #0
220406:  IT NE
220408:  MOVNE           R0, R5
22040A:  CMP             R6, R4
22040C:  IT CC
22040E:  MOVCC           R5, R0
220410:  B               loc_22041C
220412:  MOV.W           R5, #0xFFFFFFFF
220416:  B               loc_220422
220418:  MOV.W           R5, #0xFFFFFFFF
22041C:  ADD             R0, SP, #0x30+var_2C
22041E:  BL              sub_22044C
220422:  ADD             R0, SP, #0x30+var_28
220424:  BL              sub_22044C
220428:  LDR             R0, [SP,#0x30+var_1C]
22042A:  LDR             R1, =(__stack_chk_guard_ptr - 0x220430)
22042C:  ADD             R1, PC; __stack_chk_guard_ptr
22042E:  LDR             R1, [R1]; __stack_chk_guard
220430:  LDR             R1, [R1]
220432:  CMP             R1, R0
220434:  ITTTT EQ
220436:  MOVEQ           R0, R5
220438:  ADDEQ           SP, SP, #0x18
22043A:  POPEQ.W         {R8-R10}
22043E:  POPEQ           {R4-R7,PC}
220440:  BLX             __stack_chk_fail
