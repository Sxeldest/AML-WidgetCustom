; =========================================================
; Game Engine Function: _ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_
; Address            : 0x405B6C - 0x405D88
; =========================================================

405B6C:  PUSH            {R4-R7,LR}
405B6E:  ADD             R7, SP, #0xC
405B70:  PUSH.W          {R8,R9,R11}
405B74:  VPUSH           {D8-D14}
405B78:  SUB             SP, SP, #0x38
405B7A:  MOV             R4, R0
405B7C:  LDRD.W          R9, R0, [R7,#arg_0]
405B80:  MOV             R5, R3
405B82:  MOV             R8, R2
405B84:  VLDR            S16, [R5]
405B88:  MOV             R6, R1
405B8A:  VLDR            S18, [R5,#4]
405B8E:  MOV             R1, R4
405B90:  VLDR            S20, [R5,#8]
405B94:  VLDR            S22, [R0]
405B98:  VLDR            S24, [R0,#4]
405B9C:  VLDR            S26, [R0,#8]
405BA0:  LDRD.W          R2, R3, [R9]
405BA4:  LDR.W           R0, [R9,#8]
405BA8:  STR             R0, [SP,#0x88+var_88]
405BAA:  ADD             R0, SP, #0x88+var_5C
405BAC:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
405BB0:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x405BC2)
405BB2:  VMOV.F32        S6, #3.0
405BB6:  VLDR            S0, [R5]
405BBA:  VMOV            S14, R6
405BBE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
405BC0:  VLDR            S8, [SP,#0x88+var_5C]
405BC4:  VLDR            S2, [R5,#4]
405BC8:  VMUL.F32        S1, S22, S16
405BCC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
405BCE:  VMUL.F32        S0, S8, S0
405BD2:  VLDR            S10, [SP,#0x88+var_58]
405BD6:  VMUL.F32        S8, S26, S20
405BDA:  VLDR            S4, [R5,#8]
405BDE:  VLDR            S28, [R0]
405BE2:  VMUL.F32        S10, S10, S2
405BE6:  VLDR            S12, [SP,#0x88+var_54]
405BEA:  VMIN.F32        D3, D14, D3
405BEE:  LDRB.W          R0, [R4,#0x44]
405BF2:  VMUL.F32        S12, S12, S4
405BF6:  LDR             R1, =(DAMPING_LIMIT_IN_FRAME_ptr - 0x405BFC)
405BF8:  ADD             R1, PC; DAMPING_LIMIT_IN_FRAME_ptr
405BFA:  LSLS            R0, R0, #0x1F
405BFC:  VMUL.F32        S6, S6, S14
405C00:  LDR             R0, [R1]; DAMPING_LIMIT_IN_FRAME
405C02:  VMUL.F32        S14, S24, S18
405C06:  VADD.F32        S0, S0, S10
405C0A:  VADD.F32        S2, S6, S6
405C0E:  VADD.F32        S14, S1, S14
405C12:  IT EQ
405C14:  VMOVEQ.F32      S2, S6
405C18:  VADD.F32        S0, S0, S12
405C1C:  VLDR            S6, [R0]
405C20:  VCMPE.F32       S2, S6
405C24:  VMRS            APSR_nzcv, FPSCR
405C28:  VADD.F32        S4, S14, S8
405C2C:  BLE             loc_405C34
405C2E:  VMOV.F32        S2, S6
405C32:  B               loc_405C46
405C34:  VNEG.F32        S6, S6
405C38:  VCMPE.F32       S2, S6
405C3C:  VMRS            APSR_nzcv, FPSCR
405C40:  IT LT
405C42:  VMOVLT.F32      S2, S6
405C46:  VMUL.F32        S4, S4, S2
405C4A:  VLDR            S6, =-0.0
405C4E:  VMOV            S16, R8
405C52:  VSUB.F32        S2, S0, S4
405C56:  VCMPE.F32       S4, S6
405C5A:  VMRS            APSR_nzcv, FPSCR
405C5E:  BGE             loc_405C7A
405C60:  VCMPE.F32       S2, #0.0
405C64:  VMRS            APSR_nzcv, FPSCR
405C68:  BLE             loc_405C7A
405C6A:  VCMPE.F32       S0, #0.0
405C6E:  VMRS            APSR_nzcv, FPSCR
405C72:  BGE             loc_405C9C
405C74:  VNEG.F32        S18, S0
405C78:  B               loc_405CA0
405C7A:  VNEG.F32        S18, S4
405C7E:  VCMPE.F32       S4, S6
405C82:  VMRS            APSR_nzcv, FPSCR
405C86:  BLE             loc_405CA0
405C88:  VCMPE.F32       S2, #0.0
405C8C:  VMRS            APSR_nzcv, FPSCR
405C90:  BGE             loc_405CA0
405C92:  VCMPE.F32       S0, #0.0
405C96:  VMRS            APSR_nzcv, FPSCR
405C9A:  BGT             loc_405C74
405C9C:  VLDR            S18, =0.0
405CA0:  LDR             R1, [R4,#0x14]; CVector *
405CA2:  ADD.W           R2, R4, #0xA8
405CA6:  ADD             R0, SP, #0x88+var_5C; CMatrix *
405CA8:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
405CAC:  VLDR            S0, [R9]
405CB0:  ADD             R0, SP, #0x88+var_68; CVector *
405CB2:  VLDR            S6, [SP,#0x88+var_5C]
405CB6:  ADD             R1, SP, #0x88+var_74; CVector *
405CB8:  VLDR            S2, [R9,#4]
405CBC:  MOV             R2, R5
405CBE:  VLDR            S8, [SP,#0x88+var_58]
405CC2:  VSUB.F32        S0, S0, S6
405CC6:  VLDR            S4, [R9,#8]
405CCA:  VLDR            S10, [SP,#0x88+var_54]
405CCE:  VSUB.F32        S2, S2, S8
405CD2:  VLDR            S20, [R4,#0x90]
405CD6:  VSUB.F32        S4, S4, S10
405CDA:  VSTR            S0, [SP,#0x88+var_74]
405CDE:  VSTR            S2, [SP,#0x88+var_70]
405CE2:  VSTR            S4, [SP,#0x88+var_6C]
405CE6:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
405CEA:  VLDR            S0, [SP,#0x88+var_68]
405CEE:  MOV.W           R12, #1
405CF2:  VLDR            S2, [SP,#0x88+var_64]
405CF6:  VMUL.F32        S0, S0, S0
405CFA:  VLDR            S4, [SP,#0x88+var_60]
405CFE:  VMUL.F32        S2, S2, S2
405D02:  LDR             R0, =(DAMPING_LIMIT_OF_SPRING_FORCE_ptr - 0x405D10)
405D04:  VMUL.F32        S4, S4, S4
405D08:  VLDR            S8, [R5,#8]
405D0C:  ADD             R0, PC; DAMPING_LIMIT_OF_SPRING_FORCE_ptr
405D0E:  LDR             R0, [R0]; DAMPING_LIMIT_OF_SPRING_FORCE
405D10:  VADD.F32        S0, S0, S2
405D14:  VMOV.F32        S2, #1.0
405D18:  VADD.F32        S0, S0, S4
405D1C:  VLDR            S4, [R4,#0x94]
405D20:  VDIV.F32        S6, S2, S20
405D24:  VDIV.F32        S0, S0, S4
405D28:  VADD.F32        S0, S6, S0
405D2C:  VLDR            S4, [R0]
405D30:  VLDR            S6, [R5,#4]
405D34:  VDIV.F32        S0, S2, S0
405D38:  VABS.F32        S2, S16
405D3C:  VMUL.F32        S0, S18, S0
405D40:  VMUL.F32        S2, S2, S4
405D44:  VLDR            S4, [R5]
405D48:  LDRD.W          R0, R6, [R9]
405D4C:  LDR.W           R5, [R9,#8]
405D50:  STRD.W          R0, R6, [SP,#0x88+var_88]
405D54:  MOV             R0, R4
405D56:  STRD.W          R5, R12, [SP,#0x88+var_80]
405D5A:  VMIN.F32        D0, D0, D1
405D5E:  VMUL.F32        S2, S4, S0
405D62:  VMUL.F32        S4, S6, S0
405D66:  VMUL.F32        S0, S8, S0
405D6A:  VMOV            R1, S2
405D6E:  VMOV            R2, S4
405D72:  VMOV            R3, S0
405D76:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
405D7A:  MOVS            R0, #1
405D7C:  ADD             SP, SP, #0x38 ; '8'
405D7E:  VPOP            {D8-D14}
405D82:  POP.W           {R8,R9,R11}
405D86:  POP             {R4-R7,PC}
