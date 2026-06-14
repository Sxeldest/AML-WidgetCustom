; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser48ComputeEntityBoundingBoxSegmentPlanesUncachedAllEfR7CEntityP7CVectorPf
; Address            : 0x4AECF0 - 0x4AEE2E
; =========================================================

4AECF0:  PUSH            {R4,R5,R7,LR}
4AECF2:  ADD             R7, SP, #8
4AECF4:  SUB             SP, SP, #0x30
4AECF6:  MOV             R5, R2
4AECF8:  MOV             R2, SP; CEntity *
4AECFA:  MOV             R4, R3
4AECFC:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4AED00:  VLDR            S0, =0.0
4AED04:  VMOV.F32        S5, #0.25
4AED08:  VLDR            S4, [SP,#0x38+var_34]
4AED0C:  MOVS            R0, #0
4AED0E:  VLDR            S2, [SP,#0x38+var_38]
4AED12:  VADD.F32        S10, S4, S0
4AED16:  VLDR            S8, [SP,#0x38+var_28]
4AED1A:  VADD.F32        S12, S2, S0
4AED1E:  VLDR            S6, [SP,#0x38+var_2C]
4AED22:  VLDR            S14, [SP,#0x38+var_1C]
4AED26:  VLDR            S1, [SP,#0x38+var_20]
4AED2A:  VLDR            S3, [SP,#0x38+var_10]
4AED2E:  VLDR            S7, [SP,#0x38+var_14]
4AED32:  STR             R0, [R5,#8]
4AED34:  VADD.F32        S10, S10, S8
4AED38:  VADD.F32        S12, S12, S6
4AED3C:  VADD.F32        S10, S10, S14
4AED40:  VADD.F32        S12, S12, S1
4AED44:  VADD.F32        S10, S10, S3
4AED48:  VADD.F32        S12, S12, S7
4AED4C:  VMUL.F32        S10, S10, S5
4AED50:  VMUL.F32        S12, S12, S5
4AED54:  VSUB.F32        S5, S4, S10
4AED58:  VSUB.F32        S9, S2, S12
4AED5C:  VNEG.F32        S11, S5
4AED60:  VMUL.F32        S2, S2, S5
4AED64:  VMUL.F32        S4, S9, S4
4AED68:  VSTR            S11, [R5]
4AED6C:  VSTR            S9, [R5,#4]
4AED70:  VLDR            S5, [SP,#0x38+var_30]
4AED74:  VSUB.F32        S2, S4, S2
4AED78:  VMUL.F32        S4, S5, S0
4AED7C:  VSUB.F32        S5, S6, S12
4AED80:  VADD.F32        S2, S2, S4
4AED84:  VSUB.F32        S4, S8, S10
4AED88:  VNEG.F32        S2, S2
4AED8C:  VNEG.F32        S9, S4
4AED90:  VMUL.F32        S4, S6, S4
4AED94:  VMUL.F32        S6, S5, S8
4AED98:  VSTR            S2, [R4]
4AED9C:  STR             R0, [R5,#0x14]
4AED9E:  VSTR            S9, [R5,#0xC]
4AEDA2:  VSTR            S5, [R5,#0x10]
4AEDA6:  VSUB.F32        S4, S6, S4
4AEDAA:  VLDR            S2, [SP,#0x38+var_24]
4AEDAE:  VSUB.F32        S6, S1, S12
4AEDB2:  VMUL.F32        S2, S2, S0
4AEDB6:  VADD.F32        S2, S4, S2
4AEDBA:  VSUB.F32        S4, S14, S10
4AEDBE:  VMUL.F32        S14, S6, S14
4AEDC2:  VNEG.F32        S2, S2
4AEDC6:  VNEG.F32        S8, S4
4AEDCA:  VMUL.F32        S4, S1, S4
4AEDCE:  VSTR            S2, [R4,#4]
4AEDD2:  STR             R0, [R5,#0x20]
4AEDD4:  VSTR            S8, [R5,#0x18]
4AEDD8:  VSUB.F32        S4, S14, S4
4AEDDC:  VSTR            S6, [R5,#0x1C]
4AEDE0:  VSUB.F32        S6, S7, S12
4AEDE4:  VLDR            S2, [SP,#0x38+var_18]
4AEDE8:  VMUL.F32        S2, S2, S0
4AEDEC:  VADD.F32        S2, S4, S2
4AEDF0:  VSUB.F32        S4, S3, S10
4AEDF4:  VMUL.F32        S10, S6, S3
4AEDF8:  VNEG.F32        S2, S2
4AEDFC:  VNEG.F32        S8, S4
4AEE00:  VMUL.F32        S4, S7, S4
4AEE04:  VSTR            S2, [R4,#8]
4AEE08:  STR             R0, [R5,#0x2C]
4AEE0A:  VSTR            S8, [R5,#0x24]
4AEE0E:  VSUB.F32        S4, S10, S4
4AEE12:  VSTR            S6, [R5,#0x28]
4AEE16:  VLDR            S2, [SP,#0x38+var_C]
4AEE1A:  VMUL.F32        S0, S2, S0
4AEE1E:  VADD.F32        S0, S4, S0
4AEE22:  VNEG.F32        S0, S0
4AEE26:  VSTR            S0, [R4,#0xC]
4AEE2A:  ADD             SP, SP, #0x30 ; '0'
4AEE2C:  POP             {R4,R5,R7,PC}
