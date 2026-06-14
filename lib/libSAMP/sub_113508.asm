; =========================================================
; Game Engine Function: sub_113508
; Address            : 0x113508 - 0x11352E
; =========================================================

113508:  PUSH            {R4,R5,R7,LR}
11350A:  ADD             R7, SP, #8
11350C:  MOV             R4, R0
11350E:  LDRD.W          R5, R0, [R0,#4]
113512:  CMP             R0, R5
113514:  BEQ             loc_113522
113516:  SUBS            R0, #8
113518:  STR             R0, [R4,#8]
11351A:  BL              sub_1133AC
11351E:  LDR             R0, [R4,#8]
113520:  B               loc_113512
113522:  LDR             R0, [R4]; void *
113524:  CBZ             R0, loc_11352A
113526:  BLX             j__ZdlPv; operator delete(void *)
11352A:  MOV             R0, R4
11352C:  POP             {R4,R5,R7,PC}
