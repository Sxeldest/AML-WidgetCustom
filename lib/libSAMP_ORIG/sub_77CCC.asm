; =========================================================
; Game Engine Function: sub_77CCC
; Address            : 0x77CCC - 0x77D8A
; =========================================================

77CCC:  PUSH            {R4-R7,LR}
77CCE:  ADD             R7, SP, #0xC
77CD0:  PUSH.W          {R8-R11}
77CD4:  SUB             SP, SP, #4
77CD6:  MOV             R5, R0
77CD8:  LDR.W           R10, [R5,#4]!
77CDC:  CMP.W           R10, #0
77CE0:  BEQ             loc_77D74
77CE2:  STR             R1, [SP,#0x20+var_20]
77CE4:  ADDS            R5, R0, #4
77CE6:  LDRB            R1, [R2]
77CE8:  LDRD.W          R11, R9, [R2,#4]
77CEC:  ANDS.W          R3, R1, #1
77CF0:  ITT EQ
77CF2:  ADDEQ.W         R9, R2, #1
77CF6:  MOVEQ.W         R11, R1,LSR#1
77CFA:  B               loc_77D06
77CFC:  LDR.W           R0, [R10]
77D00:  CBZ             R0, loc_77D78
77D02:  MOV             R5, R10
77D04:  MOV             R10, R0
77D06:  MOV             R0, R10
77D08:  MOV             R4, R11
77D0A:  LDRB.W          R2, [R0,#0x10]!
77D0E:  LDR.W           R8, [R0,#4]
77D12:  ANDS.W          R1, R2, #1
77D16:  IT EQ
77D18:  MOVEQ.W         R8, R2,LSR#1
77D1C:  CMP             R8, R11
77D1E:  IT CC
77D20:  MOVCC           R4, R8
77D22:  CBZ             R4, loc_77D42
77D24:  LDR.W           R6, [R10,#0x18]
77D28:  CMP             R1, #0
77D2A:  IT EQ
77D2C:  ADDEQ           R6, R0, #1
77D2E:  MOV             R0, R9; s1
77D30:  MOV             R1, R6; s2
77D32:  MOV             R2, R4; n
77D34:  BLX             memcmp
77D38:  CBZ             R0, loc_77D48
77D3A:  CMP.W           R0, #0xFFFFFFFF
77D3E:  BLE             loc_77CFC
77D40:  B               loc_77D4C
77D42:  CMP             R11, R8
77D44:  BCC             loc_77CFC
77D46:  B               loc_77D60
77D48:  CMP             R11, R8
77D4A:  BCC             loc_77CFC
77D4C:  MOV             R0, R6; s1
77D4E:  MOV             R1, R9; s2
77D50:  MOV             R2, R4; n
77D52:  BLX             memcmp
77D56:  CBZ             R0, loc_77D60
77D58:  CMP.W           R0, #0xFFFFFFFF
77D5C:  BLE             loc_77D64
77D5E:  B               loc_77D70
77D60:  CMP             R8, R11
77D62:  BCS             loc_77D70
77D64:  MOV             R5, R10
77D66:  LDR.W           R0, [R5,#4]!
77D6A:  CBZ             R0, loc_77D70
77D6C:  MOV             R10, R5
77D6E:  B               loc_77D02
77D70:  LDR             R0, [SP,#0x20+var_20]
77D72:  B               loc_77D7C
77D74:  STR             R5, [R1]
77D76:  B               loc_77D80
77D78:  LDR             R0, [SP,#0x20+var_20]
77D7A:  MOV             R5, R10
77D7C:  STR.W           R10, [R0]
77D80:  MOV             R0, R5
77D82:  ADD             SP, SP, #4
77D84:  POP.W           {R8-R11}
77D88:  POP             {R4-R7,PC}
