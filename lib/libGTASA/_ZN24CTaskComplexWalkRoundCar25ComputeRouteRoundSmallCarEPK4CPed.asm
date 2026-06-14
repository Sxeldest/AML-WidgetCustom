; =========================================================
; Game Engine Function: _ZN24CTaskComplexWalkRoundCar25ComputeRouteRoundSmallCarEPK4CPed
; Address            : 0x50CABC - 0x50CCE8
; =========================================================

50CABC:  PUSH            {R4-R7,LR}
50CABE:  ADD             R7, SP, #0xC
50CAC0:  PUSH.W          {R8,R9,R11}
50CAC4:  VPUSH           {D8}
50CAC8:  SUB             SP, SP, #0x88; float *
50CACA:  MOV             R5, R1
50CACC:  MOV             R4, R0
50CACE:  LDR             R0, [R5,#0x14]
50CAD0:  ADDS            R6, R5, #4
50CAD2:  LDR             R1, [R4,#0x1C]; float
50CAD4:  CMP             R0, #0
50CAD6:  MOV             R2, R6
50CAD8:  IT NE
50CADA:  ADDNE.W         R2, R0, #0x30 ; '0'
50CADE:  LDR             R0, [R2,#8]; this
50CAE0:  ADD             R2, SP, #0xA8+var_50; CEntity *
50CAE2:  BLX             j__ZN20CPedGeometryAnalyser31ComputeEntityBoundingBoxCornersEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCorners(float,CEntity &,CVector *)
50CAE6:  LDR             R0, [R5,#0x14]
50CAE8:  MOV             R2, R6
50CAEA:  LDR             R1, [R4,#0x1C]; float
50CAEC:  ADD.W           R9, SP, #0xA8+var_90
50CAF0:  CMP             R0, #0
50CAF2:  ADD.W           R8, SP, #0xA8+var_80
50CAF6:  IT NE
50CAF8:  ADDNE.W         R2, R0, #0x30 ; '0'
50CAFC:  MOV             R3, R9; CVector *
50CAFE:  LDR             R0, [R2,#8]; this
50CB00:  MOV             R2, R8; CEntity *
50CB02:  BLX             j__ZN20CPedGeometryAnalyser30ComputeEntityBoundingBoxPlanesEfR7CEntityP7CVectorPf; CPedGeometryAnalyser::ComputeEntityBoundingBoxPlanes(float,CEntity &,CVector *,float *)
50CB06:  LDR             R1, [R4,#0x1C]; CPed *
50CB08:  MOV             R0, R5; this
50CB0A:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
50CB0E:  ADDS            R1, R0, #1
50CB10:  BEQ             loc_50CB5E
50CB12:  ADD.W           R2, R0, R0,LSL#1
50CB16:  LDR             R1, [R5,#0x14]
50CB18:  ADD.W           R0, R9, R0,LSL#2
50CB1C:  ADD.W           R2, R8, R2,LSL#2
50CB20:  CMP             R1, #0
50CB22:  VLDR            S0, [R2]
50CB26:  VLDR            S2, [R2,#4]
50CB2A:  VLDR            S4, [R2,#8]
50CB2E:  IT NE
50CB30:  ADDNE.W         R6, R1, #0x30 ; '0'
50CB34:  VLDR            S6, [R6]
50CB38:  VLDR            S8, [R6,#4]
50CB3C:  VMUL.F32        S0, S0, S6
50CB40:  VLDR            S10, [R6,#8]
50CB44:  VMUL.F32        S2, S2, S8
50CB48:  VMUL.F32        S4, S4, S10
50CB4C:  VADD.F32        S0, S0, S2
50CB50:  VLDR            S2, [R0]
50CB54:  VADD.F32        S0, S0, S4
50CB58:  VADD.F32        S16, S2, S0
50CB5C:  B               loc_50CB62
50CB5E:  VLDR            S16, =0.0
50CB62:  LDRB            R0, [R4,#0xD]
50CB64:  LSLS            R0, R0, #0x1F
50CB66:  BEQ.W           loc_50CCB4
50CB6A:  VLDR            S6, [SP,#0xA8+var_80]
50CB6E:  VLDR            S0, [R4,#0x10]
50CB72:  VLDR            S8, [SP,#0xA8+var_7C]
50CB76:  VLDR            S4, [R4,#0x14]
50CB7A:  VMUL.F32        S6, S6, S0
50CB7E:  VLDR            S10, [SP,#0xA8+var_78]
50CB82:  VMUL.F32        S8, S8, S4
50CB86:  VLDR            S2, [R4,#0x18]
50CB8A:  VMUL.F32        S10, S10, S2
50CB8E:  VADD.F32        S6, S6, S8
50CB92:  VLDR            S8, [SP,#0xA8+var_90]
50CB96:  VADD.F32        S6, S6, S10
50CB9A:  VADD.F32        S6, S8, S6
50CB9E:  VCMPE.F32       S6, #0.0
50CBA2:  VSTR            S6, [SP,#0xA8+var_A0]
50CBA6:  VMRS            APSR_nzcv, FPSCR
50CBAA:  BGE.W           loc_50CCB4
50CBAE:  VLDR            S6, [SP,#0xA8+var_74]
50CBB2:  VLDR            S8, [SP,#0xA8+var_70]
50CBB6:  VMUL.F32        S6, S6, S0
50CBBA:  VLDR            S10, [SP,#0xA8+var_6C]
50CBBE:  VMUL.F32        S8, S8, S4
50CBC2:  VMUL.F32        S10, S10, S2
50CBC6:  VADD.F32        S6, S6, S8
50CBCA:  VLDR            S8, [SP,#0xA8+var_8C]
50CBCE:  VADD.F32        S6, S6, S10
50CBD2:  VADD.F32        S6, S8, S6
50CBD6:  VCMPE.F32       S6, #0.0
50CBDA:  VSTR            S6, [SP,#0xA8+var_9C]
50CBDE:  VMRS            APSR_nzcv, FPSCR
50CBE2:  BGE             loc_50CCB4
50CBE4:  VLDR            S6, [SP,#0xA8+var_68]
50CBE8:  VLDR            S8, [SP,#0xA8+var_64]
50CBEC:  VMUL.F32        S6, S6, S0
50CBF0:  VLDR            S10, [SP,#0xA8+var_60]
50CBF4:  VMUL.F32        S8, S8, S4
50CBF8:  VMUL.F32        S10, S10, S2
50CBFC:  VADD.F32        S6, S6, S8
50CC00:  VLDR            S8, [SP,#0xA8+var_88]
50CC04:  VADD.F32        S6, S6, S10
50CC08:  VADD.F32        S6, S8, S6
50CC0C:  VCMPE.F32       S6, #0.0
50CC10:  VSTR            S6, [SP,#0xA8+var_98]
50CC14:  VMRS            APSR_nzcv, FPSCR
50CC18:  BGE             loc_50CCB4
50CC1A:  VLDR            S6, [SP,#0xA8+var_5C]
50CC1E:  VLDR            S8, [SP,#0xA8+var_58]
50CC22:  VMUL.F32        S0, S6, S0
50CC26:  VLDR            S10, [SP,#0xA8+var_54]
50CC2A:  VMUL.F32        S4, S8, S4
50CC2E:  VMUL.F32        S2, S10, S2
50CC32:  VADD.F32        S0, S0, S4
50CC36:  VADD.F32        S0, S0, S2
50CC3A:  VLDR            S2, [SP,#0xA8+var_84]
50CC3E:  VADD.F32        S0, S2, S0
50CC42:  VCMPE.F32       S0, #0.0
50CC46:  VSTR            S0, [SP,#0xA8+var_94]
50CC4A:  VMRS            APSR_nzcv, FPSCR
50CC4E:  BGE             loc_50CCB4
50CC50:  LDR             R1, [R4,#0x1C]; CVector *
50CC52:  ADD.W           R0, R4, #0x10; this
50CC56:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
50CC5A:  ADDS            R1, R0, #1
50CC5C:  BEQ             loc_50CCB4
50CC5E:  ADD             R1, SP, #0xA8+var_A0
50CC60:  VLDR            S0, =0.05
50CC64:  ADD.W           R1, R1, R0,LSL#2
50CC68:  ADD.W           R0, R0, R0,LSL#1
50CC6C:  VLDR            S8, [R4,#0x14]
50CC70:  VLDR            S2, [R1]
50CC74:  ADD.W           R0, R8, R0,LSL#2
50CC78:  VLDR            S10, [R4,#0x18]
50CC7C:  VSUB.F32        S0, S0, S2
50CC80:  VLDR            S2, [R0]
50CC84:  VLDR            S4, [R0,#4]
50CC88:  VLDR            S6, [R0,#8]
50CC8C:  VMUL.F32        S4, S0, S4
50CC90:  VMUL.F32        S2, S2, S0
50CC94:  VMUL.F32        S0, S0, S6
50CC98:  VLDR            S6, [R4,#0x10]
50CC9C:  VADD.F32        S4, S4, S8
50CCA0:  VADD.F32        S2, S2, S6
50CCA4:  VADD.F32        S0, S0, S10
50CCA8:  VSTR            S2, [R4,#0x10]
50CCAC:  VSTR            S4, [R4,#0x14]
50CCB0:  VSTR            S0, [R4,#0x18]
50CCB4:  LDRB            R0, [R4,#0xE]
50CCB6:  ADD.W           R2, R4, #0x10; CEntity *
50CCBA:  LDRD.W          R1, R3, [R4,#0x1C]; CVector *
50CCBE:  SBFX.W          R0, R0, #0, #4
50CCC2:  STR             R0, [SP,#0xA8+var_A8]; CPointRoute *
50CCC4:  MOV             R0, R5; this
50CCC6:  BLX             j__ZN20CPedGeometryAnalyser34ComputeRouteRoundEntityBoundingBoxERK4CPedR7CEntityRK7CVectorR11CPointRoutei; CPedGeometryAnalyser::ComputeRouteRoundEntityBoundingBox(CPed const&,CEntity &,CVector const&,CPointRoute &,int)
50CCCA:  VMOV            R1, S16
50CCCE:  LDRB            R2, [R4,#0xD]
50CCD0:  AND.W           R2, R2, #0xC3
50CCD4:  BFI.W           R2, R0, #2, #4
50CCD8:  STRB            R2, [R4,#0xD]
50CCDA:  MOV             R0, R1
50CCDC:  ADD             SP, SP, #0x88
50CCDE:  VPOP            {D8}
50CCE2:  POP.W           {R8,R9,R11}
50CCE6:  POP             {R4-R7,PC}
