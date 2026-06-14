; =========================================================
; Game Engine Function: sub_EA184
; Address            : 0xEA184 - 0xEA1F4
; =========================================================

EA184:  PUSH            {R4-R7,LR}
EA186:  ADD             R7, SP, #0xC
EA188:  PUSH.W          {R8-R10}
EA18C:  MOV             R8, R1
EA18E:  MOV             R1, R0
EA190:  LDR.W           R4, [R1,#4]!
EA194:  CBZ             R4, loc_EA1D2
EA196:  ADD.W           R5, R0, #8
EA19A:  ADD.W           R10, R0, #4
EA19E:  MOV             R9, R2
EA1A0:  ADD.W           R6, R4, #0x10
EA1A4:  MOV             R0, R5
EA1A6:  MOV             R1, R9
EA1A8:  MOV             R2, R6
EA1AA:  BL              sub_EA270
EA1AE:  CBZ             R0, loc_EA1B6
EA1B0:  LDR             R0, [R4]
EA1B2:  CBNZ            R0, loc_EA1CC
EA1B4:  B               loc_EA1D8
EA1B6:  MOV             R0, R5
EA1B8:  MOV             R1, R6
EA1BA:  MOV             R2, R9
EA1BC:  BL              sub_EA270
EA1C0:  CBZ             R0, loc_EA1DE
EA1C2:  MOV             R1, R4
EA1C4:  LDR.W           R0, [R1,#4]!
EA1C8:  CBZ             R0, loc_EA1E6
EA1CA:  MOV             R4, R1
EA1CC:  MOV             R10, R4
EA1CE:  MOV             R4, R0
EA1D0:  B               loc_EA1A0
EA1D2:  STR.W           R1, [R8]
EA1D6:  B               loc_EA1EA
EA1D8:  STR.W           R4, [R8]
EA1DC:  B               loc_EA1EC
EA1DE:  STR.W           R4, [R8]
EA1E2:  MOV             R4, R10
EA1E4:  B               loc_EA1EC
EA1E6:  STR.W           R4, [R8]
EA1EA:  MOV             R4, R1
EA1EC:  MOV             R0, R4
EA1EE:  POP.W           {R8-R10}
EA1F2:  POP             {R4-R7,PC}
