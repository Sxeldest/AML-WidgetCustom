; =========================================================
; Game Engine Function: sub_E3DCE
; Address            : 0xE3DCE - 0xE3EB6
; =========================================================

E3DCE:  PUSH            {R4-R7,LR}
E3DD0:  ADD             R7, SP, #0xC
E3DD2:  PUSH.W          {R8-R11}
E3DD6:  SUB             SP, SP, #4
E3DD8:  MOV             R5, R0
E3DDA:  ADDS            R0, R1, #1
E3DDC:  BEQ             loc_E3DF0
E3DDE:  LDRD.W          R6, R0, [R5,#0x18]
E3DE2:  MOV             R11, R1
E3DE4:  LDRD.W          R9, R10, [R5,#8]
E3DE8:  CMP             R6, R0
E3DEA:  BEQ             loc_E3DF4
E3DEC:  LDR             R1, [R5,#0x2C]
E3DEE:  B               loc_E3E5A
E3DF0:  MOVS            R0, #0
E3DF2:  B               loc_E3E98
E3DF4:  LDRB.W          R0, [R5,#0x30]
E3DF8:  LSLS            R0, R0, #0x1B
E3DFA:  BMI             loc_E3E02
E3DFC:  MOV.W           R0, #0xFFFFFFFF
E3E00:  B               loc_E3E98
E3E02:  LDR             R0, [R5,#0x2C]
E3E04:  ADD.W           R8, R5, #0x20 ; ' '
E3E08:  LDR             R4, [R5,#0x14]
E3E0A:  STR             R0, [SP,#0x20+var_20]
E3E0C:  MOV             R0, R8
E3E0E:  MOVS            R1, #0
E3E10:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
E3E14:  LDR.W           R0, [R8]
E3E18:  LDRB.W          R2, [R8]
E3E1C:  BIC.W           R0, R0, #1
E3E20:  SUBS            R1, R0, #1
E3E22:  LSLS            R0, R2, #0x1F
E3E24:  IT EQ
E3E26:  MOVEQ           R1, #0xA
E3E28:  MOV             R0, R8
E3E2A:  MOVS            R2, #0
E3E2C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEjc; std::string::resize(uint,char)
E3E30:  LDR             R0, [SP,#0x20+var_20]
E3E32:  SUBS            R1, R6, R4
E3E34:  LDRB.W          R6, [R5,#0x20]
E3E38:  SUB.W           R12, R0, R4
E3E3C:  LDRD.W          R0, R3, [R5,#0x24]
E3E40:  ANDS.W          R2, R6, #1
E3E44:  ITT EQ
E3E46:  ADDEQ.W         R3, R8, #1
E3E4A:  LSREQ           R0, R6, #1
E3E4C:  ADDS            R6, R3, R1
E3E4E:  ADD             R0, R3
E3E50:  ADD.W           R1, R3, R12
E3E54:  STR             R0, [R5,#0x1C]
E3E56:  STRD.W          R3, R6, [R5,#0x14]
E3E5A:  LDRB.W          R3, [R5,#0x30]
E3E5E:  ADDS            R2, R6, #1
E3E60:  CMP             R2, R1
E3E62:  IT CS
E3E64:  MOVCS           R1, R2
E3E66:  STR             R1, [R5,#0x2C]
E3E68:  LSLS            R3, R3, #0x1C
E3E6A:  BPL             loc_E3E8A
E3E6C:  LDRB.W          LR, [R5,#0x20]
E3E70:  SUB.W           R12, R10, R9
E3E74:  LDR             R3, [R5,#0x28]
E3E76:  MOVS.W          R4, LR,LSL#31
E3E7A:  IT EQ
E3E7C:  ADDEQ.W         R3, R5, #0x21 ; '!'
E3E80:  ADD.W           R4, R3, R12
E3E84:  STR             R1, [R5,#0x10]
E3E86:  STRD.W          R3, R4, [R5,#8]
E3E8A:  CMP             R6, R0
E3E8C:  BEQ             loc_E3EA0
E3E8E:  UXTB.W          R0, R11
E3E92:  STR             R2, [R5,#0x18]
E3E94:  STRB.W          R11, [R6]
E3E98:  ADD             SP, SP, #4
E3E9A:  POP.W           {R8-R11}
E3E9E:  POP             {R4-R7,PC}
E3EA0:  LDR             R0, [R5]
E3EA2:  UXTB.W          R1, R11
E3EA6:  LDR             R2, [R0,#0x34]
E3EA8:  MOV             R0, R5
E3EAA:  ADD             SP, SP, #4
E3EAC:  POP.W           {R8-R11}
E3EB0:  POP.W           {R4-R7,LR}
E3EB4:  BX              R2
