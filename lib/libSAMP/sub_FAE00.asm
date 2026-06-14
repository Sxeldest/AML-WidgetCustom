; =========================================================
; Game Engine Function: sub_FAE00
; Address            : 0xFAE00 - 0xFAE20
; =========================================================

FAE00:  PUSH            {R4,R6,R7,LR}
FAE02:  ADD             R7, SP, #8
FAE04:  MOV             R4, R0
FAE06:  LDR             R0, [R0,#0x10]
FAE08:  CMP             R4, R0
FAE0A:  BEQ             loc_FAE12
FAE0C:  CBZ             R0, loc_FAE1C
FAE0E:  MOVS            R1, #5
FAE10:  B               loc_FAE14
FAE12:  MOVS            R1, #4
FAE14:  LDR             R2, [R0]
FAE16:  LDR.W           R1, [R2,R1,LSL#2]
FAE1A:  BLX             R1
FAE1C:  MOV             R0, R4
FAE1E:  POP             {R4,R6,R7,PC}
