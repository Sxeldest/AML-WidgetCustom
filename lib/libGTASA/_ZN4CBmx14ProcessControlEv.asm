; =========================================================
; Game Engine Function: _ZN4CBmx14ProcessControlEv
; Address            : 0x568B14 - 0x568CB0
; =========================================================

568B14:  PUSH            {R4,R6,R7,LR}
568B16:  ADD             R7, SP, #8
568B18:  VPUSH           {D8}
568B1C:  MOV             R4, R0
568B1E:  BLX             j__ZN5CBike14ProcessControlEv; CBike::ProcessControl(void)
568B22:  LDRB            R0, [R4,#0x1C]
568B24:  LSLS            R0, R0, #0x19
568B26:  BMI.W           loc_568CAA
568B2A:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x568B38)
568B2C:  VMOV.F32        S4, #0.5
568B30:  VLDR            S0, =-50.0
568B34:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
568B36:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
568B38:  VLDR            S2, [R0]
568B3C:  VMOV.F32        S6, S4
568B40:  LDR             R0, =(dword_A0257C - 0x568B4A)
568B42:  VDIV.F32        S0, S2, S0
568B46:  ADD             R0, PC; dword_A0257C
568B48:  VLDR            S2, [R0]
568B4C:  VADD.F32        S0, S2, S0
568B50:  VLDR            S2, =0.0
568B54:  VCMPE.F32       S0, #0.0
568B58:  VMRS            APSR_nzcv, FPSCR
568B5C:  VCMPE.F32       S0, S4
568B60:  IT LT
568B62:  VMOVLT.F32      S6, S2
568B66:  VMRS            APSR_nzcv, FPSCR
568B6A:  VCMPE.F32       S0, #0.0
568B6E:  IT LT
568B70:  VMOVLT.F32      S4, S6
568B74:  VMOV.F32        S2, S4
568B78:  IT LT
568B7A:  VMOVLT.F32      S2, S0
568B7E:  VMRS            APSR_nzcv, FPSCR
568B82:  IT LT
568B84:  VMOVLT.F32      S2, S4
568B88:  VSTR            S2, [R0]
568B8C:  LDRB.W          R0, [R4,#0x3A]
568B90:  CMP             R0, #7
568B92:  BHI.W           loc_568CAA
568B96:  LDR.W           R0, [R4,#0x464]
568B9A:  CMP             R0, #0
568B9C:  BEQ.W           loc_568CAA
568BA0:  LDR             R0, [R0,#0x18]
568BA2:  MOVS            R1, #0xD0
568BA4:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
568BA8:  CBZ             R0, loc_568C12
568BAA:  VLDR            S2, =0.01
568BAE:  VLDR            S0, [R0,#0x18]
568BB2:  VCMPE.F32       S0, S2
568BB6:  VMRS            APSR_nzcv, FPSCR
568BBA:  BLE             loc_568C12
568BBC:  VLDR            S4, [R0,#0x20]
568BC0:  VLDR            S2, =6.2832
568BC4:  LDR             R0, [R0,#0x14]
568BC6:  VMUL.F32        S2, S4, S2
568BCA:  LDR             R1, =(BMX_SPRINT_LEANMULT_ptr - 0x568BD6)
568BCC:  LDR             R2, =(MTB_SPRINT_LEANMULT_ptr - 0x568BDA)
568BCE:  VLDR            S4, [R0,#0x10]
568BD2:  ADD             R1, PC; BMX_SPRINT_LEANMULT_ptr
568BD4:  LDR             R0, =(BMX_SPRINT_LEANSTART_ptr - 0x568BDE)
568BD6:  ADD             R2, PC; MTB_SPRINT_LEANMULT_ptr
568BD8:  LDRH            R3, [R4,#0x26]
568BDA:  ADD             R0, PC; BMX_SPRINT_LEANSTART_ptr
568BDC:  LDR             R1, [R1]; BMX_SPRINT_LEANMULT
568BDE:  CMP.W           R3, #0x1FE
568BE2:  VDIV.F32        S2, S2, S4
568BE6:  LDR             R0, [R0]; BMX_SPRINT_LEANSTART
568BE8:  VLDR            S4, [R0]
568BEC:  IT EQ
568BEE:  LDREQ           R1, [R2]; MTB_SPRINT_LEANMULT
568BF0:  VADD.F32        S2, S4, S2
568BF4:  VMOV            R0, S2; x
568BF8:  VLDR            S2, [R1]
568BFC:  VMUL.F32        S16, S0, S2
568C00:  BLX             sinf
568C04:  VMOV            S0, R0
568C08:  ADD.W           R0, R4, #0x830
568C0C:  VMUL.F32        S0, S16, S0
568C10:  B               loc_568CA6
568C12:  LDR             R0, =(BMX_PEDAL_LEANMULT_ptr - 0x568C1C)
568C14:  LDR.W           R12, =(MTB_PEDAL_LEANMULT_ptr - 0x568C24)
568C18:  ADD             R0, PC; BMX_PEDAL_LEANMULT_ptr
568C1A:  LDR.W           R2, [R4,#0x464]
568C1E:  LDRH            R1, [R4,#0x26]
568C20:  ADD             R12, PC; MTB_PEDAL_LEANMULT_ptr
568C22:  LDR             R3, [R0]; BMX_PEDAL_LEANMULT
568C24:  CMP.W           R1, #0x1FE
568C28:  LDR             R0, [R2,#0x18]
568C2A:  IT EQ
568C2C:  LDREQ.W         R3, [R12]; MTB_PEDAL_LEANMULT
568C30:  MOVS            R1, #0xCF
568C32:  VLDR            S16, [R3]
568C36:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
568C3A:  CBZ             R0, loc_568C96
568C3C:  VLDR            S2, =0.01
568C40:  VLDR            S0, [R0,#0x18]
568C44:  VCMPE.F32       S0, S2
568C48:  VMRS            APSR_nzcv, FPSCR
568C4C:  BLE             loc_568C96
568C4E:  VLDR            S4, [R0,#0x20]
568C52:  VMUL.F32        S16, S16, S0
568C56:  VLDR            S2, =6.2832
568C5A:  LDR             R0, [R0,#0x14]
568C5C:  VMUL.F32        S2, S4, S2
568C60:  VLDR            S4, [R0,#0x10]
568C64:  LDR             R0, =(BMX_PEDAL_LEANSTART_ptr - 0x568C6A)
568C66:  ADD             R0, PC; BMX_PEDAL_LEANSTART_ptr
568C68:  VDIV.F32        S2, S2, S4
568C6C:  LDR             R0, [R0]; BMX_PEDAL_LEANSTART
568C6E:  VLDR            S4, [R0]
568C72:  VADD.F32        S2, S4, S2
568C76:  VMOV            R0, S2; x
568C7A:  BLX             sinf
568C7E:  VMOV            S0, R0
568C82:  ADDW            R0, R4, #0x65C
568C86:  VMUL.F32        S0, S16, S0
568C8A:  VLDR            S2, [R0]
568C8E:  VADD.F32        S0, S2, S0
568C92:  VSTR            S0, [R0]
568C96:  ADD.W           R0, R4, #0x830
568C9A:  VLDR            S0, =0.95
568C9E:  VLDR            S2, [R0]
568CA2:  VMUL.F32        S0, S2, S0
568CA6:  VSTR            S0, [R0]
568CAA:  VPOP            {D8}
568CAE:  POP             {R4,R6,R7,PC}
