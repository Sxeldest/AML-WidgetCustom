; =========================================================
; Game Engine Function: sub_120444
; Address            : 0x120444 - 0x12047A
; =========================================================

120444:  PUSH            {R4,R6,R7,LR}
120446:  ADD             R7, SP, #8
120448:  LDRB.W          R12, [R0,#5]
12044C:  CMP.W           R12, #0
120450:  ITT NE
120452:  MOVNE           R0, #0
120454:  POPNE           {R4,R6,R7,PC}
120456:  LDR.W           R12, [R7,#arg_0]
12045A:  LDR             R4, =(off_23494C - 0x120460)
12045C:  ADD             R4, PC; off_23494C
12045E:  LDR             R4, [R4]; dword_23DF24
120460:  LDR.W           LR, [R4]
120464:  MOVW            R4, #:lower16:unk_270BD9
120468:  STR.W           R12, [R7,#arg_0]
12046C:  MOVT            R4, #:upper16:unk_270BD9
120470:  ADD.W           R12, LR, R4
120474:  POP.W           {R4,R6,R7,LR}
120478:  BX              R12
