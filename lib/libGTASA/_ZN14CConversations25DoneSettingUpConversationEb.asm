; =========================================================
; Game Engine Function: _ZN14CConversations25DoneSettingUpConversationEb
; Address            : 0x300E10 - 0x3010C2
; =========================================================

300E10:  PUSH            {R4-R7,LR}
300E12:  ADD             R7, SP, #0xC
300E14:  PUSH.W          {R8-R11}
300E18:  SUB             SP, SP, #0xC
300E1A:  STR             R0, [SP,#0x28+var_28]
300E1C:  MOV.W           R1, #0xFFFFFFFF
300E20:  LDR             R0, =(_ZN14CConversations31m_SettingUpConversationNumNodesE_ptr - 0x300E26)
300E22:  ADD             R0, PC; _ZN14CConversations31m_SettingUpConversationNumNodesE_ptr
300E24:  LDR             R0, [R0]; CConversations::m_SettingUpConversationNumNodes ...
300E26:  LDR.W           R10, [R0]; CConversations::m_SettingUpConversationNumNodes
300E2A:  CMP.W           R10, #1
300E2E:  BLT             loc_300E92
300E30:  LDR             R0, =(_ZN14CConversations12m_aTempNodesE_ptr - 0x300E38)
300E32:  MOVS            R2, #0
300E34:  ADD             R0, PC; _ZN14CConversations12m_aTempNodesE_ptr
300E36:  LDR             R0, [R0]; CConversations::m_aTempNodes ...
300E38:  STR             R0, [SP,#0x28+var_24]
300E3A:  MOVS            R0, #0x2C ; ','
300E3C:  LDR             R4, [SP,#0x28+var_24]
300E3E:  MLA.W           R11, R2, R0, R4
300E42:  MOV.W           R8, #0
300E46:  STR             R2, [SP,#0x28+var_20]
300E48:  STRH.W          R1, [R11,#0x1E]!
300E4C:  SUB.W           R5, R11, #0xE
300E50:  SUB.W           R6, R11, #0x16
300E54:  MOV             R9, R11
300E56:  STRH.W          R1, [R9,#-2]!
300E5A:  MOV             R0, R6; char *
300E5C:  MOV             R1, R4; char *
300E5E:  BLX             strcmp
300E62:  CMP             R0, #0
300E64:  MOV             R0, R5; char *
300E66:  MOV             R1, R4; char *
300E68:  IT EQ
300E6A:  STRHEQ.W        R8, [R9]
300E6E:  BLX             strcmp
300E72:  CMP             R0, #0
300E74:  ADD.W           R4, R4, #0x2C ; ','
300E78:  IT EQ
300E7A:  STRHEQ.W        R8, [R11]
300E7E:  ADD.W           R8, R8, #1
300E82:  CMP             R8, R10
300E84:  BLT             loc_300E5A
300E86:  LDR             R2, [SP,#0x28+var_20]
300E88:  MOV.W           R1, #0xFFFFFFFF
300E8C:  ADDS            R2, #1
300E8E:  CMP             R2, R10
300E90:  BLT             loc_300E3A
300E92:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300E98)
300E94:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300E96:  LDR             R0, [R0]; CConversations::m_aConversations ...
300E98:  LDR             R0, [R0,#(dword_7A0F88 - 0x7A0F80)]
300E9A:  CMP             R0, #0
300E9C:  BEQ             loc_300F3E
300E9E:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300EA4)
300EA0:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300EA2:  LDR             R0, [R0]; CConversations::m_aConversations ...
300EA4:  LDR             R0, [R0,#(dword_7A0FA4 - 0x7A0F80)]
300EA6:  CMP             R0, #0
300EA8:  BEQ             loc_300F42
300EAA:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300EB0)
300EAC:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300EAE:  LDR             R0, [R0]; CConversations::m_aConversations ...
300EB0:  LDR             R0, [R0,#(dword_7A0FC0 - 0x7A0F80)]
300EB2:  CMP             R0, #0
300EB4:  BEQ             loc_300F46
300EB6:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300EBC)
300EB8:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300EBA:  LDR             R0, [R0]; CConversations::m_aConversations ...
300EBC:  LDR             R0, [R0,#(dword_7A0FDC - 0x7A0F80)]
300EBE:  CMP             R0, #0
300EC0:  BEQ             loc_300F4A
300EC2:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300EC8)
300EC4:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300EC6:  LDR             R0, [R0]; CConversations::m_aConversations ...
300EC8:  LDR             R0, [R0,#(dword_7A0FF8 - 0x7A0F80)]
300ECA:  CMP             R0, #0
300ECC:  BEQ             loc_300F4E
300ECE:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300ED4)
300ED0:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300ED2:  LDR             R0, [R0]; CConversations::m_aConversations ...
300ED4:  LDR.W           R0, [R0,#(dword_7A1014 - 0x7A0F80)]
300ED8:  CBZ             R0, loc_300F52
300EDA:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300EE0)
300EDC:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300EDE:  LDR             R0, [R0]; CConversations::m_aConversations ...
300EE0:  LDR.W           R0, [R0,#(dword_7A1030 - 0x7A0F80)]
300EE4:  CBZ             R0, loc_300F56
300EE6:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300EEC)
300EE8:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300EEA:  LDR             R0, [R0]; CConversations::m_aConversations ...
300EEC:  LDR.W           R0, [R0,#(dword_7A104C - 0x7A0F80)]
300EF0:  CBZ             R0, loc_300F5A
300EF2:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300EF8)
300EF4:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300EF6:  LDR             R0, [R0]; CConversations::m_aConversations ...
300EF8:  LDR.W           R0, [R0,#(dword_7A1068 - 0x7A0F80)]
300EFC:  CBZ             R0, loc_300F5E
300EFE:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300F04)
300F00:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300F02:  LDR             R0, [R0]; CConversations::m_aConversations ...
300F04:  LDR.W           R0, [R0,#(dword_7A1084 - 0x7A0F80)]
300F08:  CBZ             R0, loc_300F62
300F0A:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300F10)
300F0C:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300F0E:  LDR             R0, [R0]; CConversations::m_aConversations ...
300F10:  LDR.W           R0, [R0,#(dword_7A10A0 - 0x7A0F80)]
300F14:  CBZ             R0, loc_300F66
300F16:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300F1C)
300F18:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300F1A:  LDR             R0, [R0]; CConversations::m_aConversations ...
300F1C:  LDR.W           R0, [R0,#(dword_7A10BC - 0x7A0F80)]
300F20:  CBZ             R0, loc_300F6A
300F22:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300F28)
300F24:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300F26:  LDR             R0, [R0]; CConversations::m_aConversations ...
300F28:  LDR.W           R0, [R0,#(dword_7A10D8 - 0x7A0F80)]
300F2C:  CBZ             R0, loc_300F6E
300F2E:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300F34)
300F30:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
300F32:  LDR             R0, [R0]; CConversations::m_aConversations ...
300F34:  LDR.W           R0, [R0,#(dword_7A10F4 - 0x7A0F80)]
300F38:  CBZ             R0, loc_300F72
300F3A:  MOVS            R0, #0
300F3C:  B               loc_300F82
300F3E:  MOVS            R0, #0
300F40:  B               loc_300F74
300F42:  MOVS            R0, #1
300F44:  B               loc_300F74
300F46:  MOVS            R0, #2
300F48:  B               loc_300F74
300F4A:  MOVS            R0, #3
300F4C:  B               loc_300F74
300F4E:  MOVS            R0, #4
300F50:  B               loc_300F74
300F52:  MOVS            R0, #5
300F54:  B               loc_300F74
300F56:  MOVS            R0, #6
300F58:  B               loc_300F74
300F5A:  MOVS            R0, #7
300F5C:  B               loc_300F74
300F5E:  MOVS            R0, #8
300F60:  B               loc_300F74
300F62:  MOVS            R0, #9
300F64:  B               loc_300F74
300F66:  MOVS            R0, #0xA
300F68:  B               loc_300F74
300F6A:  MOVS            R0, #0xB
300F6C:  B               loc_300F74
300F6E:  MOVS            R0, #0xC
300F70:  B               loc_300F74
300F72:  MOVS            R0, #0xD
300F74:  LDR             R1, =(_ZN14CConversations16m_aConversationsE_ptr - 0x300F7E)
300F76:  RSB.W           R0, R0, R0,LSL#3
300F7A:  ADD             R1, PC; _ZN14CConversations16m_aConversationsE_ptr
300F7C:  LDR             R1, [R1]; CConversations::m_aConversations ...
300F7E:  ADD.W           R0, R1, R0,LSL#2
300F82:  CMP.W           R10, #1
300F86:  STR             R0, [SP,#0x28+var_24]
300F88:  BLT             loc_301070
300F8A:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x300F98)
300F8C:  MOVS            R0, #0
300F8E:  LDR             R6, =(_ZN14CConversations12m_aTempNodesE_ptr - 0x300F9C)
300F90:  MOV.W           R12, #0x58 ; 'X'
300F94:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
300F96:  MOVS            R3, #0x2C ; ','
300F98:  ADD             R6, PC; _ZN14CConversations12m_aTempNodesE_ptr
300F9A:  LDR             R1, [R1]; CConversations::m_aNodes ...
300F9C:  LDR             R6, [R6]; CConversations::m_aTempNodes ...
300F9E:  ADDS            R4, R1, #1
300FA0:  MOVS            R5, #0
300FA2:  LDRB.W          R2, [R4,#-1]; CConversations::m_aNodes
300FA6:  CBZ             R2, loc_300FB6
300FA8:  ADDS            R2, R5, #1
300FAA:  ADDS            R4, #0x18
300FAC:  CMP             R5, #0x31 ; '1'
300FAE:  MOV             R5, R2
300FB0:  BLT             loc_300FA2
300FB2:  MOVS            R5, #0
300FB4:  B               loc_300FBA
300FB6:  STRH.W          R12, [R4,#-1]; CConversations::m_aNodes
300FBA:  MLA.W           R2, R0, R3, R6
300FBE:  ADDS            R0, #1
300FC0:  CMP             R0, R10
300FC2:  STR             R5, [R2,#0x18]
300FC4:  BLT             loc_300F9E
300FC6:  CMP.W           R10, #1
300FCA:  BLT             loc_301070
300FCC:  LDR             R0, =(_ZN14CConversations12m_aTempNodesE_ptr - 0x300FD6)
300FCE:  MOVS            R6, #0
300FD0:  LDR             R1, =(_ZN14CConversations31m_SettingUpConversationNumNodesE_ptr - 0x300FD8)
300FD2:  ADD             R0, PC; _ZN14CConversations12m_aTempNodesE_ptr
300FD4:  ADD             R1, PC; _ZN14CConversations31m_SettingUpConversationNumNodesE_ptr
300FD6:  LDR             R0, [R0]; CConversations::m_aTempNodes ...
300FD8:  LDR.W           R8, [R1]; CConversations::m_SettingUpConversationNumNodes ...
300FDC:  ADD.W           R5, R0, #0x18
300FE0:  LDR             R0, =(_ZN14CConversations8m_aNodesE_ptr - 0x300FE6)
300FE2:  ADD             R0, PC; _ZN14CConversations8m_aNodesE_ptr
300FE4:  LDR             R4, [R0]; CConversations::m_aNodes ...
300FE6:  LDR             R0, =(_ZN14CConversations12m_aTempNodesE_ptr - 0x300FEC)
300FE8:  ADD             R0, PC; _ZN14CConversations12m_aTempNodesE_ptr
300FEA:  LDR             R0, [R0]; CConversations::m_aTempNodes ...
300FEC:  STR             R0, [SP,#0x28+var_20]
300FEE:  LDR             R0, =(_ZN14CConversations8m_aNodesE_ptr - 0x300FF4)
300FF0:  ADD             R0, PC; _ZN14CConversations8m_aNodesE_ptr
300FF2:  LDR.W           R11, [R0]; CConversations::m_aNodes ...
300FF6:  LDR             R0, =(_ZN14CConversations12m_aTempNodesE_ptr - 0x300FFC)
300FF8:  ADD             R0, PC; _ZN14CConversations12m_aTempNodesE_ptr
300FFA:  LDR.W           R9, [R0]; CConversations::m_aTempNodes ...
300FFE:  LDR             R0, =(_ZN14CConversations8m_aNodesE_ptr - 0x301004)
301000:  ADD             R0, PC; _ZN14CConversations8m_aNodesE_ptr
301002:  LDR.W           R10, [R0]; CConversations::m_aNodes ...
301006:  LDR             R0, [R5]
301008:  SUB.W           R1, R5, #0x18; char *
30100C:  ADD.W           R0, R0, R0,LSL#1
301010:  ADD.W           R0, R4, R0,LSL#3; char *
301014:  BLX             strcpy
301018:  LDRSH.W         R0, [R5,#4]
30101C:  MOV.W           R3, #0xFFFFFFFF
301020:  MOV.W           R1, #0xFFFFFFFF
301024:  ADDS            R6, #1
301026:  CMP             R0, R3
301028:  ITTTT GT
30102A:  MOVGT           R1, #0x2C ; ','
30102C:  LDRGT           R2, [SP,#0x28+var_20]
30102E:  SMLABBGT.W      R0, R0, R1, R2
301032:  LDRGT           R1, [R0,#0x18]
301034:  LDR             R0, [R5]
301036:  ADD.W           R0, R0, R0,LSL#1
30103A:  ADD.W           R2, R11, R0,LSL#3
30103E:  ADD.W           R0, R10, R0,LSL#3
301042:  STRH            R1, [R2,#8]
301044:  MOV.W           R1, #0xFFFFFFFF
301048:  LDRSH.W         R2, [R5,#6]
30104C:  CMP             R2, R3
30104E:  ITTT GT
301050:  MOVGT           R1, #0x2C ; ','
301052:  SMLABBGT.W      R1, R2, R1, R9
301056:  LDRGT           R1, [R1,#0x18]
301058:  STRH            R1, [R0,#0xA]
30105A:  LDR             R1, [R5,#8]
30105C:  STR             R1, [R0,#0xC]
30105E:  LDR             R1, [R5,#0xC]
301060:  STR             R1, [R0,#0x10]
301062:  LDR             R1, [R5,#0x10]
301064:  ADDS            R5, #0x2C ; ','
301066:  STR             R1, [R0,#0x14]
301068:  LDR.W           R0, [R8]; CConversations::m_SettingUpConversationNumNodes
30106C:  CMP             R6, R0
30106E:  BLT             loc_301006
301070:  LDR             R0, =(_ZN14CConversations12m_aTempNodesE_ptr - 0x301078)
301072:  LDR             R1, =(_ZN14CConversations27m_pSettingUpConversationPedE_ptr - 0x30107A)
301074:  ADD             R0, PC; _ZN14CConversations12m_aTempNodesE_ptr
301076:  ADD             R1, PC; _ZN14CConversations27m_pSettingUpConversationPedE_ptr
301078:  LDR             R0, [R0]; CConversations::m_aTempNodes ...
30107A:  LDR             R1, [R1]; CConversations::m_pSettingUpConversationPed ...
30107C:  LDR             R2, [R0,#(dword_7A0D88 - 0x7A0D70)]
30107E:  LDR             R0, [R1]; this
301080:  LDR             R1, [SP,#0x28+var_24]
301082:  MOV             R4, R1
301084:  ADD.W           R1, R4, #8; CEntity **
301088:  STRD.W          R2, R2, [R4]
30108C:  STR             R0, [R4,#8]
30108E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
301092:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x30109E)
301094:  MOVS            R6, #1
301096:  LDR             R1, =(_ZN14CConversations31m_SettingUpConversationNumNodesE_ptr - 0x3010A2)
301098:  MOVS            R3, #0
30109A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30109C:  LDR             R2, =(_ZN14CConversations24m_bSettingUpConversationE_ptr - 0x3010A4)
30109E:  ADD             R1, PC; _ZN14CConversations31m_SettingUpConversationNumNodesE_ptr
3010A0:  ADD             R2, PC; _ZN14CConversations24m_bSettingUpConversationE_ptr
3010A2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3010A4:  LDR             R1, [R1]; CConversations::m_SettingUpConversationNumNodes ...
3010A6:  LDR             R2, [R2]; CConversations::m_bSettingUpConversation ...
3010A8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3010AA:  STRB            R6, [R4,#0x18]
3010AC:  LDR             R6, [SP,#0x28+var_28]
3010AE:  STRB            R6, [R4,#0x19]
3010B0:  STRD.W          R0, R3, [R4,#0xC]
3010B4:  STR             R3, [R4,#0x14]
3010B6:  STRB            R3, [R2]; CConversations::m_bSettingUpConversation
3010B8:  STR             R3, [R1]; CConversations::m_SettingUpConversationNumNodes
3010BA:  ADD             SP, SP, #0xC
3010BC:  POP.W           {R8-R11}
3010C0:  POP             {R4-R7,PC}
