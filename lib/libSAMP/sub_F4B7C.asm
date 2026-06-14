; =========================================================
; Game Engine Function: sub_F4B7C
; Address            : 0xF4B7C - 0xF4B9C
; =========================================================

F4B7C:  PUSH            {R4,R6,R7,LR}
F4B7E:  ADD             R7, SP, #8
F4B80:  MOV             R4, R0
F4B82:  LDR             R0, [R0,#0x10]
F4B84:  CMP             R4, R0
F4B86:  BEQ             loc_F4B8E
F4B88:  CBZ             R0, loc_F4B98
F4B8A:  MOVS            R1, #5
F4B8C:  B               loc_F4B90
F4B8E:  MOVS            R1, #4
F4B90:  LDR             R2, [R0]
F4B92:  LDR.W           R1, [R2,R1,LSL#2]
F4B96:  BLX             R1
F4B98:  MOV             R0, R4
F4B9A:  POP             {R4,R6,R7,PC}
