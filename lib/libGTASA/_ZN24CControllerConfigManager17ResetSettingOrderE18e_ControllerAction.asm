; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction
; Address            : 0x3E9D28 - 0x3E9EE8
; =========================================================

3E9D28:  PUSH            {R4-R7,LR}
3E9D2A:  ADD             R7, SP, #0xC
3E9D2C:  PUSH.W          {R8-R11}
3E9D30:  SUB             SP, SP, #0x10
3E9D32:  ADD.W           R5, R0, R1,LSL#5
3E9D36:  MOVW            R0, #0x392C
3E9D3A:  ADD             R0, R5
3E9D3C:  STR             R0, [SP,#0x2C+var_28]
3E9D3E:  MOVW            R0, #0x3924
3E9D42:  MOVS            R4, #1
3E9D44:  ADD             R0, R5
3E9D46:  STR             R0, [SP,#0x2C+var_24]
3E9D48:  MOVW            R0, #0x391C
3E9D4C:  MOV.W           R9, #0
3E9D50:  ADD             R0, R5
3E9D52:  STR             R0, [SP,#0x2C+var_20]
3E9D54:  MOVW            R0, #0x3914
3E9D58:  ADDS            R2, R5, R0
3E9D5A:  STR             R2, [SP,#0x2C+var_2C]
3E9D5C:  LDR             R0, [R2]
3E9D5E:  CMP             R4, R0
3E9D60:  ITTT NE
3E9D62:  LDRNE           R1, [SP,#0x2C+var_20]
3E9D64:  LDRNE.W         R10, [R1]
3E9D68:  CMPNE           R4, R10
3E9D6A:  BEQ.W           loc_3E9ED8
3E9D6E:  LDR             R1, [SP,#0x2C+var_24]
3E9D70:  LDR.W           R11, [R1]
3E9D74:  CMP             R4, R11
3E9D76:  ITTT NE
3E9D78:  LDRNE           R1, [SP,#0x2C+var_28]
3E9D7A:  LDRNE.W         R8, [R1]
3E9D7E:  CMPNE           R4, R8
3E9D80:  BEQ.W           loc_3E9ED8
3E9D84:  CMP             R0, R4
3E9D86:  MOV.W           R3, #0
3E9D8A:  MOV             R2, R5
3E9D8C:  IT LE
3E9D8E:  MOVLE           R3, #1
3E9D90:  CMP             R0, #0
3E9D92:  MOV.W           R5, #0
3E9D96:  IT EQ
3E9D98:  MOVEQ           R5, #1
3E9D9A:  MOVS            R6, #0
3E9D9C:  ORRS.W          R12, R3, R5
3E9DA0:  MOV.W           R3, #0
3E9DA4:  MOV.W           R5, #0
3E9DA8:  MOV             R1, R10
3E9DAA:  IT EQ
3E9DAC:  MOVEQ           R9, R12
3E9DAE:  CMP             R10, R4
3E9DB0:  IT LE
3E9DB2:  MOVLE           R3, #1
3E9DB4:  CMP.W           R10, #0
3E9DB8:  IT EQ
3E9DBA:  MOVEQ           R5, #1
3E9DBC:  ORRS            R5, R3
3E9DBE:  MOV.W           R3, #1
3E9DC2:  IT NE
3E9DC4:  MOVNE           R3, R9
3E9DC6:  CMP             R10, R4
3E9DC8:  IT GT
3E9DCA:  MOVGT           R6, #1
3E9DCC:  CMP.W           R10, #0
3E9DD0:  IT NE
3E9DD2:  MOVNE           R1, #1
3E9DD4:  CMP             R0, R4
3E9DD6:  AND.W           R1, R1, R6
3E9DDA:  MOV.W           R6, #0
3E9DDE:  IT GT
3E9DE0:  MOVGT           R6, #1
3E9DE2:  CMP             R0, #0
3E9DE4:  IT NE
3E9DE6:  MOVNE           R0, #1
3E9DE8:  CMP             R5, #0
3E9DEA:  AND.W           R0, R0, R6
3E9DEE:  ORR.W           LR, R0, R1
3E9DF2:  BNE             loc_3E9E14
3E9DF4:  CMP.W           R12, #0
3E9DF8:  MOV             R5, R2
3E9DFA:  BNE             loc_3E9E16
3E9DFC:  ADD.W           R1, R5, R9,LSL#3
3E9E00:  MOVW            R2, #0x3914
3E9E04:  MOV             LR, R0
3E9E06:  LDR             R1, [R1,R2]
3E9E08:  CMP             R10, R1
3E9E0A:  IT LT
3E9E0C:  MOVLT.W         R9, #1
3E9E10:  MOV             R3, R9
3E9E12:  B               loc_3E9E16
3E9E14:  MOV             R5, R2
3E9E16:  CMP             R11, R4
3E9E18:  MOV.W           R0, #0
3E9E1C:  IT LE
3E9E1E:  MOVLE           R0, #1
3E9E20:  CMP.W           R11, #0
3E9E24:  MOV.W           R1, #0
3E9E28:  MOV.W           R6, #0
3E9E2C:  IT EQ
3E9E2E:  MOVEQ           R1, #1
3E9E30:  MOV             R2, R11
3E9E32:  ORRS            R0, R1
3E9E34:  MOV             R1, R3
3E9E36:  IT EQ
3E9E38:  MOVEQ           R1, #2
3E9E3A:  CMP             R11, R4
3E9E3C:  IT GT
3E9E3E:  MOVGT           R6, #1
3E9E40:  CMP.W           R11, #0
3E9E44:  IT NE
3E9E46:  MOVNE           R2, #1
3E9E48:  CMP             R0, #0
3E9E4A:  AND.W           R2, R2, R6
3E9E4E:  ORR.W           R12, LR, R2
3E9E52:  BNE             loc_3E9E6E
3E9E54:  CMP.W           LR, #0
3E9E58:  BEQ             loc_3E9E6E
3E9E5A:  ADD.W           R0, R5, R3,LSL#3
3E9E5E:  MOVW            R1, #0x3914
3E9E62:  MOV             R12, LR
3E9E64:  LDR             R0, [R0,R1]
3E9E66:  CMP             R11, R0
3E9E68:  IT LT
3E9E6A:  MOVLT           R3, #2
3E9E6C:  MOV             R1, R3
3E9E6E:  CMP             R8, R4
3E9E70:  MOV.W           R0, #0
3E9E74:  IT LE
3E9E76:  MOVLE           R0, #1
3E9E78:  CMP.W           R8, #0
3E9E7C:  MOV.W           R2, #0
3E9E80:  MOV             R9, R1
3E9E82:  IT EQ
3E9E84:  MOVEQ           R2, #1
3E9E86:  ORRS            R0, R2
3E9E88:  IT EQ
3E9E8A:  MOVEQ.W         R9, #3
3E9E8E:  BNE             loc_3E9EAE
3E9E90:  CMP.W           R12, #0
3E9E94:  BEQ             loc_3E9EAE
3E9E96:  ADD.W           R0, R5, R1,LSL#3
3E9E9A:  MOVW            R2, #0x3914
3E9E9E:  LDR             R0, [R0,R2]
3E9EA0:  CMP             R8, R0
3E9EA2:  IT LT
3E9EA4:  MOVLT           R1, #3
3E9EA6:  CMP.W           R12, #0
3E9EAA:  MOV             R9, R1
3E9EAC:  B               loc_3E9ECA
3E9EAE:  CMP             R8, R4
3E9EB0:  MOV.W           R0, #0
3E9EB4:  IT GT
3E9EB6:  MOVGT           R0, #1
3E9EB8:  CMP.W           R8, #0
3E9EBC:  IT NE
3E9EBE:  MOVNE.W         R8, #1
3E9EC2:  AND.W           R0, R0, R8
3E9EC6:  ORRS.W          R0, R0, R12
3E9ECA:  LDR             R2, [SP,#0x2C+var_2C]
3E9ECC:  ITTT NE
3E9ECE:  ADDNE.W         R0, R5, R9,LSL#3
3E9ED2:  MOVWNE          R1, #0x3914
3E9ED6:  STRNE           R4, [R0,R1]
3E9ED8:  ADDS            R4, #1
3E9EDA:  CMP             R4, #5
3E9EDC:  BNE.W           loc_3E9D5C
3E9EE0:  ADD             SP, SP, #0x10
3E9EE2:  POP.W           {R8-R11}
3E9EE6:  POP             {R4-R7,PC}
