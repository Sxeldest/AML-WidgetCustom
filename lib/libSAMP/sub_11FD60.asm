; =========================================================
; Game Engine Function: sub_11FD60
; Address            : 0x11FD60 - 0x11FD80
; =========================================================

11FD60:  PUSH            {R4,R6,R7,LR}
11FD62:  ADD             R7, SP, #8
11FD64:  MOV             R4, R0
11FD66:  LDR             R0, [R0,#0x10]
11FD68:  CMP             R4, R0
11FD6A:  BEQ             loc_11FD72
11FD6C:  CBZ             R0, loc_11FD7C
11FD6E:  MOVS            R1, #5
11FD70:  B               loc_11FD74
11FD72:  MOVS            R1, #4
11FD74:  LDR             R2, [R0]
11FD76:  LDR.W           R1, [R2,R1,LSL#2]
11FD7A:  BLX             R1
11FD7C:  MOV             R0, R4
11FD7E:  POP             {R4,R6,R7,PC}
