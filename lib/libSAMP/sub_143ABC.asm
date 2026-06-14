; =========================================================
; Game Engine Function: sub_143ABC
; Address            : 0x143ABC - 0x143BC0
; =========================================================

143ABC:  PUSH            {R4-R7,LR}
143ABE:  ADD             R7, SP, #0xC
143AC0:  PUSH.W          {R8}
143AC4:  SUB             SP, SP, #0x18
143AC6:  MOV             R5, R1
143AC8:  SUB.W           R1, R7, #-var_11; int
143ACC:  MOVS            R4, #0
143ACE:  MOV             R0, R5; int
143AD0:  MOVS            R2, #8
143AD2:  MOVS            R3, #1
143AD4:  STRB.W          R4, [R7,#var_11]
143AD8:  BL              sub_17D786
143ADC:  ADD             R1, SP, #0x28+var_18; int
143ADE:  MOV             R0, R5; int
143AE0:  MOVS            R2, #0x20 ; ' '
143AE2:  MOVS            R3, #1
143AE4:  STR             R4, [SP,#0x28+var_18]
143AE6:  BL              sub_17D786
143AEA:  LDR             R6, [SP,#0x28+var_18]
143AEC:  ADDS            R0, R6, #1; unsigned int
143AEE:  BLX             j__Znaj; operator new[](uint)
143AF2:  MOV             R8, R0
143AF4:  MOV             R0, R5; int
143AF6:  MOV             R1, R8; dest
143AF8:  MOV             R2, R6
143AFA:  BL              sub_17D744
143AFE:  LDR             R0, =(off_2349A8 - 0x143B06)
143B00:  LDR             R1, [SP,#0x28+var_18]
143B02:  ADD             R0, PC; off_2349A8
143B04:  LDR             R0, [R0]; dword_381BF4
143B06:  STRB.W          R4, [R8,R1]
143B0A:  LDR             R5, [R0]
143B0C:  LDRB.W          R0, [R5,#0x85]
143B10:  CBNZ            R0, loc_143B18
143B12:  LDRB.W          R0, [R5,#0x84]
143B16:  CBZ             R0, loc_143B4C
143B18:  ADD             R4, SP, #0x28+var_24
143B1A:  MOV             R1, R8; s
143B1C:  LDRB.W          R6, [R7,#var_11]
143B20:  MOV             R0, R4; int
143B22:  BL              sub_DC6DC
143B26:  MOV             R0, R5
143B28:  MOV             R1, R6
143B2A:  MOV             R2, R4
143B2C:  BL              sub_17C370
143B30:  LDRB.W          R0, [SP,#0x28+var_24]
143B34:  LSLS            R0, R0, #0x1F
143B36:  BEQ             loc_143B3E
143B38:  LDR             R0, [SP,#0x28+var_1C]; void *
143B3A:  BLX             j__ZdlPv; operator delete(void *)
143B3E:  MOV             R0, R8; void *
143B40:  BLX             j__ZdaPv; operator delete[](void *)
143B44:  ADD             SP, SP, #0x18
143B46:  POP.W           {R8}
143B4A:  POP             {R4-R7,PC}
143B4C:  LDR             R0, =(off_234A24 - 0x143B52)
143B4E:  ADD             R0, PC; off_234A24
143B50:  LDR             R0, [R0]; dword_23DEEC
143B52:  LDR             R0, [R0]
143B54:  CMP             R0, #0
143B56:  BEQ             loc_143B3E
143B58:  LDR             R0, [R0,#0x58]
143B5A:  CMP             R0, #0
143B5C:  BEQ             loc_143B3E
143B5E:  LDR.W           R5, [R0,#0x84]
143B62:  CMP             R5, #0
143B64:  BEQ             loc_143B3E
143B66:  LDRB.W          R0, [R7,#var_11]
143B6A:  ADDS            R1, R0, #1
143B6C:  MOV             R0, R5
143B6E:  BL              sub_133038
143B72:  CMP             R0, #0
143B74:  BEQ             loc_143B3E
143B76:  MOV             R6, R0
143B78:  MOV             R0, R8; s
143B7A:  BLX             strlen
143B7E:  ADD             R4, SP, #0x28+var_24
143B80:  MOV             R2, R0
143B82:  MOV             R1, R8
143B84:  MOV             R0, R4
143B86:  BL              sub_164D04
143B8A:  LDR             R0, [R6,#0x54]
143B8C:  MOV             R1, R4
143B8E:  BL              sub_13D450
143B92:  LDRB.W          R0, [SP,#0x28+var_24]
143B96:  LSLS            R0, R0, #0x1F
143B98:  ITT NE
143B9A:  LDRNE           R0, [SP,#0x28+var_1C]; void *
143B9C:  BLXNE           j__ZdlPv; operator delete(void *)
143BA0:  LDRB.W          R0, [R6,#0x50]
143BA4:  CMP             R0, #1
143BA6:  BEQ             loc_143BB2
143BA8:  LDR             R0, [R6]
143BAA:  MOVS            R1, #1
143BAC:  LDR             R2, [R0,#0x24]
143BAE:  MOV             R0, R6
143BB0:  BLX             R2
143BB2:  MOVS            R0, #1
143BB4:  STRB.W          R0, [R6,#0x50]
143BB8:  MOV             R0, R5
143BBA:  BL              sub_1330A8
143BBE:  B               loc_143B3E
