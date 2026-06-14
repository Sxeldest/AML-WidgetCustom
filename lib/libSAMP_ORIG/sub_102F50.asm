; =========================================================
; Game Engine Function: sub_102F50
; Address            : 0x102F50 - 0x102F76
; =========================================================

102F50:  PUSH            {R4,R6,R7,LR}
102F52:  ADD             R7, SP, #8
102F54:  LDRB            R0, [R0,#8]
102F56:  MOV             R3, R1
102F58:  LDR             R4, =(aFalse - 0x102F62); "false" ...
102F5A:  LDR             R1, =(aTrue - 0x102F66); "true" ...
102F5C:  CMP             R0, #0
102F5E:  ADD             R4, PC; "false"
102F60:  MOV             R0, R3
102F62:  ADD             R1, PC; "true"
102F64:  ADD.W           R2, R1, #4
102F68:  ITT EQ
102F6A:  MOVEQ           R1, R4
102F6C:  ADDEQ           R2, R4, #5
102F6E:  POP.W           {R4,R6,R7,LR}
102F72:  B.W             sub_FFB40
