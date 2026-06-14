; =========================================================
; Game Engine Function: _ZN21CPedGroupIntelligence7SetTaskEiRK5CTaskP12CPedTaskPairib
; Address            : 0x4B35CE - 0x4B3642
; =========================================================

4B35CE:  PUSH            {R4-R7,LR}
4B35D0:  ADD             R7, SP, #0xC
4B35D2:  PUSH.W          {R8-R10}
4B35D6:  ADD.W           R0, R1, R1,LSL#2
4B35DA:  LDR.W           R9, [R7,#arg_0]
4B35DE:  MOV             R4, R2
4B35E0:  ADD.W           R10, R3, R0,LSL#2
4B35E4:  MOV             R6, R10
4B35E6:  LDR.W           R5, [R6,#4]!
4B35EA:  CBZ             R5, loc_4B360A
4B35EC:  LDR             R0, [R7,#arg_4]
4B35EE:  CBNZ            R0, loc_4B361A
4B35F0:  LDR             R0, [R5]
4B35F2:  LDR             R1, [R0,#0x14]
4B35F4:  MOV             R0, R5
4B35F6:  BLX             R1
4B35F8:  MOV             R8, R0
4B35FA:  LDR             R0, [R4]
4B35FC:  LDR             R1, [R0,#0x14]
4B35FE:  MOV             R0, R4
4B3600:  BLX             R1
4B3602:  LDR             R5, [R6]
4B3604:  CMP             R8, R0
4B3606:  BNE             loc_4B361A
4B3608:  CBNZ            R5, loc_4B363C
4B360A:  LDR             R0, [R4]
4B360C:  LDR             R1, [R0,#8]
4B360E:  MOV             R0, R4
4B3610:  BLX             R1
4B3612:  STR             R0, [R6]
4B3614:  STR.W           R9, [R10,#8]
4B3618:  B               loc_4B363C
4B361A:  LDR             R0, [R4]
4B361C:  LDR             R1, [R0,#8]
4B361E:  MOV             R0, R4
4B3620:  BLX             R1
4B3622:  CMP             R5, #0
4B3624:  STR             R0, [R6]
4B3626:  STR.W           R9, [R10,#8]
4B362A:  BEQ             loc_4B363C
4B362C:  LDR             R0, [R5]
4B362E:  LDR             R1, [R0,#4]
4B3630:  MOV             R0, R5
4B3632:  POP.W           {R8-R10}
4B3636:  POP.W           {R4-R7,LR}
4B363A:  BX              R1
4B363C:  POP.W           {R8-R10}
4B3640:  POP             {R4-R7,PC}
