; =========================================================
; Game Engine Function: sub_125DCC
; Address            : 0x125DCC - 0x125E9C
; =========================================================

125DCC:  PUSH            {R4-R7,LR}
125DCE:  ADD             R7, SP, #0xC
125DD0:  PUSH.W          {R8-R10}
125DD4:  ADDS            R5, R1, #1
125DD6:  MOV             R4, R0
125DD8:  MOVS            R0, #0
125DDA:  STRD.W          R0, R0, [R4]
125DDE:  STR             R0, [R4,#8]
125DE0:  B               loc_125DE4
125DE2:  ADDS            R5, #1
125DE4:  LDRB.W          R0, [R5,#-1]
125DE8:  CMP             R0, #9
125DEA:  IT NE
125DEC:  CMPNE           R0, #0x20 ; ' '
125DEE:  BEQ             loc_125DE2
125DF0:  LDR             R1, =(byte_8F794 - 0x125DFE)
125DF2:  MOV.W           R8, #1
125DF6:  MOVW            R9, #0x2401
125DFA:  ADD             R1, PC; byte_8F794
125DFC:  MOV             R10, R1
125DFE:  UXTB            R0, R0
125E00:  CMP             R0, #0xD
125E02:  BHI             loc_125E0E
125E04:  LSL.W           R0, R8, R0
125E08:  TST.W           R0, R9
125E0C:  BNE             loc_125E80
125E0E:  LDRD.W          R6, R0, [R4]
125E12:  CMP             R6, R0
125E14:  BNE             loc_125E34
125E16:  LDR             R0, [R4,#8]
125E18:  CMP             R6, R0
125E1A:  BCS             loc_125E2C
125E1C:  MOV             R0, R6; int
125E1E:  MOV             R1, R10; s
125E20:  BL              sub_DC6DC
125E24:  ADD.W           R0, R6, #0xC
125E28:  STR             R0, [R4,#4]
125E2A:  B               loc_125E34
125E2C:  MOV             R0, R4
125E2E:  MOV             R1, R10
125E30:  BL              sub_F4BBC
125E34:  LDRB.W          R1, [R5,#-1]
125E38:  CMP             R1, #0x20 ; ' '
125E3A:  IT NE
125E3C:  CMPNE           R1, #9
125E3E:  BNE             loc_125E68
125E40:  LDR             R6, [R4,#4]
125E42:  LDRB.W          R0, [R6,#-0xC]
125E46:  LDR.W           R1, [R6,#-8]
125E4A:  LSLS            R2, R0, #0x1F
125E4C:  IT EQ
125E4E:  LSREQ           R1, R0, #1
125E50:  CBZ             R1, loc_125E7A
125E52:  LDR             R0, [R4,#8]
125E54:  CMP             R6, R0
125E56:  BCS             loc_125E72
125E58:  MOV             R0, R6; int
125E5A:  MOV             R1, R10; s
125E5C:  BL              sub_DC6DC
125E60:  ADD.W           R0, R6, #0xC
125E64:  STR             R0, [R4,#4]
125E66:  B               loc_125E7A
125E68:  LDR             R0, [R4,#4]
125E6A:  SUBS            R0, #0xC
125E6C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
125E70:  B               loc_125E7A
125E72:  MOV             R0, R4
125E74:  MOV             R1, R10
125E76:  BL              sub_F4BBC
125E7A:  LDRB.W          R0, [R5],#1
125E7E:  B               loc_125DFE
125E80:  LDR             R1, [R4,#4]
125E82:  LDRB.W          R0, [R1,#-0xC]!
125E86:  LDR             R2, [R1,#4]
125E88:  LSLS            R3, R0, #0x1F
125E8A:  IT EQ
125E8C:  LSREQ           R2, R0, #1
125E8E:  CBNZ            R2, loc_125E96
125E90:  MOV             R0, R4
125E92:  BL              sub_125F2C
125E96:  POP.W           {R8-R10}
125E9A:  POP             {R4-R7,PC}
