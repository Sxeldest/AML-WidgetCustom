; =========================================================
; Game Engine Function: sub_141DFC
; Address            : 0x141DFC - 0x141F1C
; =========================================================

141DFC:  PUSH            {R4,R5,R7,LR}
141DFE:  ADD             R7, SP, #8
141E00:  MOV             R4, R0
141E02:  LDR.W           R0, [R0,#0x210]
141E06:  LDR             R1, [R0]
141E08:  LDR             R1, [R1,#0x24]
141E0A:  BLX             R1
141E0C:  CMP             R0, #0
141E0E:  BEQ.W           locret_141F1A
141E12:  MOV             R5, R0
141E14:  LDR             R1, [R5,#0x14]
141E16:  LDRB            R0, [R1]
141E18:  CMP             R0, #0x28 ; '('
141E1A:  IT EQ
141E1C:  LDRBEQ          R0, [R1,#5]
141E1E:  SUB.W           R1, R0, #0xC8; switch 21 cases
141E22:  CMP             R1, #0x14
141E24:  BLS             loc_141E44
141E26:  SUB.W           R1, R0, #0x1D; jumptable 00141E44 default case
141E2A:  CMP             R1, #8
141E2C:  BHI             def_141E2E; jumptable 00141E2E default case
141E2E:  TBB.W           [PC,R1]; switch jump
141E32:  DCB 5; jump table for switch statement
141E33:  DCB 0x65
141E34:  DCB 0x22
141E35:  DCB 0x26
141E36:  DCB 0x2A
141E37:  DCB 0x2E
141E38:  DCB 0x33
141E39:  DCB 0x36
141E3A:  DCB 0x3A
141E3B:  ALIGN 2
141E3C:  MOV             R0, R4; jumptable 00141E2E case 29
141E3E:  BL              sub_142198
141E42:  B               loc_141EFC; jumptable 00141E2E case 30
141E44:  TBB.W           [PC,R1]; switch jump
141E48:  DCB 0xB; jump table for switch statement
141E49:  DCB 0x5A
141E4A:  DCB 0x5A
141E4B:  DCB 0x33
141E4C:  DCB 0x5A
141E4D:  DCB 0x5A
141E4E:  DCB 0x38
141E4F:  DCB 0x3D
141E50:  DCB 0x42
141E51:  DCB 0x47
141E52:  DCB 0x4C
141E53:  DCB 0x51
141E54:  DCB 0x5A
141E55:  DCB 0x5A
141E56:  DCB 0x5A
141E57:  DCB 0x5A
141E58:  DCB 0x5A
141E59:  DCB 0x5A
141E5A:  DCB 0x5A
141E5B:  DCB 0x5A
141E5C:  DCB 0x56
141E5D:  ALIGN 2
141E5E:  MOV             R0, R4; jumptable 00141E44 case 200
141E60:  MOV             R1, R5
141E62:  BL              sub_14289C
141E66:  B               loc_141EFC; jumptable 00141E2E case 30
141E68:  CMP             R0, #0xC; jumptable 00141E2E default case
141E6A:  BNE             loc_141EFC; jumptable 00141E2E case 30
141E6C:  MOV             R0, R4
141E6E:  MOV             R1, R5
141E70:  BL              sub_1420BC
141E74:  B               loc_141EFC; jumptable 00141E2E case 30
141E76:  MOV             R0, R4; jumptable 00141E2E case 31
141E78:  BL              sub_1421D4
141E7C:  B               loc_141EFC; jumptable 00141E2E case 30
141E7E:  MOV             R0, R4; jumptable 00141E2E case 32
141E80:  BL              sub_142210
141E84:  B               loc_141EFC; jumptable 00141E2E case 30
141E86:  MOV             R0, R4; jumptable 00141E2E case 33
141E88:  BL              sub_14229C
141E8C:  B               loc_141EFC; jumptable 00141E2E case 30
141E8E:  MOV             R0, R4; jumptable 00141E2E case 34
141E90:  MOV             R1, R5
141E92:  BL              sub_1423A0
141E96:  B               loc_141EFC; jumptable 00141E2E case 30
141E98:  BL              sub_142780; jumptable 00141E2E case 35
141E9C:  B               loc_141EFC; jumptable 00141E2E case 30
141E9E:  MOV             R0, R4; jumptable 00141E2E case 36
141EA0:  BL              sub_1427B4
141EA4:  B               loc_141EFC; jumptable 00141E2E case 30
141EA6:  MOV             R0, R4; jumptable 00141E2E case 37
141EA8:  BL              sub_142800
141EAC:  B               loc_141EFC; jumptable 00141E2E case 30
141EAE:  MOV             R0, R4; jumptable 00141E44 case 203
141EB0:  MOV             R1, R5
141EB2:  BL              sub_142B24
141EB6:  B               loc_141EFC; jumptable 00141E2E case 30
141EB8:  MOV             R0, R4; jumptable 00141E44 case 206
141EBA:  MOV             R1, R5
141EBC:  BL              sub_142BA4
141EC0:  B               loc_141EFC; jumptable 00141E2E case 30
141EC2:  MOV             R0, R4; jumptable 00141E44 case 207
141EC4:  MOV             R1, R5
141EC6:  BL              sub_142C2E
141ECA:  B               loc_141EFC; jumptable 00141E2E case 30
141ECC:  MOV             R0, R4; jumptable 00141E44 case 208
141ECE:  MOV             R1, R5
141ED0:  BL              sub_142E8A
141ED4:  B               loc_141EFC; jumptable 00141E2E case 30
141ED6:  MOV             R0, R4; jumptable 00141E44 case 209
141ED8:  MOV             R1, R5
141EDA:  BL              sub_142F9E
141EDE:  B               loc_141EFC; jumptable 00141E2E case 30
141EE0:  MOV             R0, R4; jumptable 00141E44 case 210
141EE2:  MOV             R1, R5
141EE4:  BL              sub_143028
141EE8:  B               loc_141EFC; jumptable 00141E2E case 30
141EEA:  MOV             R0, R4; jumptable 00141E44 case 211
141EEC:  MOV             R1, R5
141EEE:  BL              sub_1430C8
141EF2:  B               loc_141EFC; jumptable 00141E2E case 30
141EF4:  MOV             R0, R4; jumptable 00141E44 case 220
141EF6:  MOV             R1, R5
141EF8:  BL              sub_143148
141EFC:  LDR.W           R0, [R4,#0x210]; jumptable 00141E2E case 30
141F00:  LDR             R1, [R0]
141F02:  LDR             R2, [R1,#0x28]
141F04:  MOV             R1, R5
141F06:  BLX             R2
141F08:  LDR.W           R0, [R4,#0x210]
141F0C:  LDR             R1, [R0]
141F0E:  LDR             R1, [R1,#0x24]
141F10:  BLX             R1
141F12:  MOV             R5, R0
141F14:  CMP             R0, #0
141F16:  BNE.W           loc_141E14
141F1A:  POP             {R4,R5,R7,PC}
