; =========================================================
; Game Engine Function: sub_147E28
; Address            : 0x147E28 - 0x147ECA
; =========================================================

147E28:  PUSH            {R4-R7,LR}
147E2A:  ADD             R7, SP, #0xC
147E2C:  PUSH.W          {R8}
147E30:  SUB             SP, SP, #0x50
147E32:  CMP.W           R1, #0x3E8
147E36:  BHI             loc_147EC2
147E38:  MOV             R4, R0
147E3A:  LDR             R0, =(off_23496C - 0x147E42)
147E3C:  MOV             R5, R1
147E3E:  ADD             R0, PC; off_23496C
147E40:  LDR             R0, [R0]; dword_23DEF4
147E42:  LDR             R0, [R0]
147E44:  LDR.W           R0, [R0,#0x3B0]
147E48:  LDR             R0, [R0,#0x10]
147E4A:  ADD             R1, R0
147E4C:  LDRB            R1, [R1,#4]
147E4E:  CBZ             R1, loc_147EC2
147E50:  ADD.W           R0, R0, R5,LSL#2
147E54:  LDR.W           R6, [R0,#0x3EC]
147E58:  CBZ             R6, loc_147EC2
147E5A:  ADD             R1, SP, #0x60+var_50
147E5C:  MOV             R0, R6
147E5E:  MOV             R8, R2
147E60:  BL              sub_F8910
147E64:  MOV             R1, SP
147E66:  ADDS            R2, R1, #4
147E68:  ADD.W           R3, R1, #8
147E6C:  MOV             R0, R6
147E6E:  BL              sub_1021F0
147E72:  LDR             R0, =(off_234A24 - 0x147E7C)
147E74:  VLDR            D16, [SP,#0x60+var_60]
147E78:  ADD             R0, PC; off_234A24
147E7A:  VLDR            D17, [SP,#0x60+var_20]
147E7E:  LDR             R1, [SP,#0x60+var_58]
147E80:  LDR             R6, [R0]; dword_23DEEC
147E82:  LDR             R0, [SP,#0x60+var_18]
147E84:  STR             R1, [R4,#0x24]
147E86:  MOVS            R1, #2
147E88:  LDR             R2, [R6]
147E8A:  STR             R0, [R4,#0x18]
147E8C:  VSTR            D16, [R4,#0x1C]
147E90:  STRB.W          R8, [R4,#0xA]
147E94:  VSTR            D17, [R4,#0x10]
147E98:  STRH            R5, [R4,#8]
147E9A:  LDR             R0, [R2,#0x78]
147E9C:  STR             R1, [R4]
147E9E:  ADD.W           R1, R4, #0x10
147EA2:  BL              sub_134D18
147EA6:  LDR             R0, [R6]
147EA8:  LDR.W           R4, [R0,#0x84]
147EAC:  LDRB.W          R0, [R4,#0x50]
147EB0:  CBZ             R0, loc_147EBC
147EB2:  LDR             R0, [R4]
147EB4:  MOVS            R1, #0
147EB6:  LDR             R2, [R0,#0x24]
147EB8:  MOV             R0, R4
147EBA:  BLX             R2
147EBC:  MOVS            R0, #0
147EBE:  STRB.W          R0, [R4,#0x50]
147EC2:  ADD             SP, SP, #0x50 ; 'P'
147EC4:  POP.W           {R8}
147EC8:  POP             {R4-R7,PC}
