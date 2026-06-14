; =========================================================
; Game Engine Function: sub_12034C
; Address            : 0x12034C - 0x120374
; =========================================================

12034C:  PUSH            {R4,R6,R7,LR}
12034E:  ADD             R7, SP, #8
120350:  LDR             R4, =(off_23494C - 0x12035A)
120352:  LDR.W           R12, [R7,#arg_0]
120356:  ADD             R4, PC; off_23494C
120358:  LDR             R4, [R4]; dword_23DF24
12035A:  LDR.W           LR, [R4]
12035E:  MOVW            R4, #:lower16:unk_270BD9
120362:  STR.W           R12, [R7,#arg_0]
120366:  MOVT            R4, #:upper16:unk_270BD9
12036A:  ADD.W           R12, LR, R4
12036E:  POP.W           {R4,R6,R7,LR}
120372:  BX              R12
