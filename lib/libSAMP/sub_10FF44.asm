; =========================================================
; Game Engine Function: sub_10FF44
; Address            : 0x10FF44 - 0x10FF64
; =========================================================

10FF44:  PUSH            {R4,R6,R7,LR}
10FF46:  ADD             R7, SP, #8
10FF48:  MOV             R4, R0
10FF4A:  LDR             R0, [R0,#0x10]
10FF4C:  CMP             R4, R0
10FF4E:  BEQ             loc_10FF56
10FF50:  CBZ             R0, loc_10FF60
10FF52:  MOVS            R1, #5
10FF54:  B               loc_10FF58
10FF56:  MOVS            R1, #4
10FF58:  LDR             R2, [R0]
10FF5A:  LDR.W           R1, [R2,R1,LSL#2]
10FF5E:  BLX             R1
10FF60:  MOV             R0, R4
10FF62:  POP             {R4,R6,R7,PC}
