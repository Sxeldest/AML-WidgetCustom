; =========================================================
; Game Engine Function: sub_141D3C
; Address            : 0x141D3C - 0x141DE6
; =========================================================

141D3C:  PUSH            {R4,R5,R7,LR}
141D3E:  ADD             R7, SP, #8
141D40:  MOV             R4, R0
141D42:  BL              sub_141DFC
141D46:  LDR.W           R0, [R4,#0x20C]
141D4A:  LDRB            R1, [R0,#0x18]
141D4C:  LDR             R5, =(off_234970 - 0x141D52)
141D4E:  ADD             R5, PC; off_234970
141D50:  CBZ             R1, loc_141D62
141D52:  LDR             R3, [R5]; dword_23DEF0
141D54:  LDRB.W          R1, [R0,#0x25]
141D58:  LDRB.W          R2, [R0,#0x26]
141D5C:  LDR             R0, [R3]
141D5E:  BL              sub_F948C
141D62:  LDR             R0, [R5]; dword_23DEF0
141D64:  LDR             R0, [R0]
141D66:  BL              sub_F94DC
141D6A:  LDR.W           R0, [R4,#0x218]
141D6E:  CMP             R0, #5
141D70:  BNE             loc_141D7A
141D72:  MOV             R0, R4
141D74:  BL              sub_141F1C
141D78:  B               loc_141D7E
141D7A:  BL              sub_141F74
141D7E:  LDR.W           R0, [R4,#0x218]
141D82:  CMP             R0, #1
141D84:  ITT EQ
141D86:  MOVEQ           R0, R4
141D88:  BLEQ            sub_142030
141D8C:  LDR             R0, =(dword_314304 - 0x141D92)
141D8E:  ADD             R0, PC; dword_314304
141D90:  BL              sub_13E2C8
141D94:  LDR             R0, =(off_23494C - 0x141DA2)
141D96:  MOV             R1, #0x2B1071
141D9E:  ADD             R0, PC; off_23494C
141DA0:  LDR             R0, [R0]; dword_23DF24
141DA2:  LDR             R0, [R0]
141DA4:  ADDS            R2, R0, R1
141DA6:  MOVS            R0, #0xA1
141DA8:  MOVS            R1, #0
141DAA:  BLX             R2
141DAC:  CBZ             R0, locret_141DE4
141DAE:  LDR             R0, =(off_234A24 - 0x141DB4)
141DB0:  ADD             R0, PC; off_234A24
141DB2:  LDR             R4, [R0]; dword_23DEEC
141DB4:  LDR             R0, [R4]
141DB6:  CBZ             R0, locret_141DE4
141DB8:  LDR             R0, =(off_2349A8 - 0x141DC0)
141DBA:  MOVS            R1, #0
141DBC:  ADD             R0, PC; off_2349A8
141DBE:  LDR             R0, [R0]; dword_381BF4
141DC0:  LDR             R0, [R0]
141DC2:  BL              sub_17C1DA
141DC6:  CBNZ            R0, locret_141DE4
141DC8:  LDR             R0, [R4]
141DCA:  LDR             R4, [R0,#0x7C]
141DCC:  LDRB.W          R0, [R4,#0x50]
141DD0:  CMP             R0, #1
141DD2:  BEQ             loc_141DDE
141DD4:  LDR             R0, [R4]
141DD6:  MOVS            R1, #1
141DD8:  LDR             R2, [R0,#0x24]
141DDA:  MOV             R0, R4
141DDC:  BLX             R2
141DDE:  MOVS            R0, #1
141DE0:  STRB.W          R0, [R4,#0x50]
141DE4:  POP             {R4,R5,R7,PC}
