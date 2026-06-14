; =========================================================
; Game Engine Function: sub_2155BA
; Address            : 0x2155BA - 0x2155E4
; =========================================================

2155BA:  PUSH            {R4,R6,R7,LR}
2155BC:  ADD             R7, SP, #8
2155BE:  MOV             R4, R0
2155C0:  LDRD.W          R2, R0, [R0,#4]
2155C4:  ADD             R1, R2
2155C6:  CMP             R1, R0
2155C8:  BCC             locret_2155DE
2155CA:  CMP.W           R1, R0,LSL#1
2155CE:  IT LS
2155D0:  LSLLS           R1, R0, #1; size
2155D2:  LDR             R0, [R4]; ptr
2155D4:  STR             R1, [R4,#8]
2155D6:  BLX             realloc
2155DA:  STR             R0, [R4]
2155DC:  CBZ             R0, loc_2155E0
2155DE:  POP             {R4,R6,R7,PC}
2155E0:  BLX             j__ZSt9terminatev; std::terminate(void)
