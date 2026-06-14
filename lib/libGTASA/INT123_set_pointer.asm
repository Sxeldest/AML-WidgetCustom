; =========================================================
; Game Engine Function: INT123_set_pointer
; Address            : 0x2267F4 - 0x22683A
; =========================================================

2267F4:  PUSH            {R4,R6,R7,LR}
2267F6:  ADD             R7, SP, #8
2267F8:  MOV             R2, R1; size_t
2267FA:  MOV             R4, R0
2267FC:  MOVW            R0, #0x9380
226800:  MOVW            R1, #0xB288
226804:  LDR             R0, [R4,R0]
226806:  CMP             R2, #0
226808:  LDR             R1, [R4,R1]
22680A:  ADD             R0, R1
22680C:  MOVW            R1, #0x9334
226810:  SUB.W           R0, R0, R2; void *
226814:  STR             R0, [R4,R1]
226816:  BEQ             loc_226830
226818:  MOVW            R3, #0x937C
22681C:  MOVW            R1, #0xB28C
226820:  LDR             R3, [R4,R3]
226822:  RSB.W           R12, R2, #0
226826:  LDR             R1, [R4,R1]
226828:  ADD             R1, R3
22682A:  ADD             R1, R12; void *
22682C:  BLX             memcpy_1
226830:  MOVW            R0, #0x9330
226834:  MOVS            R1, #0
226836:  STR             R1, [R4,R0]
226838:  POP             {R4,R6,R7,PC}
