; =========================================================
; Game Engine Function: sub_162E5C
; Address            : 0x162E5C - 0x162EEC
; =========================================================

162E5C:  PUSH            {R4-R7,LR}
162E5E:  ADD             R7, SP, #0xC
162E60:  PUSH.W          {R8,R9,R11}
162E64:  SUB             SP, SP, #0x38
162E66:  MOV             R8, R0
162E68:  ADD             R0, SP, #0x50+var_2C
162E6A:  MOV             R6, R3
162E6C:  MOV             R5, R2
162E6E:  MOV             R9, R1
162E70:  BL              sub_F06B2
162E74:  BL              sub_F0734
162E78:  MOV             R4, R0
162E7A:  LDR             R0, [R7,#arg_0]
162E7C:  LDRB            R1, [R4]
162E7E:  LSLS            R1, R1, #0x1F
162E80:  BNE             loc_162E88
162E82:  MOVS            R1, #0
162E84:  STRH            R1, [R4]
162E86:  B               loc_162E98
162E88:  LDR             R1, [R4,#8]
162E8A:  MOVS            R2, #0
162E8C:  STRB            R2, [R1]
162E8E:  LDRB            R3, [R4]
162E90:  LDR             R1, [R4]
162E92:  STR             R2, [R4,#4]
162E94:  LSLS            R2, R3, #0x1F
162E96:  BNE             loc_162E9C
162E98:  MOVS            R2, #9
162E9A:  B               loc_162EA2
162E9C:  SUBS            R1, #2
162E9E:  BIC.W           R2, R1, #1
162EA2:  LDR             R1, [R6]
162EA4:  MOVS            R3, #0
162EA6:  LDR             R0, [R0]
162EA8:  STRD.W          R0, R3, [SP,#0x50+var_20]
162EAC:  STRD.W          R1, R3, [SP,#0x50+var_28]
162EB0:  ADD             R0, SP, #0x50+var_28
162EB2:  MOVS            R1, #0x12
162EB4:  STRD.W          R0, R3, [SP,#0x50+var_40]
162EB8:  ADD             R0, SP, #0x50+var_34
162EBA:  STRD.W          R1, R3, [SP,#0x50+var_48]
162EBE:  MOV             R1, R4
162EC0:  MOV             R3, R9
162EC2:  STR             R5, [SP,#0x50+var_50]
162EC4:  BL              sub_DCA40
162EC8:  LDRB            R0, [R4]
162ECA:  LDRD.W          R2, R1, [R4,#4]
162ECE:  ANDS.W          R3, R0, #1
162ED2:  ITT EQ
162ED4:  ADDEQ           R1, R4, #1; text
162ED6:  LSREQ           R2, R0, #1
162ED8:  MOV             R0, R8; int
162EDA:  BL              sub_ED4F8
162EDE:  ADD             R0, SP, #0x50+var_2C
162EE0:  BL              sub_F0720
162EE4:  ADD             SP, SP, #0x38 ; '8'
162EE6:  POP.W           {R8,R9,R11}
162EEA:  POP             {R4-R7,PC}
