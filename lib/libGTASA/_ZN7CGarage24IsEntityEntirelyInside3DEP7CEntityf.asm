; =========================================================
; Game Engine Function: _ZN7CGarage24IsEntityEntirelyInside3DEP7CEntityf
; Address            : 0x31195C - 0x311B2C
; =========================================================

31195C:  PUSH            {R4-R7,LR}
31195E:  ADD             R7, SP, #0xC
311960:  PUSH.W          {R8-R11}
311964:  SUB             SP, SP, #4
311966:  VPUSH           {D8}
31196A:  SUB             SP, SP, #0x10
31196C:  MOV             R5, R0
31196E:  VMOV            S16, R2
311972:  VLDR            S0, [R5,#0x28]
311976:  MOV             R4, R1
311978:  LDR             R1, [R4,#0x14]
31197A:  ADDS            R6, R4, #4
31197C:  VSUB.F32        S2, S0, S16
311980:  CMP             R1, #0
311982:  MOV             R0, R6
311984:  IT NE
311986:  ADDNE.W         R0, R1, #0x30 ; '0'
31198A:  VLDR            S0, [R0]
31198E:  VCMPE.F32       S0, S2
311992:  VMRS            APSR_nzcv, FPSCR
311996:  BLT             loc_3119FA
311998:  VLDR            S2, [R5,#0x2C]
31199C:  VADD.F32        S2, S2, S16
3119A0:  VCMPE.F32       S0, S2
3119A4:  VMRS            APSR_nzcv, FPSCR
3119A8:  BGT             loc_3119FA
3119AA:  VLDR            S0, [R5,#0x30]
3119AE:  VSUB.F32        S2, S0, S16
3119B2:  VLDR            S0, [R0,#4]
3119B6:  VCMPE.F32       S0, S2
3119BA:  VMRS            APSR_nzcv, FPSCR
3119BE:  BLT             loc_3119FA
3119C0:  VLDR            S2, [R5,#0x34]
3119C4:  VADD.F32        S2, S2, S16
3119C8:  VCMPE.F32       S0, S2
3119CC:  VMRS            APSR_nzcv, FPSCR
3119D0:  BGT             loc_3119FA
3119D2:  VLDR            S0, [R5,#8]
3119D6:  VSUB.F32        S2, S0, S16
3119DA:  VLDR            S0, [R0,#8]
3119DE:  VCMPE.F32       S0, S2
3119E2:  VMRS            APSR_nzcv, FPSCR
3119E6:  BLT             loc_3119FA
3119E8:  VLDR            S2, [R5,#0x1C]
3119EC:  VADD.F32        S2, S2, S16
3119F0:  VCMPE.F32       S0, S2
3119F4:  VMRS            APSR_nzcv, FPSCR
3119F8:  BLE             loc_311A0A
3119FA:  MOVS            R0, #0
3119FC:  ADD             SP, SP, #0x10
3119FE:  VPOP            {D8}
311A02:  ADD             SP, SP, #4
311A04:  POP.W           {R8-R11}
311A08:  POP             {R4-R7,PC}
311A0A:  MOV             R0, R4; this
311A0C:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
311A10:  LDR.W           R9, [R0,#0x2C]
311A14:  CMP.W           R9, #0
311A18:  BEQ.W           loc_311B28
311A1C:  LDRSH.W         R0, [R9]
311A20:  CMP             R0, #1
311A22:  BLT.W           loc_311B28
311A26:  MOV.W           R10, #0
311A2A:  ADD.W           R8, SP, #0x38+var_34
311A2E:  LDR             R1, [R4,#0x14]
311A30:  CBNZ            R1, loc_311A42
311A32:  MOV             R0, R4; this
311A34:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
311A38:  LDR             R1, [R4,#0x14]; CMatrix *
311A3A:  MOV             R0, R6; this
311A3C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
311A40:  LDR             R1, [R4,#0x14]
311A42:  LDR.W           R0, [R9,#8]
311A46:  ADD.W           R11, R10, R10,LSL#2
311A4A:  ADD.W           R2, R0, R11,LSL#2
311A4E:  MOV             R0, R8
311A50:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
311A54:  LDR.W           R0, [R9,#8]
311A58:  VLDR            S4, [R5,#8]
311A5C:  ADD.W           R0, R0, R11,LSL#2
311A60:  VLDR            S2, [SP,#0x38+var_2C]
311A64:  VLDR            S0, [R0,#0xC]
311A68:  VSUB.F32        S0, S16, S0
311A6C:  VSUB.F32        S4, S4, S0
311A70:  VCMPE.F32       S4, S2
311A74:  VMRS            APSR_nzcv, FPSCR
311A78:  BGT             loc_3119FA
311A7A:  VLDR            S4, [R5,#0x1C]
311A7E:  VADD.F32        S4, S0, S4
311A82:  VCMPE.F32       S4, S2
311A86:  VMRS            APSR_nzcv, FPSCR
311A8A:  ITTTT GE
311A8C:  VLDRGE          S2, [SP,#0x38+var_34]
311A90:  VLDRGE          S4, [SP,#0x38+var_30]
311A94:  VLDRGE          S6, [R5]
311A98:  VLDRGE          S8, [R5,#4]
311A9C:  ITTTT GE
311A9E:  VLDRGE          S10, [R5,#0xC]
311AA2:  VLDRGE          S12, [R5,#0x10]
311AA6:  VSUBGE.F32      S4, S4, S8
311AAA:  VSUBGE.F32      S2, S2, S6
311AAE:  ITTTT GE
311AB0:  VMULGE.F32      S8, S4, S12
311AB4:  VMULGE.F32      S10, S2, S10
311AB8:  VNEGGE.F32      S6, S0
311ABC:  VADDGE.F32      S8, S10, S8
311AC0:  ITT GE
311AC2:  VCMPEGE.F32     S8, S6
311AC6:  VMRSGE          APSR_nzcv, FPSCR
311ACA:  BLT             loc_3119FA
311ACC:  VLDR            S10, [R5,#0x20]
311AD0:  VADD.F32        S10, S0, S10
311AD4:  VCMPE.F32       S8, S10
311AD8:  VMRS            APSR_nzcv, FPSCR
311ADC:  BGT             loc_3119FA
311ADE:  VLDR            S8, [R5,#0x14]
311AE2:  VLDR            S10, [R5,#0x18]
311AE6:  VMUL.F32        S2, S2, S8
311AEA:  VMUL.F32        S4, S4, S10
311AEE:  VADD.F32        S2, S2, S4
311AF2:  VCMPE.F32       S2, S6
311AF6:  VMRS            APSR_nzcv, FPSCR
311AFA:  BLT.W           loc_3119FA
311AFE:  VLDR            S4, [R5,#0x24]
311B02:  VADD.F32        S0, S0, S4
311B06:  VCMPE.F32       S2, S0
311B0A:  VMRS            APSR_nzcv, FPSCR
311B0E:  BGT.W           loc_3119FA
311B12:  ADD.W           R0, R10, #1
311B16:  LDRSH.W         R1, [R9]
311B1A:  SXTH.W          R10, R0
311B1E:  MOVS            R0, #1
311B20:  CMP             R1, R10
311B22:  BGT.W           loc_311A2E
311B26:  B               loc_3119FC
311B28:  MOVS            R0, #1
311B2A:  B               loc_3119FC
