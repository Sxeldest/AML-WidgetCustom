; =========================================================
; Game Engine Function: sub_146400
; Address            : 0x146400 - 0x146448
; =========================================================

146400:  PUSH            {R7,LR}
146402:  MOV             R7, SP
146404:  SUB             SP, SP, #0x118
146406:  LDRD.W          R1, R0, [R0]; src
14640A:  MOVS            R3, #0
14640C:  ASRS            R2, R0, #0x1F
14640E:  ADD.W           R0, R0, R2,LSR#29
146412:  MOVS            R2, #1
146414:  ADD.W           R2, R2, R0,ASR#3; size
146418:  ADD             R0, SP, #0x120+var_11C; int
14641A:  BL              sub_17D4F2
14641E:  ADD.W           R1, SP, #0x120+var_11D; int
146422:  MOVS            R2, #8
146424:  MOVS            R3, #1
146426:  BL              sub_17D786
14642A:  LDR             R0, =(off_23496C - 0x146434)
14642C:  LDRB.W          R1, [SP,#0x120+var_11D]
146430:  ADD             R0, PC; off_23496C
146432:  LDR             R0, [R0]; dword_23DEF4
146434:  LDR             R0, [R0]
146436:  LDR.W           R0, [R0,#0x20C]
14643A:  STRB.W          R1, [R0,#0x25]
14643E:  ADD             R0, SP, #0x120+var_11C
146440:  BL              sub_17D542
146444:  ADD             SP, SP, #0x118
146446:  POP             {R7,PC}
