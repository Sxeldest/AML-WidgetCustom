; =========================================================
; Game Engine Function: sub_13D468
; Address            : 0x13D468 - 0x13D48A
; =========================================================

13D468:  PUSH            {R4,R5,R7,LR}
13D46A:  ADD             R7, SP, #8
13D46C:  SUB             SP, SP, #8
13D46E:  MOV             R4, R0
13D470:  ADD.W           R2, R0, #0x54 ; 'T'
13D474:  MOV             R5, SP
13D476:  MOV             R1, R4
13D478:  MOV             R0, R5
13D47A:  BL              sub_13D48C
13D47E:  MOV             R0, R4
13D480:  MOV             R1, R5
13D482:  BL              sub_12BD38
13D486:  ADD             SP, SP, #8
13D488:  POP             {R4,R5,R7,PC}
