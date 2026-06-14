; =========================================================
; Game Engine Function: sub_DF400
; Address            : 0xDF400 - 0xDF45A
; =========================================================

DF400:  PUSH            {R4-R7,LR}
DF402:  ADD             R7, SP, #0xC
DF404:  PUSH.W          {R11}
DF408:  MOV             R2, R0
DF40A:  LDR             R0, =(unk_91CE0 - 0xDF416)
DF40C:  MOV             R5, R1
DF40E:  LDRH.W          R1, [R1,#9]
DF412:  ADD             R0, PC; unk_91CE0
DF414:  LDR.W           R4, [R5],#0xB
DF418:  AND.W           R1, R1, #0xF
DF41C:  LDR             R6, [R7,#arg_0]
DF41E:  SUBS            R3, R4, R3
DF420:  LDRB            R0, [R0,R1]
DF422:  IT CC
DF424:  MOVCC           R3, #0
DF426:  LSRS.W          R1, R3, R0
DF42A:  SUB.W           R4, R3, R1
DF42E:  BEQ             loc_DF43A
DF430:  MOV             R0, R2
DF432:  MOV             R2, R5
DF434:  BL              sub_DD992
DF438:  MOV             R2, R0
DF43A:  MOV             R0, R6
DF43C:  MOV             R1, R2
DF43E:  BL              sub_DF2B8
DF442:  CBZ             R4, loc_DF454
DF444:  MOV             R1, R4
DF446:  MOV             R2, R5
DF448:  POP.W           {R11}
DF44C:  POP.W           {R4-R7,LR}
DF450:  B.W             sub_DD992
DF454:  POP.W           {R11}
DF458:  POP             {R4-R7,PC}
