; =========================================================
; Game Engine Function: mpg123_copy_string
; Address            : 0x234890 - 0x234904
; =========================================================

234890:  PUSH            {R4-R7,LR}
234892:  ADD             R7, SP, #0xC
234894:  PUSH.W          {R11}
234898:  MOV             R4, R1
23489A:  CBZ             R4, loc_2348BC
23489C:  CBZ             R0, loc_2348C6
23489E:  LDR             R6, [R0,#8]
2348A0:  LDR             R5, [R0]
2348A2:  LDR             R1, [R4,#4]
2348A4:  CBZ             R6, loc_2348CA
2348A6:  LDR             R0, [R4]; ptr
2348A8:  CMP             R1, R6
2348AA:  BEQ             loc_2348E0
2348AC:  CBZ             R0, loc_2348F2
2348AE:  MOV             R1, R6; size
2348B0:  BLX             realloc
2348B4:  CBZ             R0, loc_2348FC
2348B6:  STRD.W          R0, R6, [R4]
2348BA:  B               loc_2348E0
2348BC:  MOV.W           R0, #0xFFFFFFFF
2348C0:  POP.W           {R11}
2348C4:  POP             {R4-R7,PC}
2348C6:  LDR             R1, [R4,#4]
2348C8:  MOVS            R5, #0
2348CA:  CBZ             R1, loc_2348D6
2348CC:  LDR             R0, [R4]; p
2348CE:  CMP             R0, #0
2348D0:  IT NE
2348D2:  BLXNE           free
2348D6:  MOVS            R0, #0; void *
2348D8:  MOVS            R6, #0
2348DA:  STRD.W          R0, R0, [R4]
2348DE:  STR             R0, [R4,#8]
2348E0:  MOV             R1, R5; void *
2348E2:  MOV             R2, R6; size_t
2348E4:  BLX             memcpy_1
2348E8:  STR             R6, [R4,#8]
2348EA:  MOVS            R0, #1
2348EC:  POP.W           {R11}
2348F0:  POP             {R4-R7,PC}
2348F2:  MOV             R0, R6; byte_count
2348F4:  BLX             malloc
2348F8:  CMP             R0, #0
2348FA:  BNE             loc_2348B6
2348FC:  MOVS            R0, #0
2348FE:  POP.W           {R11}
234902:  POP             {R4-R7,PC}
