; =========================================================
; Game Engine Function: sub_47844C
; Address            : 0x47844C - 0x4784EA
; =========================================================

47844C:  PUSH            {R4-R7,LR}
47844E:  ADD             R7, SP, #0xC
478450:  PUSH.W          {R8-R11}
478454:  SUB             SP, SP, #0x14
478456:  STR             R3, [SP,#0x30+var_20]
478458:  MOV             R5, R0
47845A:  LDR.W           R4, [R5,#0x140]
47845E:  MOV             R9, R1
478460:  LDR.W           R0, [R5,#0xE0]
478464:  MOV             R10, R2
478466:  LDR             R1, [R4,#8]
478468:  CMP             R1, R0
47846A:  BCS             loc_4784E2
47846C:  MOV             R11, R4
47846E:  LDR.W           R0, [R11,#0xC]!
478472:  ADD.W           R8, R11, #0xC
478476:  CMP             R0, #7
478478:  BHI             loc_478496
47847A:  LDR.W           R0, [R5,#0x144]
47847E:  MOV             R1, R9
478480:  MOV             R2, R10
478482:  LDR             R6, [R0,#4]
478484:  MOVS            R0, #8
478486:  STRD.W          R8, R11, [SP,#0x30+var_30]
47848A:  LDR             R3, [SP,#0x30+var_20]
47848C:  STR             R0, [SP,#0x30+var_28]
47848E:  MOV             R0, R5
478490:  BLX             R6
478492:  LDR.W           R0, [R11]
478496:  CMP             R0, #8
478498:  BNE             loc_4784E2
47849A:  LDR.W           R0, [R5,#0x148]
47849E:  MOV             R1, R8
4784A0:  LDR             R2, [R0,#4]
4784A2:  MOV             R0, R5
4784A4:  BLX             R2
4784A6:  LDRB            R1, [R4,#0x10]
4784A8:  CBZ             R0, loc_4784D2
4784AA:  CMP             R1, #0
4784AC:  ITTTT NE
4784AE:  LDRNE.W         R0, [R10]
4784B2:  ADDNE           R0, #1
4784B4:  STRNE.W         R0, [R10]
4784B8:  MOVNE           R0, #0
4784BA:  IT NE
4784BC:  STRBNE          R0, [R4,#0x10]
4784BE:  MOVS            R0, #0
4784C0:  LDR             R1, [R4,#8]
4784C2:  ADDS            R1, #1
4784C4:  STRD.W          R1, R0, [R4,#8]
4784C8:  LDR.W           R2, [R5,#0xE0]
4784CC:  CMP             R1, R2
4784CE:  BCC             loc_478476
4784D0:  B               loc_4784E2
4784D2:  CBNZ            R1, loc_4784E2
4784D4:  LDR.W           R0, [R10]
4784D8:  SUBS            R0, #1
4784DA:  STR.W           R0, [R10]
4784DE:  MOVS            R0, #1
4784E0:  STRB            R0, [R4,#0x10]
4784E2:  ADD             SP, SP, #0x14
4784E4:  POP.W           {R8-R11}
4784E8:  POP             {R4-R7,PC}
