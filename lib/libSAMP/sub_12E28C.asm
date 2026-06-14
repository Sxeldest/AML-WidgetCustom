; =========================================================
; Game Engine Function: sub_12E28C
; Address            : 0x12E28C - 0x12E32A
; =========================================================

12E28C:  PUSH            {R4-R7,LR}
12E28E:  ADD             R7, SP, #0xC
12E290:  PUSH.W          {R8-R11}
12E294:  SUB             SP, SP, #0xC
12E296:  MOV             R6, R1
12E298:  MOV             R9, R1
12E29A:  LDR.W           R4, [R6,#4]!
12E29E:  MOV             R8, R0
12E2A0:  CBZ             R4, loc_12E2C8
12E2A2:  LDR             R0, [R2]
12E2A4:  ADD.W           R6, R9, #4
12E2A8:  LDR             R1, [R4,#0x10]
12E2AA:  CMP             R0, R1
12E2AC:  BCS             loc_12E2B4
12E2AE:  LDR             R1, [R4]
12E2B0:  CBNZ            R1, loc_12E2C2
12E2B2:  B               loc_12E2CC
12E2B4:  CMP             R1, R0
12E2B6:  BCS             loc_12E2CE
12E2B8:  MOV             R6, R4
12E2BA:  LDR.W           R1, [R6,#4]!
12E2BE:  CBZ             R1, loc_12E2CE
12E2C0:  MOV             R4, R6
12E2C2:  MOV             R6, R4
12E2C4:  MOV             R4, R1
12E2C6:  B               loc_12E2A8
12E2C8:  MOV             R4, R6
12E2CA:  B               loc_12E2CE
12E2CC:  MOV             R6, R4
12E2CE:  LDR             R5, [R6]
12E2D0:  MOV.W           R10, #0
12E2D4:  CBNZ            R5, loc_12E31A
12E2D6:  MOVS            R0, #0x24 ; '$'; unsigned int
12E2D8:  LDR.W           R11, [R7,#arg_0]
12E2DC:  BLX             j__Znwj; operator new(uint)
12E2E0:  MOV             R5, R0
12E2E2:  LDR.W           R0, [R11]
12E2E6:  LDR             R0, [R0]
12E2E8:  STR             R0, [R5,#0x10]
12E2EA:  ADD.W           R0, R9, #4
12E2EE:  STR             R0, [SP,#0x28+var_24]
12E2F0:  ADD.W           R0, R5, #0x14
12E2F4:  BL              sub_12E354
12E2F8:  MOVS            R0, #1
12E2FA:  MOV             R1, R4
12E2FC:  STRB.W          R0, [SP,#0x28+var_20]
12E300:  MOV             R0, R9
12E302:  MOV             R2, R6
12E304:  MOV             R3, R5
12E306:  BL              sub_12E32A
12E30A:  MOV             R0, SP
12E30C:  MOVS            R1, #0
12E30E:  STR.W           R10, [SP,#0x28+var_28]
12E312:  BL              sub_12E39C
12E316:  MOV.W           R10, #1
12E31A:  STRB.W          R10, [R8,#4]
12E31E:  STR.W           R5, [R8]
12E322:  ADD             SP, SP, #0xC
12E324:  POP.W           {R8-R11}
12E328:  POP             {R4-R7,PC}
