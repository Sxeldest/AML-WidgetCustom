; =========================================================
; Game Engine Function: sub_113708
; Address            : 0x113708 - 0x11372E
; =========================================================

113708:  PUSH            {R4,R5,R7,LR}
11370A:  ADD             R7, SP, #8
11370C:  MOV             R4, R0
11370E:  LDRD.W          R5, R0, [R0,#4]
113712:  CMP             R0, R5
113714:  BEQ             loc_113722
113716:  SUBS            R0, #8
113718:  STR             R0, [R4,#8]
11371A:  BL              sub_100B6E
11371E:  LDR             R0, [R4,#8]
113720:  B               loc_113712
113722:  LDR             R0, [R4]; void *
113724:  CBZ             R0, loc_11372A
113726:  BLX             j__ZdlPv; operator delete(void *)
11372A:  MOV             R0, R4
11372C:  POP             {R4,R5,R7,PC}
