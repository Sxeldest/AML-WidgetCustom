; =========================================================
; Game Engine Function: sub_181D36
; Address            : 0x181D36 - 0x181D66
; =========================================================

181D36:  PUSH            {R4,R5,R7,LR}
181D38:  ADD             R7, SP, #8
181D3A:  MOV             R5, R0
181D3C:  LDR             R0, [R0]
181D3E:  MOV             R4, R1
181D40:  LDR             R1, [R0,#0x2C]
181D42:  MOV             R0, R5
181D44:  BLX             R1
181D46:  CBNZ            R0, loc_181D60
181D48:  CMP.W           R4, #0x230
181D4C:  IT GE
181D4E:  MOVGE.W         R4, #0x230
181D52:  CMP.W           R4, #0x200
181D56:  IT LE
181D58:  MOVLE.W         R4, #0x200
181D5C:  STR.W           R4, [R5,#0x7E0]
181D60:  EOR.W           R0, R0, #1
181D64:  POP             {R4,R5,R7,PC}
