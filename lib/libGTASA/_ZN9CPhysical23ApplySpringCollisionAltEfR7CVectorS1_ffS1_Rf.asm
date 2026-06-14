; =========================================================
; Game Engine Function: _ZN9CPhysical23ApplySpringCollisionAltEfR7CVectorS1_ffS1_Rf
; Address            : 0x405A64 - 0x405B64
; =========================================================

405A64:  PUSH            {R4,R5,R7,LR}
405A66:  ADD             R7, SP, #8
405A68:  SUB             SP, SP, #0x10
405A6A:  VMOV.F32        S0, #1.0
405A6E:  VLDR            S2, [R7,#arg_0]
405A72:  VSUB.F32        S2, S0, S2
405A76:  VCMPE.F32       S2, #0.0
405A7A:  VMRS            APSR_nzcv, FPSCR
405A7E:  BLE             loc_405B5E
405A80:  LDRD.W          R12, LR, [R7,#arg_8]
405A84:  VMOV            S4, R1
405A88:  VLDR            S12, [R2]
405A8C:  VLDR            S14, [R2,#4]
405A90:  VLDR            S6, [R12]
405A94:  VLDR            S10, [R12,#4]
405A98:  VMUL.F32        S12, S12, S6
405A9C:  VLDR            S8, [R12,#8]
405AA0:  VMUL.F32        S14, S14, S10
405AA4:  VLDR            S1, [R2,#8]
405AA8:  VLDR            S0, [R7,#arg_4]
405AAC:  VMUL.F32        S1, S1, S8
405AB0:  VADD.F32        S12, S12, S14
405AB4:  VADD.F32        S12, S12, S1
405AB8:  VCMPE.F32       S12, #0.0
405ABC:  VMRS            APSR_nzcv, FPSCR
405AC0:  BLE             loc_405ADA
405AC2:  VNEG.F32        S6, S6
405AC6:  VNEG.F32        S10, S10
405ACA:  VNEG.F32        S8, S8
405ACE:  VSTR            S6, [R12]
405AD2:  VSTR            S10, [R12,#4]
405AD6:  VSTR            S8, [R12,#8]
405ADA:  VLDR            S6, =0.008
405ADE:  MOVS            R5, #1
405AE0:  VLDR            S8, [R0,#0x90]
405AE4:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x405AEE)
405AE6:  VMUL.F32        S6, S8, S6
405AEA:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
405AEC:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
405AEE:  VADD.F32        S6, S6, S6
405AF2:  VMUL.F32        S4, S6, S4
405AF6:  VLDR            S6, [R1]
405AFA:  VMUL.F32        S2, S2, S4
405AFE:  VMOV.F32        S4, #3.0
405B02:  VMIN.F32        D2, D3, D2
405B06:  VMUL.F32        S2, S4, S2
405B0A:  VMUL.F32        S0, S2, S0
405B0E:  VSTR            S0, [LR]
405B12:  LDRB.W          R1, [R0,#0x44]
405B16:  LSLS            R1, R1, #0x1F
405B18:  ITTT NE
405B1A:  VMOVNE.F32      S2, #0.75
405B1E:  VMULNE.F32      S0, S0, S2
405B22:  VSTRNE          S0, [LR]
405B26:  VLDR            S2, [R12]
405B2A:  VLDR            S4, [R12,#4]
405B2E:  VLDR            S6, [R12,#8]
405B32:  VMUL.F32        S2, S0, S2
405B36:  VMUL.F32        S4, S0, S4
405B3A:  LDRD.W          LR, R4, [R3]
405B3E:  VMUL.F32        S0, S0, S6
405B42:  LDR             R3, [R3,#8]
405B44:  STRD.W          LR, R4, [SP,#0x18+var_18]
405B48:  STRD.W          R3, R5, [SP,#0x18+var_10]
405B4C:  VMOV            R1, S2
405B50:  VMOV            R2, S4
405B54:  VMOV            R12, S0
405B58:  MOV             R3, R12
405B5A:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
405B5E:  MOVS            R0, #1
405B60:  ADD             SP, SP, #0x10
405B62:  POP             {R4,R5,R7,PC}
