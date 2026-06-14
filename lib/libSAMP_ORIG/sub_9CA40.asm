; =========================================================
; Game Engine Function: sub_9CA40
; Address            : 0x9CA40 - 0x9CDDC
; =========================================================

9CA40:  PUSH            {R4-R7,LR}
9CA42:  ADD             R7, SP, #0xC
9CA44:  PUSH.W          {R8-R11}
9CA48:  SUB             SP, SP, #0x24
9CA4A:  MOV             R5, R1
9CA4C:  LDR             R1, =(__stack_chk_guard_ptr - 0x9CA54)
9CA4E:  CMP             R2, #3
9CA50:  ADD             R1, PC; __stack_chk_guard_ptr
9CA52:  LDR             R1, [R1]; __stack_chk_guard
9CA54:  LDR             R1, [R1]
9CA56:  STR.W           R1, [R7,#var_24]
9CA5A:  BLT.W           loc_9CDBC
9CA5E:  MOV             R8, R2
9CA60:  LDR             R2, [R0,#0x28]
9CA62:  LDRB.W          R1, [R0,#0x24]
9CA66:  MOV             R10, R3
9CA68:  LDRD.W          R9, R6, [R2]
9CA6C:  LSLS            R1, R1, #0x1E
9CA6E:  BMI             loc_9CABE
9CA70:  ADD.W           R1, R8, R8,LSL#1
9CA74:  MOV             R2, R8
9CA76:  SUBS            R1, #6
9CA78:  MOV             R4, R0
9CA7A:  BL              sub_9C1B4
9CA7E:  LDR             R1, [R4,#0x38]
9CA80:  MOV             R0, R8
9CA82:  LDRD.W          R2, R3, [R5],#8
9CA86:  SUBS            R0, #1
9CA88:  STRD.W          R2, R3, [R1]
9CA8C:  LDR             R1, [R4,#0x38]
9CA8E:  STRD.W          R9, R6, [R1,#8]
9CA92:  LDR             R2, [R4,#0x38]
9CA94:  ADD.W           R1, R2, #0x14
9CA98:  STR             R1, [R4,#0x38]
9CA9A:  STR.W           R10, [R2,#0x10]
9CA9E:  BNE             loc_9CA82
9CAA0:  LDR             R0, [R4,#0x34]
9CAA2:  CMP.W           R8, #3
9CAA6:  BLT.W           loc_9CDA4
9CAAA:  LDR             R2, [R4,#0x3C]
9CAAC:  SUB.W           R6, R8, #2
9CAB0:  CMP             R6, #8
9CAB2:  BCS.W           loc_9CD30
9CAB6:  MOV.W           R12, #2
9CABA:  MOV             R1, R2
9CABC:  B               loc_9CD8A
9CABE:  ADD.W           R1, R8, R8,LSL#3
9CAC2:  MOV.W           R2, R8,LSL#1
9CAC6:  SUBS            R1, #6
9CAC8:  STR.W           R6, [R7,#var_34]
9CACC:  STR.W           R2, [R7,#var_40]
9CAD0:  STR.W           R0, [R7,#var_2C]
9CAD4:  BL              sub_9C1B4
9CAD8:  LDR.W           R4, [R7,#var_2C]
9CADC:  SUB.W           R2, R8, #2
9CAE0:  CMP             R2, #8
9CAE2:  LDR             R6, [R4,#0x34]
9CAE4:  LDR             R0, [R4,#0x3C]
9CAE6:  BCS             loc_9CAF0
9CAE8:  MOV.W           R12, #2
9CAEC:  MOV             R1, R0
9CAEE:  B               loc_9CB52
9CAF0:  BIC.W           LR, R2, #7
9CAF4:  ADR             R1, dword_9CDE0
9CAF6:  VLD1.64         {D16-D17}, [R1@128]
9CAFA:  ADR             R1, dword_9CDF0
9CAFC:  VMVN.I16        Q15, #1
9CB00:  ADD.W           R12, LR, #2
9CB04:  VLD1.64         {D18-D19}, [R1@128]
9CB08:  ADD.W           R1, LR, LR,LSL#1
9CB0C:  VMOV.I32        Q0, #8
9CB10:  MOV             R3, LR
9CB12:  VDUP.32         Q10, R6
9CB16:  ADD.W           R1, R0, R1,LSL#1
9CB1A:  VDUP.16         Q11, R6
9CB1E:  VSHL.I32        Q1, Q9, #1
9CB22:  SUBS            R3, #8
9CB24:  VSHL.I32        Q2, Q8, #1
9CB28:  VADD.I32        Q1, Q1, Q10
9CB2C:  VADD.I32        Q2, Q2, Q10
9CB30:  VADD.I32        Q8, Q8, Q0
9CB34:  VMOVN.I32       D26, Q1
9CB38:  VMOVN.I32       D27, Q2
9CB3C:  VADD.I16        Q12, Q13, Q15
9CB40:  VADD.I32        Q9, Q9, Q0
9CB44:  VST3.16         {D22,D24,D26}, [R0]!
9CB48:  VST3.16         {D23,D25,D27}, [R0]!
9CB4C:  BNE             loc_9CB1E
9CB4E:  CMP             R2, LR
9CB50:  BEQ             loc_9CB6A
9CB52:  ADD.W           R0, R6, R12,LSL#1
9CB56:  SUB.W           R2, R8, R12
9CB5A:  SUBS            R3, R0, #2
9CB5C:  STRH            R0, [R1,#4]
9CB5E:  STRH            R3, [R1,#2]
9CB60:  ADDS            R0, #2
9CB62:  STRH.W          R6, [R1],#6
9CB66:  SUBS            R2, #1
9CB68:  BNE             loc_9CB5A
9CB6A:  SUB.W           R12, SP, R8,LSL#3
9CB6E:  STR             R1, [R4,#0x3C]
9CB70:  MOV             SP, R12
9CB72:  CMP.W           R8, #1
9CB76:  BLT.W           loc_9CDAE
9CB7A:  VMOV.F32        S0, #1.0
9CB7E:  SUB.W           R0, R8, #1
9CB82:  ADD.W           R11, R5, #4
9CB86:  BIC.W           R4, R10, #0xFF000000
9CB8A:  ADD.W           R2, R5, R0,LSL#3
9CB8E:  ADD.W           LR, R6, #1
9CB92:  STR.W           R6, [R7,#var_30]
9CB96:  MOVS            R6, #0
9CB98:  VLDR            S6, [R2]
9CB9C:  MOV             R3, R11
9CB9E:  VLDR            S8, [R2,#4]
9CBA2:  MOV             R5, R8
9CBA4:  MOV             R1, R0
9CBA6:  MOV             R2, R0
9CBA8:  B               loc_9CBCE
9CBAA:  VNEG.F32        S6, S6
9CBAE:  ADD.W           R2, R12, R2,LSL#3
9CBB2:  ADDS            R0, R6, #1
9CBB4:  ADDS            R3, #8
9CBB6:  VSTR            S8, [R2]
9CBBA:  VMOV.F32        S8, S4
9CBBE:  SUBS            R5, #1
9CBC0:  VSTR            S6, [R2,#4]
9CBC4:  VMOV.F32        S6, S2
9CBC8:  MOV             R2, R6
9CBCA:  MOV             R6, R0
9CBCC:  BEQ             loc_9CC02
9CBCE:  VLDR            S4, [R3]
9CBD2:  VLDR            S2, [R3,#-4]
9CBD6:  VSUB.F32        S8, S4, S8
9CBDA:  VSUB.F32        S6, S2, S6
9CBDE:  VMUL.F32        S10, S8, S8
9CBE2:  VMLA.F32        S10, S6, S6
9CBE6:  VCMP.F32        S10, #0.0
9CBEA:  VMRS            APSR_nzcv, FPSCR
9CBEE:  BLE             loc_9CBAA
9CBF0:  VSQRT.F32       S10, S10
9CBF4:  VDIV.F32        S10, S0, S10
9CBF8:  VMUL.F32        S8, S8, S10
9CBFC:  VMUL.F32        S6, S6, S10
9CC00:  B               loc_9CBAA
9CC02:  CMP.W           R8, #1
9CC06:  BLT.W           loc_9CDAA
9CC0A:  VMOV.F32        S2, #0.5
9CC0E:  LDR.W           R0, [R7,#var_2C]
9CC12:  ADD.W           R3, R12, R1,LSL#3
9CC16:  STRD.W          LR, R8, [R7,#var_3C]
9CC1A:  LDR.W           LR, [R7,#var_2C]
9CC1E:  ADD.W           R5, R12, #4
9CC22:  LDR             R2, [R0,#0x38]
9CC24:  MOV             R6, R1
9CC26:  LDR.W           R0, [R7,#var_30]
9CC2A:  VLDR            S8, [R3]
9CC2E:  VLDR            S10, [R3,#4]
9CC32:  MOVS            R3, #0
9CC34:  VLDR            S6, [R5]
9CC38:  MOV             R12, R6
9CC3A:  VLDR            S4, [R5,#-4]
9CC3E:  ADDS            R5, #8
9CC40:  VADD.F32        S10, S10, S6
9CC44:  STR.W           R3, [R7,#var_28]
9CC48:  VADD.F32        S8, S8, S4
9CC4C:  VMUL.F32        S10, S10, S2
9CC50:  VMUL.F32        S8, S8, S2
9CC54:  VMUL.F32        S12, S10, S10
9CC58:  VMLA.F32        S12, S8, S8
9CC5C:  VCMP.F32        S12, S2
9CC60:  VMRS            APSR_nzcv, FPSCR
9CC64:  IT MI
9CC66:  VMOVMI.F32      S12, S2
9CC6A:  VDIV.F32        S12, S0, S12
9CC6E:  LDR.W           R1, [R7,#var_34]
9CC72:  VMUL.F32        S8, S8, S12
9CC76:  VLDR            S14, [R11]
9CC7A:  VMUL.F32        S10, S10, S12
9CC7E:  VLDR            S12, [R11,#-4]
9CC82:  STR.W           R9, [R2,#8]
9CC86:  STR             R1, [R2,#0xC]
9CC88:  LDR.W           R3, [LR,#0x38]
9CC8C:  VMUL.F32        S8, S8, S2
9CC90:  STR.W           R10, [R3,#0x10]
9CC94:  VMUL.F32        S10, S10, S2
9CC98:  VSUB.F32        S12, S12, S8
9CC9C:  VSUB.F32        S14, S14, S10
9CCA0:  VSTR            S12, [R2]
9CCA4:  VSTR            S14, [R2,#4]
9CCA8:  VLDR            S12, [R11,#-4]
9CCAC:  VLDR            S14, [R11]
9CCB0:  ADD.W           R11, R11, #8
9CCB4:  VADD.F32        S8, S12, S8
9CCB8:  STRD.W          R9, R1, [R3,#0x1C]
9CCBC:  VADD.F32        S10, S10, S14
9CCC0:  LDRD.W          R6, R8, [LR,#0x38]
9CCC4:  MOV             R1, R4
9CCC6:  MOV             R4, R9
9CCC8:  MOV             R9, R10
9CCCA:  ADD.W           R10, R8, #0xC
9CCCE:  ADD.W           R2, R6, #0x28 ; '('
9CCD2:  STR             R1, [R6,#0x24]
9CCD4:  STRD.W          R2, R10, [LR,#0x38]
9CCD8:  MOV             R10, R9
9CCDA:  MOV             R9, R4
9CCDC:  MOV             R4, R1
9CCDE:  LDR.W           R1, [R7,#var_3C]
9CCE2:  VSTR            S8, [R3,#0x14]
9CCE6:  VMOV.F32        S8, S4
9CCEA:  VSTR            S10, [R3,#0x18]
9CCEE:  VMOV.F32        S10, S6
9CCF2:  ADD.W           R6, R1, R12,LSL#1
9CCF6:  LDR.W           R1, [R7,#var_30]
9CCFA:  STRH.W          R6, [R8,#4]
9CCFE:  STRH.W          R6, [R8,#6]
9CD02:  ADDS            R6, R0, #1
9CD04:  STRH.W          R6, [R8,#8]
9CD08:  ADD.W           R1, R1, R12,LSL#1
9CD0C:  LDR.W           R6, [R7,#var_28]
9CD10:  STRH.W          R0, [R8]
9CD14:  STRH.W          R0, [R8,#0xA]
9CD18:  ADDS            R0, #2
9CD1A:  STRH.W          R1, [R8,#2]
9CD1E:  ADDS            R3, R6, #1
9CD20:  LDR.W           R8, [R7,#var_38]
9CD24:  CMP             R8, R3
9CD26:  BNE             loc_9CC34
9CD28:  LDR.W           R4, [R7,#var_2C]
9CD2C:  LDR             R6, [R4,#0x34]
9CD2E:  B               loc_9CDAE
9CD30:  BIC.W           R3, R6, #7
9CD34:  ADR             R1, dword_9CDE0
9CD36:  VLD1.64         {D16-D17}, [R1@128]
9CD3A:  ADR             R1, dword_9CDF0
9CD3C:  VMOV.I8         Q15, #0xFF
9CD40:  ADD.W           R12, R3, #2
9CD44:  VLD1.64         {D18-D19}, [R1@128]
9CD48:  ADD.W           R1, R3, R3,LSL#1
9CD4C:  VMOV.I32        Q0, #8
9CD50:  MOV             R5, R3
9CD52:  VDUP.32         Q10, R0
9CD56:  ADD.W           R1, R2, R1,LSL#1
9CD5A:  VDUP.16         Q11, R0
9CD5E:  VADD.I32        Q1, Q10, Q9
9CD62:  SUBS            R5, #8
9CD64:  VADD.I32        Q2, Q10, Q8
9CD68:  VADD.I32        Q8, Q8, Q0
9CD6C:  VMOVN.I32       D26, Q1
9CD70:  VMOVN.I32       D27, Q2
9CD74:  VADD.I16        Q12, Q13, Q15
9CD78:  VADD.I32        Q9, Q9, Q0
9CD7C:  VST3.16         {D22,D24,D26}, [R2]!
9CD80:  VST3.16         {D23,D25,D27}, [R2]!
9CD84:  BNE             loc_9CD5E
9CD86:  CMP             R6, R3
9CD88:  BEQ             loc_9CDA2
9CD8A:  ADD.W           R2, R12, R0
9CD8E:  SUB.W           R3, R8, R12
9CD92:  SUBS            R6, R2, #1
9CD94:  STRH            R2, [R1,#4]
9CD96:  STRH            R6, [R1,#2]
9CD98:  ADDS            R2, #1
9CD9A:  STRH.W          R0, [R1],#6
9CD9E:  SUBS            R3, #1
9CDA0:  BNE             loc_9CD92
9CDA2:  STR             R1, [R4,#0x3C]
9CDA4:  UXTAH.W         R0, R0, R8
9CDA8:  B               loc_9CDBA
9CDAA:  LDRD.W          R6, R4, [R7,#var_30]
9CDAE:  LDR.W           R1, [R7,#var_40]
9CDB2:  MOVW            R0, #0xFFFE
9CDB6:  ANDS            R0, R1
9CDB8:  ADD             R0, R6
9CDBA:  STR             R0, [R4,#0x34]
9CDBC:  LDR.W           R0, [R7,#var_24]
9CDC0:  LDR             R1, =(__stack_chk_guard_ptr - 0x9CDC6)
9CDC2:  ADD             R1, PC; __stack_chk_guard_ptr
9CDC4:  LDR             R1, [R1]; __stack_chk_guard
9CDC6:  LDR             R1, [R1]
9CDC8:  CMP             R1, R0
9CDCA:  ITTTT EQ
9CDCC:  SUBEQ.W         R4, R7, #-var_1C
9CDD0:  MOVEQ           SP, R4
9CDD2:  POPEQ.W         {R8-R11}
9CDD6:  POPEQ           {R4-R7,PC}
9CDD8:  BLX             __stack_chk_fail
