; =========================================================
; Game Engine Function: sub_13FCD8
; Address            : 0x13FCD8 - 0x13FDFC
; =========================================================

13FCD8:  PUSH            {R4-R7,LR}
13FCDA:  ADD             R7, SP, #0xC
13FCDC:  PUSH.W          {R8-R10}
13FCE0:  SUB             SP, SP, #0x148
13FCE2:  MOV             R8, R0
13FCE4:  LDR             R0, =(off_23496C - 0x13FCEA)
13FCE6:  ADD             R0, PC; off_23496C
13FCE8:  LDR.W           R9, [R0]; dword_23DEF4
13FCEC:  LDR.W           R0, [R9]
13FCF0:  LDR.W           R0, [R0,#0x3B0]
13FCF4:  LDR             R5, [R0,#4]
13FCF6:  CMP             R5, #0
13FCF8:  BEQ             loc_13FDF4
13FCFA:  MOV             R0, R5
13FCFC:  MOV             R4, R1
13FCFE:  BL              sub_F2396
13FD02:  CMP             R0, #0
13FD04:  BEQ             loc_13FDF4
13FD06:  LDRH.W          R6, [R8,#0x1D6]
13FD0A:  LSRS            R0, R6, #4
13FD0C:  CMP             R0, #0x7C ; '|'
13FD0E:  BHI             loc_13FDF4
13FD10:  MOV             R0, R5
13FD12:  MOV             R1, R6
13FD14:  BL              sub_F2396
13FD18:  CMP             R0, #0
13FD1A:  BEQ             loc_13FDF4
13FD1C:  LDR.W           R1, [R5,R6,LSL#2]
13FD20:  CMP             R1, #0
13FD22:  BEQ             loc_13FDF4
13FD24:  ADD             R0, SP, #0x160+var_30
13FD26:  BL              sub_10A354
13FD2A:  LDRH.W          R0, [SP,#0x160+var_30]
13FD2E:  CMP             R0, R4
13FD30:  BNE             loc_13FDF4
13FD32:  ADD.W           R4, R8, #0x1D8
13FD36:  ADD.W           R10, SP, #0x160+var_30
13FD3A:  MOV             R0, R10
13FD3C:  MOV             R1, R4
13FD3E:  BL              sub_10945C
13FD42:  CMP             R0, #0
13FD44:  BNE             loc_13FDF4
13FD46:  LDR.W           R0, [R8,#0x1C]
13FD4A:  BL              sub_104326
13FD4E:  CMP             R0, #0
13FD50:  BEQ             loc_13FDF4
13FD52:  ADD             R0, SP, #0x160+var_144
13FD54:  BL              sub_17D4A8
13FD58:  LDRH.W          R1, [SP,#0x160+var_30]
13FD5C:  STRH.W          R1, [SP,#0x160+var_1C]
13FD60:  ADD             R1, SP, #0x160+var_1C
13FD62:  MOVS            R2, #0x10
13FD64:  MOVS            R3, #1
13FD66:  BL              sub_17D628
13FD6A:  LDR             R0, [SP,#0x160+var_2C]
13FD6C:  STR             R0, [SP,#0x160+var_1C]
13FD6E:  ADD             R0, SP, #0x160+var_144
13FD70:  ADD             R1, SP, #0x160+var_1C
13FD72:  MOVS            R2, #0x20 ; ' '
13FD74:  MOVS            R3, #1
13FD76:  BL              sub_17D628
13FD7A:  LDR             R0, [SP,#0x160+var_28]
13FD7C:  STR             R0, [SP,#0x160+var_1C]
13FD7E:  ADD             R0, SP, #0x160+var_144
13FD80:  ADD             R1, SP, #0x160+var_1C
13FD82:  MOVS            R2, #0x20 ; ' '
13FD84:  MOVS            R3, #1
13FD86:  BL              sub_17D628
13FD8A:  LDRB.W          R0, [SP,#0x160+var_24]
13FD8E:  STRB.W          R0, [SP,#0x160+var_1C]
13FD92:  ADD             R0, SP, #0x160+var_144
13FD94:  ADD             R1, SP, #0x160+var_1C
13FD96:  MOVS            R2, #8
13FD98:  MOVS            R3, #1
13FD9A:  BL              sub_17D628
13FD9E:  LDRB.W          R0, [SP,#0x160+var_23]
13FDA2:  STRB.W          R0, [SP,#0x160+var_1C]
13FDA6:  ADD             R0, SP, #0x160+var_144
13FDA8:  ADD             R1, SP, #0x160+var_1C
13FDAA:  MOVS            R2, #8
13FDAC:  MOVS            R3, #1
13FDAE:  MOV.W           R8, #8
13FDB2:  BL              sub_17D628
13FDB6:  LDR.W           R0, [R9]
13FDBA:  MOVS            R3, #0
13FDBC:  LDR.W           R0, [R0,#0x210]
13FDC0:  LDR             R1, =(off_234C24 - 0x13FDC6)
13FDC2:  ADD             R1, PC; off_234C24
13FDC4:  LDR             R2, [R0]
13FDC6:  LDR             R1, [R1]; unk_23C760
13FDC8:  LDR             R6, [R2,#0x6C]
13FDCA:  MOV.W           R12, #0xFFFFFFFF
13FDCE:  ADD             R2, SP, #0x160+var_144
13FDD0:  MOVW            R5, #0xFFFF
13FDD4:  STRD.W          R8, R3, [SP,#0x160+var_160]
13FDD8:  STRD.W          R3, R12, [SP,#0x160+var_158]
13FDDC:  STR             R3, [SP,#0x160+var_148]
13FDDE:  MOVS            R3, #1
13FDE0:  STRD.W          R5, R5, [SP,#0x160+var_150]
13FDE4:  BLX             R6
13FDE6:  VLD1.64         {D16-D17}, [R10]
13FDEA:  ADD             R0, SP, #0x160+var_144
13FDEC:  VST1.32         {D16-D17}, [R4]
13FDF0:  BL              sub_17D542
13FDF4:  ADD             SP, SP, #0x148
13FDF6:  POP.W           {R8-R10}
13FDFA:  POP             {R4-R7,PC}
