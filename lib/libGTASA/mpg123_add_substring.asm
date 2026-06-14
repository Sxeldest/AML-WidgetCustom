; =========================================================
; Game Engine Function: mpg123_add_substring
; Address            : 0x234920 - 0x2349BC
; =========================================================

234920:  PUSH            {R4-R7,LR}
234922:  ADD             R7, SP, #0xC
234924:  PUSH.W          {R8,R9,R11}
234928:  MOV             R4, R0
23492A:  MOV             R8, R2
23492C:  LDR             R2, [R4,#8]
23492E:  MOV             R5, R3
234930:  MOV             R9, R1
234932:  CBZ             R2, loc_234950
234934:  MVNS            R0, R2
234936:  CMP             R0, R5
234938:  BCC             loc_2349B4
23493A:  LDRD.W          R0, R1, [R4]; ptr
23493E:  ADDS            R6, R2, R5
234940:  CMP             R1, R6
234942:  BCS             loc_234976
234944:  CBZ             R0, loc_234968
234946:  MOV             R1, R6; size
234948:  BLX             realloc
23494C:  CBNZ            R0, loc_234970
23494E:  B               loc_2349B4
234950:  ADDS            R6, R5, #1
234952:  BEQ             loc_2349B4
234954:  LDRD.W          R0, R1, [R4]; ptr
234958:  CMP             R1, R6
23495A:  BCS             loc_234996
23495C:  CBZ             R0, loc_23498A
23495E:  MOV             R1, R6; size
234960:  BLX             realloc
234964:  CBNZ            R0, loc_234992
234966:  B               loc_2349B4
234968:  MOV             R0, R6; byte_count
23496A:  BLX             malloc
23496E:  CBZ             R0, loc_2349B4
234970:  LDR             R2, [R4,#8]
234972:  STRD.W          R0, R6, [R4]
234976:  ADD             R0, R2
234978:  ADD.W           R1, R9, R8; void *
23497C:  SUBS            R0, #1; void *
23497E:  MOV             R2, R5; size_t
234980:  BLX             memcpy_1
234984:  LDR             R0, [R4,#8]
234986:  ADDS            R6, R0, R5
234988:  B               loc_2349A0
23498A:  MOV             R0, R6; byte_count
23498C:  BLX             malloc
234990:  CBZ             R0, loc_2349B4
234992:  STRD.W          R0, R6, [R4]
234996:  ADD.W           R1, R9, R8; void *
23499A:  MOV             R2, R5; size_t
23499C:  BLX             memcpy_1
2349A0:  LDR             R0, [R4]
2349A2:  MOVS            R1, #0
2349A4:  STR             R6, [R4,#8]
2349A6:  ADD             R0, R6
2349A8:  STRB.W          R1, [R0,#-1]
2349AC:  MOVS            R0, #1
2349AE:  POP.W           {R8,R9,R11}
2349B2:  POP             {R4-R7,PC}
2349B4:  MOVS            R0, #0
2349B6:  POP.W           {R8,R9,R11}
2349BA:  POP             {R4-R7,PC}
