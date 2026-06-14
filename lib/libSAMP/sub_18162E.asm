; =========================================================
; Game Engine Function: sub_18162E
; Address            : 0x18162E - 0x181656
; =========================================================

18162E:  PUSH            {R4,R6,R7,LR}
181630:  ADD             R7, SP, #8
181632:  MOV             R4, R0
181634:  LDR             R0, [R0,#4]
181636:  CMP             R0, R1
181638:  IT LS
18163A:  POPLS           {R4,R6,R7,PC}
18163C:  MVNS            R2, R1
18163E:  ADD             R0, R2
181640:  LDR             R3, [R4]
181642:  LSLS            R2, R0, #2; n
181644:  ADD.W           R0, R3, R1,LSL#2; dest
181648:  ADDS            R1, R0, #4; src
18164A:  BLX             j_memmove
18164E:  LDR             R0, [R4,#4]
181650:  SUBS            R0, #1
181652:  STR             R0, [R4,#4]
181654:  POP             {R4,R6,R7,PC}
