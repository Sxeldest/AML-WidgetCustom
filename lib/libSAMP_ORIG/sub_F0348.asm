; =========================================================
; Game Engine Function: sub_F0348
; Address            : 0xF0348 - 0xF04B8
; =========================================================

F0348:  PUSH            {R4-R7,LR}
F034A:  ADD             R7, SP, #0xC
F034C:  PUSH.W          {R8-R11}
F0350:  LDRB            R4, [R7,#arg_C]
F0352:  STR             R0, [R2]
F0354:  LDR             R0, [R7,#arg_4]
F0356:  LSLS            R4, R4, #0x1E
F0358:  LDR.W           R10, [R7,#arg_0]
F035C:  STR             R3, [R0]
F035E:  BPL             loc_F0388
F0360:  SUB.W           R4, R10, R3
F0364:  CMP             R4, #3
F0366:  BGE             loc_F036C
F0368:  MOVS            R0, #1
F036A:  B               loc_F04B2
F036C:  ADDS            R4, R3, #1
F036E:  STR             R4, [R0]
F0370:  MOVS            R4, #0xEF
F0372:  STRB            R4, [R3]
F0374:  LDR             R3, [R0]
F0376:  ADDS            R4, R3, #1
F0378:  STR             R4, [R0]
F037A:  MOVS            R4, #0xBB
F037C:  STRB            R4, [R3]
F037E:  LDR             R3, [R0]
F0380:  ADDS            R4, R3, #1
F0382:  STR             R4, [R0]
F0384:  MOVS            R4, #0xBF
F0386:  STRB            R4, [R3]
F0388:  LDR.W           R11, [R7,#arg_8]
F038C:  MOV.W           R8, #0
F0390:  LDR             R6, [R2]
F0392:  MOV.W           R12, #0xC0
F0396:  MOV.W           R9, #2
F039A:  CMP             R6, R1
F039C:  BCS.W           loc_F04B0
F03A0:  LDRH            R5, [R6]
F03A2:  CMP             R5, R11
F03A4:  BHI.W           loc_F04AC
F03A8:  CMP             R5, #0x7F
F03AA:  BHI             loc_F03B8
F03AC:  LDR             R3, [R0]
F03AE:  SUB.W           R4, R10, R3
F03B2:  CMP             R4, #1
F03B4:  BGE             loc_F049E
F03B6:  B               loc_F0368
F03B8:  CMP.W           R8, R5,LSR#11
F03BC:  BNE             loc_F03D2
F03BE:  LDR             R3, [R0]
F03C0:  SUB.W           R4, R10, R3
F03C4:  CMP             R4, #2
F03C6:  BLT             loc_F0368
F03C8:  ADDS            R4, R3, #1
F03CA:  STR             R4, [R0]
F03CC:  ORR.W           R4, R12, R5,LSR#6
F03D0:  B               loc_F0496
F03D2:  LSRS            R3, R5, #0xB
F03D4:  CMP             R3, #0x1A
F03D6:  BLS             loc_F0474
F03D8:  LSRS            R3, R5, #0xA
F03DA:  CMP             R3, #0x36 ; '6'
F03DC:  BHI             loc_F046E
F03DE:  SUBS            R3, R1, R6
F03E0:  CMP             R3, #4
F03E2:  BLT             loc_F0368
F03E4:  LDRH.W          R12, [R6,#2]!
F03E8:  AND.W           R3, R12, #0xFC00
F03EC:  CMP.W           R3, #0xDC00
F03F0:  BNE             loc_F04AC
F03F2:  LDR             R3, [R0]
F03F4:  SUB.W           R3, R10, R3
F03F8:  CMP             R3, #4
F03FA:  BLT             loc_F0368
F03FC:  MOV.W           LR, R5,LSL#10
F0400:  AND.W           R3, R5, #0x3C0
F0404:  UXTH.W          R4, LR
F0408:  ORR.W           LR, R4, R3,LSL#10
F040C:  MOV             R4, R12
F040E:  BFC.W           R4, #0xA, #0x16
F0412:  ADD             R4, LR
F0414:  ADD.W           R4, R4, #0x10000
F0418:  CMP             R4, R11
F041A:  BHI             loc_F04AC
F041C:  STR             R6, [R2]
F041E:  LDR             R4, [R0]
F0420:  ADDS            R6, R4, #1
F0422:  STR             R6, [R0]
F0424:  MOVS            R6, #1
F0426:  ADD.W           R3, R6, R3,LSR#6
F042A:  LSRS            R6, R3, #2
F042C:  ADDS            R6, #0xF0
F042E:  STRB            R6, [R4]
F0430:  LDR             R4, [R0]
F0432:  ADDS            R6, R4, #1
F0434:  STR             R6, [R0]
F0436:  UBFX.W          R6, R5, #2, #4
F043A:  BFI.W           R6, R3, #4, #2
F043E:  ADD.W           R3, R6, #0x80
F0442:  STRB            R3, [R4]
F0444:  LDR             R3, [R0]
F0446:  ADDS            R4, R3, #1
F0448:  STR             R4, [R0]
F044A:  AND.W           R4, R5, #3
F044E:  UBFX.W          R5, R12, #6, #4
F0452:  BFI.W           R12, R9, #6, #0x1A
F0456:  ORR.W           R4, R5, R4,LSL#4
F045A:  ADDS            R4, #0x80
F045C:  STRB            R4, [R3]
F045E:  LDR             R3, [R0]
F0460:  ADDS            R4, R3, #1
F0462:  STR             R4, [R0]
F0464:  STRB.W          R12, [R3]
F0468:  MOV.W           R12, #0xC0
F046C:  B               loc_F04A4
F046E:  CMP.W           R5, #0xE000
F0472:  BCC             loc_F04AC
F0474:  LDR             R3, [R0]
F0476:  SUB.W           R4, R10, R3
F047A:  CMP             R4, #3
F047C:  BLT.W           loc_F0368
F0480:  ADDS            R4, R3, #1
F0482:  STR             R4, [R0]
F0484:  LSRS            R4, R5, #0xC
F0486:  ADDS            R4, #0xE0
F0488:  STRB            R4, [R3]
F048A:  LDR             R3, [R0]
F048C:  ADDS            R4, R3, #1
F048E:  STR             R4, [R0]
F0490:  LSRS            R4, R5, #6
F0492:  BFI.W           R4, R9, #6, #0x1A
F0496:  STRB            R4, [R3]
F0498:  BFI.W           R5, R9, #6, #0x1A
F049C:  LDR             R3, [R0]
F049E:  ADDS            R4, R3, #1
F04A0:  STR             R4, [R0]
F04A2:  STRB            R5, [R3]
F04A4:  LDR             R3, [R2]
F04A6:  ADDS            R6, R3, #2
F04A8:  STR             R6, [R2]
F04AA:  B               loc_F039A
F04AC:  MOVS            R0, #2
F04AE:  B               loc_F04B2
F04B0:  MOVS            R0, #0
F04B2:  POP.W           {R8-R11}
F04B6:  POP             {R4-R7,PC}
