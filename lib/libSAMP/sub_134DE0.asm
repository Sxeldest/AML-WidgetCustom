; =========================================================
; Game Engine Function: sub_134DE0
; Address            : 0x134DE0 - 0x134E26
; =========================================================

134DE0:  PUSH            {R4-R7,LR}
134DE2:  ADD             R7, SP, #0xC
134DE4:  PUSH.W          {R8}
134DE8:  LDR             R6, [R0,#0x64]
134DEA:  MOV             R4, R0
134DEC:  LDRB.W          R0, [R6,#0x50]
134DF0:  CBZ             R0, loc_134DFC
134DF2:  LDR             R0, [R6]
134DF4:  MOVS            R1, #0
134DF6:  LDR             R2, [R0,#0x24]
134DF8:  MOV             R0, R6
134DFA:  BLX             R2
134DFC:  LDR             R5, [R4,#0x60]
134DFE:  MOV.W           R8, #0
134E02:  STRB.W          R8, [R6,#0x50]
134E06:  LDRB.W          R0, [R5,#0x50]
134E0A:  CBZ             R0, loc_134E16
134E0C:  LDR             R0, [R5]
134E0E:  MOVS            R1, #0
134E10:  LDR             R2, [R0,#0x24]
134E12:  MOV             R0, R5
134E14:  BLX             R2
134E16:  MOVS            R0, #1
134E18:  STRB.W          R8, [R5,#0x50]
134E1C:  STRB.W          R0, [R4,#0x58]
134E20:  POP.W           {R8}
134E24:  POP             {R4-R7,PC}
