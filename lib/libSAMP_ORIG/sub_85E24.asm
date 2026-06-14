; =========================================================
; Game Engine Function: sub_85E24
; Address            : 0x85E24 - 0x85F2E
; =========================================================

85E24:  PUSH            {R4-R7,LR}
85E26:  ADD             R7, SP, #0xC
85E28:  PUSH.W          {R8,R9,R11}
85E2C:  SUB             SP, SP, #0x48
85E2E:  MOV             R4, R0
85E30:  LDR             R0, =(__stack_chk_guard_ptr - 0x85E36)
85E32:  ADD             R0, PC; __stack_chk_guard_ptr
85E34:  LDR             R0, [R0]; __stack_chk_guard
85E36:  LDR             R0, [R0]
85E38:  STR             R0, [SP,#0x60+var_1C]
85E3A:  MOV             R0, R4
85E3C:  BL              sub_84A98
85E40:  LDR             R0, =(off_114AD8 - 0x85E46)
85E42:  ADD             R0, PC; off_114AD8
85E44:  LDR             R0, [R0]; dword_1A4434
85E46:  LDR             R0, [R0]
85E48:  CMP             R0, #0
85E4A:  ITTT NE
85E4C:  LDRNE.W         R0, [R0,#0x3B0]
85E50:  LDRNE           R0, [R0,#4]
85E52:  CMPNE           R0, #0
85E54:  BNE             loc_85E70
85E56:  LDR             R0, [SP,#0x60+var_1C]
85E58:  LDR             R1, =(__stack_chk_guard_ptr - 0x85E5E)
85E5A:  ADD             R1, PC; __stack_chk_guard_ptr
85E5C:  LDR             R1, [R1]; __stack_chk_guard
85E5E:  LDR             R1, [R1]
85E60:  CMP             R1, R0
85E62:  ITTT EQ
85E64:  ADDEQ           SP, SP, #0x48 ; 'H'
85E66:  POPEQ.W         {R8,R9,R11}
85E6A:  POPEQ           {R4-R7,PC}
85E6C:  BLX             __stack_chk_fail
85E70:  LDRH.W          R1, [R4,#0x5C]
85E74:  LSRS            R2, R1, #4
85E76:  CMP             R2, #0x7C ; '|'
85E78:  BHI             loc_85E56
85E7A:  ADDS            R2, R0, R1
85E7C:  MOVW            R3, #0x9C40
85E80:  LDRB            R2, [R2,R3]
85E82:  CMP             R2, #0
85E84:  ITT NE
85E86:  LDRNE.W         R0, [R0,R1,LSL#2]
85E8A:  CMPNE           R0, #0
85E8C:  BEQ             loc_85E56
85E8E:  LDR             R0, [R0,#4]
85E90:  MOVS            R1, #0
85E92:  STR             R1, [SP,#0x60+var_54]
85E94:  STR             R1, [SP,#0x60+var_44]
85E96:  CMP             R0, #0
85E98:  STRD.W          R1, R1, [SP,#0x60+var_5C]
85E9C:  STR             R1, [SP,#0x60+var_34]
85E9E:  STRD.W          R1, R1, [SP,#0x60+var_4C]
85EA2:  STR             R1, [SP,#0x60+var_24]
85EA4:  STRD.W          R1, R1, [SP,#0x60+var_3C]
85EA8:  STRD.W          R1, R1, [SP,#0x60+var_2C]
85EAC:  ITT NE
85EAE:  LDRNE           R0, [R0,#0x14]
85EB0:  CMPNE           R0, #0
85EB2:  BEQ             loc_85EEC
85EB4:  LDR             R1, [R0]
85EB6:  STR             R1, [SP,#0x60+var_5C]
85EB8:  LDR             R1, [R0,#0x24]
85EBA:  LDR.W           LR, [R0,#8]
85EBE:  LDR.W           R9, [R0,#0x14]
85EC2:  LDR             R3, [R0,#0x20]
85EC4:  LDR.W           R12, [R0,#4]
85EC8:  LDR.W           R8, [R0,#0x10]
85ECC:  LDR             R2, [R0,#0x18]
85ECE:  LDR             R6, [R0,#0x28]
85ED0:  LDR             R5, [R0,#0x30]
85ED2:  STRD.W          R3, R1, [SP,#0x60+var_3C]
85ED6:  LDR             R1, [R0,#0x34]
85ED8:  LDR             R0, [R0,#0x38]
85EDA:  STR             R5, [SP,#0x60+var_2C]
85EDC:  STR             R6, [SP,#0x60+var_34]
85EDE:  STR             R2, [SP,#0x60+var_44]
85EE0:  STRD.W          R8, R9, [SP,#0x60+var_4C]
85EE4:  STRD.W          R12, LR, [SP,#0x60+var_58]
85EE8:  STR             R1, [SP,#0x60+var_28]
85EEA:  STR             R0, [SP,#0x60+var_24]
85EEC:  MOV             R0, R4
85EEE:  BL              sub_85328
85EF2:  LDRD.W          R5, R6, [R0]
85EF6:  CMP             R5, R6
85EF8:  BEQ             loc_85E56
85EFA:  ADD             R0, SP, #0x60+var_5C
85EFC:  ADD.W           R8, R0, #0x30 ; '0'
85F00:  LDR             R0, =(off_114D50 - 0x85F06)
85F02:  ADD             R0, PC; off_114D50
85F04:  LDR.W           R9, [R0]; off_1ABF60
85F08:  B               loc_85F10
85F0A:  ADDS            R5, #4
85F0C:  CMP             R5, R6
85F0E:  BEQ             loc_85E56
85F10:  LDR             R0, [R5]
85F12:  BL              sub_7DB4C
85F16:  CMP             R0, #0
85F18:  BEQ             loc_85F0A
85F1A:  LDR             R0, [R5]
85F1C:  LDR.W           R4, [R9]
85F20:  BL              sub_7DB44
85F24:  MOV             R1, R8
85F26:  MOVS            R2, #0
85F28:  MOVS            R3, #0
85F2A:  BLX             R4
85F2C:  B               loc_85F0A
