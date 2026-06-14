; =========================================================
; Game Engine Function: _ZN14CWindModifiers16FindWindModifierE7CVectorPfS1_
; Address            : 0x5CEBC0 - 0x5CED1A
; =========================================================

5CEBC0:  PUSH            {R4-R7,LR}
5CEBC2:  ADD             R7, SP, #0xC
5CEBC4:  PUSH.W          {R11}
5CEBC8:  VPUSH           {D8-D11}
5CEBCC:  MOV             R4, R3
5CEBCE:  LDR             R3, =(_ZN14CWindModifiers6NumberE_ptr - 0x5CEBD4)
5CEBD0:  ADD             R3, PC; _ZN14CWindModifiers6NumberE_ptr
5CEBD2:  LDR             R3, [R3]; CWindModifiers::Number ...
5CEBD4:  LDR             R3, [R3]; CWindModifiers::Number
5CEBD6:  CMP             R3, #1
5CEBD8:  BLT.W           loc_5CED0E
5CEBDC:  VMOV.F32        S2, #15.0
5CEBE0:  VLDR            S16, =0.0
5CEBE4:  VMOV            S0, R2
5CEBE8:  LDR             R5, =(_ZN14CWindModifiers5ArrayE_ptr - 0x5CEBF8)
5CEBEA:  VMOV.F32        S12, #1.0
5CEBEE:  LDR             R6, [R7,#arg_0]
5CEBF0:  VMOV.F32        S1, #20.0
5CEBF4:  ADD             R5, PC; _ZN14CWindModifiers5ArrayE_ptr
5CEBF6:  VMOV.F32        S5, #-20.0
5CEBFA:  VLDR            S8, =40.0
5CEBFE:  VMOV.F32        S7, #-30.0
5CEC02:  VLDR            S10, =-40.0
5CEC06:  VMOV.F32        S18, S16
5CEC0A:  VLDR            S14, =50.0
5CEC0E:  VADD.F32        S2, S0, S2
5CEC12:  VLDR            S3, =0.2
5CEC16:  VMOV            S4, R0
5CEC1A:  LDR             R0, [R5]; CWindModifiers::Array ...
5CEC1C:  VMOV            S6, R1
5CEC20:  MOVS            R2, #0
5CEC22:  ADDS            R0, #8
5CEC24:  MOVS            R1, #0
5CEC26:  LDR             R5, [R0,#4]
5CEC28:  CMP             R5, #1
5CEC2A:  BNE             loc_5CECBC
5CEC2C:  VLDR            S13, [R0]
5CEC30:  VSUB.F32        S9, S2, S13
5CEC34:  VABS.F32        S15, S9
5CEC38:  VCMPE.F32       S15, S8
5CEC3C:  VMRS            APSR_nzcv, FPSCR
5CEC40:  BGE             loc_5CECBC
5CEC42:  VLDR            S9, [R0,#-8]
5CEC46:  VSUB.F32        S13, S0, S13
5CEC4A:  VLDR            S11, [R0,#-4]
5CEC4E:  VSUB.F32        S9, S4, S9
5CEC52:  VSUB.F32        S11, S6, S11
5CEC56:  VMUL.F32        S13, S13, S13
5CEC5A:  VMUL.F32        S22, S9, S9
5CEC5E:  VMUL.F32        S20, S11, S11
5CEC62:  VADD.F32        S20, S22, S20
5CEC66:  VADD.F32        S13, S20, S13
5CEC6A:  VSQRT.F32       S13, S13
5CEC6E:  VCMPE.F32       S13, S14
5CEC72:  VMRS            APSR_nzcv, FPSCR
5CEC76:  BGE             loc_5CECBC
5CEC78:  VDIV.F32        S15, S15, S10
5CEC7C:  VADD.F32        S15, S15, S12
5CEC80:  VMOV.F32        S16, S12
5CEC84:  VCMPE.F32       S13, S1
5CEC88:  VMRS            APSR_nzcv, FPSCR
5CEC8C:  BLT             loc_5CEC9A
5CEC8E:  VADD.F32        S16, S13, S5
5CEC92:  VDIV.F32        S16, S16, S7
5CEC96:  VADD.F32        S16, S16, S12
5CEC9A:  VLDR            S18, [R0,#8]
5CEC9E:  VMUL.F32        S15, S15, S3
5CECA2:  MOVS            R2, #1
5CECA4:  VMUL.F32        S16, S16, S18
5CECA8:  VMUL.F32        S15, S15, S16
5CECAC:  VMUL.F32        S11, S11, S15
5CECB0:  VMUL.F32        S9, S9, S15
5CECB4:  VDIV.F32        S16, S11, S13
5CECB8:  VDIV.F32        S18, S9, S13
5CECBC:  ADDS            R1, #1
5CECBE:  ADDS            R0, #0x14
5CECC0:  CMP             R1, R3
5CECC2:  BLT             loc_5CEC26
5CECC4:  LSLS            R0, R2, #0x1F
5CECC6:  BEQ             loc_5CED0E
5CECC8:  BLX.W           rand
5CECCC:  AND.W           R0, R0, #0x1F
5CECD0:  VLDR            S2, =0.0005
5CECD4:  SUBS            R0, #0x10
5CECD6:  VMOV.F32        S4, #1.0
5CECDA:  VMOV            S0, R0
5CECDE:  MOVS            R0, #1
5CECE0:  VCVT.F32.S32    S0, S0
5CECE4:  VMUL.F32        S0, S0, S2
5CECE8:  VADD.F32        S0, S0, S4
5CECEC:  VLDR            S4, [R4]
5CECF0:  VMUL.F32        S2, S18, S0
5CECF4:  VMUL.F32        S0, S16, S0
5CECF8:  VADD.F32        S2, S4, S2
5CECFC:  VSTR            S2, [R4]
5CED00:  VLDR            S2, [R6]
5CED04:  VADD.F32        S0, S2, S0
5CED08:  VSTR            S0, [R6]
5CED0C:  B               loc_5CED10
5CED0E:  MOVS            R0, #0
5CED10:  VPOP            {D8-D11}
5CED14:  POP.W           {R11}
5CED18:  POP             {R4-R7,PC}
