; =========================================================
; Game Engine Function: _ZN9CPhysical18ApplyFrictionForceE7CVectorS0_
; Address            : 0x3FEC20 - 0x3FED76
; =========================================================

3FEC20:  PUSH            {R4,R6,R7,LR}
3FEC22:  ADD             R7, SP, #8
3FEC24:  VPUSH           {D8}
3FEC28:  SUB             SP, SP, #0x28
3FEC2A:  MOV             R4, R0
3FEC2C:  ADD             R0, SP, #0x38+var_1C
3FEC2E:  STM             R0!, {R1-R3}
3FEC30:  LDR             R0, [R4,#0x44]
3FEC32:  TST.W           R0, #0x60
3FEC36:  BEQ             loc_3FEC3E
3FEC38:  LSLS            R1, R0, #0x1B
3FEC3A:  BPL             loc_3FEC96
3FEC3C:  B               loc_3FED6E
3FEC3E:  VMOV.F32        S0, #1.0
3FEC42:  VLDR            S8, [R4,#0x90]
3FEC46:  VMOV            S10, R3
3FEC4A:  LSLS            R3, R0, #0x18
3FEC4C:  VLDR            S2, [R4,#0x60]
3FEC50:  VMOV            S12, R2
3FEC54:  VLDR            S4, [R4,#0x64]
3FEC58:  VLDR            S6, [R4,#0x68]
3FEC5C:  VDIV.F32        S0, S0, S8
3FEC60:  VLDR            S8, =0.0
3FEC64:  VMUL.F32        S12, S0, S12
3FEC68:  IT PL
3FEC6A:  VMOVPL.F32      S8, S10
3FEC6E:  VMOV            S10, R1
3FEC72:  VMUL.F32        S10, S0, S10
3FEC76:  VMUL.F32        S0, S8, S0
3FEC7A:  VADD.F32        S4, S12, S4
3FEC7E:  VADD.F32        S2, S2, S10
3FEC82:  VADD.F32        S0, S0, S6
3FEC86:  VSTR            S2, [R4,#0x60]
3FEC8A:  VSTR            S4, [R4,#0x64]
3FEC8E:  VSTR            S0, [R4,#0x68]
3FEC92:  LSLS            R1, R0, #0x1B
3FEC94:  BMI             loc_3FED6E
3FEC96:  VLDR            S16, [R4,#0x94]
3FEC9A:  LSLS            R1, R0, #0x19
3FEC9C:  BMI             loc_3FECBA
3FEC9E:  LDR             R1, [R4,#0x14]; CVector *
3FECA0:  ADD.W           R2, R4, #0xA8
3FECA4:  ADD             R0, SP, #0x38+var_28; CMatrix *
3FECA6:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3FECAA:  LDR             R0, [R4,#0x44]
3FECAC:  VLDR            S2, [SP,#0x38+var_28]
3FECB0:  VLDR            S4, [SP,#0x38+var_24]
3FECB4:  VLDR            S0, [SP,#0x38+var_20]
3FECB8:  B               loc_3FECE2
3FECBA:  VMOV.F32        S0, #0.5
3FECBE:  VLDR            S2, [R4,#0x90]
3FECC2:  VLDR            S4, [R4,#0xB0]
3FECC6:  VMUL.F32        S0, S2, S0
3FECCA:  VMUL.F32        S0, S0, S4
3FECCE:  VMUL.F32        S0, S4, S0
3FECD2:  VADD.F32        S16, S16, S0
3FECD6:  VLDR            S0, =0.0
3FECDA:  VMOV.F32        S4, S0
3FECDE:  VMOV.F32        S2, S0
3FECE2:  LSLS            R0, R0, #0x1A
3FECE4:  LDRD.W          R2, R1, [R7,#arg_0]
3FECE8:  ITTE MI
3FECEA:  MOVMI           R0, #0
3FECEC:  STRMI           R0, [SP,#0x38+var_14]
3FECEE:  LDRPL           R0, [R7,#arg_8]
3FECF0:  VMOV            S8, R1
3FECF4:  ADD             R1, SP, #0x38+var_34; CVector *
3FECF6:  VMOV            S6, R2
3FECFA:  ADD             R2, SP, #0x38+var_1C
3FECFC:  VMOV            S10, R0
3FED00:  ADD             R0, SP, #0x38+var_28; CVector *
3FED02:  VSUB.F32        S4, S8, S4
3FED06:  VSUB.F32        S2, S6, S2
3FED0A:  VSUB.F32        S0, S10, S0
3FED0E:  VSTR            S4, [SP,#0x38+var_30]
3FED12:  VSTR            S2, [SP,#0x38+var_34]
3FED16:  VSTR            S0, [SP,#0x38+var_2C]
3FED1A:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3FED1E:  VMOV.F32        S0, #1.0
3FED22:  VLDR            S2, [SP,#0x38+var_28]
3FED26:  VLDR            S4, [SP,#0x38+var_24]
3FED2A:  VLDR            S6, [SP,#0x38+var_20]
3FED2E:  VDIV.F32        S0, S0, S16
3FED32:  VMUL.F32        S2, S0, S2
3FED36:  VMUL.F32        S4, S0, S4
3FED3A:  VMUL.F32        S0, S0, S6
3FED3E:  VSTR            S2, [SP,#0x38+var_1C]
3FED42:  VSTR            S4, [SP,#0x38+var_18]
3FED46:  VSTR            S0, [SP,#0x38+var_14]
3FED4A:  VLDR            S6, [R4,#0x6C]
3FED4E:  VLDR            S8, [R4,#0x70]
3FED52:  VLDR            S10, [R4,#0x74]
3FED56:  VADD.F32        S2, S2, S6
3FED5A:  VADD.F32        S4, S4, S8
3FED5E:  VADD.F32        S0, S0, S10
3FED62:  VSTR            S2, [R4,#0x6C]
3FED66:  VSTR            S4, [R4,#0x70]
3FED6A:  VSTR            S0, [R4,#0x74]
3FED6E:  ADD             SP, SP, #0x28 ; '('
3FED70:  VPOP            {D8}
3FED74:  POP             {R4,R6,R7,PC}
