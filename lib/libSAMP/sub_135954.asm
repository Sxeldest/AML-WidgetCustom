; =========================================================
; Game Engine Function: sub_135954
; Address            : 0x135954 - 0x1359B0
; =========================================================

135954:  PUSH            {R4,R6,R7,LR}
135956:  ADD             R7, SP, #8
135958:  LDR             R1, =(_ZTV13CheckedButton - 0x135964); `vtable for'CheckedButton ...
13595A:  MOV             R4, R0
13595C:  LDR.W           R0, [R0,#0x88]
135960:  ADD             R1, PC; `vtable for'CheckedButton
135962:  ADDS            R1, #8
135964:  STR             R1, [R4]
135966:  ADD.W           R1, R4, #0x78 ; 'x'
13596A:  CMP             R1, R0
13596C:  BEQ             loc_135974
13596E:  CBZ             R0, loc_13597E
135970:  MOVS            R1, #5
135972:  B               loc_135976
135974:  MOVS            R1, #4
135976:  LDR             R2, [R0]
135978:  LDR.W           R1, [R2,R1,LSL#2]
13597C:  BLX             R1
13597E:  LDR             R0, =(off_234C0C - 0x135984)
135980:  ADD             R0, PC; off_234C0C
135982:  LDR             R1, [R0]; `vtable for'Button ...
135984:  LDR             R0, [R4,#0x68]
135986:  ADDS            R1, #8
135988:  STR             R1, [R4]
13598A:  ADD.W           R1, R4, #0x58 ; 'X'
13598E:  CMP             R1, R0
135990:  BEQ             loc_135998
135992:  CBZ             R0, loc_1359A2
135994:  MOVS            R1, #5
135996:  B               loc_13599A
135998:  MOVS            R1, #4
13599A:  LDR             R2, [R0]
13599C:  LDR.W           R1, [R2,R1,LSL#2]
1359A0:  BLX             R1
1359A2:  MOV             R0, R4
1359A4:  BL              sub_12BCE4
1359A8:  POP.W           {R4,R6,R7,LR}
1359AC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
