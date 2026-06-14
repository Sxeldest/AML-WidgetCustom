; =========================================================
; Game Engine Function: sub_F630C
; Address            : 0xF630C - 0xF6366
; =========================================================

F630C:  PUSH            {R4-R7,LR}
F630E:  ADD             R7, SP, #0xC
F6310:  PUSH.W          {R11}
F6314:  SUB             SP, SP, #0x10
F6316:  MOV             R4, R0
F6318:  MOVS            R0, #0
F631A:  STR             R0, [SP,#0x20+var_14]
F631C:  STRD.W          R0, R0, [SP,#0x20+var_1C]
F6320:  BL              sub_F61A4
F6324:  ADD             R2, SP, #0x20+var_1C
F6326:  MOV             R1, R4
F6328:  BL              sub_15EAE0
F632C:  LDRD.W          R5, R6, [SP,#0x20+var_1C]
F6330:  CMP             R5, R6
F6332:  BEQ             loc_F6354
F6334:  BL              sub_F61A4
F6338:  LDR             R2, [R5]
F633A:  MOV             R1, R4
F633C:  BL              sub_15E950
F6340:  BL              sub_F61A4
F6344:  LDR             R2, [R5]
F6346:  MOV             R1, R4
F6348:  BL              sub_15EA00
F634C:  ADDS            R5, #4
F634E:  CMP             R5, R6
F6350:  BNE             loc_F6334
F6352:  LDR             R5, [SP,#0x20+var_1C]
F6354:  CBZ             R5, loc_F635E
F6356:  MOV             R0, R5; void *
F6358:  STR             R5, [SP,#0x20+var_18]
F635A:  BLX             j__ZdlPv; operator delete(void *)
F635E:  ADD             SP, SP, #0x10
F6360:  POP.W           {R11}
F6364:  POP             {R4-R7,PC}
