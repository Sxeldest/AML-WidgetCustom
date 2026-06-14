; =========================================================
; Game Engine Function: sub_F2960
; Address            : 0xF2960 - 0xF2980
; =========================================================

F2960:  PUSH            {R4,R6,R7,LR}
F2962:  ADD             R7, SP, #8
F2964:  MOV             R4, R0
F2966:  LDR             R0, [R0,#0x10]
F2968:  CMP             R4, R0
F296A:  BEQ             loc_F2972
F296C:  CBZ             R0, loc_F297C
F296E:  MOVS            R1, #5
F2970:  B               loc_F2974
F2972:  MOVS            R1, #4
F2974:  LDR             R2, [R0]
F2976:  LDR.W           R1, [R2,R1,LSL#2]
F297A:  BLX             R1
F297C:  MOV             R0, R4
F297E:  POP             {R4,R6,R7,PC}
