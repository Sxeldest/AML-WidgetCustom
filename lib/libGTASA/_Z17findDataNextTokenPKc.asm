; =========================================================
; Game Engine Function: _Z17findDataNextTokenPKc
; Address            : 0x279E10 - 0x279EA8
; =========================================================

279E10:  PUSH            {R4-R7,LR}
279E12:  ADD             R7, SP, #0xC
279E14:  PUSH.W          {R8,R9,R11}
279E18:  LDR             R1, =(separators_ptr - 0x279E1E)
279E1A:  ADD             R1, PC; separators_ptr
279E1C:  LDR             R1, [R1]; " \t\n\r" ...
279E1E:  LDRB            R2, [R1]; " \t\n\r"
279E20:  LDRB            R3, [R1,#(separators+1 - 0x685618)]; "\t\n\r"
279E22:  LDRB            R5, [R1,#(separators+2 - 0x685618)]; "\n\r"
279E24:  LDRB.W          R9, [R1,#(separators+3 - 0x685618)]; "\r"
279E28:  LDRB.W          R12, [R1,#(byte_68561D - 0x685618)]
279E2C:  LDRB.W          LR, [R1,#(separators+4 - 0x685618)]; ""
279E30:  LDRB.W          R4, [R0],#1
279E34:  CMP             R2, R4
279E36:  BEQ             loc_279E30
279E38:  CMP             R3, R4
279E3A:  BEQ             loc_279E30
279E3C:  CMP             R5, R4
279E3E:  IT NE
279E40:  CMPNE           R9, R4
279E42:  BEQ             loc_279E30
279E44:  CMP             LR, R4
279E46:  IT NE
279E48:  CMPNE           R12, R4
279E4A:  BEQ             loc_279E30
279E4C:  SUBS            R1, R0, #1; char *
279E4E:  MOV.W           R8, #0
279E52:  CMP             R2, R4
279E54:  BEQ             loc_279E8E
279E56:  CMP             R3, R4
279E58:  BEQ             loc_279E8E
279E5A:  CMP             R5, R4
279E5C:  BEQ             loc_279E8E
279E5E:  CMP             R9, R4
279E60:  BEQ             loc_279E8E
279E62:  CMP             LR, R4
279E64:  BEQ             loc_279E8E
279E66:  CMP             R12, R4
279E68:  MOV.W           R4, #0
279E6C:  BEQ             loc_279E90
279E6E:  MOVS            R4, #0
279E70:  LDRB            R6, [R0,R4]
279E72:  ADDS            R4, #1
279E74:  CMP             R2, R6
279E76:  BEQ             loc_279E90
279E78:  CMP             R3, R6
279E7A:  IT NE
279E7C:  CMPNE           R5, R6
279E7E:  BEQ             loc_279E90
279E80:  CMP             R9, R6
279E82:  IT NE
279E84:  CMPNE           LR, R6
279E86:  BEQ             loc_279E90
279E88:  CMP             R12, R6
279E8A:  BNE             loc_279E70
279E8C:  B               loc_279E90
279E8E:  MOVS            R4, #0
279E90:  LDR             R5, =(byte_6DE0E0 - 0x279E98)
279E92:  MOV             R2, R4; size_t
279E94:  ADD             R5, PC; byte_6DE0E0
279E96:  MOV             R0, R5; char *
279E98:  BLX             strncpy
279E9C:  STRB.W          R8, [R5,R4]
279EA0:  MOV             R0, R5
279EA2:  POP.W           {R8,R9,R11}
279EA6:  POP             {R4-R7,PC}
