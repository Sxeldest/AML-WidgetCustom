; =========================================================
; Game Engine Function: mpg123_id3
; Address            : 0x2333C6 - 0x23343C
; =========================================================

2333C6:  PUSH            {R4-R7,LR}
2333C8:  ADD             R7, SP, #0xC
2333CA:  PUSH.W          {R8}
2333CE:  MOV             R6, R1
2333D0:  MOV             R4, R2
2333D2:  CMP             R6, #0
2333D4:  MOV             R5, R0
2333D6:  ITT NE
2333D8:  MOVNE           R0, #0
2333DA:  STRNE           R0, [R6]
2333DC:  CMP             R4, #0
2333DE:  ITT NE
2333E0:  MOVNE           R0, #0
2333E2:  STRNE           R0, [R4]
2333E4:  CBZ             R5, loc_233432
2333E6:  MOVW            R0, #0xB478
2333EA:  LDRB            R1, [R5,R0]
2333EC:  LSLS            R1, R1, #0x1E
2333EE:  BEQ             loc_23342A
2333F0:  ADD.W           R8, R5, R0
2333F4:  MOV             R0, R5
2333F6:  BLX             j_INT123_id3_link
2333FA:  CBZ             R6, loc_23340E
2333FC:  MOVW            R0, #0xB2F4
233400:  LDRB            R0, [R5,R0]
233402:  LSLS            R0, R0, #0x1E
233404:  ITTT MI
233406:  MOVWMI          R0, #0xB47C
23340A:  ADDMI           R0, R5
23340C:  STRMI           R0, [R6]
23340E:  CMP             R4, #0
233410:  MOV.W           R1, #2
233414:  ITTT NE
233416:  MOVWNE          R0, #0xB4FC
23341A:  ADDNE           R0, R5
23341C:  STRNE           R0, [R4]
23341E:  LDR.W           R0, [R8]
233422:  BFI.W           R0, R1, #0, #2
233426:  STR.W           R0, [R8]
23342A:  MOVS            R0, #0
23342C:  POP.W           {R8}
233430:  POP             {R4-R7,PC}
233432:  MOV.W           R0, #0xFFFFFFFF
233436:  POP.W           {R8}
23343A:  POP             {R4-R7,PC}
