; =========================================================
; Game Engine Function: sub_11DC64
; Address            : 0x11DC64 - 0x11DC84
; =========================================================

11DC64:  PUSH            {R4,R6,R7,LR}
11DC66:  ADD             R7, SP, #8
11DC68:  MOV             R4, R0
11DC6A:  LDR             R0, [R0,#0x10]
11DC6C:  CMP             R4, R0
11DC6E:  BEQ             loc_11DC76
11DC70:  CBZ             R0, loc_11DC80
11DC72:  MOVS            R1, #5
11DC74:  B               loc_11DC78
11DC76:  MOVS            R1, #4
11DC78:  LDR             R2, [R0]
11DC7A:  LDR.W           R1, [R2,R1,LSL#2]
11DC7E:  BLX             R1
11DC80:  MOV             R0, R4
11DC82:  POP             {R4,R6,R7,PC}
