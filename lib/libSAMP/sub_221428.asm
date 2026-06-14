; =========================================================
; Game Engine Function: sub_221428
; Address            : 0x221428 - 0x2214A4
; =========================================================

221428:  PUSH            {R4,R5,R11,LR}
22142C:  SUB             SP, SP, #0x10
221430:  MOV             R5, R1
221434:  ADD             R1, SP, #0x20+var_18
221438:  EOR             R0, R0, R5,ASR#31
22143C:  STR             R1, [SP,#0x20+var_20]
221440:  MOV             R4, R3
221444:  EOR             R2, R2, R3,ASR#31
221448:  EOR             R1, R5, R5,ASR#31
22144C:  SUBS            R0, R0, R5,ASR#31
221450:  SBC             R1, R1, R5,ASR#31
221454:  EOR             R3, R3, R3,ASR#31
221458:  SUBS            R2, R2, R4,ASR#31
22145C:  SBC             R3, R3, R4,ASR#31
221460:  BL              sub_2214A4
221464:  LDR             R2, [SP,#0x20+var_18]
221468:  LDR             R3, [SP,#0x20+var_14]
22146C:  EOR             R2, R2, R5,ASR#31
221470:  LDR             R12, [SP,#0x20+arg_0]
221474:  SUBS            R2, R2, R5,ASR#31
221478:  EOR             R3, R3, R5,ASR#31
22147C:  SBC             R3, R3, R5,ASR#31
221480:  STRD            R2, R3, [R12]
221484:  MOV             R2, R4,ASR#31
221488:  EOR             R2, R2, R5,ASR#31
22148C:  EOR             R0, R0, R2
221490:  EOR             R1, R1, R2
221494:  SUBS            R0, R0, R2
221498:  SBC             R1, R1, R2
22149C:  ADD             SP, SP, #0x10
2214A0:  POP             {R4,R5,R11,PC}
