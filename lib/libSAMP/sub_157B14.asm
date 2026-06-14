; =========================================================
; Game Engine Function: sub_157B14
; Address            : 0x157B14 - 0x157B30
; =========================================================

157B14:  PUSH            {R4,R6,R7,LR}
157B16:  ADD             R7, SP, #8
157B18:  MOV             R4, R0
157B1A:  LDRB            R0, [R0,#0x10]
157B1C:  CBZ             R0, loc_157B20
157B1E:  POP             {R4,R6,R7,PC}
157B20:  LDR             R0, [R4]
157B22:  STR             R1, [R4,#4]
157B24:  LDR             R2, [R0,#0x1C]
157B26:  MOV             R0, R4
157B28:  BLX             R2
157B2A:  MOVS            R0, #1
157B2C:  STRB            R0, [R4,#0x10]
157B2E:  POP             {R4,R6,R7,PC}
