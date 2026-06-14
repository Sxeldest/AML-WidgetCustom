; =========================================================
; Game Engine Function: INT123_fi_resize
; Address            : 0x228598 - 0x228646
; =========================================================

228598:  PUSH            {R4,R5,R7,LR}
22859A:  ADD             R7, SP, #8
22859C:  MOV             R4, R0
22859E:  MOV             R5, R1
2285A0:  LDR             R0, [R4,#0xC]
2285A2:  CMP             R0, R5
2285A4:  ITT EQ
2285A6:  MOVEQ           R0, #0
2285A8:  POPEQ           {R4,R5,R7,PC}
2285AA:  CMP             R5, #0
2285AC:  IT NE
2285AE:  CMPNE           R0, R5
2285B0:  BLS             loc_2285FE
2285B2:  LDR             R0, [R4,#0x10]
2285B4:  CMP             R0, R5
2285B6:  BHI             loc_2285C2
2285B8:  B               loc_2285FE
2285BA:  MULS            R1, R0
2285BC:  STR             R1, [R4,#8]
2285BE:  CMP             R0, R5
2285C0:  BLS             loc_2285FE
2285C2:  CMP             R0, #1
2285C4:  BHI             loc_2285CE
2285C6:  MOVS            R0, #1
2285C8:  CMP             R0, R5
2285CA:  BHI             loc_2285C2
2285CC:  B               loc_2285FE
2285CE:  LDR             R1, [R4,#4]
2285D0:  LSRS            R2, R0, #1
2285D2:  STR             R2, [R4,#0x10]
2285D4:  MOVS            R2, #0
2285D6:  CMP.W           R2, R0,LSR#1
2285DA:  MOV.W           R1, R1,LSL#1
2285DE:  STR             R1, [R4,#4]
2285E0:  BEQ             loc_2285FA
2285E2:  MOVS            R1, #0
2285E4:  LDR             R0, [R4]
2285E6:  LDR.W           R2, [R0,R1,LSL#3]
2285EA:  STR.W           R2, [R0,R1,LSL#2]
2285EE:  ADDS            R1, #1
2285F0:  LDR             R0, [R4,#0x10]
2285F2:  CMP             R1, R0
2285F4:  BCC             loc_2285E4
2285F6:  LDR             R1, [R4,#4]
2285F8:  B               loc_2285BA
2285FA:  MOVS            R0, #0
2285FC:  B               loc_2285BA
2285FE:  LDR             R0, [R4]; ptr
228600:  LSLS            R1, R5, #2; size
228602:  CBZ             R0, loc_228624
228604:  BLX             realloc
228608:  CBZ             R5, loc_22862E
22860A:  CBNZ            R0, loc_22862E
22860C:  LDR             R0, =(off_677664 - 0x228616)
22860E:  MOVS            R2, #0x52 ; 'R'
228610:  LDR             R1, =(aCProjectsOswra_27 - 0x228618); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
228612:  ADD             R0, PC; off_677664
228614:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
228616:  LDR             R0, [R0]
228618:  LDR             R0, [R0]; stream
22861A:  BLX             fprintf
22861E:  MOV.W           R0, #0xFFFFFFFF
228622:  POP             {R4,R5,R7,PC}
228624:  MOV             R0, R1; byte_count
228626:  BLX             malloc
22862A:  CMP             R5, #0
22862C:  BNE             loc_22860A
22862E:  STR             R5, [R4,#0xC]
228630:  LDR             R1, [R4,#0x10]
228632:  STR             R0, [R4]
228634:  CMP             R1, R5
228636:  ITT HI
228638:  STRHI           R5, [R4,#0x10]
22863A:  MOVHI           R1, R5
22863C:  LDR             R0, [R4,#4]
22863E:  MULS            R0, R1
228640:  STR             R0, [R4,#8]
228642:  MOVS            R0, #0
228644:  POP             {R4,R5,R7,PC}
