; =========================================================
; Game Engine Function: sub_110E28
; Address            : 0x110E28 - 0x110EE4
; =========================================================

110E28:  PUSH            {R4-R7,LR}
110E2A:  ADD             R7, SP, #0xC
110E2C:  PUSH.W          {R8-R11}
110E30:  SUB             SP, SP, #0x4C
110E32:  MOV             R5, R0
110E34:  LDR             R0, =(off_23494C - 0x110E3E)
110E36:  MOV             R9, SP
110E38:  MOVS            R2, #0
110E3A:  ADD             R0, PC; off_23494C
110E3C:  MOV             R3, R5
110E3E:  LDR             R0, [R0]; dword_23DF24
110E40:  LDR.W           R10, [R0]
110E44:  MOV             R0, R9
110E46:  LDR             R1, =(sub_110F30+1 - 0x110E4C)
110E48:  ADD             R1, PC; sub_110F30
110E4A:  BL              sub_11116C
110E4E:  ADD.W           R11, SP, #0x68+var_50
110E52:  MOV             R1, R9
110E54:  MOV             R0, R11
110E56:  BL              sub_111300
110E5A:  BL              sub_1112A8
110E5E:  LDR             R0, =(unk_263418 - 0x110E64)
110E60:  ADD             R0, PC; unk_263418
110E62:  LDR             R6, [R0,#(dword_263428 - 0x263418)]
110E64:  CBNZ            R6, loc_110E98
110E66:  ADD.W           R8, SP, #0x68+var_50
110E6A:  ADD             R0, SP, #0x68+var_38
110E6C:  MOV             R1, R8
110E6E:  BL              sub_111300
110E72:  BL              sub_1112A8
110E76:  LDR             R0, =(unk_263418 - 0x110E7C)
110E78:  ADD             R0, PC; unk_263418
110E7A:  ADD             R4, SP, #0x68+var_38
110E7C:  MOV             R1, R4
110E7E:  BL              sub_11132C
110E82:  LDR             R0, [SP,#0x68+var_28]
110E84:  CMP             R4, R0
110E86:  BEQ             loc_110E8E
110E88:  CBZ             R0, loc_110E98
110E8A:  MOVS            R1, #5
110E8C:  B               loc_110E90
110E8E:  MOVS            R1, #4
110E90:  LDR             R2, [R0]
110E92:  LDR.W           R1, [R2,R1,LSL#2]
110E96:  BLX             R1
110E98:  LDR             R0, [SP,#0x68+var_40]
110E9A:  CMP             R11, R0
110E9C:  BEQ             loc_110EA4
110E9E:  CBZ             R0, loc_110EAE
110EA0:  MOVS            R1, #5
110EA2:  B               loc_110EA6
110EA4:  MOVS            R1, #4
110EA6:  LDR             R2, [R0]
110EA8:  LDR.W           R1, [R2,R1,LSL#2]
110EAC:  BLX             R1
110EAE:  CBNZ            R6, loc_110EC4
110EB0:  MOVW            R0, #0x9E4
110EB4:  LDR             R1, =(sub_11127C+1 - 0x110EC0)
110EB6:  MOVT            R0, #0x67 ; 'g'
110EBA:  ADD             R0, R10
110EBC:  ADD             R1, PC; sub_11127C
110EBE:  MOV             R2, R5
110EC0:  BL              sub_164196
110EC4:  LDR             R0, [SP,#0x68+var_58]
110EC6:  CMP             R9, R0
110EC8:  BEQ             loc_110ED0
110ECA:  CBZ             R0, loc_110EDA
110ECC:  MOVS            R1, #5
110ECE:  B               loc_110ED2
110ED0:  MOVS            R1, #4
110ED2:  LDR             R2, [R0]
110ED4:  LDR.W           R1, [R2,R1,LSL#2]
110ED8:  BLX             R1
110EDA:  MOV             R0, R5
110EDC:  ADD             SP, SP, #0x4C ; 'L'
110EDE:  POP.W           {R8-R11}
110EE2:  POP             {R4-R7,PC}
