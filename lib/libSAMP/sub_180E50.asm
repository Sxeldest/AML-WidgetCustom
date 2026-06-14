; =========================================================
; Game Engine Function: sub_180E50
; Address            : 0x180E50 - 0x180EAC
; =========================================================

180E50:  PUSH            {R4-R7,LR}
180E52:  ADD             R7, SP, #0xC
180E54:  PUSH.W          {R8}
180E58:  SUB             SP, SP, #8
180E5A:  MOV             R4, R0
180E5C:  LDR             R0, [R7,#arg_0]
180E5E:  STR             R0, [SP,#0x18+var_14]
180E60:  LDRB.W          R0, [R4,#0x7FD]
180E64:  STR             R3, [SP,#0x18+var_18]
180E66:  CBZ             R0, loc_180EA4
180E68:  ADDW            R5, R4, #0x7F4
180E6C:  MOV             R6, R1
180E6E:  MOV             R0, SP
180E70:  MOV             R8, R2
180E72:  MOV             R1, R5
180E74:  BL              sub_17E580
180E78:  CBZ             R0, loc_180E80
180E7A:  LDRB.W          R0, [R4,#0x7FC]
180E7E:  CBZ             R0, loc_180E90
180E80:  MOV             R0, SP
180E82:  MOV             R1, R5
180E84:  BL              sub_17E596
180E88:  CBZ             R0, loc_180EA4
180E8A:  LDRB.W          R0, [R4,#0x7FC]
180E8E:  CBZ             R0, loc_180EA4
180E90:  LDR.W           R0, [R4,#0x7F0]
180E94:  ADDS            R1, R6, #1
180E96:  SUB.W           R2, R8, #1
180E9A:  BL              sub_17D566
180E9E:  MOVS            R0, #0
180EA0:  STRB.W          R0, [R4,#0x7FD]
180EA4:  ADD             SP, SP, #8
180EA6:  POP.W           {R8}
180EAA:  POP             {R4-R7,PC}
