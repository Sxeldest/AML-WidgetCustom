; =========================================================
; Game Engine Function: sub_23C454
; Address            : 0x23C454 - 0x23C508
; =========================================================

23C454:  PUSH            {R4-R7,LR}
23C456:  ADD             R7, SP, #0xC
23C458:  PUSH.W          {R8-R11}
23C45C:  SUB             SP, SP, #4
23C45E:  MOV             R9, R0
23C460:  MOVW            R0, #0xB320
23C464:  LDR.W           R5, [R9,R0]
23C468:  MOVW            R1, #0xB32C
23C46C:  ADD.W           R10, R9, R1
23C470:  ADD.W           R1, R9, R0
23C474:  CBZ             R5, loc_23C4DC
23C476:  MOVW            R0, #0xB328
23C47A:  ADD.W           R6, R9, R0
23C47E:  MOVW            R0, #0xB334
23C482:  ADD.W           R4, R9, R0
23C486:  MOVW            R0, #0xB324
23C48A:  ADD.W           R11, R9, R0
23C48E:  STR             R1, [SP,#0x20+var_20]
23C490:  LDR             R1, [R5,#4]
23C492:  LDR.W           R0, [R10]
23C496:  CMP             R0, R1
23C498:  BLT             loc_23C4D8
23C49A:  LDR.W           R8, [R5,#0xC]
23C49E:  CMP.W           R8, #0
23C4A2:  ITTT EQ
23C4A4:  MOVEQ           R1, #0
23C4A6:  STREQ.W         R1, [R11]
23C4AA:  LDREQ           R1, [R5,#4]
23C4AC:  LDR             R2, [R4]
23C4AE:  ADD             R1, R2
23C4B0:  STR             R1, [R4]
23C4B2:  LDR             R1, [R5,#4]
23C4B4:  SUBS            R0, R0, R1
23C4B6:  STR.W           R0, [R10]
23C4BA:  LDR             R0, [R5,#4]
23C4BC:  LDR             R1, [R6]
23C4BE:  SUBS            R0, R1, R0
23C4C0:  STR             R0, [R6]
23C4C2:  LDR             R0, [R5]; p
23C4C4:  BLX             free
23C4C8:  MOV             R0, R5; p
23C4CA:  BLX             free
23C4CE:  CMP.W           R8, #0
23C4D2:  MOV             R5, R8
23C4D4:  BNE             loc_23C490
23C4D6:  MOVS            R5, #0
23C4D8:  LDR             R1, [SP,#0x20+var_20]
23C4DA:  B               loc_23C4E6
23C4DC:  MOVW            R0, #0xB334
23C4E0:  ADD.W           R4, R9, R0
23C4E4:  MOVS            R5, #0
23C4E6:  STR             R5, [R1]
23C4E8:  MOVW            R0, #0xB330
23C4EC:  LDR.W           R1, [R10]
23C4F0:  STR.W           R1, [R9,R0]
23C4F4:  LDR             R0, [R4]
23C4F6:  ADD             R0, R1
23C4F8:  MOVW            R1, #0xB2E8
23C4FC:  STR.W           R0, [R9,R1]
23C500:  ADD             SP, SP, #4
23C502:  POP.W           {R8-R11}
23C506:  POP             {R4-R7,PC}
