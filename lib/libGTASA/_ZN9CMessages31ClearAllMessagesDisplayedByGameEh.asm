; =========================================================
; Game Engine Function: _ZN9CMessages31ClearAllMessagesDisplayedByGameEh
; Address            : 0x54D400 - 0x54D44A
; =========================================================

54D400:  PUSH            {R4-R7,LR}
54D402:  ADD             R7, SP, #0xC
54D404:  PUSH.W          {R11}
54D408:  MOV             R6, R0
54D40A:  BLX             j__ZN9CMessages13ClearMessagesEh; CMessages::ClearMessages(uchar)
54D40E:  LDR             R0, =(SkipBriefsClear_ptr - 0x54D41A)
54D410:  MOVS            R1, #0; unsigned __int8
54D412:  LDR             R2, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x54D41E)
54D414:  MOVS            R4, #0
54D416:  ADD             R0, PC; SkipBriefsClear_ptr
54D418:  LDR             R3, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x54D422)
54D41A:  ADD             R2, PC; _ZN9CMessages14PreviousBriefsE_ptr
54D41C:  LDR             R0, [R0]; SkipBriefsClear
54D41E:  ADD             R3, PC; _ZN9CMessages14PreviousBriefsE_ptr
54D420:  LDR             R2, [R2]; CMessages::PreviousBriefs ...
54D422:  LDR             R3, [R3]; CMessages::PreviousBriefs ...
54D424:  LDRB            R0, [R0]
54D426:  CMP             R0, #0
54D428:  ADD.W           R5, R3, R4
54D42C:  IT EQ
54D42E:  STRBEQ          R1, [R2,R4]
54D430:  ADDS            R4, #0x28 ; '('
54D432:  CMP.W           R4, #0x320
54D436:  STR             R1, [R5,#0x24]
54D438:  STR             R1, [R5,#8]
54D43A:  BNE             loc_54D426
54D43C:  MOV             R0, R6; this
54D43E:  POP.W           {R11}
54D442:  POP.W           {R4-R7,LR}
54D446:  B.W             sub_18B9E0
