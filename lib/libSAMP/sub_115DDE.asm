; =========================================================
; Game Engine Function: sub_115DDE
; Address            : 0x115DDE - 0x115DF4
; =========================================================

115DDE:  PUSH            {R4,R6,R7,LR}
115DE0:  ADD             R7, SP, #8
115DE2:  MOV             R4, R0
115DE4:  LDR             R0, [R0,#4]
115DE6:  CBZ             R0, loc_115DEA
115DE8:  POP             {R4,R6,R7,PC}
115DEA:  MOVS            R0, #4; unsigned int
115DEC:  BLX             j__Znwj; operator new(uint)
115DF0:  STR             R0, [R4,#4]
115DF2:  POP             {R4,R6,R7,PC}
