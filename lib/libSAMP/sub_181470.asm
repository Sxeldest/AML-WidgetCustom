; =========================================================
; Game Engine Function: sub_181470
; Address            : 0x181470 - 0x181524
; =========================================================

181470:  PUSH            {R4-R7,LR}
181472:  ADD             R7, SP, #0xC
181474:  PUSH.W          {R8-R11}
181478:  SUB             SP, SP, #4
18147A:  MOV             R11, R2
18147C:  MOV             R5, R1
18147E:  MOV             R10, R0
181480:  BL              sub_17E2E4
181484:  CBZ             R5, loc_181496
181486:  MOV             R9, R0
181488:  LDRB            R0, [R5]
18148A:  CBZ             R0, loc_181496
18148C:  MOV             R0, R5; s
18148E:  BLX             strlen
181492:  CMP             R0, #0xF
181494:  BLS             loc_18149E
181496:  ADD             SP, SP, #4
181498:  POP.W           {R8-R11}
18149C:  POP             {R4-R7,PC}
18149E:  ADD.W           R0, R10, #0x370
1814A2:  STR             R0, [SP,#0x20+var_20]
1814A4:  BL              sub_18CB76
1814A8:  LDR.W           R4, [R10,#0x378]
1814AC:  CBZ             R4, loc_1814C8
1814AE:  LDR.W           R6, [R10,#0x374]
1814B2:  LDR.W           R8, [R6]
1814B6:  MOV             R0, R5; s1
1814B8:  LDR.W           R1, [R8]; s2
1814BC:  BLX             strcmp
1814C0:  CBZ             R0, loc_181506
1814C2:  ADDS            R6, #4
1814C4:  SUBS            R4, #1
1814C6:  BNE             loc_1814B2
1814C8:  LDR             R4, [SP,#0x20+var_20]
1814CA:  ADD.W           R10, R10, #0x374
1814CE:  MOV             R0, R4
1814D0:  BL              sub_18CB7A
1814D4:  MOVS            R0, #8; unsigned int
1814D6:  CMP.W           R11, #0
1814DA:  IT NE
1814DC:  ADDNE           R11, R9
1814DE:  BLX             j__Znwj; operator new(uint)
1814E2:  MOV             R6, R0
1814E4:  MOVS            R0, #0x10; unsigned int
1814E6:  BLX             j__Znaj; operator new[](uint)
1814EA:  MOV             R1, R5
1814EC:  MOVS            R2, #0x10
1814EE:  STRD.W          R0, R11, [R6]
1814F2:  BLX             __strcpy_chk
1814F6:  MOV             R0, R4
1814F8:  BL              sub_18CB76
1814FC:  MOV             R0, R10
1814FE:  MOV             R1, R6
181500:  BL              sub_181524
181504:  B               loc_181514
181506:  CMP.W           R11, #0
18150A:  IT NE
18150C:  ADDNE           R11, R9
18150E:  STR.W           R11, [R8,#4]
181512:  LDR             R4, [SP,#0x20+var_20]
181514:  MOV             R0, R4
181516:  ADD             SP, SP, #4
181518:  POP.W           {R8-R11}
18151C:  POP.W           {R4-R7,LR}
181520:  B.W             sub_18CB7A
