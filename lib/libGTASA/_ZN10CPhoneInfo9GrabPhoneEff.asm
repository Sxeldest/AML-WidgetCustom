; =========================================================
; Game Engine Function: _ZN10CPhoneInfo9GrabPhoneEff
; Address            : 0x31CD8C - 0x31CEAC
; =========================================================

31CD8C:  PUSH            {R4-R7,LR}
31CD8E:  ADD             R7, SP, #0xC
31CD90:  PUSH.W          {R8}
31CD94:  SUB             SP, SP, #0x38
31CD96:  LDR             R3, =(__stack_chk_guard_ptr - 0x31CD9C)
31CD98:  ADD             R3, PC; __stack_chk_guard_ptr
31CD9A:  LDR             R3, [R3]; __stack_chk_guard
31CD9C:  LDR             R3, [R3]
31CD9E:  STR             R3, [SP,#0x48+var_14]
31CDA0:  LDRD.W          R12, R3, [R0]
31CDA4:  CMP             R3, R12
31CDA6:  BGE             loc_31CDFC
31CDA8:  VMOV            S2, R1
31CDAC:  MOVS            R1, #0x34 ; '4'
31CDAE:  MLA.W           R1, R3, R1, R0
31CDB2:  VMOV            S0, R2
31CDB6:  VLDR            S4, =100.0
31CDBA:  ADD.W           R2, R1, #8
31CDBE:  MOV.W           R1, #0xFFFFFFFF
31CDC2:  VLDR            S6, [R2]
31CDC6:  VLDR            S8, [R2,#4]
31CDCA:  ADDS            R2, #0x34 ; '4'
31CDCC:  VSUB.F32        S6, S6, S2
31CDD0:  VSUB.F32        S8, S8, S0
31CDD4:  VMUL.F32        S6, S6, S6
31CDD8:  VMUL.F32        S8, S8, S8
31CDDC:  VADD.F32        S6, S6, S8
31CDE0:  VSQRT.F32       S6, S6
31CDE4:  VCMPE.F32       S6, S4
31CDE8:  VMRS            APSR_nzcv, FPSCR
31CDEC:  VMIN.F32        D2, D3, D2
31CDF0:  IT LT
31CDF2:  MOVLT           R1, R3
31CDF4:  ADDS            R3, #1
31CDF6:  CMP             R3, R12
31CDF8:  BLT             loc_31CDC2
31CDFA:  B               loc_31CE00
31CDFC:  MOV.W           R1, #0xFFFFFFFF
31CE00:  ADD.W           R2, R0, #8
31CE04:  MOV.W           R12, #0x34 ; '4'
31CE08:  MLA.W           R5, R1, R12, R2
31CE0C:  MOVS            R3, #3
31CE0E:  MOV             R8, SP
31CE10:  MOV             R4, R8
31CE12:  STR             R3, [R5,#0x2C]
31CE14:  MOV             R1, R5
31CE16:  LDR             R3, [R0,#4]
31CE18:  MLA.W           R2, R3, R12, R2
31CE1C:  ADD.W           R12, R2, #0x20 ; ' '
31CE20:  MOV             LR, R2
31CE22:  LDRB.W          R3, [R2,#0x30]
31CE26:  VLD1.32         {D16-D17}, [LR]!
31CE2A:  VLD1.32         {D18-D19}, [R12]
31CE2E:  VLD1.32         {D20-D21}, [LR]
31CE32:  STRB.W          R3, [SP,#0x48+var_18]
31CE36:  ADD.W           R3, R8, #0x20 ; ' '
31CE3A:  VST1.64         {D16-D17}, [R4]!
31CE3E:  VST1.64         {D18-D19}, [R3]
31CE42:  VST1.64         {D20-D21}, [R4]
31CE46:  LDRB.W          R6, [R5,#0x30]
31CE4A:  STRB.W          R6, [R2,#0x30]
31CE4E:  ADD.W           R6, R5, #0x20 ; ' '
31CE52:  VLD1.32         {D16-D17}, [R6]
31CE56:  VST1.32         {D16-D17}, [R12]
31CE5A:  VLD1.32         {D16-D17}, [R1]!
31CE5E:  VST1.32         {D16-D17}, [R2]
31CE62:  VLD1.32         {D16-D17}, [R1]
31CE66:  VST1.32         {D16-D17}, [LR]
31CE6A:  VLD1.64         {D16-D17}, [R3]
31CE6E:  VLD1.64         {D18-D19}, [R8,#0x48+var_48]
31CE72:  VLD1.64         {D20-D21}, [R4]
31CE76:  LDRB.W          R2, [SP,#0x48+var_18]
31CE7A:  STRB.W          R2, [R5,#0x30]
31CE7E:  VST1.32         {D16-D17}, [R6]
31CE82:  VST1.32         {D18-D19}, [R5]
31CE86:  VST1.32         {D20-D21}, [R1]
31CE8A:  LDR             R1, [R0,#4]
31CE8C:  ADDS            R2, R1, #1
31CE8E:  STR             R2, [R0,#4]
31CE90:  LDR             R0, =(__stack_chk_guard_ptr - 0x31CE98)
31CE92:  LDR             R2, [SP,#0x48+var_14]
31CE94:  ADD             R0, PC; __stack_chk_guard_ptr
31CE96:  LDR             R0, [R0]; __stack_chk_guard
31CE98:  LDR             R0, [R0]
31CE9A:  SUBS            R0, R0, R2
31CE9C:  ITTTT EQ
31CE9E:  MOVEQ           R0, R1
31CEA0:  ADDEQ           SP, SP, #0x38 ; '8'
31CEA2:  POPEQ.W         {R8}
31CEA6:  POPEQ           {R4-R7,PC}
31CEA8:  BLX             __stack_chk_fail
