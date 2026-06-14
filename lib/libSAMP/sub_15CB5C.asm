; =========================================================
; Game Engine Function: sub_15CB5C
; Address            : 0x15CB5C - 0x15CD0A
; =========================================================

15CB5C:  PUSH            {R4-R7,LR}
15CB5E:  ADD             R7, SP, #0xC
15CB60:  PUSH.W          {R8-R11}
15CB64:  SUB             SP, SP, #0xC
15CB66:  LDR             R5, [R1,#4]
15CB68:  MOV             R9, R1
15CB6A:  LDR             R4, [R2]
15CB6C:  MOV             R10, R0
15CB6E:  STR             R3, [SP,#0x28+var_20]
15CB70:  CBZ             R5, loc_15CBAA
15CB72:  MOV.W           R0, #0x55555555
15CB76:  MOV.W           R1, #0x33333333
15CB7A:  AND.W           R0, R0, R5,LSR#1
15CB7E:  SUBS            R0, R5, R0
15CB80:  AND.W           R1, R1, R0,LSR#2
15CB84:  BIC.W           R0, R0, #0xCCCCCCCC
15CB88:  ADD             R0, R1
15CB8A:  MOV.W           R1, #0x1010101
15CB8E:  ADD.W           R0, R0, R0,LSR#4
15CB92:  BIC.W           R0, R0, #0xF0F0F0F0
15CB96:  MULS            R0, R1
15CB98:  MOV.W           R8, R0,LSR#24
15CB9C:  CMP.W           R8, #1
15CBA0:  BHI             loc_15CBAC
15CBA2:  SUBS            R0, R5, #1
15CBA4:  AND.W           R11, R0, R4
15CBA8:  B               loc_15CBBC
15CBAA:  B               loc_15CC06
15CBAC:  CMP             R4, R5
15CBAE:  MOV             R11, R4
15CBB0:  BCC             loc_15CBBC
15CBB2:  MOV             R0, R4
15CBB4:  MOV             R1, R5
15CBB6:  BLX             sub_221798
15CBBA:  MOV             R11, R1
15CBBC:  LDR.W           R0, [R9]
15CBC0:  LDR.W           R6, [R0,R11,LSL#2]
15CBC4:  CBZ             R6, loc_15CC06
15CBC6:  STR.W           R10, [SP,#0x28+var_24]
15CBCA:  SUB.W           R10, R5, #1
15CBCE:  LDR             R6, [R6]
15CBD0:  CBZ             R6, loc_15CC02
15CBD2:  LDR             R0, [R6,#4]
15CBD4:  CMP             R0, R4
15CBD6:  BEQ             loc_15CBF4
15CBD8:  CMP.W           R8, #1
15CBDC:  BHI             loc_15CBE4
15CBDE:  AND.W           R0, R0, R10
15CBE2:  B               loc_15CBF0
15CBE4:  CMP             R0, R5
15CBE6:  BCC             loc_15CBF0
15CBE8:  MOV             R1, R5
15CBEA:  BLX             sub_221798
15CBEE:  MOV             R0, R1
15CBF0:  CMP             R0, R11
15CBF2:  BNE             loc_15CC02
15CBF4:  LDR             R0, [R6,#8]
15CBF6:  CMP             R0, R4
15CBF8:  BNE             loc_15CBCE
15CBFA:  MOVS            R0, #0
15CBFC:  LDR.W           R10, [SP,#0x28+var_24]
15CC00:  B               loc_15CCFA
15CC02:  LDR.W           R10, [SP,#0x28+var_24]
15CC06:  MOVS            R0, #0x10; unsigned int
15CC08:  LDR.W           R8, [R7,#arg_0]
15CC0C:  BLX             j__Znwj; operator new(uint)
15CC10:  MOV             R6, R0
15CC12:  LDR.W           R0, [R9,#0xC]
15CC16:  LDR             R1, [SP,#0x28+var_20]
15CC18:  MOVS            R2, #0
15CC1A:  ADDS            R0, #1
15CC1C:  VLDR            S0, [R9,#0x10]
15CC20:  STRD.W          R2, R4, [R6]
15CC24:  VMOV            S2, R0
15CC28:  LDRB.W          R0, [R8]
15CC2C:  LDR             R1, [R1]
15CC2E:  VCVT.F32.U32    S2, S2
15CC32:  STR             R1, [R6,#8]
15CC34:  STRB            R0, [R6,#0xC]
15CC36:  CBZ             R5, loc_15CC52
15CC38:  VMOV            S4, R5
15CC3C:  VCVT.F32.U32    S4, S4
15CC40:  VMUL.F32        S4, S0, S4
15CC44:  VCMP.F32        S4, S2
15CC48:  VMRS            APSR_nzcv, FPSCR
15CC4C:  BMI             loc_15CC52
15CC4E:  MOV             R4, R11
15CC50:  B               loc_15CCAA
15CC52:  MOV.W           R8, R5,LSL#1
15CC56:  CMP             R5, #3
15CC58:  BCC             loc_15CC64
15CC5A:  SUBS            R0, R5, #1
15CC5C:  ANDS            R5, R0
15CC5E:  IT NE
15CC60:  MOVNE           R5, #1
15CC62:  B               loc_15CC66
15CC64:  MOVS            R5, #1
15CC66:  VDIV.F32        S0, S2, S0
15CC6A:  VMOV            R0, S0; x
15CC6E:  BLX             ceilf
15CC72:  VMOV            S0, R0
15CC76:  ORR.W           R1, R5, R8
15CC7A:  VCVT.U32.F32    S0, S0
15CC7E:  VMOV            R0, S0
15CC82:  CMP             R1, R0
15CC84:  IT CC
15CC86:  MOVCC           R1, R0; this
15CC88:  MOV             R0, R9; int
15CC8A:  BL              sub_15CD14
15CC8E:  LDR.W           R5, [R9,#4]
15CC92:  SUBS            R0, R5, #1
15CC94:  TST             R5, R0
15CC96:  BNE             loc_15CC9C
15CC98:  ANDS            R4, R0
15CC9A:  B               loc_15CCAA
15CC9C:  CMP             R4, R5
15CC9E:  BCC             loc_15CCAA
15CCA0:  MOV             R0, R4
15CCA2:  MOV             R1, R5
15CCA4:  BLX             sub_221798
15CCA8:  MOV             R4, R1
15CCAA:  LDR.W           R0, [R9]
15CCAE:  LDR.W           R1, [R0,R4,LSL#2]
15CCB2:  CBZ             R1, loc_15CCBC
15CCB4:  LDR             R0, [R1]
15CCB6:  STR             R0, [R6]
15CCB8:  STR             R6, [R1]
15CCBA:  B               loc_15CCEE
15CCBC:  MOV             R1, R9
15CCBE:  LDR.W           R2, [R1,#8]!
15CCC2:  STR             R2, [R6]
15CCC4:  STR             R6, [R1]
15CCC6:  STR.W           R1, [R0,R4,LSL#2]
15CCCA:  LDR             R0, [R6]
15CCCC:  CBZ             R0, loc_15CCEE
15CCCE:  LDR             R0, [R0,#4]
15CCD0:  SUBS            R1, R5, #1
15CCD2:  TST             R5, R1
15CCD4:  BNE             loc_15CCDA
15CCD6:  ANDS            R0, R1
15CCD8:  B               loc_15CCE6
15CCDA:  CMP             R0, R5
15CCDC:  BCC             loc_15CCE6
15CCDE:  MOV             R1, R5
15CCE0:  BLX             sub_221798
15CCE4:  MOV             R0, R1
15CCE6:  LDR.W           R1, [R9]
15CCEA:  STR.W           R6, [R1,R0,LSL#2]
15CCEE:  LDR.W           R0, [R9,#0xC]
15CCF2:  ADDS            R0, #1
15CCF4:  STR.W           R0, [R9,#0xC]
15CCF8:  MOVS            R0, #1
15CCFA:  STRB.W          R0, [R10,#4]
15CCFE:  STR.W           R6, [R10]
15CD02:  ADD             SP, SP, #0xC
15CD04:  POP.W           {R8-R11}
15CD08:  POP             {R4-R7,PC}
