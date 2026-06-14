; =========================================================
; Game Engine Function: sub_134D18
; Address            : 0x134D18 - 0x134D3E
; =========================================================

134D18:  PUSH            {R4,R6,R7,LR}
134D1A:  ADD             R7, SP, #8
134D1C:  MOV             R4, R0
134D1E:  STR             R1, [R0,#0x54]
134D20:  BL              sub_134D40
134D24:  LDRB.W          R0, [R4,#0x50]
134D28:  CMP             R0, #1
134D2A:  BEQ             loc_134D36
134D2C:  LDR             R0, [R4]
134D2E:  MOVS            R1, #1
134D30:  LDR             R2, [R0,#0x24]
134D32:  MOV             R0, R4
134D34:  BLX             R2
134D36:  MOVS            R0, #1
134D38:  STRB.W          R0, [R4,#0x50]
134D3C:  POP             {R4,R6,R7,PC}
