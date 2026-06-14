; =========================================================
; Game Engine Function: sub_7CE44
; Address            : 0x7CE44 - 0x7CF36
; =========================================================

7CE44:  PUSH            {R4-R7,LR}
7CE46:  ADD             R7, SP, #0xC
7CE48:  PUSH.W          {R11}
7CE4C:  SUB             SP, SP, #0x30
7CE4E:  MOV             R5, R0
7CE50:  LDR             R0, =(off_114C34 - 0x7CE58)
7CE52:  MOV             R4, R1
7CE54:  ADD             R0, PC; off_114C34
7CE56:  LDR             R0, [R0]; byte_1A44C8
7CE58:  LDRB            R0, [R0]
7CE5A:  LDR             R1, =(__stack_chk_guard_ptr - 0x7CE62)
7CE5C:  CMP             R0, #0
7CE5E:  ADD             R1, PC; __stack_chk_guard_ptr
7CE60:  LDR             R1, [R1]; __stack_chk_guard
7CE62:  LDR             R1, [R1]
7CE64:  STR             R1, [SP,#0x40+var_14]
7CE66:  BEQ             loc_7CF1C
7CE68:  VLDR            S0, [R5,#0x14]
7CE6C:  MOV.W           R1, #0x3F800000
7CE70:  VLDR            S4, [R5,#0x2C]
7CE74:  MOVS            R2, #1
7CE76:  VLDR            S2, [R5,#0x18]
7CE7A:  ADD             R6, SP, #0x40+var_38
7CE7C:  VLDR            S6, [R5,#0x30]
7CE80:  VADD.F32        S0, S4, S0
7CE84:  LDRB.W          R0, [R5,#0x34]
7CE88:  ADD.W           R3, R5, #0x80
7CE8C:  VADD.F32        S2, S6, S2
7CE90:  STRD.W          R2, R1, [SP,#0x40+var_40]; int
7CE94:  ADD.W           R1, R5, #0x2C ; ','; int
7CE98:  CMP             R0, #0
7CE9A:  MOV             R0, R4; int
7CE9C:  MOV             R2, R6; int
7CE9E:  VSTR            S0, [SP,#0x40+var_38]
7CEA2:  VSTR            S2, [SP,#0x40+var_34]
7CEA6:  IT EQ
7CEA8:  ADDEQ.W         R3, R5, #0x70 ; 'p'; int
7CEAC:  BL              sub_7157C
7CEB0:  LDR             R0, =(off_114C1C - 0x7CEBE)
7CEB2:  ADD             R1, SP, #0x40+var_1C; int
7CEB4:  VLDR            S2, [R5,#0x2C]
7CEB8:  ADD             R2, SP, #0x40+var_24; int
7CEBA:  ADD             R0, PC; off_114C1C
7CEBC:  VLDR            S4, [R5,#0x30]
7CEC0:  MOV             R3, R6; int
7CEC2:  LDR             R0, [R0]; dword_116D5C
7CEC4:  VLDR            S0, [R0]
7CEC8:  VADD.F32        S6, S0, S4
7CECC:  VADD.F32        S8, S0, S2
7CED0:  VSTR            S6, [SP,#0x40+var_18]
7CED4:  VSTR            S8, [SP,#0x40+var_1C]
7CED8:  VLDR            S6, [R5,#0x14]
7CEDC:  VLDR            S8, [R5,#0x18]
7CEE0:  VADD.F32        S2, S2, S6
7CEE4:  LDR             R0, =(off_114B98 - 0x7CEF2)
7CEE6:  VADD.F32        S4, S4, S8
7CEEA:  VSTR            S0, [SP,#0x40+var_3C]
7CEEE:  ADD             R0, PC; off_114B98
7CEF0:  LDR             R0, [R0]; unk_1A3A88
7CEF2:  VLD1.32         {D16-D17}, [R0]
7CEF6:  MOVS            R0, #0
7CEF8:  VSUB.F32        S2, S2, S0
7CEFC:  VSUB.F32        S4, S4, S0
7CF00:  STR             R0, [SP,#0x40+var_40]; int
7CF02:  MOV             R0, R4; int
7CF04:  VST1.64         {D16-D17}, [R6]
7CF08:  VSTR            S2, [SP,#0x40+var_24]
7CF0C:  VSTR            S4, [SP,#0x40+var_20]
7CF10:  BL              sub_7157C
7CF14:  MOV             R0, R5
7CF16:  MOV             R1, R4
7CF18:  BL              sub_7C960
7CF1C:  LDR             R0, [SP,#0x40+var_14]
7CF1E:  LDR             R1, =(__stack_chk_guard_ptr - 0x7CF24)
7CF20:  ADD             R1, PC; __stack_chk_guard_ptr
7CF22:  LDR             R1, [R1]; __stack_chk_guard
7CF24:  LDR             R1, [R1]
7CF26:  CMP             R1, R0
7CF28:  ITTT EQ
7CF2A:  ADDEQ           SP, SP, #0x30 ; '0'
7CF2C:  POPEQ.W         {R11}
7CF30:  POPEQ           {R4-R7,PC}
7CF32:  BLX             __stack_chk_fail
