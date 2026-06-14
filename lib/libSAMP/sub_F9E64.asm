; =========================================================
; Game Engine Function: sub_F9E64
; Address            : 0xF9E64 - 0xF9E8A
; =========================================================

F9E64:  PUSH            {R4,R6,R7,LR}
F9E66:  ADD             R7, SP, #8
F9E68:  MOV             R4, R1
F9E6A:  CBZ             R1, loc_F9E80
F9E6C:  LDR             R0, [R4]
F9E6E:  LDR             R1, [R0,#4]
F9E70:  MOV             R0, R4
F9E72:  BLX             R1
F9E74:  LDR             R0, =(unk_247288 - 0xF9E80)
F9E76:  MOVS            R2, #0
F9E78:  LDRB.W          R1, [R4,#0x60]
F9E7C:  ADD             R0, PC; unk_247288
F9E7E:  STRB            R2, [R0,R1]
F9E80:  CMP             R4, #0
F9E82:  IT NE
F9E84:  MOVNE           R4, #1
F9E86:  MOV             R0, R4
F9E88:  POP             {R4,R6,R7,PC}
