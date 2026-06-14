; =========================================================
; Game Engine Function: sub_125B8C
; Address            : 0x125B8C - 0x125D0A
; =========================================================

125B8C:  PUSH            {R4-R7,LR}
125B8E:  ADD             R7, SP, #0xC
125B90:  PUSH.W          {R8-R11}
125B94:  SUB             SP, SP, #0x14
125B96:  MOV             R8, R0
125B98:  LDR             R0, =(dword_238E94 - 0x125BA0)
125B9A:  LDR             R1, =(dword_238E9C - 0x125BA2)
125B9C:  ADD             R0, PC; dword_238E94
125B9E:  ADD             R1, PC; dword_238E9C
125BA0:  STR             R1, [SP,#0x30+var_28]
125BA2:  LDR             R1, =(dword_238E90 - 0x125BAA)
125BA4:  LDR             R0, [R0]
125BA6:  ADD             R1, PC; dword_238E90
125BA8:  STR             R1, [SP,#0x30+var_20]
125BAA:  ADD.W           R2, R0, #0xA1
125BAE:  STR             R2, [SP,#0x30+var_2C]
125BB0:  LDR             R1, [R1]
125BB2:  ADD.W           R2, R0, #0xA2
125BB6:  STR             R2, [SP,#0x30+var_24]
125BB8:  CMP             R1, R8
125BBA:  BLE             loc_125C82
125BBC:  LDR             R1, [SP,#0x30+var_28]
125BBE:  MOV             R4, R8
125BC0:  LDR             R2, [SP,#0x30+var_2C]
125BC2:  LDR             R1, [R1]
125BC4:  ADD.W           R11, R2, R1
125BC8:  SUB.W           R1, R8, R1
125BCC:  SUB.W           R2, R8, R0
125BD0:  SUBS            R0, R1, R0
125BD2:  SUBS            R2, #0xA2
125BD4:  SUBS            R0, #0xA1
125BD6:  MOVS            R1, #0x58 ; 'X'
125BD8:  MUL.W           R5, R0, R1
125BDC:  RSB.W           R0, R2, R2,LSL#4
125BE0:  LSLS            R6, R0, #2
125BE2:  RSB.W           R0, R8, R8,LSL#3
125BE6:  MOV.W           R10, R0,LSL#5
125BEA:  LDR             R0, =(dword_263C44 - 0x125BF0)
125BEC:  ADD             R0, PC; dword_263C44
125BEE:  MOV             R9, R0
125BF0:  MOV             R0, R9
125BF2:  LDR.W           R0, [R9]
125BF6:  CBZ             R0, loc_125BFC
125BF8:  ADDS            R0, #0x14
125BFA:  B               loc_125C10
125BFC:  LDR             R1, =(aAxl - 0x125C08); "AXL" ...
125BFE:  MOVS            R0, #5; prio
125C00:  LDR             R2, =(aChandlinghookF - 0x125C0A); "CHandlingHook: fail to call %s. Custom "... ...
125C02:  LDR             R3, =(aStaticCharChan_2 - 0x125C0C); "static char *CHandlingHook::getVehicleS"... ...
125C04:  ADD             R1, PC; "AXL"
125C06:  ADD             R2, PC; "CHandlingHook: fail to call %s. Custom "...
125C08:  ADD             R3, PC; "static char *CHandlingHook::getVehicleS"...
125C0A:  BLX             __android_log_print
125C0E:  MOVS            R0, #0
125C10:  LDR.W           R1, [R0,R10]
125C14:  CBZ             R1, loc_125C1C
125C16:  ADDS            R1, #1
125C18:  STR.W           R1, [R0,R10]
125C1C:  CMP             R4, R8
125C1E:  ITT GE
125C20:  LDRGE           R0, [SP,#0x30+var_24]
125C22:  CMPGE           R4, R0
125C24:  BGE             loc_125C42
125C26:  CMP             R4, R8
125C28:  IT GE
125C2A:  CMPGE           R4, R11
125C2C:  BGE             loc_125C5C
125C2E:  LDR             R0, [SP,#0x30+var_20]
125C30:  ADDS            R5, #0x58 ; 'X'
125C32:  ADDS            R6, #0x3C ; '<'
125C34:  ADD.W           R10, R10, #0xE0
125C38:  ADDS            R4, #1
125C3A:  LDR             R0, [R0]
125C3C:  CMP             R4, R0
125C3E:  BLT             loc_125BF0
125C40:  B               loc_125C82
125C42:  LDR             R0, [SP,#0x30+var_28]
125C44:  LDR             R1, [SP,#0x30+var_2C]
125C46:  LDR             R0, [R0]
125C48:  ADD             R0, R1
125C4A:  CMP             R4, R0
125C4C:  BGE             loc_125C26
125C4E:  BL              sub_1259CC
125C52:  LDR             R1, [R0,R6]
125C54:  CMP             R1, #0
125C56:  BEQ             loc_125C2E
125C58:  ADD             R0, R6
125C5A:  B               loc_125C7C
125C5C:  LDR             R0, =(dword_238E98 - 0x125C62)
125C5E:  ADD             R0, PC; dword_238E98
125C60:  LDR             R0, [R0]
125C62:  ADD             R0, R11
125C64:  CMP             R4, R0
125C66:  BGE             loc_125C2E
125C68:  BL              sub_125974
125C6C:  LDR             R1, [R0,R5]
125C6E:  CMP             R1, #0
125C70:  BEQ             loc_125C2E
125C72:  SUB.W           R2, R4, R11
125C76:  MOVS            R3, #0x58 ; 'X'
125C78:  MLA.W           R0, R2, R3, R0
125C7C:  ADDS            R1, #1
125C7E:  STR             R1, [R0]
125C80:  B               loc_125C2E
125C82:  LDR             R0, =(off_23494C - 0x125C90)
125C84:  MOV             R1, #0xA987C8
125C8C:  ADD             R0, PC; off_23494C
125C8E:  LDR             R0, [R0]; dword_23DF24
125C90:  LDR             R0, [R0]
125C92:  LDR             R0, [R0,R1]
125C94:  CMP             R0, #5
125C96:  BLT             loc_125D02
125C98:  MOVW            R6, #:lower16:(elf_gnu_hash_chain+0x25EC)
125C9C:  MOVS            R4, #0
125C9E:  MOVT            R6, #:upper16:(elf_gnu_hash_chain+0x25EC)
125CA2:  BL              sub_163768
125CA6:  LDR             R5, [R0,R4]
125CA8:  CBZ             R5, loc_125CFC
125CAA:  MOV             R0, R5
125CAC:  BL              sub_163780
125CB0:  CBNZ            R0, loc_125CFC
125CB2:  LDR             R0, [R5]
125CB4:  LDR             R1, [R0,#0x14]
125CB6:  MOV             R0, R5
125CB8:  BLX             R1
125CBA:  CMP             R0, #6
125CBC:  BNE             loc_125CFC
125CBE:  MOV             R0, R5
125CC0:  BL              sub_16382A
125CC4:  LDR             R1, [SP,#0x30+var_24]
125CC6:  CMP             R1, R0
125CC8:  BGE             loc_125CE4
125CCA:  MOV             R0, R5
125CCC:  BL              sub_16382A
125CD0:  LDR             R1, [SP,#0x30+var_28]
125CD2:  LDR             R2, [SP,#0x30+var_2C]
125CD4:  LDR             R1, [R1]
125CD6:  ADD             R1, R2
125CD8:  CMP             R1, R0
125CDA:  BLT             loc_125CE4
125CDC:  MOV             R0, R5
125CDE:  MOVS            R1, #5
125CE0:  BL              sub_16383A
125CE4:  MOV             R0, R5
125CE6:  BL              sub_16382A
125CEA:  CMP             R0, R8
125CEC:  BLT             loc_125CFC
125CEE:  MOV             R0, R5
125CF0:  BL              sub_16382A
125CF4:  ADDS            R1, R0, #1
125CF6:  MOV             R0, R5
125CF8:  BL              sub_163830
125CFC:  ADDS            R4, #4
125CFE:  CMP             R4, R6
125D00:  BNE             loc_125CA2
125D02:  ADD             SP, SP, #0x14
125D04:  POP.W           {R8-R11}
125D08:  POP             {R4-R7,PC}
