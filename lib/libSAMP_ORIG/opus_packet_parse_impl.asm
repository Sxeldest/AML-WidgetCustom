; =========================================================
; Game Engine Function: opus_packet_parse_impl
; Address            : 0xC4C2A - 0xC4F88
; =========================================================

C4C2A:  PUSH            {R4-R7,LR}
C4C2C:  ADD             R7, SP, #0xC
C4C2E:  PUSH.W          {R8-R11}
C4C32:  SUB             SP, SP, #0x14
C4C34:  MOV             R4, R1
C4C36:  MOV             R10, R2
C4C38:  MOV             R11, R0
C4C3A:  MOV.W           R1, #0xFFFFFFFF
C4C3E:  CMP             R4, #0
C4C40:  BLT.W           loc_C4F2A
C4C44:  LDR             R5, [R7,#arg_4]
C4C46:  CMP             R5, #0
C4C48:  BEQ.W           loc_C4F2A
C4C4C:  CMP             R4, #0
C4C4E:  BEQ.W           loc_C4F26
C4C52:  LDRB.W          LR, [R11]
C4C56:  TST.W           LR, #0x80
C4C5A:  BNE             loc_C4C82
C4C5C:  AND.W           R0, LR, #0x60 ; '`'
C4C60:  CMP             R0, #0x60 ; '`'
C4C62:  BNE             loc_C4C9E
C4C64:  MOVS.W          R0, LR,LSL#28
C4C68:  MOV.W           R1, #0x64 ; 'd'
C4C6C:  IT MI
C4C6E:  MOVMI           R1, #0x32 ; '2'
C4C70:  MOVW            R0, #0xBB80
C4C74:  MOV             R8, R3
C4C76:  MOV             R6, LR
C4C78:  BLX             sub_108874
C4C7C:  MOV             LR, R6
C4C7E:  MOV             R3, R8
C4C80:  B               loc_C4CC2
C4C82:  UBFX.W          R0, LR, #3, #2
C4C86:  MOVW            R1, #0xBB80
C4C8A:  LSL.W           R0, R1, R0
C4C8E:  MOV             R1, #0x51EB851F
C4C96:  UMULL.W         R0, R1, R0, R1
C4C9A:  LSRS            R0, R1, #7
C4C9C:  B               loc_C4CC2
C4C9E:  UBFX.W          R0, LR, #3, #2
C4CA2:  CMP             R0, #3
C4CA4:  BNE             loc_C4CAC
C4CA6:  MOV.W           R0, #0xB40
C4CAA:  B               loc_C4CC2
C4CAC:  MOVW            R1, #0xBB80
C4CB0:  LSL.W           R0, R1, R0
C4CB4:  MOV             R1, #0x51EB851F
C4CBC:  UMULL.W         R0, R1, R0, R1
C4CC0:  LSRS            R0, R1, #5
C4CC2:  ANDS.W          R1, LR, #3
C4CC6:  SUB.W           R2, R4, #1
C4CCA:  ADD.W           R8, R11, #1
C4CCE:  MOVW            R6, #0xFFFF
C4CD2:  BEQ             loc_C4CEE
C4CD4:  CMP             R1, #2
C4CD6:  BEQ             loc_C4D1A
C4CD8:  CMP             R1, #1
C4CDA:  BNE             loc_C4D2A
C4CDC:  CMP.W           R10, #0
C4CE0:  BEQ             loc_C4DB2
C4CE2:  MOVS            R4, #2
C4CE4:  MOVS            R1, #1
C4CE6:  MOV.W           R9, #0
C4CEA:  MOV             R0, R2
C4CEC:  B               loc_C4D00
C4CEE:  MOVS            R1, #0
C4CF0:  MOVS            R4, #1
C4CF2:  MOV             R0, R2
C4CF4:  MOV.W           R9, #0
C4CF8:  CMP.W           R10, #0
C4CFC:  BEQ.W           loc_C4F1E
C4D00:  STR             R0, [SP,#0x30+var_20]
C4D02:  MOV             R0, R1
C4D04:  ADD.W           R1, R5, R4,LSL#1
C4D08:  CMP             R2, #1
C4D0A:  BLT             loc_C4DA0
C4D0C:  LDRB.W          R6, [R8]
C4D10:  MOV             R12, R4
C4D12:  CMP             R6, #0xFB
C4D14:  BHI             loc_C4DA4
C4D16:  MOVS            R4, #1
C4D18:  B               loc_C4DDE
C4D1A:  CMP             R4, #2
C4D1C:  BLT             loc_C4DCC
C4D1E:  LDRB.W          R0, [R8]
C4D22:  CMP             R0, #0xFB
C4D24:  BHI             loc_C4DC8
C4D26:  MOVS            R1, #1
C4D28:  B               loc_C4E48
C4D2A:  CMP             R4, #2
C4D2C:  BLT.W           loc_C4F26
C4D30:  LDRB.W          R12, [R11,#1]
C4D34:  MOV             R1, #0xFFFFFFFC
C4D38:  ANDS.W          R6, R12, #0x3F ; '?'
C4D3C:  BEQ.W           loc_C4F2A
C4D40:  MULS            R0, R6
C4D42:  STR             R6, [SP,#0x30+var_20]
C4D44:  CMP.W           R0, #0x1680
C4D48:  BHI.W           loc_C4F2A
C4D4C:  ADD.W           R8, R11, #2
C4D50:  SUBS            R4, #2
C4D52:  MOV.W           R9, #0
C4D56:  MOVW            R6, #0xFFFF
C4D5A:  MOVS.W          R0, R12,LSL#25
C4D5E:  BPL             loc_C4D84
C4D60:  CMP             R4, #1
C4D62:  BLT.W           loc_C4F26
C4D66:  LDRB.W          R0, [R8],#1
C4D6A:  SUBS            R4, #1
C4D6C:  CMP             R0, #0xFF
C4D6E:  MOV             R1, R0
C4D70:  IT EQ
C4D72:  MOVEQ           R1, #0xFE
C4D74:  CMP             R0, #0xFF
C4D76:  ADD             R9, R1
C4D78:  SUB.W           R4, R4, R1
C4D7C:  BEQ             loc_C4D60
C4D7E:  CMP             R4, #0
C4D80:  BLT.W           loc_C4F26
C4D84:  MOVS            R0, #1
C4D86:  EOR.W           R1, R0, R12,LSR#7
C4D8A:  TST.W           R12, #0x80
C4D8E:  BNE             loc_C4E66
C4D90:  CMP.W           R10, #0
C4D94:  BEQ.W           loc_C4EDE
C4D98:  MOV             R0, R2
C4D9A:  MOV             R2, R4
C4D9C:  LDR             R4, [SP,#0x30+var_20]
C4D9E:  B               loc_C4D00
C4DA0:  MOV             R12, R4
C4DA2:  B               loc_C4DA8
C4DA4:  CMP             R2, #2
C4DA6:  BGE             loc_C4DD4
C4DA8:  MOV.W           R4, #0xFFFFFFFF
C4DAC:  MOVW            R6, #0xFFFF
C4DB0:  B               loc_C4DDE
C4DB2:  LSLS            R0, R2, #0x1F
C4DB4:  BNE.W           loc_C4F26
C4DB8:  ADD.W           R0, R2, R2,LSR#31
C4DBC:  MOVS            R4, #2
C4DBE:  MOV.W           R9, #0
C4DC2:  ASRS            R0, R0, #1
C4DC4:  STRH            R0, [R5]
C4DC6:  B               loc_C4F1E
C4DC8:  CMP             R4, #3
C4DCA:  BGE             loc_C4E3E
C4DCC:  STRH            R6, [R5]
C4DCE:  MOV             R1, #0xFFFFFFFC
C4DD2:  B               loc_C4F2A
C4DD4:  LDRB.W          R4, [R8,#1]
C4DD8:  ADD.W           R6, R6, R4,LSL#2
C4DDC:  MOVS            R4, #2
C4DDE:  STRH.W          R6, [R1,#-2]
C4DE2:  MOV             R10, R6
C4DE4:  SXTH            R6, R6
C4DE6:  CMP             R6, #0
C4DE8:  MOV             R1, #0xFFFFFFFC
C4DEC:  ITT GE
C4DEE:  SUBGE           R2, R2, R4
C4DF0:  CMPGE           R2, R6
C4DF2:  BLT.W           loc_C4F2A
C4DF6:  ADD             R8, R4
C4DF8:  CBZ             R0, loc_C4E32
C4DFA:  MOV             R4, R12
C4DFC:  SMULBB.W        R0, R4, R6
C4E00:  CMP             R0, R2
C4E02:  BGT.W           loc_C4F26
C4E06:  CMP             R4, #2
C4E08:  BLT.W           loc_C4F3C
C4E0C:  SUBS            R0, R4, #1
C4E0E:  STRH.W          R10, [R5]
C4E12:  CMP             R0, #1
C4E14:  BEQ.W           loc_C4F3C
C4E18:  ADDS            R1, R5, #2
C4E1A:  SUBS            R2, R4, #2
C4E1C:  MOV             R12, R4
C4E1E:  MOVS            R4, #0
C4E20:  LDRH.W          R6, [R5,R0,LSL#1]
C4E24:  STRH.W          R6, [R1,R4,LSL#1]
C4E28:  ADDS            R4, #1
C4E2A:  CMP             R2, R4
C4E2C:  BNE             loc_C4E20
C4E2E:  MOV             R4, R12
C4E30:  B               loc_C4F3C
C4E32:  LDR             R0, [SP,#0x30+var_20]
C4E34:  ADDS            R1, R4, R6
C4E36:  MOV             R4, R12
C4E38:  CMP             R1, R0
C4E3A:  BGT             loc_C4F26
C4E3C:  B               loc_C4F3C
C4E3E:  LDRB.W          R1, [R11,#2]
C4E42:  ADD.W           R0, R0, R1,LSL#2
C4E46:  MOVS            R1, #2
C4E48:  SUBS            R2, R2, R1
C4E4A:  STRH            R0, [R5]
C4E4C:  CMP             R2, R0
C4E4E:  BLT             loc_C4F26
C4E50:  ADD             R8, R1
C4E52:  SUBS            R0, R2, R0
C4E54:  MOVS            R1, #0
C4E56:  MOVS            R4, #2
C4E58:  MOV.W           R9, #0
C4E5C:  CMP.W           R10, #0
C4E60:  BNE.W           loc_C4D00
C4E64:  B               loc_C4F1E
C4E66:  STR             R1, [SP,#0x30+var_28]
C4E68:  LDR             R1, [SP,#0x30+var_20]
C4E6A:  CMP             R1, #2
C4E6C:  BCC             loc_C4ECC
C4E6E:  SUBS            R0, R1, #1
C4E70:  STR             R0, [SP,#0x30+var_24]
C4E72:  MOVS            R1, #0
C4E74:  MOV             R0, R4
C4E76:  MOV             R2, R4
C4E78:  CMP             R2, #1
C4E7A:  BLT             loc_C4F14
C4E7C:  LDRB.W          R4, [R8]
C4E80:  CMP             R4, #0xFB
C4E82:  BHI             loc_C4E8C
C4E84:  MOV             R12, LR
C4E86:  MOV.W           LR, #1
C4E8A:  B               loc_C4EA2
C4E8C:  CMP             R2, #2
C4E8E:  BLT             loc_C4F14
C4E90:  LDRB.W          R6, [R8,#1]
C4E94:  MOV             R12, LR
C4E96:  MOV.W           LR, #2
C4E9A:  ADD.W           R4, R4, R6,LSL#2
C4E9E:  MOVW            R6, #0xFFFF
C4EA2:  SUB.W           R2, R2, LR
C4EA6:  STRH.W          R4, [R5,R1,LSL#1]
C4EAA:  CMP             R2, R4
C4EAC:  BLT             loc_C4F26
C4EAE:  SUBS            R0, R0, R4
C4EB0:  LDR             R4, [SP,#0x30+var_24]
C4EB2:  ADDS            R1, #1
C4EB4:  ADD             R8, LR
C4EB6:  SUB.W           R0, R0, LR
C4EBA:  CMP             R1, R4
C4EBC:  MOV             LR, R12
C4EBE:  BLT             loc_C4E78
C4EC0:  LDR             R4, [SP,#0x30+var_20]
C4EC2:  CMP             R0, #0
C4EC4:  LDR             R1, [SP,#0x30+var_28]
C4EC6:  BGE.W           loc_C4CF8
C4ECA:  B               loc_C4F26
C4ECC:  MOV             R2, R4
C4ECE:  MOV             R0, R4
C4ED0:  MOV             R4, R1
C4ED2:  LDR             R1, [SP,#0x30+var_28]
C4ED4:  CMP.W           R10, #0
C4ED8:  BNE.W           loc_C4D00
C4EDC:  B               loc_C4F1E
C4EDE:  STR.W           LR, [SP,#0x30+var_24]
C4EE2:  MOV             R0, R4
C4EE4:  STRD.W          R3, R1, [SP,#0x30+var_2C]
C4EE8:  LDR             R6, [SP,#0x30+var_20]
C4EEA:  MOV             R1, R6
C4EEC:  BLX             sub_108848
C4EF0:  MUL.W           R1, R0, R6
C4EF4:  CMP             R1, R4
C4EF6:  BNE             loc_C4F26
C4EF8:  LDR.W           LR, [SP,#0x30+var_24]
C4EFC:  CMP             R6, #2
C4EFE:  BCC             loc_C4F1A
C4F00:  LDR             R3, [SP,#0x30+var_2C]
C4F02:  SUBS            R1, R6, #1
C4F04:  MOV             R2, R5
C4F06:  STRH.W          R0, [R2],#2
C4F0A:  SUBS            R1, #1
C4F0C:  BNE             loc_C4F06
C4F0E:  MOV             R2, R4
C4F10:  LDR             R4, [SP,#0x30+var_20]
C4F12:  B               loc_C4ED2
C4F14:  STRH.W          R6, [R5,R1,LSL#1]
C4F18:  B               loc_C4F26
C4F1A:  LDR             R3, [SP,#0x30+var_2C]
C4F1C:  MOV             R4, R6
C4F1E:  MOVW            R1, #0x4FB
C4F22:  CMP             R0, R1
C4F24:  BLE             loc_C4F34
C4F26:  MOV             R1, #0xFFFFFFFC
C4F2A:  MOV             R0, R1
C4F2C:  ADD             SP, SP, #0x14
C4F2E:  POP.W           {R8-R11}
C4F32:  POP             {R4-R7,PC}
C4F34:  ADD.W           R1, R5, R4,LSL#1
C4F38:  STRH.W          R0, [R1,#-2]
C4F3C:  LDR             R0, [R7,#arg_8]
C4F3E:  CMP             R0, #0
C4F40:  ITT NE
C4F42:  SUBNE.W         R1, R8, R11
C4F46:  STRNE           R1, [R0]
C4F48:  LDR             R0, [R7,#arg_C]
C4F4A:  CMP             R4, #1
C4F4C:  BLT             loc_C4F70
C4F4E:  LDR             R1, [R7,#arg_0]
C4F50:  CBZ             R1, loc_C4F64
C4F52:  MOV             R2, R4
C4F54:  STR.W           R8, [R1],#4
C4F58:  SUBS            R2, #1
C4F5A:  LDRSH.W         R6, [R5],#2
C4F5E:  ADD             R8, R6
C4F60:  BNE             loc_C4F54
C4F62:  B               loc_C4F70
C4F64:  MOV             R1, R4
C4F66:  LDRSH.W         R2, [R5],#2
C4F6A:  SUBS            R1, #1
C4F6C:  ADD             R8, R2
C4F6E:  BNE             loc_C4F66
C4F70:  CMP             R0, #0
C4F72:  ITTT NE
C4F74:  SUBNE.W         R1, R9, R11
C4F78:  ADDNE           R1, R8
C4F7A:  STRNE           R1, [R0]
C4F7C:  CMP             R3, #0
C4F7E:  MOV             R1, R4
C4F80:  IT NE
C4F82:  STRBNE.W        LR, [R3]
C4F86:  B               loc_C4F2A
