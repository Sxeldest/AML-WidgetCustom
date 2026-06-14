; =========================================================
; Game Engine Function: sub_17443A
; Address            : 0x17443A - 0x17457A
; =========================================================

17443A:  PUSH            {R4-R7,LR}
17443C:  ADD             R7, SP, #0xC
17443E:  PUSH.W          {R8-R11}
174442:  SUB             SP, SP, #4
174444:  LDR.W           R8, [R7,#arg_0]
174448:  CMP.W           R8, #0x1000000
17444C:  BCC.W           loc_174572
174450:  MOV             R4, R0
174452:  MOV             R6, R1
174454:  LDR             R0, [R0,#0x58]
174456:  MOV             R9, R3
174458:  LDR             R1, [R4,#0x5C]
17445A:  MOV             R11, R2
17445C:  CMP             R0, R1
17445E:  BNE             loc_17449E
174460:  CMP             R0, #0
174462:  ADD.W           R5, R0, #1
174466:  ITTE NE
174468:  ADDNE.W         R1, R0, R0,LSR#31
17446C:  ADDNE.W         R1, R0, R1,ASR#1
174470:  MOVEQ           R1, #8
174472:  CMP             R1, R5
174474:  IT GT
174476:  MOVGT           R5, R1
174478:  CMP             R0, R5
17447A:  BGE             loc_17449E
17447C:  LSLS            R0, R5, #3
17447E:  BL              sub_1654B0
174482:  LDR             R1, [R4,#0x60]; src
174484:  MOV             R10, R0
174486:  CBZ             R1, loc_174498
174488:  LDR             R0, [R4,#0x58]
17448A:  LSLS            R2, R0, #3; n
17448C:  MOV             R0, R10; dest
17448E:  BLX             j_memcpy
174492:  LDR             R0, [R4,#0x60]
174494:  BL              sub_165578
174498:  LDR             R0, [R4,#0x58]
17449A:  STRD.W          R5, R10, [R4,#0x5C]
17449E:  LDR             R1, [R4,#0x60]
1744A0:  LDRD.W          R2, R3, [R6]
1744A4:  STR.W           R2, [R1,R0,LSL#3]
1744A8:  ADD.W           R0, R1, R0,LSL#3
1744AC:  STR             R3, [R0,#4]
1744AE:  LDRD.W          R1, R2, [R4,#0x58]
1744B2:  ADDS            R0, R1, #1
1744B4:  STR             R0, [R4,#0x58]
1744B6:  CMP             R0, R2
1744B8:  BNE             loc_1744F6
1744BA:  ADDS            R5, R1, #2
1744BC:  CMP             R0, #0
1744BE:  ITTE NE
1744C0:  ADDNE.W         R1, R0, R0,LSR#31
1744C4:  ADDNE.W         R1, R0, R1,ASR#1
1744C8:  MOVEQ           R1, #8
1744CA:  CMP             R1, R5
1744CC:  IT GT
1744CE:  MOVGT           R5, R1
1744D0:  CMP             R0, R5
1744D2:  BGE             loc_1744F6
1744D4:  LSLS            R0, R5, #3
1744D6:  BL              sub_1654B0
1744DA:  LDR             R1, [R4,#0x60]; src
1744DC:  MOV             R6, R0
1744DE:  CBZ             R1, loc_1744F0
1744E0:  LDR             R0, [R4,#0x58]
1744E2:  LSLS            R2, R0, #3; n
1744E4:  MOV             R0, R6; dest
1744E6:  BLX             j_memcpy
1744EA:  LDR             R0, [R4,#0x60]
1744EC:  BL              sub_165578
1744F0:  LDR             R0, [R4,#0x58]
1744F2:  STRD.W          R5, R6, [R4,#0x5C]
1744F6:  LDR             R1, [R4,#0x60]
1744F8:  LDRD.W          R2, R3, [R11]
1744FC:  STR.W           R2, [R1,R0,LSL#3]
174500:  ADD.W           R0, R1, R0,LSL#3
174504:  STR             R3, [R0,#4]
174506:  LDRD.W          R1, R2, [R4,#0x58]
17450A:  ADDS            R0, R1, #1
17450C:  STR             R0, [R4,#0x58]
17450E:  CMP             R0, R2
174510:  BNE             loc_17454E
174512:  ADDS            R6, R1, #2
174514:  CMP             R0, #0
174516:  ITTE NE
174518:  ADDNE.W         R1, R0, R0,LSR#31
17451C:  ADDNE.W         R1, R0, R1,ASR#1
174520:  MOVEQ           R1, #8
174522:  CMP             R1, R6
174524:  IT GT
174526:  MOVGT           R6, R1
174528:  CMP             R0, R6
17452A:  BGE             loc_17454E
17452C:  LSLS            R0, R6, #3
17452E:  BL              sub_1654B0
174532:  LDR             R1, [R4,#0x60]; src
174534:  MOV             R5, R0
174536:  CBZ             R1, loc_174548
174538:  LDR             R0, [R4,#0x58]
17453A:  LSLS            R2, R0, #3; n
17453C:  MOV             R0, R5; dest
17453E:  BLX             j_memcpy
174542:  LDR             R0, [R4,#0x60]
174544:  BL              sub_165578
174548:  LDR             R0, [R4,#0x58]
17454A:  STRD.W          R6, R5, [R4,#0x5C]
17454E:  LDR             R1, [R4,#0x60]
174550:  LDRD.W          R2, R3, [R9]
174554:  STR.W           R2, [R1,R0,LSL#3]
174558:  ADD.W           R0, R1, R0,LSL#3
17455C:  STR             R3, [R0,#4]
17455E:  MOV             R3, R8
174560:  LDR             R0, [R4,#0x58]
174562:  LDR             R1, [R4,#0x60]
174564:  ADDS            R2, R0, #1
174566:  MOV             R0, R4
174568:  STR             R2, [R4,#0x58]
17456A:  BL              sub_173720
17456E:  MOVS            R0, #0
174570:  STR             R0, [R4,#0x58]
174572:  ADD             SP, SP, #4
174574:  POP.W           {R8-R11}
174578:  POP             {R4-R7,PC}
