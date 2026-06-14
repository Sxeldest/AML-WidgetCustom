; =========================================================
; Game Engine Function: sub_14F404
; Address            : 0x14F404 - 0x14F44C
; =========================================================

14F404:  PUSH            {R4-R7,LR}
14F406:  ADD             R7, SP, #0xC
14F408:  PUSH.W          {R11}
14F40C:  MOV.W           R2, #0x2400
14F410:  ADD.W           R6, R0, #0x2400
14F414:  LDR             R4, [R0,R2]
14F416:  LDR             R0, [R6,#4]
14F418:  CMP             R4, R0
14F41A:  BEQ             loc_14F42A
14F41C:  LDRH            R2, [R4]
14F41E:  CMP             R2, R1
14F420:  BEQ             loc_14F42A
14F422:  ADDS            R4, #2
14F424:  CMP             R4, R0
14F426:  BNE             loc_14F41C
14F428:  B               loc_14F444
14F42A:  CMP             R4, R0
14F42C:  BEQ             loc_14F444
14F42E:  ADDS            R1, R4, #2; src
14F430:  SUBS            R5, R0, R1
14F432:  ITTT NE
14F434:  MOVNE           R0, R4; dest
14F436:  MOVNE           R2, R5; n
14F438:  BLXNE           j_memmove
14F43C:  ADDS            R0, R4, R5
14F43E:  STR             R0, [R6,#4]
14F440:  MOVS            R0, #1
14F442:  B               loc_14F446
14F444:  MOVS            R0, #0
14F446:  POP.W           {R11}
14F44A:  POP             {R4-R7,PC}
