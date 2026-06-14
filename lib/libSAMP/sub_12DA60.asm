; =========================================================
; Game Engine Function: sub_12DA60
; Address            : 0x12DA60 - 0x12DACA
; =========================================================

12DA60:  PUSH            {R4-R7,LR}
12DA62:  ADD             R7, SP, #0xC
12DA64:  PUSH.W          {R11}
12DA68:  SUB             SP, SP, #0x10
12DA6A:  MOV             R4, R0
12DA6C:  LDR             R0, =(off_2349A8 - 0x12DA74)
12DA6E:  MOVS            R1, #1
12DA70:  ADD             R0, PC; off_2349A8
12DA72:  LDR             R0, [R0]; dword_381BF4
12DA74:  LDR             R0, [R0]
12DA76:  BL              sub_17C1DA
12DA7A:  CBNZ            R0, loc_12DAC2
12DA7C:  LDR             R0, =(off_234A24 - 0x12DA82)
12DA7E:  ADD             R0, PC; off_234A24
12DA80:  LDR             R5, [R0]; dword_23DEEC
12DA82:  LDR             R0, [R5]
12DA84:  LDR             R0, [R0,#0x7C]
12DA86:  LDRB.W          R0, [R0,#0x50]
12DA8A:  CBNZ            R0, loc_12DAC2
12DA8C:  BL              sub_F0B30
12DA90:  LDR.W           R1, [R4,#0x8E4]
12DA94:  SUBS            R0, R0, R1
12DA96:  CMP             R0, #0xC7
12DA98:  BHI             loc_12DAC2
12DA9A:  LDR             R0, [R5]
12DA9C:  ADD             R6, SP, #0x20+var_1C
12DA9E:  LDR             R5, [R0,#0x58]
12DAA0:  MOV             R0, R6; int
12DAA2:  LDR             R1, =(byte_8F794 - 0x12DAA8)
12DAA4:  ADD             R1, PC; byte_8F794 ; s
12DAA6:  BL              sub_DC6DC
12DAAA:  MOV             R0, R5
12DAAC:  MOV             R1, R4
12DAAE:  MOV             R2, R6
12DAB0:  BL              sub_12F718
12DAB4:  LDRB.W          R0, [SP,#0x20+var_1C]
12DAB8:  LSLS            R0, R0, #0x1F
12DABA:  ITT NE
12DABC:  LDRNE           R0, [SP,#0x20+var_14]; void *
12DABE:  BLXNE           j__ZdlPv; operator delete(void *)
12DAC2:  ADD             SP, SP, #0x10
12DAC4:  POP.W           {R11}
12DAC8:  POP             {R4-R7,PC}
