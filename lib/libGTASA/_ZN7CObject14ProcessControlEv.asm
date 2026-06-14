; =========================================================
; Game Engine Function: _ZN7CObject14ProcessControlEv
; Address            : 0x4537C0 - 0x453EA2
; =========================================================

4537C0:  PUSH            {R4-R7,LR}
4537C2:  ADD             R7, SP, #0xC
4537C4:  PUSH.W          {R8-R10}
4537C8:  VPUSH           {D8-D10}
4537CC:  SUB             SP, SP, #0x28
4537CE:  MOV             R4, R0
4537D0:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4537DC)
4537D4:  LDRSH.W         R1, [R4,#0x26]
4537D8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4537DA:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4537DC:  LDR.W           R5, [R0,R1,LSL#2]
4537E0:  LDR             R0, [R5]
4537E2:  LDR             R1, [R0,#0x28]
4537E4:  MOV             R0, R5
4537E6:  BLX             R1
4537E8:  CMP             R0, #2
4537EA:  BNE             loc_4537F4
4537EC:  LDRB.W          R0, [R5,#0x29]
4537F0:  LSLS            R0, R0, #0x1F
4537F2:  BNE             loc_4537F8
4537F4:  MOVS            R5, #0
4537F6:  B               loc_453800
4537F8:  LDR             R5, [R4,#0x18]
4537FA:  CMP             R5, #0
4537FC:  IT NE
4537FE:  MOVNE           R5, #1
453800:  VLDR            S0, [R4,#0xDC]
453804:  VCMPE.F32       S0, #0.0
453808:  VMRS            APSR_nzcv, FPSCR
45380C:  BLE             loc_453864
45380E:  LDRB.W          R0, [R4,#0x146]
453812:  LSLS            R0, R0, #0x1C
453814:  BPL             loc_453864
453816:  LDR.W           R0, [R4,#0x100]
45381A:  CBNZ            R0, loc_453864
45381C:  LDR.W           R0, =(MI_CRANE_MAGNET_ptr - 0x453824)
453820:  ADD             R0, PC; MI_CRANE_MAGNET_ptr
453822:  LDR             R1, [R0]; MI_CRANE_MAGNET
453824:  LDRSH.W         R0, [R4,#0x26]
453828:  LDRH            R1, [R1]
45382A:  CMP             R1, R0
45382C:  BEQ             loc_453864
45382E:  LDR.W           R1, =(MI_CRANE_HARNESS_ptr - 0x453836)
453832:  ADD             R1, PC; MI_CRANE_HARNESS_ptr
453834:  LDR             R1, [R1]; MI_CRANE_HARNESS
453836:  LDRH            R1, [R1]
453838:  CMP             R1, R0
45383A:  BEQ             loc_453864
45383C:  LDR.W           R1, =(MI_MINI_MAGNET_ptr - 0x453844)
453840:  ADD             R1, PC; MI_MINI_MAGNET_ptr
453842:  LDR             R1, [R1]; MI_MINI_MAGNET
453844:  LDRH            R1, [R1]
453846:  CMP             R1, R0
453848:  BEQ             loc_453864
45384A:  LDR.W           R1, =(MI_WRECKING_BALL_ptr - 0x453852)
45384E:  ADD             R1, PC; MI_WRECKING_BALL_ptr
453850:  LDR             R1, [R1]; MI_WRECKING_BALL
453852:  LDRH            R1, [R1]
453854:  CMP             R1, R0
453856:  BEQ             loc_453864
453858:  LDRB.W          R0, [R4,#0x44]
45385C:  TST.W           R0, #0x60
453860:  BEQ.W           loc_453D58
453864:  MOV             R10, R4
453866:  MOVW            R8, #:lower16:stru_40008.st_info
45386A:  LDR.W           R0, [R10,#0x1C]!
45386E:  MOVT            R8, #:upper16:stru_40008.st_info
453872:  LDR.W           R1, [R10,#0x128]
453876:  TST.W           R0, R8
45387A:  BIC.W           R1, R1, #0x80000
45387E:  STR.W           R1, [R10,#0x128]
453882:  ITT EQ
453884:  LDREQ           R1, [R4,#0x44]
453886:  TSTEQ.W         R1, #0xE0
45388A:  BEQ.W           loc_453AC2
45388E:  TST.W           R0, #0x40004
453892:  ITT EQ
453894:  MOVEQ           R0, R4; this
453896:  BLXEQ           j__ZN9CPhysical14ProcessControlEv; CPhysical::ProcessControl(void)
45389A:  CMP             R5, #1
45389C:  BNE             loc_4538A8
45389E:  LDR             R0, [R4]
4538A0:  MOVS            R1, #0
4538A2:  LDR             R2, [R0,#0x14]
4538A4:  MOV             R0, R4
4538A6:  BLX             R2
4538A8:  LDR.W           R0, =(mod_Buoyancy_ptr - 0x4538B8)
4538AC:  ADD             R1, SP, #0x58+var_48
4538AE:  LDR.W           R2, [R4,#0xA4]; float
4538B2:  ADD             R3, SP, #0x58+var_3C; CVector *
4538B4:  ADD             R0, PC; mod_Buoyancy_ptr
4538B6:  STR             R1, [SP,#0x58+var_58]; CVector *
4538B8:  MOV             R1, R4; CPhysical *
4538BA:  LDR             R0, [R0]; mod_Buoyancy ; this
4538BC:  BLX             j__ZN9cBuoyancy15ProcessBuoyancyEP9CPhysicalfP7CVectorS3_; cBuoyancy::ProcessBuoyancy(CPhysical *,float,CVector *,CVector *)
4538C0:  CMP             R0, #1
4538C2:  BNE             loc_45393A
4538C4:  LDR             R1, [R4,#0x44]
4538C6:  LDR             R0, [R4]
4538C8:  ORR.W           R1, R1, #0x8000000
4538CC:  ORR.W           R1, R1, #0x100
4538D0:  STR             R1, [R4,#0x44]
4538D2:  LDR             R2, [R0,#0x14]
4538D4:  MOV             R0, R4
4538D6:  MOVS            R1, #0
4538D8:  BLX             R2
4538DA:  ADD             R3, SP, #0x58+var_48
4538DC:  MOV             R0, R4
4538DE:  LDM             R3, {R1-R3}
4538E0:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
4538E4:  ADD             R3, SP, #0x58+var_48
4538E6:  ADD             R6, SP, #0x58+var_3C
4538E8:  LDM             R3, {R1-R3}
4538EA:  LDM             R6, {R0,R5,R6}
4538EC:  STMEA.W         SP, {R0,R5,R6}
4538F0:  MOV             R0, R4
4538F2:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
4538F6:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4538FE)
4538FA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4538FC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4538FE:  LDR             R1, [R0]; y
453900:  MOV             R0, #0x3F7851EC; x
453908:  BLX             powf
45390C:  ADD.W           R1, R4, #0x48 ; 'H'
453910:  VMOV            S0, R0
453914:  VLDR            S2, [R4,#0x58]
453918:  VLDR            S4, [R4,#0x5C]
45391C:  VLD1.32         {D16-D17}, [R1]
453920:  VMUL.F32        S2, S0, S2
453924:  VMUL.F32        Q8, Q8, D0[0]
453928:  VMUL.F32        S0, S0, S4
45392C:  VST1.32         {D16-D17}, [R1]
453930:  VSTR            S2, [R4,#0x58]
453934:  VSTR            S0, [R4,#0x5C]
453938:  B               loc_453954
45393A:  LDR.W           R0, =(MI_BUOY_ptr - 0x453946)
45393E:  LDRSH.W         R1, [R4,#0x26]
453942:  ADD             R0, PC; MI_BUOY_ptr
453944:  LDR             R0, [R0]; MI_BUOY
453946:  LDRH            R0, [R0]
453948:  CMP             R1, R0
45394A:  ITTT NE
45394C:  LDRNE           R0, [R4,#0x44]
45394E:  BICNE.W         R0, R0, #0x8000000
453952:  STRNE           R0, [R4,#0x44]
453954:  LDR.W           R0, [R4,#0x164]
453958:  LDRB            R0, [R0,#0x1F]
45395A:  CBZ             R0, loc_4539A8
45395C:  LDRB.W          R0, [R4,#0x144]
453960:  LSLS            R0, R0, #0x19
453962:  ITT MI
453964:  LDRBMI.W        R0, [R10]
453968:  MOVSMI.W        R0, R0,LSL#24
45396C:  BPL             loc_4539A8
45396E:  BLX             rand
453972:  AND.W           R0, R0, #0x1F
453976:  CMP             R0, #0xA
453978:  BNE             loc_4539A8
45397A:  LDR.W           R0, [R10]
45397E:  MOVW            R2, #0xFFFD
453982:  LDR             R1, [R4,#0x44]
453984:  MOVT            R2, #0xFF7F
453988:  BIC.W           R0, R0, #0x81
45398C:  STR.W           R0, [R10]
453990:  ANDS            R1, R2
453992:  LDR             R2, [R4]
453994:  MOVS            R0, #0
453996:  ORR.W           R1, R1, #0x800000
45399A:  STRD.W          R1, R0, [R4,#0x44]
45399E:  STRD.W          R0, R0, [R4,#0x4C]
4539A2:  MOV             R0, R4
4539A4:  LDR             R1, [R2,#0x24]
4539A6:  BLX             R1
4539A8:  LDR.W           R0, =(MI_RCBOMB_ptr - 0x4539B4)
4539AC:  LDRSH.W         R1, [R4,#0x26]
4539B0:  ADD             R0, PC; MI_RCBOMB_ptr
4539B2:  LDR             R0, [R0]; MI_RCBOMB
4539B4:  LDRH            R0, [R0]
4539B6:  CMP             R1, R0
4539B8:  BNE             loc_453A74
4539BA:  VLDR            S0, =-0.05
4539BE:  VLDR            S2, [R4,#0x94]
4539C2:  VLDR            S4, [R4,#0x4C]
4539C6:  VMUL.F32        S0, S2, S0
4539CA:  VLDR            S2, [R4,#0x48]
4539CE:  VLDR            S6, [R4,#0x50]
4539D2:  LDR             R0, [R4,#0x14]
4539D4:  VMUL.F32        S2, S2, S0
4539D8:  VMUL.F32        S4, S0, S4
4539DC:  VMUL.F32        S0, S0, S6
4539E0:  VMOV            R1, S2
4539E4:  VLDR            S2, [R0,#0x14]
4539E8:  VMOV            R2, S4
4539EC:  VLDR            S4, [R0,#0x18]
4539F0:  VMOV            R3, S0
4539F4:  VLDR            S0, [R0,#0x10]
4539F8:  VNEG.F32        S4, S4
4539FC:  MOV             R0, R4
4539FE:  VNEG.F32        S0, S0
453A02:  VNEG.F32        S2, S2
453A06:  VSTR            S0, [SP,#0x58+var_58]
453A0A:  VSTR            S2, [SP,#0x58+var_54]
453A0E:  VSTR            S4, [SP,#0x58+var_50]
453A12:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
453A16:  VLDR            S16, [R4,#0x48]
453A1A:  VLDR            S18, [R4,#0x4C]
453A1E:  VMUL.F32        S2, S16, S16
453A22:  VLDR            S20, [R4,#0x50]
453A26:  VMUL.F32        S0, S18, S18
453A2A:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x453A36)
453A2E:  VMUL.F32        S4, S20, S20
453A32:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
453A34:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
453A36:  VADD.F32        S0, S2, S0
453A3A:  VLDR            S2, =-0.2
453A3E:  LDR             R1, [R1]; y
453A40:  VADD.F32        S0, S0, S4
453A44:  VMOV.F32        S4, #1.0
453A48:  VMUL.F32        S0, S0, S2
453A4C:  VADD.F32        S0, S0, S4
453A50:  VMOV            R0, S0; x
453A54:  BLX             powf
453A58:  VMOV            S0, R0
453A5C:  VMUL.F32        S4, S16, S0
453A60:  VMUL.F32        S2, S0, S20
453A64:  VMUL.F32        S0, S0, S18
453A68:  VSTR            S4, [R4,#0x48]
453A6C:  VSTR            S0, [R4,#0x4C]
453A70:  VSTR            S2, [R4,#0x50]
453A74:  LDR.W           R5, [R10]
453A78:  TST.W           R5, #0x100
453A7C:  ITTT NE
453A7E:  LDRNE.W         R0, [R10,#4]
453A82:  ORRNE.W         R5, R5, #0x20 ; ' '
453A86:  STRDNE.W        R5, R0, [R10]
453A8A:  LDRB.W          R0, [R4,#0x44]
453A8E:  LSLS            R0, R0, #0x1A
453A90:  BPL.W           loc_453D3E
453A94:  VLDR            S0, =-1000.0
453A98:  VLDR            S16, [R4,#0x15C]
453A9C:  VCMPE.F32       S16, S0
453AA0:  VMRS            APSR_nzcv, FPSCR
453AA4:  BLE.W           loc_453D3E
453AA8:  LDR             R0, [R4,#0x14]
453AAA:  CMP             R0, #0
453AAC:  BEQ.W           loc_453BC6
453AB0:  LDRD.W          R2, R1, [R0,#0x10]; x
453AB4:  EOR.W           R0, R2, #0x80000000; y
453AB8:  BLX             atan2f
453ABC:  VMOV            S0, R0
453AC0:  B               loc_453BCA
453AC2:  ADD.W           R9, R4, #0x48 ; 'H'
453AC6:  ADD.W           R2, R4, #0x78 ; 'x'
453ACA:  VLDR            S0, [R4,#0x58]
453ACE:  VMOV.F32        S8, #0.5
453AD2:  VLDR            S4, [R4,#0x88]
453AD6:  VLDR            S2, [R4,#0x5C]
453ADA:  VLDR            S6, [R4,#0x8C]
453ADE:  VADD.F32        S10, S4, S0
453AE2:  VLD1.32         {D16-D17}, [R9]
453AE6:  VADD.F32        S2, S6, S2
453AEA:  VLD1.32         {D18-D19}, [R2]
453AEE:  VADD.F32        Q8, Q9, Q8
453AF2:  LDR.W           R3, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x453B02)
453AF6:  VMOV.I32        Q9, #0x3F000000
453AFA:  VLDR            S12, =0.003
453AFE:  ADD             R3, PC; _ZN6CTimer12ms_fTimeStepE_ptr
453B00:  VMUL.F32        Q1, Q8, Q9
453B04:  LDR             R3, [R3]; CTimer::ms_fTimeStep ...
453B06:  VMUL.F32        S0, S2, S8
453B0A:  VMUL.F32        S2, S10, S8
453B0E:  VMUL.F32        S8, S5, S5
453B12:  VST1.32         {D2-D3}, [R2]
453B16:  VMUL.F32        S10, S4, S4
453B1A:  VMUL.F32        S1, S6, S6
453B1E:  VSTR            S2, [R4,#0x88]
453B22:  VSTR            S0, [R4,#0x8C]
453B26:  VLDR            S14, [R3]
453B2A:  VADD.F32        S8, S10, S8
453B2E:  VMUL.F32        S10, S14, S12
453B32:  VADD.F32        S12, S8, S1
453B36:  VMUL.F32        S8, S10, S10
453B3A:  VCMPE.F32       S12, S8
453B3E:  VMRS            APSR_nzcv, FPSCR
453B42:  BGE             loc_453BBE
453B44:  VMUL.F32        S2, S2, S2
453B48:  VMUL.F32        S4, S7, S7
453B4C:  VMUL.F32        S0, S0, S0
453B50:  VADD.F32        S2, S4, S2
453B54:  VADD.F32        S0, S2, S0
453B58:  VCMPE.F32       S0, S8
453B5C:  VMRS            APSR_nzcv, FPSCR
453B60:  BGE             loc_453BBE
453B62:  LDRB.W          R2, [R4,#0xBC]
453B66:  ADDS            R2, #1
453B68:  STRB.W          R2, [R4,#0xBC]
453B6C:  UXTB            R2, R2
453B6E:  CMP             R2, #0xB
453B70:  BCC.W           loc_45388E
453B74:  ANDS.W          R1, R1, #0x2000000
453B78:  BNE.W           loc_45388E
453B7C:  ADD.W           R6, R4, #0x54 ; 'T'
453B80:  MOVS            R0, #0xA
453B82:  CMP             R5, #0
453B84:  STRB.W          R0, [R4,#0xBC]
453B88:  BNE             loc_453B94
453B8A:  LDR             R0, [R4]
453B8C:  MOVS            R1, #1
453B8E:  LDR             R2, [R0,#0x14]
453B90:  MOV             R0, R4
453B92:  BLX             R2
453B94:  MOVS            R0, #0
453B96:  STR             R0, [R4,#0x50]
453B98:  STRD.W          R0, R0, [R4,#0x48]
453B9C:  VLDR            D16, [R9]
453BA0:  LDR.W           R1, [R9,#8]
453BA4:  STR             R1, [R4,#0x68]
453BA6:  STRD.W          R0, R0, [R4,#0x54]
453BAA:  STR             R0, [R4,#0x5C]
453BAC:  VSTR            D16, [R4,#0x60]
453BB0:  VLDR            D16, [R6]
453BB4:  LDR             R0, [R6,#8]
453BB6:  STR             R0, [R4,#0x74]
453BB8:  VSTR            D16, [R4,#0x6C]
453BBC:  B               loc_453D3E
453BBE:  MOVS            R1, #0
453BC0:  STRB.W          R1, [R4,#0xBC]
453BC4:  B               loc_45388E
453BC6:  VLDR            S0, [R4,#0x10]
453BCA:  VLDR            S2, =3.1416
453BCE:  VADD.F32        S2, S16, S2
453BD2:  VCMPE.F32       S0, S2
453BD6:  VMRS            APSR_nzcv, FPSCR
453BDA:  BLE             loc_453BE2
453BDC:  VLDR            S2, =-6.2832
453BE0:  B               loc_453BF8
453BE2:  VLDR            S2, =-3.1416
453BE6:  VADD.F32        S2, S16, S2
453BEA:  VCMPE.F32       S0, S2
453BEE:  VMRS            APSR_nzcv, FPSCR
453BF2:  BGE             loc_453BFC
453BF4:  VLDR            S2, =6.2832
453BF8:  VADD.F32        S0, S0, S2
453BFC:  VSUB.F32        S0, S16, S0
453C00:  VLDR            S4, =0.5236
453C04:  VLDR            S16, =0.3
453C08:  VABS.F32        S2, S0
453C0C:  VCMPE.F32       S2, S4
453C10:  VMRS            APSR_nzcv, FPSCR
453C14:  VCMPE.F32       S0, S16
453C18:  ITTT GT
453C1A:  LDRGT.W         R0, [R4,#0x144]
453C1E:  ORRGT.W         R0, R0, #0x8000
453C22:  STRGT.W         R0, [R4,#0x144]
453C26:  VMRS            APSR_nzcv, FPSCR
453C2A:  BLE             loc_453C40
453C2C:  VLDR            S2, =0.02
453C30:  VLDR            S0, [R4,#0x5C]
453C34:  VCMPE.F32       S0, S2
453C38:  VMRS            APSR_nzcv, FPSCR
453C3C:  BGE             loc_453C5C
453C3E:  B               loc_453C78
453C40:  VLDR            S16, =-0.3
453C44:  VCMPE.F32       S0, S16
453C48:  VMRS            APSR_nzcv, FPSCR
453C4C:  BLT             loc_453C66
453C4E:  VMOV.F32        S16, S0
453C52:  VCMPE.F32       S0, #0.0
453C56:  VMRS            APSR_nzcv, FPSCR
453C5A:  BGT             loc_453C2C
453C5C:  VCMPE.F32       S16, #0.0
453C60:  VMRS            APSR_nzcv, FPSCR
453C64:  BGE             loc_453C9A
453C66:  VLDR            S2, =-0.02
453C6A:  VLDR            S0, [R4,#0x5C]
453C6E:  VCMPE.F32       S0, S2
453C72:  VMRS            APSR_nzcv, FPSCR
453C76:  BLE             loc_453C9A
453C78:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x453C86)
453C7A:  ADD.W           R0, R4, #0x5C ; '\'
453C7E:  VLDR            S2, =0.002
453C82:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
453C84:  VMUL.F32        S2, S16, S2
453C88:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
453C8A:  VLDR            S4, [R1]
453C8E:  VMUL.F32        S2, S2, S4
453C92:  VADD.F32        S0, S0, S2
453C96:  VSTR            S0, [R0]
453C9A:  VCMP.F32        S16, #0.0
453C9E:  VMRS            APSR_nzcv, FPSCR
453CA2:  BEQ             loc_453CBC
453CA4:  LDRB.W          R0, [R4,#0x145]
453CA8:  LSLS            R0, R0, #0x19
453CAA:  BPL             loc_453CBC
453CAC:  LDR             R0, =(AudioEngine_ptr - 0x453CB4)
453CAE:  MOV             R1, R4; CPhysical *
453CB0:  ADD             R0, PC; AudioEngine_ptr
453CB2:  LDR             R0, [R0]; AudioEngine ; this
453CB4:  BLX             j__ZN12CAudioEngine18ReportDoorMovementEP9CPhysical; CAudioEngine::ReportDoorMovement(CPhysical *)
453CB8:  LDR.W           R5, [R10]
453CBC:  VABS.F32        S2, S16
453CC0:  VLDR            S0, =0.01
453CC4:  VCMPE.F32       S2, S0
453CC8:  VMRS            APSR_nzcv, FPSCR
453CCC:  BGE             loc_453D3E
453CCE:  ANDS.W          R0, R5, R8
453CD2:  BNE             loc_453D3E
453CD4:  LDRB.W          R0, [R4,#0x145]
453CD8:  LSLS            R0, R0, #0x19
453CDA:  BMI             loc_453CEE
453CDC:  VLDR            S2, [R4,#0x5C]
453CE0:  VABS.F32        S2, S2
453CE4:  VCMPE.F32       S2, S0
453CE8:  VMRS            APSR_nzcv, FPSCR
453CEC:  BGE             loc_453D3E
453CEE:  LDR             R0, [R4]
453CF0:  MOVS            R1, #1
453CF2:  LDR             R2, [R0,#0x14]
453CF4:  MOV             R0, R4
453CF6:  BLX             R2
453CF8:  MOVS            R1, #0
453CFA:  STRD.W          R1, R1, [R4,#0x48]
453CFE:  LDR.W           R0, [R4,#0x144]
453D02:  VLDR            D16, [R4,#0x48]
453D06:  STRD.W          R1, R1, [R4,#0x54]
453D0A:  VLDR            D17, [R4,#0x54]
453D0E:  STR             R1, [R4,#0x68]
453D10:  STR             R1, [R4,#0x74]
453D12:  STR             R1, [R4,#0x5C]
453D14:  STR             R1, [R4,#0x50]
453D16:  AND.W           R1, R0, #0xC000
453D1A:  CMP.W           R1, #0xC000
453D1E:  VSTR            D16, [R4,#0x60]
453D22:  VSTR            D17, [R4,#0x6C]
453D26:  BNE             loc_453D3E
453D28:  LDR             R1, [R4,#0x44]
453D2A:  BIC.W           R0, R0, #0x8000
453D2E:  STR.W           R0, [R4,#0x144]
453D32:  ORR.W           R0, R1, #0xC
453D36:  STR             R0, [R4,#0x44]
453D38:  MOV             R0, R4; this
453D3A:  BLX             j__ZN7CObject14ResetDoorAngleEv; CObject::ResetDoorAngle(void)
453D3E:  ADD             SP, SP, #0x28 ; '('
453D40:  VPOP            {D8-D10}
453D44:  POP.W           {R8-R10}
453D48:  POP             {R4-R7,PC}
453D4A:  ALIGN 4
453D4C:  DCFS -0.05
453D50:  DCFS -0.2
453D54:  DCFS -1000.0
453D58:  LDR.W           R0, [R4,#0xE0]
453D5C:  CMP             R0, #0
453D5E:  BEQ.W           loc_453864
453D62:  LDRSH.W         R0, [R0,#0x26]
453D66:  MOVW            R1, #(elf_hash_bucket+0x116); CPhysical *
453D6A:  CMP             R0, R1
453D6C:  IT NE
453D6E:  CMPNE.W         R0, #0x196
453D72:  BNE.W           loc_453864
453D76:  MOV             R0, R4; this
453D78:  BLX             j__ZN6CRopes15IsCarriedByRopeEP9CPhysical; CRopes::IsCarriedByRope(CPhysical *)
453D7C:  CMP             R0, #0
453D7E:  BNE.W           loc_453864
453D82:  LDRB.W          R0, [R4,#0x148]
453D86:  CBZ             R0, loc_453DB6
453D88:  VMOV.F32        S2, #5.0
453D8C:  VLDR            S0, [R4,#0xDC]
453D90:  VCMPE.F32       S0, S2
453D94:  VMRS            APSR_nzcv, FPSCR
453D98:  BLE             loc_453DB6
453D9A:  VMOV            R1, S0
453D9E:  LDR.W           R0, [R4,#0xE0]
453DA2:  MOVS            R2, #0x31 ; '1'
453DA4:  ADD.W           R3, R4, #0xE4
453DA8:  STRD.W          R0, R2, [SP,#0x58+var_58]
453DAC:  ADD.W           R2, R4, #0xF0
453DB0:  MOV             R0, R4
453DB2:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
453DB6:  VLDR            S0, =0.3
453DBA:  VLDR            S2, [R4,#0xEC]
453DBE:  VCMPE.F32       S2, S0
453DC2:  VMRS            APSR_nzcv, FPSCR
453DC6:  BLE.W           loc_453864
453DCA:  LDR.W           R6, [R4,#0xE0]
453DCE:  MOVS            R1, #0
453DD0:  LDR             R0, [R4,#0x14]
453DD2:  STRB.W          R1, [R4,#0xBC]
453DD6:  LDR             R1, [R6,#0x14]
453DD8:  ADD.W           R2, R0, #0x30 ; '0'
453DDC:  CMP             R0, #0
453DDE:  IT EQ
453DE0:  ADDEQ           R2, R4, #4
453DE2:  ADD.W           R0, R1, #0x30 ; '0'
453DE6:  CMP             R1, #0
453DE8:  VLDR            S0, [R2]
453DEC:  VLDR            S2, [R2,#4]
453DF0:  MOV             R1, R6
453DF2:  VLDR            S4, [R2,#8]
453DF6:  IT EQ
453DF8:  ADDEQ           R0, R6, #4
453DFA:  VLDR            S6, [R0]
453DFE:  VLDR            S8, [R0,#4]
453E02:  VSUB.F32        S0, S0, S6
453E06:  VLDR            S10, [R0,#8]
453E0A:  VSUB.F32        S2, S2, S8
453E0E:  ADD             R0, SP, #0x58+var_3C
453E10:  VMOV            R2, S0
453E14:  VMOV            R3, S2
453E18:  VSUB.F32        S0, S4, S10
453E1C:  VSTR            S0, [SP,#0x58+var_58]
453E20:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
453E24:  VLDR            S0, [R4,#0x48]
453E28:  VLDR            S2, [SP,#0x58+var_3C]
453E2C:  VLDR            D16, [R4,#0x4C]
453E30:  VSUB.F32        S0, S2, S0
453E34:  VLDR            D17, [SP,#0x58+var_38]
453E38:  VSUB.F32        D16, D17, D16
453E3C:  VMUL.F32        D1, D16, D16
453E40:  VMUL.F32        S0, S0, S0
453E44:  VADD.F32        S0, S0, S2
453E48:  VADD.F32        S2, S0, S3
453E4C:  VLDR            S0, =0.0001
453E50:  VCMPE.F32       S2, S0
453E54:  VMRS            APSR_nzcv, FPSCR
453E58:  BGE.W           loc_453864
453E5C:  VLDR            S2, [R4,#0x54]
453E60:  VLDR            S4, [R4,#0x58]
453E64:  VMUL.F32        S2, S2, S2
453E68:  VLDR            S6, [R4,#0x5C]
453E6C:  VMUL.F32        S4, S4, S4
453E70:  VMUL.F32        S6, S6, S6
453E74:  VADD.F32        S2, S2, S4
453E78:  VADD.F32        S2, S2, S6
453E7C:  VCMPE.F32       S2, S0
453E80:  VMRS            APSR_nzcv, FPSCR
453E84:  BGE.W           loc_453864
453E88:  MOV             R0, R4; int
453E8A:  MOV             R1, R6; this
453E8C:  MOVS            R2, #0
453E8E:  MOVS            R3, #0
453E90:  BLX             j__ZN9CPhysical20AttachEntityToEntityEP7CEntityP7CVectorP6RtQuat; CPhysical::AttachEntityToEntity(CEntity *,CVector *,RtQuat *)
453E94:  MOV             R0, #0x3E4CCCCD
453E9C:  STR.W           R0, [R4,#0xA0]
453EA0:  B               loc_453864
