; =========================================================
; Game Engine Function: sub_116964
; Address            : 0x116964 - 0x116998
; =========================================================

116964:  PUSH            {R4,R5,R7,LR}
116966:  ADD             R7, SP, #8
116968:  SUB             SP, SP, #8
11696A:  MOV             R5, R0
11696C:  LDR             R0, [R1]
11696E:  ADD             R3, SP, #0x10+status; lpstatus
116970:  MOVS            R1, #0; lpout
116972:  MOVS            R2, #0; lpoutlen
116974:  LDR.W           R0, [R0,#-4]
116978:  LDR             R0, [R0,#4]; lpmangled
11697A:  BLX             j___cxa_demangle
11697E:  MOV             R4, R0
116980:  MOV             R0, R5; int
116982:  MOV             R1, R4; s
116984:  BL              sub_DC6DC
116988:  CBZ             R4, loc_116994
11698A:  LDR             R0, [SP,#0x10+status]
11698C:  CBNZ            R0, loc_116994
11698E:  MOV             R0, R4; ptr
116990:  BLX             free
116994:  ADD             SP, SP, #8
116996:  POP             {R4,R5,R7,PC}
