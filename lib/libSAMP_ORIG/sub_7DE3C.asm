; =========================================================
; Game Engine Function: sub_7DE3C
; Address            : 0x7DE3C - 0x7DEB6
; =========================================================

7DE3C:  PUSH            {R4-R7,LR}
7DE3E:  ADD             R7, SP, #0xC
7DE40:  PUSH.W          {R8,R9,R11}
7DE44:  MOV             R9, R0
7DE46:  MOV             R8, R0
7DE48:  LDR.W           R5, [R9,#0x14]!
7DE4C:  ADD.W           R6, R9, #4
7DE50:  CMP             R5, R6
7DE52:  BEQ             loc_7DE94
7DE54:  LDR             R0, =(off_114CD4 - 0x7DE5A)
7DE56:  ADD             R0, PC; off_114CD4
7DE58:  LDR             R4, [R0]; off_1ABF20
7DE5A:  B               loc_7DE60
7DE5C:  CMP             R5, R6
7DE5E:  BEQ             loc_7DE94
7DE60:  LDRD.W          R0, R1, [R5,#0x10]
7DE64:  LDR             R2, [R4]
7DE66:  BLX             R2
7DE68:  LDR             R0, [R5,#4]
7DE6A:  CBZ             R0, loc_7DE76
7DE6C:  MOV             R5, R0
7DE6E:  LDR             R0, [R0]
7DE70:  CMP             R0, #0
7DE72:  BNE             loc_7DE6C
7DE74:  B               loc_7DE5C
7DE76:  MOV             R0, R5
7DE78:  LDR.W           R1, [R0,#8]!
7DE7C:  LDR             R2, [R1]
7DE7E:  CMP             R2, R5
7DE80:  MOV             R5, R1
7DE82:  BEQ             loc_7DE5C
7DE84:  LDR             R1, [R0]
7DE86:  MOV             R0, R1
7DE88:  LDR.W           R5, [R0,#8]!
7DE8C:  LDR             R2, [R5]
7DE8E:  CMP             R2, R1
7DE90:  BNE             loc_7DE84
7DE92:  B               loc_7DE5C
7DE94:  LDR.W           R1, [R8,#0x18]
7DE98:  MOV             R0, R9
7DE9A:  BL              sub_7DFFC
7DE9E:  LDR.W           R0, [R8,#8]; void *
7DEA2:  CMP             R0, #0
7DEA4:  ITT NE
7DEA6:  STRNE.W         R0, [R8,#0xC]
7DEAA:  BLXNE           j__ZdlPv; operator delete(void *)
7DEAE:  MOV             R0, R8
7DEB0:  POP.W           {R8,R9,R11}
7DEB4:  POP             {R4-R7,PC}
