; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser17ComputeEntityDirsERK7CEntityP7CVector
; Address            : 0x4ADFB4 - 0x4AE050
; =========================================================

4ADFB4:  PUSH            {R4,R5,R7,LR}
4ADFB6:  ADD             R7, SP, #8
4ADFB8:  VPUSH           {D8-D9}
4ADFBC:  MOV             R4, R1
4ADFBE:  LDR             R1, [R0,#0x14]
4ADFC0:  CBZ             R1, loc_4ADFDC
4ADFC2:  VLDR            S6, [R1]
4ADFC6:  VLDR            S16, [R1,#4]
4ADFCA:  VLDR            S4, [R1,#8]
4ADFCE:  VLDR            S18, [R1,#0x10]
4ADFD2:  VLDR            S2, [R1,#0x14]
4ADFD6:  VLDR            S0, [R1,#0x18]
4ADFDA:  B               loc_4AE002
4ADFDC:  LDR             R5, [R0,#0x10]
4ADFDE:  MOV             R0, R5; x
4ADFE0:  BLX             sinf
4ADFE4:  VMOV            S16, R0
4ADFE8:  MOV             R0, R5; x
4ADFEA:  VNEG.F32        S18, S16
4ADFEE:  BLX             cosf
4ADFF2:  VLDR            S0, =0.0
4ADFF6:  VMOV            S2, R0
4ADFFA:  VMOV.F32        S4, S0
4ADFFE:  VMOV.F32        S6, S2
4AE002:  VNEG.F32        S14, S0
4AE006:  VNEG.F32        S8, S6
4AE00A:  VNEG.F32        S10, S4
4AE00E:  VNEG.F32        S12, S16
4AE012:  VNEG.F32        S1, S2
4AE016:  VNEG.F32        S3, S18
4AE01A:  VSTR            S14, [R4,#0x20]
4AE01E:  VSTR            S6, [R4,#0x24]
4AE022:  VSTR            S16, [R4,#0x28]
4AE026:  VSTR            S4, [R4,#0x2C]
4AE02A:  VSTR            S18, [R4]
4AE02E:  VSTR            S2, [R4,#4]
4AE032:  VSTR            S0, [R4,#8]
4AE036:  VSTR            S8, [R4,#0xC]
4AE03A:  VSTR            S12, [R4,#0x10]
4AE03E:  VSTR            S10, [R4,#0x14]
4AE042:  VSTR            S3, [R4,#0x18]
4AE046:  VSTR            S1, [R4,#0x1C]
4AE04A:  VPOP            {D8-D9}
4AE04E:  POP             {R4,R5,R7,PC}
