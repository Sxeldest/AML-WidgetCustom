; =========================================================
; Game Engine Function: sub_106A40
; Address            : 0x106A40 - 0x106A8A
; =========================================================

106A40:  PUSH            {R4,R6,R7,LR}
106A42:  ADD             R7, SP, #8
106A44:  SUB             SP, SP, #0x40
106A46:  MOV             R4, R0
106A48:  LDRB.W          R0, [R0,#0x40]
106A4C:  CBZ             R0, loc_106A86
106A4E:  LDR             R0, [R4,#0x5C]
106A50:  CBZ             R0, loc_106A86
106A52:  LDR             R0, [R4,#8]
106A54:  BL              sub_1082F4
106A58:  CBZ             R0, loc_106A86
106A5A:  LDR             R1, [R4,#0x50]
106A5C:  CBZ             R1, loc_106A6A
106A5E:  LDR             R0, =(unk_B391A - 0x106A64)
106A60:  ADD             R0, PC; unk_B391A
106A62:  BL              sub_107188
106A66:  MOVS            R0, #0
106A68:  STR             R0, [R4,#0x50]
106A6A:  MOV             R1, SP
106A6C:  MOV             R0, R4
106A6E:  BL              sub_F8910
106A72:  LDR             R0, [R4]
106A74:  ADD             R3, SP, #0x48+var_18
106A76:  LDM             R3, {R1-R3}
106A78:  LDR.W           R12, [R0,#0x10]
106A7C:  MOV             R0, R4
106A7E:  BLX             R12
106A80:  MOVS            R0, #0
106A82:  STRB.W          R0, [R4,#0x40]
106A86:  ADD             SP, SP, #0x40 ; '@'
106A88:  POP             {R4,R6,R7,PC}
