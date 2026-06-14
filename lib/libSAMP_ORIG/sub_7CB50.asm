; =========================================================
; Game Engine Function: sub_7CB50
; Address            : 0x7CB50 - 0x7CC76
; =========================================================

7CB50:  PUSH            {R4-R7,LR}
7CB52:  ADD             R7, SP, #0xC
7CB54:  PUSH.W          {R8-R11}
7CB58:  SUB             SP, SP, #0x2C
7CB5A:  MOV             R5, R0
7CB5C:  LDR             R0, =(__stack_chk_guard_ptr - 0x7CB6A)
7CB5E:  ADD.W           R6, R5, #0x80
7CB62:  ADD.W           R4, R5, #0x2C ; ','
7CB66:  ADD             R0, PC; __stack_chk_guard_ptr
7CB68:  ADD             R2, SP, #0x48+var_40; int
7CB6A:  MOV             R9, R1
7CB6C:  MOV.W           R8, #0x3F800000
7CB70:  LDR             R0, [R0]; __stack_chk_guard
7CB72:  MOV.W           R10, #1
7CB76:  MOV             R3, R6
7CB78:  ADD.W           R11, R5, #0x70 ; 'p'
7CB7C:  LDR             R0, [R0]
7CB7E:  STR             R0, [SP,#0x48+var_20]
7CB80:  VLDR            S0, [R5,#0x14]
7CB84:  VLDR            S4, [R5,#0x2C]
7CB88:  VLDR            S2, [R5,#0x18]
7CB8C:  VLDR            S6, [R5,#0x30]
7CB90:  VADD.F32        S0, S4, S0
7CB94:  LDRB.W          R0, [R5,#0x34]
7CB98:  VADD.F32        S2, S6, S2
7CB9C:  STRD.W          R10, R8, [SP,#0x48+var_48]; int
7CBA0:  CMP             R0, #0
7CBA2:  MOV             R0, R1; int
7CBA4:  MOV             R1, R4; int
7CBA6:  VSTR            S0, [SP,#0x48+var_40]
7CBAA:  VSTR            S2, [SP,#0x48+var_3C]
7CBAE:  IT EQ
7CBB0:  MOVEQ           R3, R11; int
7CBB2:  BL              sub_7157C
7CBB6:  VLDR            S0, [R5,#0x14]
7CBBA:  MOV             R1, R4; int
7CBBC:  VLDR            S4, [R5,#0x2C]
7CBC0:  VLDR            S2, [R5,#0x18]
7CBC4:  VLDR            S6, [R5,#0x30]
7CBC8:  VADD.F32        S0, S4, S0
7CBCC:  LDRB.W          R0, [R5,#0x34]
7CBD0:  VADD.F32        S2, S6, S2
7CBD4:  STRD.W          R10, R8, [SP,#0x48+var_48]; int
7CBD8:  ADD.W           R8, SP, #0x48+var_40
7CBDC:  CMP             R0, #0
7CBDE:  MOV             R0, R9; int
7CBE0:  MOV             R2, R8; int
7CBE2:  VSTR            S0, [SP,#0x48+var_40]
7CBE6:  VSTR            S2, [SP,#0x48+var_3C]
7CBEA:  IT EQ
7CBEC:  MOVEQ           R6, R11
7CBEE:  MOV             R3, R6; int
7CBF0:  BL              sub_7157C
7CBF4:  LDR             R0, =(off_114C1C - 0x7CC02)
7CBF6:  ADD             R1, SP, #0x48+var_28; int
7CBF8:  VLDR            S2, [R5,#0x2C]
7CBFC:  ADD             R2, SP, #0x48+var_30; int
7CBFE:  ADD             R0, PC; off_114C1C
7CC00:  VLDR            S4, [R5,#0x30]
7CC04:  MOV             R3, R8; int
7CC06:  LDR             R0, [R0]; dword_116D5C
7CC08:  VLDR            S0, [R0]
7CC0C:  ADR             R0, dword_7CC80
7CC0E:  VLD1.64         {D16-D17}, [R0@128]
7CC12:  MOVS            R0, #0
7CC14:  VADD.F32        S6, S0, S4
7CC18:  VADD.F32        S8, S0, S2
7CC1C:  VST1.64         {D16-D17}, [R8]
7CC20:  VSTR            S6, [SP,#0x48+var_24]
7CC24:  VSTR            S8, [SP,#0x48+var_28]
7CC28:  VLDR            S6, [R5,#0x14]
7CC2C:  VLDR            S8, [R5,#0x18]
7CC30:  VADD.F32        S2, S2, S6
7CC34:  STR             R0, [SP,#0x48+var_48]; int
7CC36:  VADD.F32        S4, S4, S8
7CC3A:  MOV             R0, R9; int
7CC3C:  VSTR            S0, [SP,#0x48+var_44]
7CC40:  VSUB.F32        S2, S2, S0
7CC44:  VSUB.F32        S4, S4, S0
7CC48:  VSTR            S2, [SP,#0x48+var_30]
7CC4C:  VSTR            S4, [SP,#0x48+var_2C]
7CC50:  BL              sub_7157C
7CC54:  MOV             R0, R5
7CC56:  MOV             R1, R9
7CC58:  BL              sub_7C960
7CC5C:  LDR             R0, [SP,#0x48+var_20]
7CC5E:  LDR             R1, =(__stack_chk_guard_ptr - 0x7CC64)
7CC60:  ADD             R1, PC; __stack_chk_guard_ptr
7CC62:  LDR             R1, [R1]; __stack_chk_guard
7CC64:  LDR             R1, [R1]
7CC66:  CMP             R1, R0
7CC68:  ITTT EQ
7CC6A:  ADDEQ           SP, SP, #0x2C ; ','
7CC6C:  POPEQ.W         {R8-R11}
7CC70:  POPEQ           {R4-R7,PC}
7CC72:  BLX             __stack_chk_fail
