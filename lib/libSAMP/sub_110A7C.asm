; =========================================================
; Game Engine Function: sub_110A7C
; Address            : 0x110A7C - 0x110A9C
; =========================================================

110A7C:  PUSH            {R4,R6,R7,LR}
110A7E:  ADD             R7, SP, #8
110A80:  MOV             R4, R0
110A82:  LDR             R0, [R0,#0x10]
110A84:  CMP             R4, R0
110A86:  BEQ             loc_110A8E
110A88:  CBZ             R0, loc_110A98
110A8A:  MOVS            R1, #5
110A8C:  B               loc_110A90
110A8E:  MOVS            R1, #4
110A90:  LDR             R2, [R0]
110A92:  LDR.W           R1, [R2,R1,LSL#2]
110A96:  BLX             R1
110A98:  MOV             R0, R4
110A9A:  POP             {R4,R6,R7,PC}
