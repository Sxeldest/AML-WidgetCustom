; =========================================================
; Game Engine Function: sub_119DDC
; Address            : 0x119DDC - 0x119ECA
; =========================================================

119DDC:  PUSH            {R4-R7,LR}
119DDE:  ADD             R7, SP, #0xC
119DE0:  PUSH.W          {R8,R9,R11}
119DE4:  LDR             R1, [R0]
119DE6:  MOVW            R8, #0xE72C
119DEA:  LDR             R5, =(off_23494C - 0x119DF6)
119DEC:  MOV             R4, R0
119DEE:  MOVT            R8, #0x66 ; 'f'
119DF2:  ADD             R5, PC; off_23494C
119DF4:  CBZ             R1, loc_119E0A
119DF6:  LDR             R0, [R5]; dword_23DF24
119DF8:  MOVS            R2, #0
119DFA:  MOVS            R6, #0
119DFC:  LDR             R0, [R0]
119DFE:  ADD             R0, R8
119E00:  ADD.W           R0, R0, #0x140
119E04:  BL              sub_164196
119E08:  STR             R6, [R4]
119E0A:  LDR             R1, [R4,#4]
119E0C:  MOVS            R6, #0x6700D0
119E12:  CBZ             R1, loc_119E2C
119E14:  LDR             R0, [R5]; dword_23DF24
119E16:  MOVS            R2, #0
119E18:  MOV.W           R9, #0
119E1C:  LDR             R0, [R0]
119E1E:  ADD             R0, R6
119E20:  ADD.W           R0, R0, #0x450
119E24:  BL              sub_164196
119E28:  STR.W           R9, [R4,#4]
119E2C:  LDR             R1, [R4,#0x24]
119E2E:  CBZ             R1, loc_119E44
119E30:  LDR             R0, [R5]; dword_23DF24
119E32:  MOVS            R2, #0
119E34:  MOV.W           R9, #0
119E38:  LDR             R0, [R0]
119E3A:  ADD             R0, R6
119E3C:  BL              sub_164196
119E40:  STR.W           R9, [R4,#0x24]
119E44:  LDR             R1, [R4,#8]
119E46:  CBZ             R1, loc_119E5C
119E48:  LDR             R0, [R5]; dword_23DF24
119E4A:  MOVS            R2, #0
119E4C:  LDR             R0, [R0]
119E4E:  ADD             R0, R6
119E50:  MOVS            R6, #0
119E52:  ADD.W           R0, R0, #0x3000
119E56:  BL              sub_164196
119E5A:  STR             R6, [R4,#8]
119E5C:  LDR             R1, [R4,#0xC]
119E5E:  CBZ             R1, loc_119E70
119E60:  LDR             R0, [R5]; dword_23DF24
119E62:  MOVS            R2, #0
119E64:  MOVS            R6, #0
119E66:  LDR             R0, [R0]
119E68:  ADD             R0, R8
119E6A:  BL              sub_164196
119E6E:  STR             R6, [R4,#0xC]
119E70:  LDR             R1, [R4,#0x10]
119E72:  MOV             R6, #0x674840
119E7A:  CBZ             R1, loc_119E94
119E7C:  LDR             R0, [R5]; dword_23DF24
119E7E:  MOVS            R2, #0
119E80:  MOV.W           R8, #0
119E84:  LDR             R0, [R0]
119E86:  ADD             R0, R6
119E88:  ADD.W           R0, R0, #0xB10
119E8C:  BL              sub_164196
119E90:  STR.W           R8, [R4,#0x10]
119E94:  LDR             R1, [R4,#0x14]
119E96:  CBZ             R1, loc_119EA8
119E98:  LDR             R0, [R5]; dword_23DF24
119E9A:  MOVS            R2, #0
119E9C:  LDR             R0, [R0]
119E9E:  ADD             R0, R6
119EA0:  MOVS            R6, #0
119EA2:  BL              sub_164196
119EA6:  STR             R6, [R4,#0x14]
119EA8:  LDR             R1, [R4,#0x18]
119EAA:  CBZ             R1, loc_119EC4
119EAC:  LDR             R0, [R5]; dword_23DF24
119EAE:  MOV             R2, #0x66F724
119EB6:  MOVS            R5, #0
119EB8:  LDR             R0, [R0]
119EBA:  ADD             R0, R2
119EBC:  MOVS            R2, #0
119EBE:  BL              sub_164196
119EC2:  STR             R5, [R4,#0x18]
119EC4:  POP.W           {R8,R9,R11}
119EC8:  POP             {R4-R7,PC}
