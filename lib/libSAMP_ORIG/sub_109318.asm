; =========================================================
; Game Engine Function: sub_109318
; Address            : 0x109318 - 0x109394
; =========================================================

109318:  PUSH            {R4,R5,R11,LR}
10931C:  SUB             SP, SP, #0x10
109320:  MOV             R5, R1
109324:  ADD             R1, SP, #0x20+var_18
109328:  EOR             R0, R0, R5,ASR#31
10932C:  STR             R1, [SP,#0x20+var_20]
109330:  MOV             R4, R3
109334:  EOR             R2, R2, R3,ASR#31
109338:  EOR             R1, R5, R5,ASR#31
10933C:  SUBS            R0, R0, R5,ASR#31
109340:  SBC             R1, R1, R5,ASR#31
109344:  EOR             R3, R3, R3,ASR#31
109348:  SUBS            R2, R2, R4,ASR#31
10934C:  SBC             R3, R3, R4,ASR#31
109350:  BL              sub_109394
109354:  LDR             R2, [SP,#0x20+var_18]
109358:  LDR             R3, [SP,#0x20+var_14]
10935C:  EOR             R2, R2, R5,ASR#31
109360:  LDR             R12, [SP,#0x20+arg_0]
109364:  SUBS            R2, R2, R5,ASR#31
109368:  EOR             R3, R3, R5,ASR#31
10936C:  SBC             R3, R3, R5,ASR#31
109370:  STRD            R2, R3, [R12]
109374:  MOV             R2, R4,ASR#31
109378:  EOR             R2, R2, R5,ASR#31
10937C:  EOR             R0, R0, R2
109380:  EOR             R1, R1, R2
109384:  SUBS            R0, R0, R2
109388:  SBC             R1, R1, R2
10938C:  ADD             SP, SP, #0x10
109390:  POP             {R4,R5,R11,PC}
