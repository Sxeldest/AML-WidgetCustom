; =========================================================
; Game Engine Function: sub_12EEA8
; Address            : 0x12EEA8 - 0x12EEC6
; =========================================================

12EEA8:  PUSH            {R4,R6,R7,LR}
12EEAA:  ADD             R7, SP, #8
12EEAC:  MOV             R4, R0
12EEAE:  LDRB.W          R0, [R0,#0x50]
12EEB2:  CBZ             R0, loc_12EEBE
12EEB4:  LDR             R0, [R4]
12EEB6:  MOVS            R1, #0
12EEB8:  LDR             R2, [R0,#0x24]
12EEBA:  MOV             R0, R4
12EEBC:  BLX             R2
12EEBE:  MOVS            R0, #0
12EEC0:  STRB.W          R0, [R4,#0x50]
12EEC4:  POP             {R4,R6,R7,PC}
