; =========================================================
; Game Engine Function: _ZN8CVehicle30CalculateLightingFromCollisionEv
; Address            : 0x581F54 - 0x582070
; =========================================================

581F54:  PUSH            {R4,R6,R7,LR}
581F56:  ADD             R7, SP, #8
581F58:  LDRB.W          R3, [R0,#0x586]
581F5C:  VMOV.F32        S0, #0.5
581F60:  LDRB.W          R12, [R0,#0x587]
581F64:  VMOV.F32        S3, #15.0
581F68:  AND.W           R2, R3, #0xF
581F6C:  LDRB.W          R1, [R0,#0x584]
581F70:  AND.W           R4, R12, #0xF
581F74:  LDRB.W          LR, [R0,#0x585]
581F78:  VMOV            S4, R2
581F7C:  AND.W           R2, R1, #0xF
581F80:  VMOV            S2, R4
581F84:  AND.W           R4, LR, #0xF
581F88:  LSRS            R1, R1, #4
581F8A:  VMOV            S8, R2
581F8E:  VMOV            S10, R1
581F92:  LSRS            R2, R3, #4
581F94:  VMOV            S6, R4
581F98:  MOV.W           R1, LR,LSR#4
581F9C:  VCVT.F32.S32    S2, S2
581FA0:  VCVT.F32.S32    S4, S4
581FA4:  VCVT.F32.S32    S6, S6
581FA8:  VCVT.F32.S32    S8, S8
581FAC:  VCVT.F32.S32    S10, S10
581FB0:  VMOV            S12, R2
581FB4:  VMOV            S14, R1
581FB8:  MOV.W           R1, R12,LSR#4
581FBC:  VCVT.F32.S32    S12, S12
581FC0:  VCVT.F32.S32    S14, S14
581FC4:  VMUL.F32        S6, S6, S0
581FC8:  VMUL.F32        S8, S8, S0
581FCC:  VMUL.F32        S10, S10, S0
581FD0:  VMOV            S1, R1
581FD4:  LDR             R1, =(_ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x581FDE)
581FD6:  VMOV.F32        S5, #1.0
581FDA:  ADD             R1, PC; _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr
581FDC:  VCVT.F32.S32    S1, S1
581FE0:  VMUL.F32        S14, S14, S0
581FE4:  VMUL.F32        S4, S4, S0
581FE8:  LDR             R1, [R1]; CCustomBuildingDNPipeline::m_fDNBalanceParam ...
581FEA:  VDIV.F32        S8, S8, S3
581FEE:  VDIV.F32        S10, S10, S3
581FF2:  VMUL.F32        S12, S12, S0
581FF6:  VLDR            S7, [R1]
581FFA:  VDIV.F32        S14, S14, S3
581FFE:  VDIV.F32        S6, S6, S3
582002:  VMUL.F32        S2, S2, S0
582006:  VMUL.F32        S0, S1, S0
58200A:  VSUB.F32        S1, S5, S7
58200E:  VDIV.F32        S4, S4, S3
582012:  VDIV.F32        S12, S12, S3
582016:  VMUL.F32        S8, S1, S8
58201A:  VMUL.F32        S10, S7, S10
58201E:  VDIV.F32        S2, S2, S3
582022:  VDIV.F32        S0, S0, S3
582026:  VADD.F32        S8, S10, S8
58202A:  VLDR            S10, =0.0
58202E:  VMUL.F32        S6, S1, S6
582032:  VMUL.F32        S14, S7, S14
582036:  VMUL.F32        S4, S1, S4
58203A:  VMUL.F32        S12, S7, S12
58203E:  VMUL.F32        S2, S1, S2
582042:  VMUL.F32        S0, S7, S0
582046:  VADD.F32        S8, S8, S10
58204A:  VADD.F32        S6, S14, S6
58204E:  VADD.F32        S4, S12, S4
582052:  VADD.F32        S0, S0, S2
582056:  VADD.F32        S6, S8, S6
58205A:  VADD.F32        S2, S6, S4
58205E:  VMOV.F32        S4, #0.25
582062:  VADD.F32        S0, S2, S0
582066:  VMUL.F32        S0, S0, S4
58206A:  VSTR            S0, [R0,#0x130]
58206E:  POP             {R4,R6,R7,PC}
