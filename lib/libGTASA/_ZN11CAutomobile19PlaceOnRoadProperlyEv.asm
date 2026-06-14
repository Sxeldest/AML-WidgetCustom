; =========================================================
; Game Engine Function: _ZN11CAutomobile19PlaceOnRoadProperlyEv
; Address            : 0x55E8C4 - 0x55EC6C
; =========================================================

55E8C4:  PUSH            {R4-R7,LR}
55E8C6:  ADD             R7, SP, #0xC
55E8C8:  PUSH.W          {R8,R9,R11}
55E8CC:  VPUSH           {D8-D12}
55E8D0:  SUB             SP, SP, #0x80
55E8D2:  MOV             R4, R0
55E8D4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55E8D8:  LDR             R0, [R0,#0x2C]
55E8DA:  ADD.W           R9, R4, #4
55E8DE:  LDR             R1, [R4,#0x14]
55E8E0:  VMOV.F32        S22, #5.0
55E8E4:  ADD             R2, SP, #0xC0+var_84; int
55E8E6:  ADD             R3, SP, #0xC0+var_88; int
55E8E8:  LDR             R0, [R0,#0x10]
55E8EA:  CMP             R1, #0
55E8EC:  VLDR            S0, [R1,#0x10]
55E8F0:  MOV.W           R6, #0
55E8F4:  VLDR            S2, [R1,#0x14]
55E8F8:  MOV.W           R8, #1
55E8FC:  VLDR            S18, [R0,#0x64]
55E900:  VLDR            S16, [R0,#4]
55E904:  MOV             R0, R9
55E906:  VMUL.F32        S4, S0, S18
55E90A:  IT NE
55E90C:  ADDNE.W         R0, R1, #0x30 ; '0'
55E910:  VLDR            S6, [R0]
55E914:  VMUL.F32        S0, S16, S0
55E918:  VMUL.F32        S8, S2, S18
55E91C:  VMUL.F32        S2, S16, S2
55E920:  VADD.F32        S4, S6, S4
55E924:  VADD.F32        S0, S0, S6
55E928:  VSTR            S4, [SP,#0xC0+var_58]
55E92C:  VLDR            S4, [R0,#4]
55E930:  VSTR            S0, [SP,#0xC0+var_4C]
55E934:  VADD.F32        S8, S4, S8
55E938:  VADD.F32        S2, S2, S4
55E93C:  VSTR            S8, [SP,#0xC0+var_54]
55E940:  VSTR            S2, [SP,#0xC0+var_48]
55E944:  VLDR            S0, [R0,#8]
55E948:  ADD             R0, SP, #0xC0+var_4C; CVector *
55E94A:  VADD.F32        S2, S0, S22
55E94E:  VSTR            S0, [SP,#0xC0+var_44]
55E952:  STRD.W          R8, R6, [SP,#0xC0+var_C0]; int
55E956:  STRD.W          R6, R6, [SP,#0xC0+var_B8]; int
55E95A:  STRD.W          R6, R6, [SP,#0xC0+var_B0]; int
55E95E:  STR             R6, [SP,#0xC0+var_A8]; int
55E960:  VMOV            R1, S2; int
55E964:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
55E968:  CMP             R0, #1
55E96A:  BNE             loc_55E994
55E96C:  LDR             R0, [SP,#0xC0+var_88]
55E96E:  MOVS            R5, #1
55E970:  VLDR            S20, [SP,#0xC0+var_7C]
55E974:  STR.W           R0, [R4,#0x490]
55E978:  LDR             R1, [R0,#0x1C]
55E97A:  LDRD.W          R2, R3, [R4,#0x1C]
55E97E:  LSRS            R1, R1, #0x1E
55E980:  BFI.W           R2, R1, #0x1E, #1
55E984:  STRD.W          R2, R3, [R4,#0x1C]
55E988:  LDR             R0, [R0,#0x1C]
55E98A:  BFI.W           R0, R2, #0, #0x1F
55E98E:  STRD.W          R0, R3, [R4,#0x1C]
55E992:  B               loc_55E996
55E994:  MOVS            R5, #0
55E996:  VMOV.F32        S24, #-5.0
55E99A:  VLDR            S0, [SP,#0xC0+var_44]
55E99E:  ADD             R0, SP, #0xC0+var_4C; CVector *
55E9A0:  ADD             R2, SP, #0xC0+var_84; int
55E9A2:  ADD             R3, SP, #0xC0+var_88; int
55E9A4:  STRD.W          R8, R6, [SP,#0xC0+var_C0]; int
55E9A8:  STRD.W          R6, R6, [SP,#0xC0+var_B8]; int
55E9AC:  STRD.W          R6, R6, [SP,#0xC0+var_B0]; int
55E9B0:  STR             R6, [SP,#0xC0+var_A8]; int
55E9B2:  VADD.F32        S0, S0, S24
55E9B6:  VMOV            R1, S0; int
55E9BA:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
55E9BE:  CMP             R0, #1
55E9C0:  BNE             loc_55E9E8
55E9C2:  CBZ             R5, loc_55E9EE
55E9C4:  VLDR            S0, [SP,#0xC0+var_7C]
55E9C8:  VLDR            S2, [SP,#0xC0+var_44]
55E9CC:  VSUB.F32        S4, S2, S0
55E9D0:  VSUB.F32        S2, S2, S20
55E9D4:  VABS.F32        S4, S4
55E9D8:  VABS.F32        S2, S2
55E9DC:  VCMPE.F32       S2, S4
55E9E0:  VMRS            APSR_nzcv, FPSCR
55E9E4:  BGT             loc_55E9F2
55E9E6:  B               loc_55EA16
55E9E8:  CMP             R5, #1
55E9EA:  BEQ             loc_55EA16
55E9EC:  B               loc_55EA22
55E9EE:  VLDR            S0, [SP,#0xC0+var_7C]
55E9F2:  LDR             R0, [SP,#0xC0+var_88]
55E9F4:  VMOV.F32        S20, S0
55E9F8:  STR.W           R0, [R4,#0x490]
55E9FC:  LDR             R1, [R0,#0x1C]
55E9FE:  LDRD.W          R2, R3, [R4,#0x1C]
55EA02:  LSRS            R1, R1, #0x1E
55EA04:  BFI.W           R2, R1, #0x1E, #1
55EA08:  STRD.W          R2, R3, [R4,#0x1C]
55EA0C:  LDR             R0, [R0,#0x1C]
55EA0E:  BFI.W           R0, R2, #0, #0x1F
55EA12:  STRD.W          R0, R3, [R4,#0x1C]
55EA16:  LDRB.W          R0, [SP,#0xC0+var_5F]
55EA1A:  VSTR            S20, [SP,#0xC0+var_44]
55EA1E:  STR.W           R0, [R4,#0x554]
55EA22:  LDR             R0, [R4,#0x14]
55EA24:  ADD             R2, SP, #0xC0+var_84; int
55EA26:  ADD             R3, SP, #0xC0+var_88; int
55EA28:  MOVS            R5, #0
55EA2A:  CMP             R0, #0
55EA2C:  MOV.W           R8, #1
55EA30:  IT NE
55EA32:  ADDNE.W         R9, R0, #0x30 ; '0'
55EA36:  ADD             R0, SP, #0xC0+var_58; CVector *
55EA38:  VLDR            S0, [R9,#8]
55EA3C:  VADD.F32        S2, S0, S22
55EA40:  VSTR            S0, [SP,#0xC0+var_50]
55EA44:  STRD.W          R8, R5, [SP,#0xC0+var_C0]; int
55EA48:  STRD.W          R5, R5, [SP,#0xC0+var_B8]; int
55EA4C:  STRD.W          R5, R5, [SP,#0xC0+var_B0]; int
55EA50:  STR             R5, [SP,#0xC0+var_A8]; int
55EA52:  VMOV            R1, S2; int
55EA56:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
55EA5A:  CMP             R0, #1
55EA5C:  MOV.W           R6, #0
55EA60:  BNE             loc_55EA88
55EA62:  LDR             R0, [SP,#0xC0+var_88]
55EA64:  MOVS            R6, #1
55EA66:  VLDR            S20, [SP,#0xC0+var_7C]
55EA6A:  STR.W           R0, [R4,#0x490]
55EA6E:  LDR             R1, [R0,#0x1C]
55EA70:  LDRD.W          R2, R3, [R4,#0x1C]
55EA74:  LSRS            R1, R1, #0x1E
55EA76:  BFI.W           R2, R1, #0x1E, #1
55EA7A:  STRD.W          R2, R3, [R4,#0x1C]
55EA7E:  LDR             R0, [R0,#0x1C]
55EA80:  BFI.W           R0, R2, #0, #0x1F
55EA84:  STRD.W          R0, R3, [R4,#0x1C]
55EA88:  VLDR            S0, [SP,#0xC0+var_50]
55EA8C:  ADD             R0, SP, #0xC0+var_58; CVector *
55EA8E:  ADD             R2, SP, #0xC0+var_84; int
55EA90:  ADD             R3, SP, #0xC0+var_88; int
55EA92:  VADD.F32        S0, S0, S24
55EA96:  STRD.W          R8, R5, [SP,#0xC0+var_C0]; int
55EA9A:  STRD.W          R5, R5, [SP,#0xC0+var_B8]; int
55EA9E:  VNEG.F32        S22, S18
55EAA2:  STRD.W          R5, R5, [SP,#0xC0+var_B0]; int
55EAA6:  STR             R5, [SP,#0xC0+var_A8]; int
55EAA8:  VMOV            R1, S0; int
55EAAC:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
55EAB0:  CMP             R0, #1
55EAB2:  BNE             loc_55EADA
55EAB4:  CBZ             R6, loc_55EAE0
55EAB6:  VLDR            S0, [SP,#0xC0+var_7C]
55EABA:  VLDR            S2, [SP,#0xC0+var_50]
55EABE:  VSUB.F32        S4, S2, S0
55EAC2:  VSUB.F32        S2, S2, S20
55EAC6:  VABS.F32        S4, S4
55EACA:  VABS.F32        S2, S2
55EACE:  VCMPE.F32       S2, S4
55EAD2:  VMRS            APSR_nzcv, FPSCR
55EAD6:  BGT             loc_55EAE4
55EAD8:  B               loc_55EB08
55EADA:  CMP             R6, #1
55EADC:  BEQ             loc_55EB08
55EADE:  B               loc_55EB14
55EAE0:  VLDR            S0, [SP,#0xC0+var_7C]
55EAE4:  LDR             R0, [SP,#0xC0+var_88]
55EAE6:  VMOV.F32        S20, S0
55EAEA:  STR.W           R0, [R4,#0x490]
55EAEE:  LDR             R1, [R0,#0x1C]
55EAF0:  LDRD.W          R2, R3, [R4,#0x1C]
55EAF4:  LSRS            R1, R1, #0x1E
55EAF6:  BFI.W           R2, R1, #0x1E, #1
55EAFA:  STRD.W          R2, R3, [R4,#0x1C]
55EAFE:  LDR             R0, [R0,#0x1C]
55EB00:  BFI.W           R0, R2, #0, #0x1F
55EB04:  STRD.W          R0, R3, [R4,#0x1C]
55EB08:  LDRB.W          R0, [SP,#0xC0+var_5F]
55EB0C:  VSTR            S20, [SP,#0xC0+var_50]
55EB10:  STR.W           R0, [R4,#0x580]
55EB14:  LDR             R0, [R4]
55EB16:  LDR.W           R1, [R0,#0xD8]
55EB1A:  MOV             R0, R4
55EB1C:  BLX             R1
55EB1E:  VLDR            S0, [SP,#0xC0+var_48]
55EB22:  VSUB.F32        S18, S16, S18
55EB26:  VLDR            S4, [SP,#0xC0+var_54]
55EB2A:  MOVS            R1, #0
55EB2C:  VLDR            S2, [SP,#0xC0+var_44]
55EB30:  VSUB.F32        S0, S0, S4
55EB34:  VMOV            S4, R0
55EB38:  ADD.W           R0, R4, #0x8B0
55EB3C:  VADD.F32        S2, S4, S2
55EB40:  VLDR            S4, [SP,#0xC0+var_50]
55EB44:  VDIV.F32        S0, S0, S18
55EB48:  VSTR            S2, [SP,#0xC0+var_44]
55EB4C:  VLDR            S2, [R0]
55EB50:  VADD.F32        S2, S2, S4
55EB54:  VSTR            S2, [SP,#0xC0+var_50]
55EB58:  LDR             R0, [R4,#0x14]
55EB5A:  VSTR            S0, [R0]
55EB5E:  VLDR            S0, [SP,#0xC0+var_58]
55EB62:  VLDR            S2, [SP,#0xC0+var_4C]
55EB66:  LDR             R0, [R4,#0x14]
55EB68:  VSUB.F32        S0, S2, S0
55EB6C:  VNEG.F32        S2, S0
55EB70:  VDIV.F32        S2, S2, S18
55EB74:  VSTR            S2, [R0,#4]
55EB78:  LDR             R0, [R4,#0x14]
55EB7A:  STR             R1, [R0,#8]
55EB7C:  ADD             R0, SP, #0xC0+var_94; this
55EB7E:  VLDR            S2, [SP,#0xC0+var_54]
55EB82:  VLDR            S6, [SP,#0xC0+var_48]
55EB86:  VLDR            S4, [SP,#0xC0+var_50]
55EB8A:  VLDR            S8, [SP,#0xC0+var_44]
55EB8E:  VSUB.F32        S2, S6, S2
55EB92:  VSTR            S0, [SP,#0xC0+var_94]
55EB96:  VSUB.F32        S4, S8, S4
55EB9A:  VSTR            S2, [SP,#0xC0+var_90]
55EB9E:  VSTR            S4, [SP,#0xC0+var_8C]
55EBA2:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
55EBA6:  LDR             R0, [R4,#0x14]
55EBA8:  LDR             R1, [SP,#0xC0+var_94]
55EBAA:  STR             R1, [R0,#0x10]
55EBAC:  LDR             R0, [R4,#0x14]
55EBAE:  LDR             R1, [SP,#0xC0+var_90]
55EBB0:  STR             R1, [R0,#0x14]
55EBB2:  LDR             R0, [R4,#0x14]
55EBB4:  LDR             R1, [SP,#0xC0+var_8C]
55EBB6:  STR             R1, [R0,#0x18]
55EBB8:  ADD             R0, SP, #0xC0+var_A0; CVector *
55EBBA:  LDR             R1, [R4,#0x14]; CVector *
55EBBC:  ADD.W           R2, R1, #0x10
55EBC0:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
55EBC4:  ADD             R2, SP, #0xC0+var_A0
55EBC6:  VMOV.F32        S0, #1.0
55EBCA:  LDM             R2, {R0-R2}; float
55EBCC:  LDR             R3, [R4,#0x14]
55EBCE:  STR             R0, [R3,#0x20]
55EBD0:  VDIV.F32        S4, S0, S18
55EBD4:  LDR             R0, [R4,#0x14]
55EBD6:  STR             R1, [R0,#0x24]
55EBD8:  LDR             R0, [R4,#0x14]
55EBDA:  STR             R2, [R0,#0x28]
55EBDC:  LDR             R0, [R4,#0x14]
55EBDE:  CMP             R0, #0
55EBE0:  VLDR            S0, [SP,#0xC0+var_58]
55EBE4:  VLDR            S2, [SP,#0xC0+var_54]
55EBE8:  VLDR            S6, [SP,#0xC0+var_50]
55EBEC:  VMUL.F32        S0, S16, S0
55EBF0:  VLDR            S8, [SP,#0xC0+var_4C]
55EBF4:  VMUL.F32        S2, S16, S2
55EBF8:  VLDR            S10, [SP,#0xC0+var_48]
55EBFC:  VMUL.F32        S6, S16, S6
55EC00:  VLDR            S12, [SP,#0xC0+var_44]
55EC04:  VMUL.F32        S8, S8, S22
55EC08:  VMUL.F32        S10, S10, S22
55EC0C:  VMUL.F32        S12, S12, S22
55EC10:  VADD.F32        S8, S8, S0
55EC14:  VADD.F32        S2, S10, S2
55EC18:  VADD.F32        S6, S12, S6
55EC1C:  VMUL.F32        S2, S4, S2
55EC20:  VMUL.F32        S0, S4, S6
55EC24:  VMUL.F32        S4, S4, S8
55EC28:  BEQ             loc_55EC3A
55EC2A:  VSTR            S4, [R0,#0x30]
55EC2E:  LDR             R0, [R4,#0x14]
55EC30:  VSTR            S2, [R0,#0x34]
55EC34:  LDR             R0, [R4,#0x14]
55EC36:  ADDS            R0, #0x38 ; '8'
55EC38:  B               loc_55EC46
55EC3A:  ADD.W           R0, R4, #0xC
55EC3E:  VSTR            S4, [R4,#4]
55EC42:  VSTR            S2, [R4,#8]
55EC46:  VSTR            S0, [R0]
55EC4A:  LDR.W           R0, [R4,#0x5A4]
55EC4E:  CMP             R0, #4
55EC50:  BNE             loc_55EC60
55EC52:  LDR             R1, [R4,#0x14]
55EC54:  LDRD.W          R0, R1, [R1,#0x10]; float
55EC58:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
55EC5C:  STR.W           R0, [R4,#0x9B8]
55EC60:  ADD             SP, SP, #0x80
55EC62:  VPOP            {D8-D12}
55EC66:  POP.W           {R8,R9,R11}
55EC6A:  POP             {R4-R7,PC}
