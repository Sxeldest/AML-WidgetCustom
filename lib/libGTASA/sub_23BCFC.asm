; =========================================================
; Game Engine Function: sub_23BCFC
; Address            : 0x23BCFC - 0x23BD18
; =========================================================

23BCFC:  PUSH            {R4,R6,R7,LR}
23BCFE:  ADD             R7, SP, #8
23BD00:  MOV             R4, R2
23BD02:  MOVW            R2, #0xB2E0
23BD06:  LDR             R2, [R0,R2]
23BD08:  LDR             R3, [R2,#8]
23BD0A:  MOV             R2, R4
23BD0C:  BLX             R3
23BD0E:  CMP             R0, R4
23BD10:  IT NE
23BD12:  MOVNE           R0, #0xFFFFFFF6
23BD16:  POP             {R4,R6,R7,PC}
