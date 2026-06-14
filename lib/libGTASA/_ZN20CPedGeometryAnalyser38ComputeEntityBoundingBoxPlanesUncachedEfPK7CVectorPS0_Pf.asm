; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser38ComputeEntityBoundingBoxPlanesUncachedEfPK7CVectorPS0_Pf
; Address            : 0x4AEB18 - 0x4AECEC
; =========================================================

4AEB18:  PUSH            {R4-R7,LR}
4AEB1A:  ADD             R7, SP, #0xC
4AEB1C:  PUSH.W          {R8,R9,R11}
4AEB20:  VPUSH           {D8-D11}
4AEB24:  SUB             SP, SP, #0x10
4AEB26:  MOV             R6, R1
4AEB28:  ADD.W           R8, SP, #0x48+var_44
4AEB2C:  VLDR            S16, [R6,#0x24]
4AEB30:  MOV             R4, R3
4AEB32:  VLDR            S0, [R6]
4AEB36:  MOV             R0, R8; this
4AEB38:  VLDR            S18, [R6,#0x28]
4AEB3C:  MOV             R5, R2
4AEB3E:  VLDR            S2, [R6,#4]
4AEB42:  VSUB.F32        S0, S0, S16
4AEB46:  VLDR            S20, [R6,#0x2C]
4AEB4A:  VLDR            S4, [R6,#8]
4AEB4E:  VSUB.F32        S2, S2, S18
4AEB52:  VSUB.F32        S4, S4, S20
4AEB56:  VSTR            S2, [SP,#0x48+var_40]
4AEB5A:  VSTR            S0, [SP,#0x48+var_44]
4AEB5E:  VSTR            S4, [SP,#0x48+var_3C]
4AEB62:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4AEB66:  LDR             R0, [SP,#0x48+var_40]
4AEB68:  MOV.W           R9, #0
4AEB6C:  VLDR            S0, [SP,#0x48+var_44]
4AEB70:  STR.W           R9, [R5,#8]
4AEB74:  VMOV            S2, R0
4AEB78:  STR             R0, [R5]
4AEB7A:  VMUL.F32        S4, S18, S0
4AEB7E:  MOV             R0, R8; this
4AEB80:  VMUL.F32        S2, S16, S2
4AEB84:  VLDR            S16, =0.0
4AEB88:  VNEG.F32        S0, S0
4AEB8C:  VMUL.F32        S6, S20, S16
4AEB90:  VSUB.F32        S2, S2, S4
4AEB94:  VSTR            S0, [R5,#4]
4AEB98:  VADD.F32        S2, S6, S2
4AEB9C:  VNEG.F32        S2, S2
4AEBA0:  VSTR            S2, [R4]
4AEBA4:  VLDR            S18, [R6]
4AEBA8:  VLDR            S0, [R6,#0xC]
4AEBAC:  VLDR            S20, [R6,#4]
4AEBB0:  VLDR            S2, [R6,#0x10]
4AEBB4:  VSUB.F32        S0, S0, S18
4AEBB8:  VLDR            S22, [R6,#8]
4AEBBC:  VLDR            S4, [R6,#0x14]
4AEBC0:  VSUB.F32        S2, S2, S20
4AEBC4:  VSUB.F32        S4, S4, S22
4AEBC8:  VSTR            S2, [SP,#0x48+var_40]
4AEBCC:  VSTR            S0, [SP,#0x48+var_44]
4AEBD0:  VSTR            S4, [SP,#0x48+var_3C]
4AEBD4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4AEBD8:  LDR             R0, [SP,#0x48+var_40]
4AEBDA:  VMUL.F32        S6, S22, S16
4AEBDE:  VLDR            S0, [SP,#0x48+var_44]
4AEBE2:  STR.W           R9, [R5,#0x14]
4AEBE6:  VMOV            S2, R0
4AEBEA:  STR             R0, [R5,#0xC]
4AEBEC:  VMUL.F32        S4, S20, S0
4AEBF0:  MOV             R0, R8; this
4AEBF2:  VMUL.F32        S2, S18, S2
4AEBF6:  VNEG.F32        S0, S0
4AEBFA:  VSUB.F32        S2, S2, S4
4AEBFE:  VSTR            S0, [R5,#0x10]
4AEC02:  VADD.F32        S2, S6, S2
4AEC06:  VNEG.F32        S2, S2
4AEC0A:  VSTR            S2, [R4,#4]
4AEC0E:  VLDR            S18, [R6,#0xC]
4AEC12:  VLDR            S0, [R6,#0x18]
4AEC16:  VLDR            S20, [R6,#0x10]
4AEC1A:  VLDR            S2, [R6,#0x1C]
4AEC1E:  VSUB.F32        S0, S0, S18
4AEC22:  VLDR            S22, [R6,#0x14]
4AEC26:  VLDR            S4, [R6,#0x20]
4AEC2A:  VSUB.F32        S2, S2, S20
4AEC2E:  VSUB.F32        S4, S4, S22
4AEC32:  VSTR            S2, [SP,#0x48+var_40]
4AEC36:  VSTR            S0, [SP,#0x48+var_44]
4AEC3A:  VSTR            S4, [SP,#0x48+var_3C]
4AEC3E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4AEC42:  LDR             R0, [SP,#0x48+var_40]
4AEC44:  VMUL.F32        S6, S22, S16
4AEC48:  VLDR            S0, [SP,#0x48+var_44]
4AEC4C:  STR.W           R9, [R5,#0x20]
4AEC50:  VMOV            S2, R0
4AEC54:  STR             R0, [R5,#0x18]
4AEC56:  VMUL.F32        S4, S20, S0
4AEC5A:  MOV             R0, R8; this
4AEC5C:  VMUL.F32        S2, S18, S2
4AEC60:  VNEG.F32        S0, S0
4AEC64:  VSUB.F32        S2, S2, S4
4AEC68:  VSTR            S0, [R5,#0x1C]
4AEC6C:  VADD.F32        S2, S6, S2
4AEC70:  VNEG.F32        S2, S2
4AEC74:  VSTR            S2, [R4,#8]
4AEC78:  VLDR            S18, [R6,#0x18]
4AEC7C:  VLDR            S0, [R6,#0x24]
4AEC80:  VLDR            S20, [R6,#0x1C]
4AEC84:  VLDR            S2, [R6,#0x28]
4AEC88:  VSUB.F32        S0, S0, S18
4AEC8C:  VLDR            S22, [R6,#0x20]
4AEC90:  VLDR            S4, [R6,#0x2C]
4AEC94:  VSUB.F32        S2, S2, S20
4AEC98:  VSUB.F32        S4, S4, S22
4AEC9C:  VSTR            S2, [SP,#0x48+var_40]
4AECA0:  VSTR            S0, [SP,#0x48+var_44]
4AECA4:  VSTR            S4, [SP,#0x48+var_3C]
4AECA8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
4AECAC:  LDR             R0, [SP,#0x48+var_40]
4AECAE:  VMUL.F32        S6, S22, S16
4AECB2:  VLDR            S0, [SP,#0x48+var_44]
4AECB6:  STR.W           R9, [R5,#0x2C]
4AECBA:  VMOV            S2, R0
4AECBE:  STR             R0, [R5,#0x24]
4AECC0:  VMUL.F32        S4, S20, S0
4AECC4:  VMUL.F32        S2, S18, S2
4AECC8:  VNEG.F32        S0, S0
4AECCC:  VSUB.F32        S2, S2, S4
4AECD0:  VSTR            S0, [R5,#0x28]
4AECD4:  VADD.F32        S2, S6, S2
4AECD8:  VNEG.F32        S2, S2
4AECDC:  VSTR            S2, [R4,#0xC]
4AECE0:  ADD             SP, SP, #0x10
4AECE2:  VPOP            {D8-D11}
4AECE6:  POP.W           {R8,R9,R11}
4AECEA:  POP             {R4-R7,PC}
