; =========================================================
; Game Engine Function: sub_F6C08
; Address            : 0xF6C08 - 0xF6D32
; =========================================================

F6C08:  PUSH            {R4-R7,LR}
F6C0A:  ADD             R7, SP, #0xC
F6C0C:  PUSH.W          {R8-R11}
F6C10:  SUB             SP, SP, #0x3C
F6C12:  MOV             R5, R0
F6C14:  MOVS            R0, #0
F6C16:  MOV             R4, R1
F6C18:  STR             R0, [SP,#0x58+var_20]
F6C1A:  STRD.W          R0, R0, [SP,#0x58+var_28]
F6C1E:  BL              sub_F61A4
F6C22:  ADD             R2, SP, #0x58+var_28
F6C24:  MOV             R1, R5
F6C26:  BL              sub_15EAE0
F6C2A:  LDRD.W          R2, R0, [SP,#0x58+var_28]
F6C2E:  CMP             R2, R0
F6C30:  STR             R0, [SP,#0x58+var_54]
F6C32:  BEQ             loc_F6D20
F6C34:  LDR             R0, =(off_23494C - 0xF6C44)
F6C36:  MOV.W           R8, #0
F6C3A:  LDR             R1, =(sub_F650E+1 - 0xF6C46)
F6C3C:  MOV.W           R9, #0
F6C40:  ADD             R0, PC; off_23494C
F6C42:  ADD             R1, PC; sub_F650E
F6C44:  STR             R1, [SP,#0x58+var_58]
F6C46:  LDR             R0, [R0]; dword_23DF24
F6C48:  STR             R0, [SP,#0x58+var_44]
F6C4A:  LDR             R0, =(sub_F64E6+1 - 0xF6C50)
F6C4C:  ADD             R0, PC; sub_F64E6
F6C4E:  STR             R0, [SP,#0x58+var_4C]
F6C50:  LDR             R0, [SP,#0x58+var_44]
F6C52:  STR.W           R8, [SP,#0x58+var_2C]
F6C56:  STRD.W          R8, R8, [SP,#0x58+var_34]
F6C5A:  LDR             R1, [R0]
F6C5C:  LDR             R0, [R2]
F6C5E:  STR             R2, [SP,#0x58+var_50]
F6C60:  MOV             R2, #0x1D88D9
F6C68:  ADDS            R3, R1, R2
F6C6A:  LDR             R1, [SP,#0x58+var_58]
F6C6C:  ADD             R2, SP, #0x58+var_34
F6C6E:  BLX             R3
F6C70:  LDRD.W          R10, R0, [SP,#0x58+var_34]
F6C74:  CMP             R10, R0
F6C76:  STR             R0, [SP,#0x58+var_48]
F6C78:  BEQ             loc_F6CF8
F6C7A:  STR.W           R8, [SP,#0x58+var_38]
F6C7E:  MOVW            R2, #:lower16:(loc_215FB0+1)
F6C82:  STRD.W          R8, R8, [SP,#0x58+var_40]
F6C86:  MOVT            R2, #:upper16:(loc_215FB0+1)
F6C8A:  LDR.W           R0, [R10]
F6C8E:  LDR             R1, [SP,#0x58+var_44]
F6C90:  LDR             R0, [R0,#0x18]
F6C92:  LDR             R1, [R1]
F6C94:  ADDS            R3, R1, R2
F6C96:  LDR             R1, [SP,#0x58+var_4C]
F6C98:  ADD             R2, SP, #0x58+var_40
F6C9A:  BLX             R3
F6C9C:  LDRD.W          R6, R11, [SP,#0x58+var_40]
F6CA0:  CMP             R6, R11
F6CA2:  BEQ             loc_F6CE0
F6CA4:  LDR             R0, [R6]
F6CA6:  LDR             R0, [R0]
F6CA8:  CBZ             R0, loc_F6CD8
F6CAA:  LDRB            R2, [R4]
F6CAC:  LDR             R1, [R4,#8]
F6CAE:  LSLS            R2, R2, #0x1F
F6CB0:  IT EQ
F6CB2:  ADDEQ           R1, R4, #1
F6CB4:  ADDS            R0, #0x10
F6CB6:  BL              sub_F6920
F6CBA:  CBZ             R0, loc_F6CD8
F6CBC:  BL              sub_F61A4
F6CC0:  LDR             R2, [R6]
F6CC2:  MOV             R1, R5
F6CC4:  BL              sub_15EA98
F6CC8:  BL              sub_F61A4
F6CCC:  LDR             R2, [R6]
F6CCE:  MOV             R1, R5
F6CD0:  BL              sub_15EA4C
F6CD4:  MOV.W           R9, #1
F6CD8:  ADDS            R6, #4
F6CDA:  CMP             R6, R11
F6CDC:  BNE             loc_F6CA4
F6CDE:  LDR             R6, [SP,#0x58+var_40]
F6CE0:  CBZ             R6, loc_F6CEA
F6CE2:  MOV             R0, R6; void *
F6CE4:  STR             R6, [SP,#0x58+var_3C]
F6CE6:  BLX             j__ZdlPv; operator delete(void *)
F6CEA:  LDR             R0, [SP,#0x58+var_48]
F6CEC:  ADD.W           R10, R10, #4
F6CF0:  CMP             R10, R0
F6CF2:  BNE             loc_F6C7A
F6CF4:  LDR.W           R10, [SP,#0x58+var_34]
F6CF8:  CMP.W           R10, #0
F6CFC:  ITTT NE
F6CFE:  STRNE.W         R10, [SP,#0x58+var_30]
F6D02:  MOVNE           R0, R10; void *
F6D04:  BLXNE           j__ZdlPv; operator delete(void *)
F6D08:  LDR             R2, [SP,#0x58+var_50]
F6D0A:  LDR             R0, [SP,#0x58+var_54]
F6D0C:  ADDS            R2, #4
F6D0E:  CMP             R2, R0
F6D10:  BNE             loc_F6C50
F6D12:  MOVS.W          R0, R9,LSL#31
F6D16:  BEQ             loc_F6D20
F6D18:  MOV             R0, R5
F6D1A:  MOV             R1, R4
F6D1C:  BL              sub_F6D68
F6D20:  LDR             R0, [SP,#0x58+var_28]; void *
F6D22:  CBZ             R0, loc_F6D2A
F6D24:  STR             R0, [SP,#0x58+var_24]
F6D26:  BLX             j__ZdlPv; operator delete(void *)
F6D2A:  ADD             SP, SP, #0x3C ; '<'
F6D2C:  POP.W           {R8-R11}
F6D30:  POP             {R4-R7,PC}
