; =========================================================
; Game Engine Function: sub_1504C0
; Address            : 0x1504C0 - 0x150552
; =========================================================

1504C0:  PUSH            {R4-R7,LR}
1504C2:  ADD             R7, SP, #0xC
1504C4:  PUSH.W          {R8,R9,R11}
1504C8:  SUB             SP, SP, #8
1504CA:  MOV             R8, R0
1504CC:  LDRB            R0, [R1,#0x12]
1504CE:  MOV             R9, R1
1504D0:  CBNZ            R0, loc_150512
1504D2:  LDR.W           R0, [R9,#4]
1504D6:  CBNZ            R0, loc_150512
1504D8:  LDR.W           R0, [R9]
1504DC:  LDR             R1, [R0,#8]
1504DE:  MOV             R0, R9
1504E0:  BLX             R1
1504E2:  CBZ             R0, loc_150548
1504E4:  CMP             R0, #2
1504E6:  BNE             loc_150520
1504E8:  LDRD.W          R5, R4, [R8,#0x24]
1504EC:  LDR.W           R6, [R9,#4]
1504F0:  CMP             R5, R4
1504F2:  BEQ             loc_150506
1504F4:  LDR             R1, [R5]
1504F6:  MOV             R0, R6
1504F8:  BL              sub_158D18
1504FC:  ADDS            R5, #4
1504FE:  CMP             R5, R4
150500:  BNE             loc_1504F4
150502:  LDR.W           R6, [R9,#4]
150506:  LDR.W           R0, [R8]
15050A:  LDR             R2, [R0,#0xC]
15050C:  MOV             R0, R8
15050E:  MOV             R1, R6
150510:  BLX             R2
150512:  MOV             R0, R9
150514:  BL              sub_151A48
150518:  CMP             R0, #0
15051A:  IT NE
15051C:  MOVNE           R0, #1
15051E:  B               loc_15054A
150520:  MOVS            R0, #(dword_0+1); void *
150522:  B               loc_15054A
150524:  B               loc_150528
150526:  B               loc_150528
150528:  CMP             R1, #1
15052A:  BNE             loc_150556
15052C:  BLX             j___cxa_begin_catch
150530:  LDR             R1, [R0]
150532:  LDR             R1, [R1,#8]
150534:  BLX             R1
150536:  LDR             R2, =(aPlaySoundS - 0x15053E); "Play sound: %s" ...
150538:  STR             R0, [SP,#0x20+var_1C]
15053A:  ADD             R2, PC; "Play sound: %s"
15053C:  ADD             R1, SP, #0x20+var_1C
15053E:  MOV             R0, R2
150540:  BL              sub_150564
150544:  BLX             j___cxa_end_catch
150548:  MOVS            R0, #0
15054A:  ADD             SP, SP, #8
15054C:  POP.W           {R8,R9,R11}
150550:  POP             {R4-R7,PC}
