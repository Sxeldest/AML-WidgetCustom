; =========================================================
; Game Engine Function: sub_21794A
; Address            : 0x21794A - 0x2179BE
; =========================================================

21794A:  PUSH            {R4-R7,LR}
21794C:  ADD             R7, SP, #0xC
21794E:  PUSH.W          {R8-R10}
217952:  MOV             R4, R0
217954:  LDRD.W          R6, R0, [R0,#4]
217958:  MOV             R8, R1
21795A:  CMP             R6, R0
21795C:  BNE             loc_2179AA
21795E:  MOV             R0, R4
217960:  LDR.W           R9, [R0],#0xC
217964:  SUB.W           R10, R6, R9
217968:  CMP             R9, R0
21796A:  BEQ             loc_21797E
21796C:  MOV.W           R1, R10,LSL#1; size
217970:  MOV             R0, R9; ptr
217972:  BLX             realloc
217976:  MOV             R5, R0
217978:  STR             R0, [R4]
21797A:  CBNZ            R0, loc_217996
21797C:  B               loc_2179BA
21797E:  MOV.W           R0, R10,LSL#1; size
217982:  BLX             malloc
217986:  CBZ             R0, loc_2179BA
217988:  MOV             R5, R0
21798A:  MOV             R0, R9; src
21798C:  MOV             R1, R6; int
21798E:  MOV             R2, R5; dest
217990:  BL              sub_217B1E
217994:  STR             R5, [R4]
217996:  MOV.W           R0, R10,ASR#1
21799A:  MOV.W           R1, R10,ASR#2
21799E:  ADD.W           R6, R5, R1,LSL#2
2179A2:  ADD.W           R0, R5, R0,LSL#2
2179A6:  STRD.W          R6, R0, [R4,#4]
2179AA:  LDR.W           R0, [R8]
2179AE:  ADDS            R1, R6, #4
2179B0:  STR             R1, [R4,#4]
2179B2:  STR             R0, [R6]
2179B4:  POP.W           {R8-R10}
2179B8:  POP             {R4-R7,PC}
2179BA:  BLX             j__ZSt9terminatev; std::terminate(void)
