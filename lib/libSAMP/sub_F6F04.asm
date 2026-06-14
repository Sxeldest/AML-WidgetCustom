; =========================================================
; Game Engine Function: sub_F6F04
; Address            : 0xF6F04 - 0xF714C
; =========================================================

F6F04:  PUSH            {R4-R7,LR}
F6F06:  ADD             R7, SP, #0xC
F6F08:  PUSH.W          {R8-R11}
F6F0C:  SUB             SP, SP, #0x6C
F6F0E:  STR             R3, [SP,#0x88+var_60]
F6F10:  MOV             R4, R1
F6F12:  LDR             R1, =(dword_2402B4 - 0xF6F2A)
F6F14:  MOV             R6, R0
F6F16:  LDR             R3, =(unk_92D14 - 0xF6F2C)
F6F18:  MOV             R5, R2
F6F1A:  STR             R0, [SP,#0x88+var_28]
F6F1C:  ADD             R0, SP, #0x88+var_40
F6F1E:  STR             R2, [SP,#0x88+var_34]
F6F20:  ADD             R2, SP, #0x88+var_34
F6F22:  STRD.W          R2, R0, [SP,#0x88+var_88]
F6F26:  ADD             R1, PC; dword_2402B4
F6F28:  ADD             R3, PC; unk_92D14
F6F2A:  ADD             R0, SP, #0x88+var_5C
F6F2C:  MOV             R2, R5
F6F2E:  BL              sub_F7BFA
F6F32:  LDR             R0, [SP,#0x88+var_5C]
F6F34:  LDR             R0, [R0,#0x1C]
F6F36:  STR             R0, [SP,#0x88+var_64]
F6F38:  CMP             R0, #0
F6F3A:  BEQ.W           loc_F7144
F6F3E:  MOVS            R0, #0
F6F40:  STR             R0, [SP,#0x88+var_2C]
F6F42:  STRD.W          R0, R0, [SP,#0x88+var_34]
F6F46:  BL              sub_F61A4
F6F4A:  ADD             R2, SP, #0x88+var_34
F6F4C:  MOV             R1, R6
F6F4E:  BL              sub_15EAE0
F6F52:  LDRD.W          R2, R0, [SP,#0x88+var_34]
F6F56:  CMP             R2, R0
F6F58:  STR             R0, [SP,#0x88+var_78]
F6F5A:  BEQ.W           loc_F713A
F6F5E:  STR             R5, [SP,#0x88+var_80]
F6F60:  MOV.W           R9, #0
F6F64:  LDR             R0, =(off_23494C - 0xF6F6C)
F6F66:  LDR             R1, =(sub_F650E+1 - 0xF6F6E)
F6F68:  ADD             R0, PC; off_23494C
F6F6A:  ADD             R1, PC; sub_F650E
F6F6C:  STR             R1, [SP,#0x88+var_7C]
F6F6E:  LDR             R0, [R0]; dword_23DF24
F6F70:  STR             R0, [SP,#0x88+var_68]
F6F72:  LDR             R0, =(sub_F64E6+1 - 0xF6F78)
F6F74:  ADD             R0, PC; sub_F64E6
F6F76:  STR             R0, [SP,#0x88+var_70]
F6F78:  MOVS            R0, #0
F6F7A:  STR             R2, [SP,#0x88+var_74]
F6F7C:  STR             R0, [SP,#0x88+var_54]
F6F7E:  STRD.W          R0, R0, [SP,#0x88+var_5C]
F6F82:  LDR             R0, [SP,#0x88+var_68]
F6F84:  LDR             R1, [R0]
F6F86:  LDR             R0, [R2]
F6F88:  MOV             R2, #0x1D88D9
F6F90:  ADDS            R3, R1, R2
F6F92:  LDR             R1, [SP,#0x88+var_7C]
F6F94:  ADD             R2, SP, #0x88+var_5C
F6F96:  BLX             R3
F6F98:  LDRD.W          R8, R0, [SP,#0x88+var_5C]
F6F9C:  CMP             R8, R0
F6F9E:  STR             R0, [SP,#0x88+var_6C]
F6FA0:  BEQ             loc_F703E
F6FA2:  LDR.W           R0, [R8]
F6FA6:  MOVS            R1, #0
F6FA8:  STRD.W          R1, R1, [SP,#0x88+var_3C]
F6FAC:  STR             R1, [SP,#0x88+var_40]
F6FAE:  MOVW            R1, #:lower16:(loc_215FB0+1)
F6FB2:  LDR.W           R10, [R0,#0x18]
F6FB6:  MOVT            R1, #:upper16:(loc_215FB0+1)
F6FBA:  LDR             R0, [SP,#0x88+var_68]
F6FBC:  LDR             R0, [R0]
F6FBE:  ADDS            R3, R0, R1
F6FC0:  LDR             R1, [SP,#0x88+var_70]
F6FC2:  ADD             R2, SP, #0x88+var_40
F6FC4:  MOV             R0, R10
F6FC6:  BLX             R3
F6FC8:  LDRD.W          R11, R5, [SP,#0x88+var_40]
F6FCC:  CMP             R11, R5
F6FCE:  BEQ             loc_F7020
F6FD0:  LDR.W           R0, [R11]
F6FD4:  LDR             R0, [R0]
F6FD6:  CBZ             R0, loc_F7014
F6FD8:  LDRB            R2, [R4]
F6FDA:  LDR             R1, [R4,#8]
F6FDC:  LSLS            R2, R2, #0x1F
F6FDE:  IT EQ
F6FE0:  ADDEQ           R1, R4, #1
F6FE2:  ADDS            R0, #0x10
F6FE4:  BL              sub_F6920
F6FE8:  CBZ             R0, loc_F7014
F6FEA:  BL              sub_F61A4
F6FEE:  LDR.W           R2, [R11]
F6FF2:  LDR             R3, [SP,#0x88+var_64]
F6FF4:  MOV             R1, R6
F6FF6:  BL              sub_15E8B8
F6FFA:  BL              sub_F61A4
F6FFE:  LDR             R1, [SP,#0x88+var_60]
F7000:  LDR.W           R2, [R11]
F7004:  LDR             R1, [R1]
F7006:  STR             R1, [SP,#0x88+var_88]
F7008:  MOV             R1, R6
F700A:  MOV             R3, R10
F700C:  BL              sub_15E87C
F7010:  MOV.W           R9, #1
F7014:  ADD.W           R11, R11, #4
F7018:  CMP             R11, R5
F701A:  BNE             loc_F6FD0
F701C:  LDR.W           R11, [SP,#0x88+var_40]
F7020:  CMP.W           R11, #0
F7024:  ITTT NE
F7026:  STRNE.W         R11, [SP,#0x88+var_3C]
F702A:  MOVNE           R0, R11; void *
F702C:  BLXNE           j__ZdlPv; operator delete(void *)
F7030:  LDR             R0, [SP,#0x88+var_6C]
F7032:  ADD.W           R8, R8, #4
F7036:  CMP             R8, R0
F7038:  BNE             loc_F6FA2
F703A:  LDR.W           R8, [SP,#0x88+var_5C]
F703E:  CMP.W           R8, #0
F7042:  ITTT NE
F7044:  STRNE.W         R8, [SP,#0x88+var_58]
F7048:  MOVNE           R0, R8; void *
F704A:  BLXNE           j__ZdlPv; operator delete(void *)
F704E:  LDR             R2, [SP,#0x88+var_74]
F7050:  LDR             R0, [SP,#0x88+var_78]
F7052:  ADDS            R2, #4
F7054:  CMP             R2, R0
F7056:  BNE             loc_F6F78
F7058:  LDR             R5, [SP,#0x88+var_80]
F705A:  MOVS.W          R0, R9,LSL#31
F705E:  BEQ             loc_F713A
F7060:  ADD             R0, SP, #0x88+var_5C
F7062:  MOV             R1, R4
F7064:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
F7068:  ADDS            R0, #0xC
F706A:  MOV             R1, R5
F706C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
F7070:  LDR             R0, [SP,#0x88+var_60]
F7072:  ADD.W           R8, SP, #0x88+var_28
F7076:  LDR             R0, [R0]
F7078:  LDR             R1, =(dword_2402C0 - 0xF7080)
F707A:  LDR             R3, =(unk_92D14 - 0xF7084)
F707C:  ADD             R1, PC; dword_2402C0
F707E:  STR             R0, [SP,#0x88+var_44]
F7080:  ADD             R3, PC; unk_92D14
F7082:  STR.W           R8, [SP,#0x88+var_20]
F7086:  ADD.W           R9, SP, #0x88+var_24
F708A:  ADD             R0, SP, #0x88+var_40
F708C:  MOV             R2, R8
F708E:  ADD.W           R10, SP, #0x88+var_20
F7092:  STRD.W          R10, R9, [SP,#0x88+var_88]
F7096:  BL              sub_F7976
F709A:  LDR             R0, [SP,#0x88+var_40]
F709C:  LDR             R6, [R0,#0x14]
F709E:  LDR             R1, =(dword_2402C0 - 0xF70A6)
F70A0:  LDR             R3, =(unk_92D14 - 0xF70AC)
F70A2:  ADD             R1, PC; dword_2402C0
F70A4:  STR.W           R8, [SP,#0x88+var_20]
F70A8:  ADD             R3, PC; unk_92D14
F70AA:  ADD             R0, SP, #0x88+var_40
F70AC:  MOV             R2, R8
F70AE:  STRD.W          R10, R9, [SP,#0x88+var_88]
F70B2:  BL              sub_F7976
F70B6:  LDR             R0, [SP,#0x88+var_40]
F70B8:  LDR             R5, [R0,#0x18]
F70BA:  CMP             R6, R5
F70BC:  BEQ             loc_F70D4
F70BE:  ADD.W           R11, SP, #0x88+var_5C
F70C2:  MOV             R0, R6
F70C4:  MOV             R1, R11
F70C6:  BL              sub_F74D0
F70CA:  CBNZ            R0, loc_F70D4
F70CC:  ADDS            R6, #0x1C
F70CE:  CMP             R6, R5
F70D0:  BNE             loc_F70C2
F70D2:  MOV             R6, R5
F70D4:  LDR             R1, =(dword_2402C0 - 0xF70DC)
F70D6:  LDR             R3, =(unk_92D14 - 0xF70E2)
F70D8:  ADD             R1, PC; dword_2402C0
F70DA:  STR.W           R8, [SP,#0x88+var_20]
F70DE:  ADD             R3, PC; unk_92D14
F70E0:  ADD             R0, SP, #0x88+var_40
F70E2:  MOV             R2, R8
F70E4:  STRD.W          R10, R9, [SP,#0x88+var_88]
F70E8:  BL              sub_F7976
F70EC:  LDR             R0, [SP,#0x88+var_40]
F70EE:  LDR             R0, [R0,#0x18]
F70F0:  CMP             R6, R0
F70F2:  BNE             loc_F711E
F70F4:  LDR             R0, [SP,#0x88+var_28]
F70F6:  MOV             R1, R4
F70F8:  BL              sub_F6D68
F70FC:  LDR             R1, =(dword_2402C0 - 0xF7104)
F70FE:  LDR             R3, =(unk_92D14 - 0xF710A)
F7100:  ADD             R1, PC; dword_2402C0
F7102:  STR.W           R8, [SP,#0x88+var_20]
F7106:  ADD             R3, PC; unk_92D14
F7108:  ADD             R0, SP, #0x88+var_40
F710A:  MOV             R2, R8
F710C:  STRD.W          R10, R9, [SP,#0x88+var_88]
F7110:  BL              sub_F7976
F7114:  LDR             R0, [SP,#0x88+var_40]
F7116:  ADDS            R0, #0x14
F7118:  ADD             R1, SP, #0x88+var_5C
F711A:  BL              sub_F71C4
F711E:  LDRB.W          R0, [SP,#0x88+var_50]
F7122:  LSLS            R0, R0, #0x1F
F7124:  ITT NE
F7126:  LDRNE           R0, [SP,#0x88+var_48]; void *
F7128:  BLXNE           j__ZdlPv; operator delete(void *)
F712C:  LDRB.W          R0, [SP,#0x88+var_5C]
F7130:  LSLS            R0, R0, #0x1F
F7132:  ITT NE
F7134:  LDRNE           R0, [SP,#0x88+var_54]; void *
F7136:  BLXNE           j__ZdlPv; operator delete(void *)
F713A:  LDR             R0, [SP,#0x88+var_34]; void *
F713C:  CBZ             R0, loc_F7144
F713E:  STR             R0, [SP,#0x88+var_30]
F7140:  BLX             j__ZdlPv; operator delete(void *)
F7144:  ADD             SP, SP, #0x6C ; 'l'
F7146:  POP.W           {R8-R11}
F714A:  POP             {R4-R7,PC}
