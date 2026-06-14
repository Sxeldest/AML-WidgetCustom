; =========================================================
; Game Engine Function: sub_1592BC
; Address            : 0x1592BC - 0x1593AC
; =========================================================

1592BC:  PUSH            {R4-R7,LR}
1592BE:  ADD             R7, SP, #0xC
1592C0:  PUSH.W          {R8-R11}
1592C4:  SUB             SP, SP, #0xC
1592C6:  MOV             R4, R0
1592C8:  LDRD.W          R0, R11, [R1]
1592CC:  CMP             R0, R11
1592CE:  BEQ             loc_159362
1592D0:  STR             R4, [SP,#0x28+var_28]
1592D2:  ADD.W           R4, R0, #0x1C
1592D6:  ADD.W           R9, SP, #0x28+var_24
1592DA:  MOV             R5, R3
1592DC:  MOV             R10, R2
1592DE:  MOVS            R6, #0
1592E0:  MOV             R8, R6
1592E2:  CBZ             R5, loc_15930E
1592E4:  LDRB.W          R2, [R4,#-0x18]
1592E8:  LDRD.W          R0, R1, [R4,#-0x14]
1592EC:  ANDS.W          R3, R2, #1
1592F0:  IT EQ
1592F2:  LSREQ           R0, R2, #1
1592F4:  STR             R0, [SP,#0x28+var_20]
1592F6:  IT EQ
1592F8:  SUBEQ.W         R1, R4, #0x17
1592FC:  CMP             R0, R5
1592FE:  STR             R1, [SP,#0x28+var_24]
159300:  BNE             loc_15930E
159302:  MOV             R0, R9; int
159304:  MOV             R1, R10; int
159306:  MOV             R2, R5; n
159308:  BL              sub_126DBE
15930C:  CBZ             R0, loc_159368
15930E:  MOV             R0, R4
159310:  CMP.W           R8, #0
159314:  LDRB.W          R1, [R0],#0xC
159318:  MOV             R6, R8
15931A:  IT EQ
15931C:  SUBEQ.W         R6, R4, #0x1C
159320:  ADDS            R4, #0x28 ; '('
159322:  CMP             R1, #0
159324:  IT EQ
159326:  MOVEQ           R6, R8
159328:  CMP             R0, R11
15932A:  BNE             loc_1592E0
15932C:  LDR             R4, [SP,#0x28+var_28]
15932E:  CBZ             R6, loc_159362
159330:  MOVS            R0, #0x28 ; '('; unsigned int
159332:  BLX             j__Znwj; operator new(uint)
159336:  MOV             R8, R0
159338:  MOV             R1, R6
15933A:  LDR.W           R0, [R1],#4
15933E:  MOV             R5, R8
159340:  STR.W           R0, [R5],#4
159344:  MOV             R0, R5
159346:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
15934A:  ADD.W           R0, R8, #0x10
15934E:  ADD.W           R1, R6, #0x10
159352:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
159356:  VLDR            D16, [R6,#0x1C]
15935A:  LDR             R0, [R6,#dword_24]
15935C:  STR.W           R8, [R4]
159360:  B               loc_15939C
159362:  MOVS            R0, #0
159364:  STR             R0, [R4]
159366:  B               loc_1593A4
159368:  MOVS            R0, #0x28 ; '('; unsigned int
15936A:  BLX             j__Znwj; operator new(uint)
15936E:  MOV             R8, R0
159370:  LDR.W           R0, [R4,#-0x1C]
159374:  MOV             R6, R8
159376:  STR.W           R0, [R6],#4
15937A:  SUB.W           R1, R4, #0x18
15937E:  MOV             R0, R6
159380:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
159384:  ADD.W           R0, R8, #0x10
159388:  SUB.W           R1, R4, #0xC
15938C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
159390:  LDR             R1, [SP,#0x28+var_28]
159392:  LDR             R0, [R4,#8]
159394:  VLDR            D16, [R4]
159398:  STR.W           R8, [R1]
15939C:  STR.W           R0, [R8,#0x24]
1593A0:  VSTR            D16, [R8,#0x1C]
1593A4:  ADD             SP, SP, #0xC
1593A6:  POP.W           {R8-R11}
1593AA:  POP             {R4-R7,PC}
