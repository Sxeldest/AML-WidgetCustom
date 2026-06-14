; =========================================================
; Game Engine Function: sub_120F28
; Address            : 0x120F28 - 0x120FC0
; =========================================================

120F28:  PUSH            {R4-R7,LR}
120F2A:  ADD             R7, SP, #0xC
120F2C:  PUSH.W          {R11}
120F30:  MOV             R4, R0
120F32:  LDR             R0, =(off_23494C - 0x120F3C)
120F34:  MOVW            R6, #0x1FF0
120F38:  ADD             R0, PC; off_23494C
120F3A:  MOVT            R6, #0x66 ; 'f'
120F3E:  LDR             R5, [R0]; dword_23DF24
120F40:  LDR             R0, [R5]
120F42:  LDR             R1, =(loc_120FF4+1 - 0x120F4C)
120F44:  LDR             R2, =(off_26393C - 0x120F4E)
120F46:  ADD             R0, R6
120F48:  ADD             R1, PC; loc_120FF4
120F4A:  ADD             R2, PC; off_26393C
120F4C:  BL              sub_164222
120F50:  LDR             R0, [R5]
120F52:  LDR             R1, =(loc_121004+1 - 0x120F5C)
120F54:  LDR             R2, =(unk_263940 - 0x120F60)
120F56:  ADD             R0, R6
120F58:  ADD             R1, PC; loc_121004
120F5A:  ADDS            R0, #0x64 ; 'd'
120F5C:  ADD             R2, PC; unk_263940
120F5E:  BL              sub_164222
120F62:  LDR             R0, [R5]
120F64:  MOVW            R6, #0x7C0C
120F68:  LDR             R1, =(loc_121014+1 - 0x120F76)
120F6A:  MOVT            R6, #0x66 ; 'f'
120F6E:  LDR             R2, =(unk_263944 - 0x120F78)
120F70:  ADD             R0, R6
120F72:  ADD             R1, PC; loc_121014
120F74:  ADD             R2, PC; unk_263944
120F76:  BL              sub_164222
120F7A:  LDR             R0, [R5]
120F7C:  LDR             R1, =(loc_121024+1 - 0x120F86)
120F7E:  LDR             R2, =(unk_263948 - 0x120F8A)
120F80:  ADD             R0, R6
120F82:  ADD             R1, PC; loc_121024
120F84:  ADDS            R0, #0x64 ; 'd'
120F86:  ADD             R2, PC; unk_263948
120F88:  BL              sub_164222
120F8C:  LDR             R0, [R5]
120F8E:  LDR             R1, =(loc_121034+1 - 0x120F98)
120F90:  LDR             R2, =(unk_26394C - 0x120F9E)
120F92:  ADD             R0, R6
120F94:  ADD             R1, PC; loc_121034
120F96:  ADD.W           R0, R0, #0x1F8
120F9A:  ADD             R2, PC; unk_26394C
120F9C:  BL              sub_164222
120FA0:  LDR             R0, [R5]
120FA2:  MOVW            R3, #0x8BB4
120FA6:  LDR             R1, =(loc_121044+1 - 0x120FB4)
120FA8:  MOVT            R3, #0x66 ; 'f'
120FAC:  LDR             R2, =(unk_263950 - 0x120FB6)
120FAE:  ADD             R0, R3
120FB0:  ADD             R1, PC; loc_121044
120FB2:  ADD             R2, PC; unk_263950
120FB4:  BL              sub_164222
120FB8:  MOV             R0, R4
120FBA:  POP.W           {R11}
120FBE:  POP             {R4-R7,PC}
