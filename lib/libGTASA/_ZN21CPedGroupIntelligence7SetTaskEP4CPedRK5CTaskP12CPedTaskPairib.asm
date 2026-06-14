; =========================================================
; Game Engine Function: _ZN21CPedGroupIntelligence7SetTaskEP4CPedRK5CTaskP12CPedTaskPairib
; Address            : 0x4B3456 - 0x4B351E
; =========================================================

4B3456:  PUSH            {R4-R7,LR}
4B3458:  ADD             R7, SP, #0xC
4B345A:  PUSH.W          {R8-R10}
4B345E:  MOV             R10, R2
4B3460:  LDRD.W          R8, R0, [R7,#arg_0]
4B3464:  LDR             R2, [R3]
4B3466:  CMP             R2, R1
4B3468:  BEQ             loc_4B349A
4B346A:  LDR             R2, [R3,#0x14]
4B346C:  CMP             R2, R1
4B346E:  BEQ             loc_4B349E
4B3470:  LDR             R2, [R3,#0x28]
4B3472:  CMP             R2, R1
4B3474:  BEQ             loc_4B34A2
4B3476:  LDR             R2, [R3,#0x3C]
4B3478:  CMP             R2, R1
4B347A:  BEQ             loc_4B34A6
4B347C:  LDR             R2, [R3,#0x50]
4B347E:  CMP             R2, R1
4B3480:  BEQ             loc_4B34AA
4B3482:  LDR             R2, [R3,#0x64]
4B3484:  CMP             R2, R1
4B3486:  BEQ             loc_4B34AE
4B3488:  LDR             R2, [R3,#0x78]
4B348A:  CMP             R2, R1
4B348C:  BEQ             loc_4B34B2
4B348E:  LDR.W           R2, [R3,#0x8C]
4B3492:  CMP             R2, R1
4B3494:  BNE             loc_4B3518
4B3496:  MOVS            R1, #7
4B3498:  B               loc_4B34B4
4B349A:  MOVS            R1, #0
4B349C:  B               loc_4B34B4
4B349E:  MOVS            R1, #1
4B34A0:  B               loc_4B34B4
4B34A2:  MOVS            R1, #2
4B34A4:  B               loc_4B34B4
4B34A6:  MOVS            R1, #3
4B34A8:  B               loc_4B34B4
4B34AA:  MOVS            R1, #4
4B34AC:  B               loc_4B34B4
4B34AE:  MOVS            R1, #5
4B34B0:  B               loc_4B34B4
4B34B2:  MOVS            R1, #6
4B34B4:  ADD.W           R1, R1, R1,LSL#2
4B34B8:  ADD.W           R4, R3, R1,LSL#2
4B34BC:  MOV             R6, R4
4B34BE:  LDR.W           R5, [R6,#4]!
4B34C2:  CBZ             R5, loc_4B34E2
4B34C4:  CBNZ            R0, loc_4B34F4
4B34C6:  LDR             R0, [R5]
4B34C8:  LDR             R1, [R0,#0x14]
4B34CA:  MOV             R0, R5
4B34CC:  BLX             R1
4B34CE:  MOV             R9, R0
4B34D0:  LDR.W           R0, [R10]
4B34D4:  LDR             R1, [R0,#0x14]
4B34D6:  MOV             R0, R10
4B34D8:  BLX             R1
4B34DA:  LDR             R5, [R6]
4B34DC:  CMP             R9, R0
4B34DE:  BNE             loc_4B34F4
4B34E0:  CBNZ            R5, loc_4B3518
4B34E2:  LDR.W           R0, [R10]
4B34E6:  LDR             R1, [R0,#8]
4B34E8:  MOV             R0, R10
4B34EA:  BLX             R1
4B34EC:  STR             R0, [R6]
4B34EE:  STR.W           R8, [R4,#8]
4B34F2:  B               loc_4B3518
4B34F4:  LDR.W           R0, [R10]
4B34F8:  LDR             R1, [R0,#8]
4B34FA:  MOV             R0, R10
4B34FC:  BLX             R1
4B34FE:  CMP             R5, #0
4B3500:  STR             R0, [R6]
4B3502:  STR.W           R8, [R4,#8]
4B3506:  BEQ             loc_4B3518
4B3508:  LDR             R0, [R5]
4B350A:  LDR             R1, [R0,#4]
4B350C:  MOV             R0, R5
4B350E:  POP.W           {R8-R10}
4B3512:  POP.W           {R4-R7,LR}
4B3516:  BX              R1
4B3518:  POP.W           {R8-R10}
4B351C:  POP             {R4-R7,PC}
