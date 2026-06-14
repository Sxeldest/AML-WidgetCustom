; =========================================================
; Game Engine Function: _ZN8CVehicle18ProcessBoatControlEP17tBoatHandlingDataRfbb
; Address            : 0x588940 - 0x589A08
; =========================================================

588940:  PUSH            {R4-R7,LR}
588942:  ADD             R7, SP, #0xC
588944:  PUSH.W          {R8-R11}
588948:  SUB             SP, SP, #4
58894A:  VPUSH           {D8-D15}
58894E:  SUB             SP, SP, #0xA0
588950:  MOV             R6, R0
588952:  LDR.W           R0, =(mod_Buoyancy_ptr - 0x588960)
588956:  MOV.W           R11, #0
58895A:  STR             R1, [SP,#0x100+var_E4]
58895C:  ADD             R0, PC; mod_Buoyancy_ptr
58895E:  STR             R2, [SP,#0x100+var_EC]
588960:  STRD.W          R11, R11, [SP,#0x100+var_68]
588964:  MOV             R9, R3
588966:  STRD.W          R11, R11, [SP,#0x100+var_78]
58896A:  ADD             R1, SP, #0x100+var_78
58896C:  STRD.W          R11, R11, [SP,#0x100+var_70]
588970:  ADD             R3, SP, #0x100+var_6C; CVector *
588972:  LDR.W           R2, [R6,#0xA4]; float
588976:  LDR             R0, [R0]; mod_Buoyancy ; this
588978:  LDR.W           R4, [R6,#0x5A4]
58897C:  STRD.W          R1, R9, [SP,#0x100+var_100]; CVector *
588980:  MOV             R1, R6; CVehicle *
588982:  BLX             j__ZN9cBuoyancy19ProcessBuoyancyBoatEP8CVehiclefP7CVectorS3_b; cBuoyancy::ProcessBuoyancyBoat(CVehicle *,float,CVector *,CVector *,bool)
588986:  CMP             R4, #5
588988:  IT EQ
58898A:  MOVEQ           R11, R6
58898C:  CMP             R0, #1
58898E:  BNE             loc_588A4E
588990:  VLDR            S0, =0.1
588994:  VLDR            S2, [R6,#0x90]
588998:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5889A8)
58899C:  VMUL.F32        S0, S2, S0
5889A0:  VLDR            S18, =0.008
5889A4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5889A6:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5889A8:  VLDR            S2, [R0]
5889AC:  VMUL.F32        S0, S0, S18
5889B0:  LDR             R0, [R6,#0x44]
5889B2:  VMUL.F32        S0, S2, S0
5889B6:  VLDR            S2, [SP,#0x100+var_70]
5889BA:  VCMPE.F32       S2, S0
5889BE:  VMRS            APSR_nzcv, FPSCR
5889C2:  BLE             loc_588A5C
5889C4:  LDR             R1, [R6,#0x14]
5889C6:  ORR.W           R0, R0, #0x100
5889CA:  STR             R0, [R6,#0x44]
5889CC:  VLDR            S0, =-0.6
5889D0:  VLDR            S2, [R1,#0x28]
5889D4:  VCMPE.F32       S2, S0
5889D8:  VMRS            APSR_nzcv, FPSCR
5889DC:  BGE             loc_588A70
5889DE:  VLDR            S0, [R6,#0x48]
5889E2:  VLDR            D16, =0.05
5889E6:  VABS.F32        S0, S0
5889EA:  VCVT.F64.F32    D17, S0
5889EE:  VCMPE.F64       D17, D16
5889F2:  VMRS            APSR_nzcv, FPSCR
5889F6:  BGE             loc_588A70
5889F8:  VLDR            S0, [R6,#0x4C]
5889FC:  VABS.F32        S0, S0
588A00:  VCVT.F64.F32    D17, S0
588A04:  VCMPE.F64       D17, D16
588A08:  VMRS            APSR_nzcv, FPSCR
588A0C:  BGE             loc_588A70
588A0E:  LDR.W           R0, [R6,#0x464]
588A12:  LDR.W           R1, [R6,#0x42C]
588A16:  CMP             R0, #0
588A18:  ORR.W           R1, R1, #0x40000000
588A1C:  STR.W           R1, [R6,#0x42C]
588A20:  BEQ.W           loc_5891FC
588A24:  LDR             R1, [R0,#0x44]
588A26:  ORR.W           R1, R1, #0x8000000
588A2A:  STR             R1, [R0,#0x44]
588A2C:  LDR.W           R0, [R6,#0x464]; this
588A30:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
588A34:  CMP             R0, #1
588A36:  BNE.W           loc_589984
588A3A:  LDR.W           R0, [R6,#0x464]; this
588A3E:  MOVS            R1, #1; bool
588A40:  MOV.W           R2, #0x3F800000; float
588A44:  MOV.W           R10, #1
588A48:  BLX             j__ZN10CPlayerPed18HandlePlayerBreathEbf; CPlayerPed::HandlePlayerBreath(bool,float)
588A4C:  B               loc_588A80
588A4E:  LDR             R0, [R6,#0x44]
588A50:  MOVS            R4, #0
588A52:  BIC.W           R0, R0, #0x100
588A56:  STR             R0, [R6,#0x44]
588A58:  B.W             loc_589962
588A5C:  LDR.W           R1, [R6,#0x42C]
588A60:  BIC.W           R0, R0, #0x100
588A64:  MOV.W           R10, #0
588A68:  STR             R0, [R6,#0x44]
588A6A:  BIC.W           R0, R1, #0x40000000
588A6E:  B               loc_588A7C
588A70:  LDR.W           R0, [R6,#0x42C]
588A74:  MOV.W           R10, #1
588A78:  BIC.W           R0, R0, #0x40000000
588A7C:  STR.W           R0, [R6,#0x42C]
588A80:  LDR.W           R0, =(mod_Buoyancy_ptr - 0x588A8C)
588A84:  ADD.W           R8, SP, #0x100+var_6C
588A88:  ADD             R0, PC; mod_Buoyancy_ptr
588A8A:  LDM.W           R8, {R4,R5,R8}
588A8E:  LDR             R0, [R0]; mod_Buoyancy
588A90:  LDRH            R1, [R6,#0x26]
588A92:  VLDR            S16, [R0,#0xBC]
588A96:  CMP.W           R1, #0x1CC
588A9A:  BNE             loc_588B02
588A9C:  VMOV.F32        S0, #-0.5
588AA0:  LDR             R0, [R6,#0x14]
588AA2:  VLDR            S2, [R0,#0x28]
588AA6:  VCMPE.F32       S2, S0
588AAA:  VMRS            APSR_nzcv, FPSCR
588AAE:  BGE             loc_588B02
588AB0:  VLDR            S0, [R6,#0x48]
588AB4:  VABS.F32        S2, S0
588AB8:  VLDR            S0, =0.2
588ABC:  VCMPE.F32       S2, S0
588AC0:  VMRS            APSR_nzcv, FPSCR
588AC4:  BGE             loc_588B02
588AC6:  VLDR            S2, [R6,#0x4C]
588ACA:  VABS.F32        S2, S2
588ACE:  VCMPE.F32       S2, S0
588AD2:  VMRS            APSR_nzcv, FPSCR
588AD6:  BGE             loc_588B02
588AD8:  VLDR            S0, [SP,#0x100+var_78]
588ADC:  VLDR            S6, =0.03
588AE0:  VLDR            S2, [SP,#0x100+var_78+4]
588AE4:  VLDR            S4, [SP,#0x100+var_70]
588AE8:  VMUL.F32        S0, S0, S6
588AEC:  VMUL.F32        S2, S2, S6
588AF0:  VMUL.F32        S4, S4, S6
588AF4:  VMOV            R1, S0
588AF8:  VMOV            R2, S2
588AFC:  VMOV            R3, S4
588B00:  B               loc_588B06
588B02:  ADD             R3, SP, #0x100+var_78
588B04:  LDM             R3, {R1-R3}
588B06:  MOV             R0, R6
588B08:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
588B0C:  CMP.W           R9, #1
588B10:  BNE             loc_588B44
588B12:  VLDR            S0, [SP,#0x100+var_78]
588B16:  MOV             R0, R6
588B18:  VLDR            S6, =0.4
588B1C:  VLDR            S2, [SP,#0x100+var_78+4]
588B20:  VLDR            S4, [SP,#0x100+var_70]
588B24:  VMUL.F32        S0, S0, S6
588B28:  VMUL.F32        S2, S2, S6
588B2C:  STMEA.W         SP, {R4,R5,R8}
588B30:  VMUL.F32        S4, S4, S6
588B34:  VMOV            R1, S0
588B38:  VMOV            R2, S2
588B3C:  VMOV            R3, S4
588B40:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
588B44:  LDRH            R0, [R6,#0x26]
588B46:  CMP.W           R0, #0x1CC
588B4A:  BNE.W           loc_588CBA
588B4E:  ADDW            R8, R6, #0x49C
588B52:  LDR             R5, [R6,#0x14]
588B54:  VLDR            S2, [R8]
588B58:  VLDR            S0, [R5,#0x18]
588B5C:  VCMP.F32        S2, #0.0
588B60:  VMRS            APSR_nzcv, FPSCR
588B64:  BEQ             loc_588C42
588B66:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x588B72)
588B6A:  VLDR            S4, [SP,#0x100+var_70]
588B6E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
588B70:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
588B72:  VLDR            S2, [R0]
588B76:  VLDR            S6, =-0.00017
588B7A:  VMUL.F32        S6, S0, S6
588B7E:  VMUL.F32        S4, S6, S4
588B82:  VLDR            S6, [R6,#0x94]
588B86:  VMUL.F32        S4, S4, S6
588B8A:  VLDR            S6, [R5,#0x14]
588B8E:  VMUL.F32        S2, S4, S2
588B92:  VLDR            S4, [R5,#0x10]
588B96:  ADDS            R5, #0x20 ; ' '
588B98:  LDM             R5, {R0,R4,R5}
588B9A:  STMEA.W         SP, {R0,R4,R5}
588B9E:  MOV             R0, R6
588BA0:  VMUL.F32        S4, S4, S2
588BA4:  VMUL.F32        S6, S2, S6
588BA8:  VMUL.F32        S0, S0, S2
588BAC:  VMOV            R1, S4
588BB0:  VMOV            R2, S6
588BB4:  VMOV            R3, S0
588BB8:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
588BBC:  LDR             R0, [R6,#0x14]
588BBE:  VLDR            S0, [R6,#0x48]
588BC2:  VLDR            S2, [R6,#0x4C]
588BC6:  VLDR            S6, [R0,#0x10]
588BCA:  VLDR            S8, [R0,#0x14]
588BCE:  VMUL.F32        S0, S0, S6
588BD2:  VLDR            S10, [R0,#0x18]
588BD6:  VMUL.F32        S2, S2, S8
588BDA:  VLDR            S4, [R6,#0x50]
588BDE:  MOV             R0, R6
588BE0:  VMUL.F32        S4, S4, S10
588BE4:  VADD.F32        S0, S0, S2
588BE8:  VMOV.F32        S2, #-0.5
588BEC:  VADD.F32        S0, S0, S4
588BF0:  VMUL.F32        S0, S0, S2
588BF4:  VLDR            S2, [R6,#0x90]
588BF8:  VMUL.F32        S0, S2, S0
588BFC:  VMUL.F32        S2, S6, S0
588C00:  VMUL.F32        S4, S8, S0
588C04:  VMUL.F32        S0, S10, S0
588C08:  VMOV            R1, S2
588C0C:  VMOV            R2, S4
588C10:  VMOV            R3, S0
588C14:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
588C18:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x588C20)
588C1C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
588C1E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
588C20:  VLDR            S0, [R0]
588C24:  VCVT.F32.U32    S0, S0
588C28:  VLDR            S2, [R8]
588C2C:  VCMP.F32        S2, #0.0
588C30:  VMRS            APSR_nzcv, FPSCR
588C34:  BNE.W           loc_588D88
588C38:  VLDR            S2, =300.0
588C3C:  VADD.F32        S0, S0, S2
588C40:  B               loc_588D96
588C42:  VMOV.F32        S2, #-0.5
588C46:  VCMPE.F32       S0, S2
588C4A:  VMRS            APSR_nzcv, FPSCR
588C4E:  BGE             loc_588CBA
588C50:  VLDR            S4, [R5,#0x28]
588C54:  VCMPE.F32       S4, S2
588C58:  VMRS            APSR_nzcv, FPSCR
588C5C:  BLE             loc_588CBA
588C5E:  VLDR            S2, =-0.15
588C62:  VLDR            S4, [R6,#0x50]
588C66:  VCMPE.F32       S4, S2
588C6A:  VMRS            APSR_nzcv, FPSCR
588C6E:  BGE             loc_588CBA
588C70:  VLDR            S2, =0.01
588C74:  VLDR            S6, [R6,#0x90]
588C78:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x588C84)
588C7C:  VMUL.F32        S2, S6, S2
588C80:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
588C82:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
588C84:  VMUL.F32        S4, S2, S18
588C88:  VLDR            S2, [R1]
588C8C:  VMUL.F32        S8, S2, S4
588C90:  VLDR            S4, [SP,#0x100+var_70]
588C94:  VCMPE.F32       S4, S8
588C98:  VMRS            APSR_nzcv, FPSCR
588C9C:  BLE             loc_588CBA
588C9E:  VLDR            S8, =0.4
588CA2:  VMUL.F32        S6, S6, S8
588CA6:  VMUL.F32        S6, S6, S18
588CAA:  VMUL.F32        S6, S2, S6
588CAE:  VCMPE.F32       S4, S6
588CB2:  VMRS            APSR_nzcv, FPSCR
588CB6:  BLT.W           loc_588B76
588CBA:  MOVS            R4, #0
588CBC:  CMP.W           R10, #0
588CC0:  IT EQ
588CC2:  MOVEQ           R4, #1
588CC4:  BEQ.W           loc_588E54
588CC8:  LDR             R1, [R7,#arg_0]
588CCA:  CMP             R1, #0
588CCC:  BNE.W           loc_588E54
588CD0:  LDR             R1, [R6,#0x14]
588CD2:  VLDR            S0, [R1,#0x28]
588CD6:  VCMPE.F32       S0, #0.0
588CDA:  VMRS            APSR_nzcv, FPSCR
588CDE:  BLE.W           loc_588E52
588CE2:  VLDR            S2, [R6,#0x48]
588CE6:  CMP.W           R0, #0x1CC
588CEA:  VLDR            S4, [R6,#0x4C]
588CEE:  VMUL.F32        S2, S2, S2
588CF2:  VLDR            S6, [R6,#0x50]
588CF6:  VMUL.F32        S4, S4, S4
588CFA:  LDR             R2, [SP,#0x100+var_E4]
588CFC:  VMUL.F32        S6, S6, S6
588D00:  VLDR            S8, [R2,#0x10]
588D04:  LDR.W           R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x588D0C)
588D08:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
588D0A:  VADD.F32        S2, S2, S4
588D0E:  VLDR            S4, [SP,#0x100+var_70]
588D12:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
588D14:  VMUL.F32        S4, S8, S4
588D18:  VADD.F32        S2, S2, S6
588D1C:  VMOV.F32        S6, #0.5
588D20:  VMUL.F32        S4, S4, S2
588D24:  VLDR            S2, [R2]
588D28:  ADD.W           R2, R6, #0x4A0
588D2C:  VMUL.F32        S4, S2, S4
588D30:  VMUL.F32        S4, S4, S6
588D34:  VLDR            S6, [R2]
588D38:  STR.W           R10, [SP,#0x100+var_E8]
588D3C:  BNE             loc_588DA2
588D3E:  VMOV.F32        S8, #1.0
588D42:  VADD.F32        S6, S6, S8
588D46:  B               loc_588DB0
588D48:  DCFS 0.1
588D4C:  DCFS 0.008
588D50:  DCFS -0.6
588D54:  ALIGN 8
588D58:  DCFD 0.05
588D60:  DCFS 0.2
588D64:  DCFS 0.03
588D68:  DCFS 0.4
588D6C:  DCFS -0.00017
588D70:  DCFS 300.0
588D74:  DCFS -0.15
588D78:  DCFS 0.01
588D7C:  DCFS 0.0
588D80:  DCFS 0.05
588D84:  DCFS 40.0
588D88:  VCMPE.F32       S2, S0
588D8C:  VMRS            APSR_nzcv, FPSCR
588D90:  BGE             loc_588D9A
588D92:  VLDR            S0, =0.0
588D96:  VSTR            S0, [R8]
588D9A:  MOV.W           R10, #0
588D9E:  MOVS            R4, #1
588DA0:  B               loc_588E54
588DA2:  VLDR            S8, =0.05
588DA6:  VCMPE.F32       S6, S8
588DAA:  VMRS            APSR_nzcv, FPSCR
588DAE:  BLE             loc_588DB6
588DB0:  VMUL.F32        S4, S6, S4
588DB4:  B               loc_588DBA
588DB6:  VLDR            S4, =0.0
588DBA:  LDR             R4, [SP,#0x100+var_E4]
588DBC:  MOV             R0, R6
588DBE:  VLDR            S8, [R6,#0x90]
588DC2:  VLDR            S10, [R1,#0x24]
588DC6:  VLDR            S6, [R4,#0x14]
588DCA:  VMUL.F32        S6, S6, S18
588DCE:  VMUL.F32        S6, S6, S8
588DD2:  VLDR            S8, [R1,#0x20]
588DD6:  VMUL.F32        S2, S6, S2
588DDA:  VMIN.F32        D1, D2, D1
588DDE:  VMUL.F32        S4, S8, S2
588DE2:  VMUL.F32        S6, S10, S2
588DE6:  VMUL.F32        S0, S2, S0
588DEA:  VMOV            R10, S4
588DEE:  VMOV            R5, S6
588DF2:  VMOV            R8, S0
588DF6:  MOV             R1, R10
588DF8:  MOV             R2, R5
588DFA:  MOV             R3, R8
588DFC:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
588E00:  LDR             R0, [R6,#0x14]
588E02:  MOV             R1, R10
588E04:  VLDR            S0, [R4,#0x18]
588E08:  MOV             R2, R5
588E0A:  VLDR            S8, [SP,#0x100+var_68]
588E0E:  MOV             R3, R8
588E10:  VLDR            S4, [R0,#0x14]
588E14:  VLDR            S6, [R0,#0x18]
588E18:  VLDR            S2, [R0,#0x10]
588E1C:  VMUL.F32        S4, S0, S4
588E20:  VMUL.F32        S6, S0, S6
588E24:  VLDR            S10, [SP,#0x100+var_64]
588E28:  VMUL.F32        S0, S0, S2
588E2C:  VLDR            S2, [SP,#0x100+var_6C]
588E30:  MOV             R0, R6
588E32:  VSUB.F32        S4, S8, S4
588E36:  VSUB.F32        S6, S10, S6
588E3A:  VSUB.F32        S0, S2, S0
588E3E:  VSTR            S0, [SP,#0x100+var_100]
588E42:  VSTR            S4, [SP,#0x100+var_FC]
588E46:  VSTR            S6, [SP,#0x100+var_F8]
588E4A:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
588E4E:  LDR.W           R10, [SP,#0x100+var_E8]
588E52:  MOVS            R4, #0
588E54:  LDRB.W          R0, [R6,#0x3A]
588E58:  STR.W           R10, [SP,#0x100+var_E8]
588E5C:  CMP             R0, #7
588E5E:  BHI             loc_588E7A
588E60:  LDR.W           R0, [R6,#0x464]; this
588E64:  CBZ             R0, loc_588E7A
588E66:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
588E6A:  CMP             R0, #1
588E6C:  BNE             loc_588E7A
588E6E:  LDR.W           R0, [R6,#0x464]; this
588E72:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
588E76:  MOV             R10, R0
588E78:  B               loc_588E7E
588E7A:  MOV.W           R10, #0
588E7E:  LDR             R0, [R6,#0x14]
588E80:  VLDR            S0, =-0.6
588E84:  VLDR            S2, [R0,#0x28]
588E88:  VCMPE.F32       S2, S0
588E8C:  VMRS            APSR_nzcv, FPSCR
588E90:  BLE.W           loc_5894F8
588E94:  ADD.W           R1, R6, #0x4A0
588E98:  STR             R1, [SP,#0x100+x]
588E9A:  VLDR            S2, =0.05
588E9E:  VLDR            S0, [R1]
588EA2:  VABS.F32        S0, S0
588EA6:  VCMPE.F32       S0, S2
588EAA:  VMRS            APSR_nzcv, FPSCR
588EAE:  BLE             loc_588EBC
588EB0:  VMOV.F32        S0, #1.0
588EB4:  CMP.W           R11, #0
588EB8:  BNE             loc_588EEA
588EBA:  B               loc_588F24
588EBC:  VLDR            S0, [R6,#0x48]
588EC0:  VLDR            S2, [R6,#0x4C]
588EC4:  VMUL.F32        S0, S0, S0
588EC8:  VMUL.F32        S2, S2, S2
588ECC:  VADD.F32        S0, S0, S2
588ED0:  VLDR            S2, =0.01
588ED4:  VSQRT.F32       S0, S0
588ED8:  VCMPE.F32       S0, S2
588EDC:  VMRS            APSR_nzcv, FPSCR
588EE0:  BLE.W           loc_5894F8
588EE4:  CMP.W           R11, #0
588EE8:  BEQ             loc_588F24
588EEA:  EOR.W           R1, R4, #1
588EEE:  CMP             R1, #1
588EF0:  BNE             loc_588F24
588EF2:  VCVT.F64.F32    D16, S0
588EF6:  VLDR            D17, =0.05
588EFA:  VCMPE.F64       D16, D17
588EFE:  VMRS            APSR_nzcv, FPSCR
588F02:  BLE             loc_588F24
588F04:  ADD.W           R1, R0, #0x30 ; '0'
588F08:  CMP             R0, #0
588F0A:  IT EQ
588F0C:  ADDEQ           R1, R6, #4
588F0E:  MOV             R0, R6; this
588F10:  LDM.W           R1, {R4,R5,R8}
588F14:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
588F18:  MOV             R0, R11
588F1A:  MOV             R1, R4
588F1C:  MOV             R2, R5
588F1E:  MOV             R3, R8
588F20:  BLX             j__ZN5CBoat12AddWakePointE7CVector; CBoat::AddWakePoint(CVector)
588F24:  LDRB.W          R0, [R6,#0x3A]
588F28:  CMP             R0, #7
588F2A:  BHI             loc_588F94
588F2C:  LDR             R0, [R6,#0x14]
588F2E:  VLDR            S0, [R6,#0x48]
588F32:  VLDR            S2, [R6,#0x4C]
588F36:  VLDR            S6, [R0,#0x10]
588F3A:  VLDR            S8, [R0,#0x14]
588F3E:  VMUL.F32        S0, S0, S6
588F42:  VLDR            S10, [R0,#0x18]
588F46:  VMUL.F32        S2, S2, S8
588F4A:  VLDR            S4, [R6,#0x50]
588F4E:  LDR.W           R0, [R6,#0x388]
588F52:  VMUL.F32        S4, S4, S10
588F56:  VADD.F32        S0, S0, S2
588F5A:  VLDR            S2, [R0,#0xA8]
588F5E:  MOV             R0, R10; this
588F60:  VADD.F32        S0, S0, S4
588F64:  VMOV.F32        S4, #0.5
588F68:  VMUL.F32        S18, S2, S0
588F6C:  VMUL.F32        S20, S18, S4
588F70:  BLX             j__ZN4CPad12GetHandBrakeEv; CPad::GetHandBrake(void)
588F74:  VMOV.F32        S0, #1.0
588F78:  CMP             R0, #0
588F7A:  IT EQ
588F7C:  VMOVEQ.F32      S20, S18
588F80:  VSUB.F32        S18, S0, S20
588F84:  VCMPE.F32       S18, #0.0
588F88:  VMRS            APSR_nzcv, FPSCR
588F8C:  BGE             loc_588F9A
588F8E:  VLDR            S18, =0.0
588F92:  B               loc_588FA8
588F94:  VMOV.F32        S18, #1.0
588F98:  B               loc_588FA8
588F9A:  VCMPE.F32       S18, S0
588F9E:  VMRS            APSR_nzcv, FPSCR
588FA2:  IT GT
588FA4:  VMOVGT.F32      S18, S0
588FA8:  MOV             R0, R6; this
588FAA:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
588FAE:  VLDR            D16, [R0]
588FB2:  MOVS            R4, #0
588FB4:  LDR             R0, [R0,#8]
588FB6:  ADD             R2, SP, #0x100+var_D0
588FB8:  STR             R0, [SP,#0x100+var_C8]
588FBA:  LDR             R0, [SP,#0x100+var_E4]
588FBC:  VSTR            D16, [SP,#0x100+var_D0]
588FC0:  STR             R4, [SP,#0x100+var_D0]
588FC2:  VLDR            S0, [SP,#0x100+var_D0+4]
588FC6:  VLDR            S2, [R0,#4]
588FCA:  VLDR            S4, [R0,#8]
588FCE:  ADD             R0, SP, #0x100+var_90; CMatrix *
588FD0:  VMUL.F32        S0, S2, S0
588FD4:  VLDR            S2, [SP,#0x100+var_C8]
588FD8:  VSTR            S0, [SP,#0x100+var_D0+4]
588FDC:  VMUL.F32        S0, S4, S2
588FE0:  VSTR            S0, [SP,#0x100+var_C8]
588FE4:  LDR             R1, [R6,#0x14]; CVector *
588FE6:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
588FEA:  VLDR            D16, [SP,#0x100+var_90]
588FEE:  ADD.W           R8, R6, #0x498
588FF2:  LDR             R0, [SP,#0x100+var_88]
588FF4:  MOVS            R3, #(stderr+1)
588FF6:  STR             R0, [SP,#0x100+var_C8]
588FF8:  VSTR            D16, [SP,#0x100+var_D0]
588FFC:  LDR             R0, [R6,#0x14]
588FFE:  VLDR            S0, [SP,#0x100+var_D0]
589002:  ADD.W           R1, R0, #0x30 ; '0'
589006:  CMP             R0, #0
589008:  VLDR            S2, [SP,#0x100+var_D0+4]
58900C:  VLDR            S4, [SP,#0x100+var_C8]
589010:  IT EQ
589012:  ADDEQ           R1, R6, #4
589014:  VLDR            S6, [R1]
589018:  VLDR            S8, [R1,#4]
58901C:  VLDR            S10, [R1,#8]
589020:  VADD.F32        S0, S6, S0
589024:  VADD.F32        S2, S8, S2
589028:  VLDR            S22, [R8]
58902C:  VADD.F32        S20, S10, S4
589030:  STRD.W          R3, R4, [SP,#0x100+var_100]; float *
589034:  ADD             R3, SP, #0x100+var_D4; float
589036:  VMOV            R0, S0; this
58903A:  VMOV            R1, S2; float
58903E:  VMOV            R2, S20; float
589042:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
589046:  VMUL.F32        S0, S18, S22
58904A:  VMOV            R5, S0
58904E:  VMOV.F32        S0, #-0.5
589052:  VADD.F32        S22, S20, S0
589056:  EOR.W           R0, R5, #0x80000000; x
58905A:  BLX             sinf
58905E:  MOV             R4, R0
589060:  MOV             R0, R5; x
589062:  BLX             cosf
589066:  VLDR            S0, [SP,#0x100+var_D4]
58906A:  VCMPE.F32       S0, S22
58906E:  VMRS            APSR_nzcv, FPSCR
589072:  BLE             loc_5890DA
589074:  VSUB.F32        S0, S0, S20
589078:  VLDR            S20, =0.01
58907C:  VMOV.F32        S26, #0.5
589080:  VMOV.F32        S2, #1.0
589084:  VMOV            S22, R4
589088:  VADD.F32        S0, S0, S26
58908C:  VCMPE.F32       S0, S2
589090:  VMRS            APSR_nzcv, FPSCR
589094:  VMUL.F32        S24, S0, S0
589098:  IT GT
58909A:  VMOVGT.F32      S24, S2
58909E:  CMP.W           R11, #0
5890A2:  VSTR            S24, [SP,#0x100+var_D4]
5890A6:  ITTT NE
5890A8:  LDRBNE.W        R1, [R11,#0x5C0]
5890AC:  ORRNE.W         R1, R1, #2
5890B0:  STRBNE.W        R1, [R11,#0x5C0]
5890B4:  LDR             R1, [SP,#0x100+x]
5890B6:  VLDR            S0, [R1]
5890BA:  VABS.F32        S28, S0
5890BE:  VCMPE.F32       S28, S20
5890C2:  VMRS            APSR_nzcv, FPSCR
5890C6:  BLE             loc_5890D0
5890C8:  LDRH            R1, [R6,#0x26]
5890CA:  CMP.W           R1, #0x1CC
5890CE:  BNE             loc_5890EE
5890D0:  MOVS            R4, #1
5890D2:  CMP             R4, #0
5890D4:  BNE.W           loc_589336
5890D8:  B               loc_5894F8
5890DA:  CMP.W           R11, #0
5890DE:  ITTT NE
5890E0:  LDRBNE.W        R0, [R11,#0x5C0]
5890E4:  ANDNE.W         R0, R0, #0xFD
5890E8:  STRBNE.W        R0, [R11,#0x5C0]
5890EC:  B               loc_5894F8
5890EE:  VLDR            S2, [R8]
5890F2:  VNEG.F32        S4, S22
5890F6:  LDR             R1, [R6,#0x14]; CVector *
5890F8:  VMOV            S0, R0
5890FC:  VABS.F32        S2, S2
589100:  ADD             R0, SP, #0x100+var_90; CMatrix *
589102:  ADD             R2, SP, #0x100+var_E0
589104:  VSTR            S0, [SP,#0x100+var_DC]
589108:  VSTR            S4, [SP,#0x100+var_E0]
58910C:  VNEG.F32        S2, S2
589110:  VSTR            S2, [SP,#0x100+var_D8]
589114:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
589118:  VLDR            S4, [SP,#0x100+var_88]
58911C:  VCMPE.F32       S28, S26
589120:  LDR             R0, [SP,#0x100+x]
589122:  VMRS            APSR_nzcv, FPSCR
589126:  VMUL.F32        S4, S24, S4
58912A:  VLDR            S2, [SP,#0x100+var_90+4]
58912E:  VLDR            S0, [SP,#0x100+var_90]
589132:  MOV.W           R4, #0
589136:  VMUL.F32        S2, S24, S2
58913A:  VLDR            S8, =40.0
58913E:  VMUL.F32        S6, S24, S0
589142:  VLDR            S0, [R0]
589146:  LDR.W           R0, [R6,#0x388]
58914A:  VMUL.F32        S4, S4, S0
58914E:  VMUL.F32        S2, S2, S0
589152:  VMUL.F32        S6, S6, S0
589156:  VMUL.F32        S4, S4, S8
58915A:  VMUL.F32        S2, S2, S8
58915E:  VMUL.F32        S6, S6, S8
589162:  VLDR            S8, [R0,#0x7C]
589166:  LDR             R0, [R7,#arg_0]
589168:  VMUL.F32        S10, S4, S8
58916C:  VMUL.F32        S2, S2, S8
589170:  VMUL.F32        S4, S6, S8
589174:  VLDR            S6, [R6,#0x90]
589178:  VLDR            S8, =0.2
58917C:  IT LT
58917E:  MOVLT           R4, #1
589180:  VMUL.F32        S24, S10, S6
589184:  VMUL.F32        S26, S2, S6
589188:  VMUL.F32        S28, S4, S6
58918C:  VCMPE.F32       S24, S8
589190:  VMRS            APSR_nzcv, FPSCR
589194:  ITTTT GT
589196:  VLDRGT          S10, =1.2
58919A:  VSUBGT.F32      S10, S10, S24
58919E:  VMULGT.F32      S10, S10, S10
5891A2:  VADDGT.F32      S24, S10, S8
5891A6:  CBZ             R0, loc_589202
5891A8:  VCMPE.F32       S0, #0.0
5891AC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5891BC)
5891B0:  VMRS            APSR_nzcv, FPSCR
5891B4:  VMOV.F32        S2, #5.0
5891B8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5891BA:  VLDR            S0, =0.0
5891BE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5891C0:  VMAX.F32        D0, D12, D0
5891C4:  VMUL.F32        S4, S28, S2
5891C8:  VMUL.F32        S2, S26, S2
5891CC:  IT LT
5891CE:  VMOVLT.F32      S28, S4
5891D2:  IT LT
5891D4:  VMOVLT.F32      S26, S2
5891D8:  VLDR            S2, [R0]
5891DC:  MOV             R0, R6
5891DE:  VMUL.F32        S0, S0, S2
5891E2:  VMUL.F32        S4, S2, S28
5891E6:  VMUL.F32        S2, S2, S26
5891EA:  VMOV            R3, S0
5891EE:  VMOV            R1, S4
5891F2:  VMOV            R2, S2
5891F6:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5891FA:  B               loc_5892FA
5891FC:  MOV.W           R10, #1
589200:  B               loc_588A80
589202:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58920A)
589206:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
589208:  LDR             R5, [R0]; CTimer::ms_fTimeStep ...
58920A:  MOV             R0, R6
58920C:  VLDR            S0, [R5]
589210:  VMUL.F32        S2, S28, S0
589214:  VMUL.F32        S4, S26, S0
589218:  VMUL.F32        S0, S24, S0
58921C:  VMOV            R1, S2
589220:  VMOV            R2, S4
589224:  VMOV            R3, S0
589228:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
58922C:  VLDR            S0, [R5]
589230:  LDR             R1, [SP,#0x100+var_E4]
589232:  VMUL.F32        S4, S26, S0
589236:  LDR             R0, [R6,#0x14]
589238:  VMUL.F32        S2, S28, S0
58923C:  VMUL.F32        S0, S24, S0
589240:  VLDR            S6, [R1,#0xC]
589244:  VLDR            S8, [R0,#0x24]
589248:  VLDR            S10, [R0,#0x28]
58924C:  VMOV            R2, S4
589250:  VMOV            R1, S2
589254:  VLDR            S2, [R0,#0x20]
589258:  VMOV            R3, S0
58925C:  MOV             R0, R6
58925E:  VMUL.F32        S0, S6, S10
589262:  VLDR            S10, [SP,#0x100+var_C8]
589266:  VMUL.F32        S4, S6, S8
58926A:  VLDR            S8, [SP,#0x100+var_D0+4]
58926E:  VMUL.F32        S2, S6, S2
589272:  VLDR            S6, [SP,#0x100+var_D0]
589276:  VSUB.F32        S0, S10, S0
58927A:  VSUB.F32        S4, S8, S4
58927E:  VSUB.F32        S2, S6, S2
589282:  VSTR            S2, [SP,#0x100+var_100]
589286:  VSTR            S4, [SP,#0x100+var_FC]
58928A:  VSTR            S0, [SP,#0x100+var_F8]
58928E:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
589292:  LDR             R0, [R6,#0x14]
589294:  LDR.W           R1, [R6,#0x388]
589298:  VLDR            S0, [R0]
58929C:  VLDR            S2, [R0,#4]
5892A0:  VMUL.F32        S8, S28, S0
5892A4:  VLDR            S4, [R0,#8]
5892A8:  VMUL.F32        S6, S26, S2
5892AC:  VMUL.F32        S10, S24, S4
5892B0:  VADD.F32        S6, S8, S6
5892B4:  VLDR            S8, [R1,#0x28]
5892B8:  VADD.F32        S6, S6, S10
5892BC:  VMUL.F32        S6, S6, S8
5892C0:  VNMUL.F32       S0, S6, S0
5892C4:  VNMUL.F32       S2, S6, S2
5892C8:  VNMUL.F32       S4, S6, S4
5892CC:  VLDR            S6, [R5]
5892D0:  LDRD.W          R5, R12, [R0,#0x20]
5892D4:  LDR             R0, [R0,#0x28]
5892D6:  STRD.W          R5, R12, [SP,#0x100+var_100]
5892DA:  STR             R0, [SP,#0x100+var_F8]
5892DC:  MOV             R0, R6
5892DE:  VMUL.F32        S0, S6, S0
5892E2:  VMUL.F32        S2, S6, S2
5892E6:  VMUL.F32        S4, S6, S4
5892EA:  VMOV            R1, S0
5892EE:  VMOV            R2, S2
5892F2:  VMOV            R3, S4
5892F6:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5892FA:  LDR             R0, [SP,#0x100+x]
5892FC:  VLDR            S0, [R0]
589300:  VCMPE.F32       S0, #0.0
589304:  VMRS            APSR_nzcv, FPSCR
589308:  BLE             loc_589330
58930A:  LDRB.W          R0, [R6,#0x3A]
58930E:  CMP             R0, #7
589310:  BHI             loc_589330
589312:  MOV             R0, R6; this
589314:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
589318:  LDRD.W          R1, R0, [R0]
58931C:  ADD             R2, SP, #0x100+var_90
58931E:  STRD.W          R1, R0, [SP,#0x100+var_90]
589322:  MOVS            R0, #0
589324:  STR             R0, [SP,#0x100+var_88]
589326:  STR             R0, [SP,#0x100+var_90]
589328:  ADD             R0, SP, #0x100+var_E0; CMatrix *
58932A:  LDR             R1, [R6,#0x14]; CVector *
58932C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
589330:  CMP             R4, #0
589332:  BEQ.W           loc_5894F8
589336:  LDR             R0, [R7,#arg_0]
589338:  CMP             R0, #0
58933A:  BNE.W           loc_5894F8
58933E:  LDR             R1, [R6,#0x14]; CVector *
589340:  VLDR            S0, [R6,#0x48]
589344:  VLDR            S2, [R6,#0x4C]
589348:  VLDR            S6, [R1,#0x10]
58934C:  VLDR            S8, [R1,#0x14]
589350:  VMUL.F32        S0, S0, S6
589354:  VLDR            S4, [R6,#0x50]
589358:  VMUL.F32        S2, S2, S8
58935C:  VLDR            S10, [R1,#0x18]
589360:  LDR             R0, [SP,#0x100+x]
589362:  VMUL.F32        S4, S4, S10
589366:  VLDR            S6, [R6,#0x94]
58936A:  VMUL.F32        S6, S6, S20
58936E:  VADD.F32        S0, S0, S2
589372:  VADD.F32        S4, S0, S4
589376:  VLDR            S0, [R0]
58937A:  LDR.W           R0, [R6,#0x388]
58937E:  VABS.F32        S2, S0
589382:  VLDR            S8, [R0,#0xA4]
589386:  VMUL.F32        S4, S8, S4
58938A:  VCMPE.F32       S2, S20
58938E:  VMRS            APSR_nzcv, FPSCR
589392:  VMIN.F32        D12, D2, D3
589396:  BLE             loc_5893B8
589398:  VLDR            S4, =0.55
58939C:  LDRB.W          R0, [R6,#0x3A]
5893A0:  VSUB.F32        S2, S4, S2
5893A4:  CMP             R0, #7
5893A6:  ITE HI
5893A8:  VMOVHI.F32      S4, #5.0
5893AC:  VLDRLS          S4, =2.6
5893B0:  VMUL.F32        S2, S2, S4
5893B4:  VMUL.F32        S24, S24, S2
5893B8:  VCMPE.F32       S24, #0.0
5893BC:  VMRS            APSR_nzcv, FPSCR
5893C0:  BLE             loc_5893F4
5893C2:  VCMPE.F32       S0, #0.0
5893C6:  VMRS            APSR_nzcv, FPSCR
5893CA:  BGE             loc_5893F4
5893CC:  VNEG.F32        S24, S24
5893D0:  B               loc_58940C
5893D2:  ALIGN 4
5893D4:  DCFS 0.2
5893D8:  DCFS 1.2
5893DC:  DCFS 0.0
5893E0:  DCFS 0.55
5893E4:  DCFS 2.6
5893E8:  DCFS -0.1
5893EC:  DCD mod_Buoyancy_ptr - 0x588960
5893F0:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5889A8
5893F4:  VCMPE.F32       S24, #0.0
5893F8:  VMRS            APSR_nzcv, FPSCR
5893FC:  BGE             loc_58940C
5893FE:  VCMPE.F32       S0, #0.0
589402:  VMRS            APSR_nzcv, FPSCR
589406:  IT GT
589408:  VNEGGT.F32      S24, S24
58940C:  VLDR            S0, =0.0
589410:  VNMUL.F32       S2, S22, S24
589414:  ADD             R0, SP, #0x100+var_90; CMatrix *
589416:  ADD             R2, SP, #0x100+var_E0
589418:  VMUL.F32        S0, S24, S0
58941C:  VLDR            S26, [SP,#0x100+var_D4]
589420:  VSTR            S2, [SP,#0x100+var_E0]
589424:  VSTR            S0, [SP,#0x100+var_DC]
589428:  VSTR            S0, [SP,#0x100+var_D8]
58942C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
589430:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x589440)
589434:  VLDR            S0, [SP,#0x100+var_90]
589438:  VLDR            S2, [SP,#0x100+var_90+4]
58943C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58943E:  VLDR            S4, [SP,#0x100+var_88]
589442:  VMUL.F32        S28, S26, S0
589446:  VMUL.F32        S30, S26, S2
58944A:  LDR             R4, [R0]; CTimer::ms_fTimeStep ...
58944C:  VMUL.F32        S26, S26, S4
589450:  MOV             R0, R6
589452:  VLDR            S0, [R4]
589456:  VMUL.F32        S2, S28, S0
58945A:  VMUL.F32        S4, S30, S0
58945E:  VMUL.F32        S0, S26, S0
589462:  VMOV            R1, S2
589466:  VMOV            R2, S4
58946A:  VMOV            R3, S0
58946E:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
589472:  VLDR            S0, [R4]
589476:  ADD.W           R12, SP, #0x100+var_D0
58947A:  VMUL.F32        S2, S28, S0
58947E:  LDM.W           R12, {R0,R5,R12}
589482:  VMUL.F32        S4, S30, S0
589486:  VMUL.F32        S0, S26, S0
58948A:  STMEA.W         SP, {R0,R5,R12}
58948E:  MOV             R0, R6
589490:  VMOV            R1, S2
589494:  VMOV            R2, S4
589498:  VMOV            R3, S0
58949C:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5894A0:  VMOV.F32        S0, #-0.75
5894A4:  VMUL.F32        S2, S22, S24
5894A8:  VMUL.F32        S0, S2, S0
5894AC:  VLDR            S2, [R4]
5894B0:  VMAX.F32        D1, D1, D10
5894B4:  VDIV.F32        S0, S0, S18
5894B8:  VMUL.F32        S0, S0, S2
5894BC:  VSTR            S0, [SP,#0x100+var_D4]
5894C0:  LDR             R0, [R6,#0x14]
5894C2:  VLDR            S2, [R0]
5894C6:  VLDR            S4, [R0,#4]
5894CA:  VLDR            S6, [R0,#8]
5894CE:  VMUL.F32        S2, S2, S0
5894D2:  VMUL.F32        S4, S0, S4
5894D6:  LDRD.W          R5, R4, [R0,#0x20]
5894DA:  VMUL.F32        S0, S0, S6
5894DE:  LDR             R0, [R0,#0x28]
5894E0:  STRD.W          R5, R4, [SP,#0x100+var_100]
5894E4:  STR             R0, [SP,#0x100+var_F8]
5894E6:  MOV             R0, R6
5894E8:  VMOV            R1, S2
5894EC:  VMOV            R2, S4
5894F0:  VMOV            R3, S0
5894F4:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5894F8:  LDR.W           R0, [R6,#0x388]
5894FC:  VLDR            S0, [R0,#0xC0]
589500:  VCMP.F32        S0, #0.0
589504:  VMRS            APSR_nzcv, FPSCR
589508:  BEQ             loc_5895C6
58950A:  LDR             R0, [R6,#0x14]
58950C:  MOVS            R1, #0
58950E:  STRD.W          R1, R1, [SP,#0x100+var_90]
589512:  MOV.W           R1, #0x3F800000
589516:  STR             R1, [SP,#0x100+var_88]
589518:  ADD.W           R1, R0, #0x10; CVector *
58951C:  ADD             R0, SP, #0x100+var_D0; CVector *
58951E:  ADD             R2, SP, #0x100+var_90
589520:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
589524:  LDR.W           R0, [R6,#0x388]
589528:  VLDR            S0, [R6,#0x48]
58952C:  VLDR            S8, [SP,#0x100+var_D0]
589530:  VLDR            S1, [R0,#0xC0]
589534:  VLDR            S14, =-0.1
589538:  VMUL.F32        S0, S0, S8
58953C:  VLDR            S2, [R6,#0x4C]
589540:  VLDR            S10, [SP,#0x100+var_D0+4]
589544:  VMUL.F32        S14, S1, S14
589548:  VLDR            S4, [R6,#0x50]
58954C:  VMUL.F32        S2, S2, S10
589550:  VLDR            S12, [SP,#0x100+var_C8]
589554:  VLDR            S6, [R6,#0x90]
589558:  VMUL.F32        S4, S4, S12
58955C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x589564)
589560:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
589562:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
589564:  VADD.F32        S0, S0, S2
589568:  VMUL.F32        S2, S14, S6
58956C:  VADD.F32        S0, S0, S4
589570:  VLDR            S4, =0.3
589574:  VMUL.F32        S2, S16, S2
589578:  VMUL.F32        S6, S10, S4
58957C:  VMUL.F32        S0, S0, S2
589580:  VMUL.F32        S2, S8, S4
589584:  VLDR            S4, [R0]
589588:  VSUB.F32        S6, S8, S6
58958C:  VLDR            S8, =0.0
589590:  MOV             R0, R6
589592:  VMUL.F32        S0, S4, S0
589596:  VADD.F32        S2, S2, S10
58959A:  VADD.F32        S4, S12, S8
58959E:  VMUL.F32        S8, S6, S0
5895A2:  VMUL.F32        S10, S2, S0
5895A6:  VMUL.F32        S0, S4, S0
5895AA:  VSTR            S4, [SP,#0x100+var_C8]
5895AE:  VSTR            S6, [SP,#0x100+var_D0]
5895B2:  VSTR            S2, [SP,#0x100+var_D0+4]
5895B6:  VMOV            R1, S8
5895BA:  VMOV            R2, S10
5895BE:  VMOV            R3, S0
5895C2:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5895C6:  LDRB.W          R0, [R6,#0x3A]
5895CA:  LDR             R4, [SP,#0x100+var_E8]
5895CC:  CMP             R0, #7
5895CE:  BHI             loc_589660
5895D0:  MOV             R0, R10; this
5895D2:  BLX             j__ZN4CPad12GetHandBrakeEv; CPad::GetHandBrake(void)
5895D6:  CMP             R0, #0
5895D8:  BEQ             loc_589660
5895DA:  LDR             R0, [R6,#0x14]
5895DC:  VLDR            S6, [R6,#0x48]
5895E0:  VLDR            S8, [R6,#0x4C]
5895E4:  VLDR            S0, [R0,#0x10]
5895E8:  VLDR            S2, [R0,#0x14]
5895EC:  VMUL.F32        S6, S6, S0
5895F0:  VLDR            S10, [R6,#0x50]
5895F4:  VMUL.F32        S8, S8, S2
5895F8:  VLDR            S4, [R0,#0x18]
5895FC:  VMUL.F32        S10, S10, S4
589600:  VADD.F32        S6, S6, S8
589604:  VADD.F32        S6, S6, S10
589608:  VCMPE.F32       S6, #0.0
58960C:  VMRS            APSR_nzcv, FPSCR
589610:  BLE             loc_589660
589612:  LDR.W           R0, [R6,#0x388]
589616:  VLDR            S8, [R0,#0xBC]
58961A:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58962A)
58961E:  VMUL.F32        S6, S6, S8
589622:  VLDR            S8, =-0.1
589626:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
589628:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
58962A:  VMUL.F32        S6, S6, S8
58962E:  VLDR            S8, [R6,#0x90]
589632:  VMUL.F32        S6, S8, S6
589636:  VLDR            S8, [R0]
58963A:  MOV             R0, R6
58963C:  VMUL.F32        S6, S16, S6
589640:  VMUL.F32        S6, S8, S6
589644:  VMUL.F32        S0, S0, S6
589648:  VMUL.F32        S2, S2, S6
58964C:  VMUL.F32        S4, S4, S6
589650:  VMOV            R1, S0
589654:  VMOV            R2, S2
589658:  VMOV            R3, S4
58965C:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
589660:  MOVS            R0, #0
589662:  CMP             R4, #0
589664:  LDR             R1, [R7,#arg_0]
589666:  IT EQ
589668:  MOVEQ           R0, #1
58966A:  ORRS.W          R10, R0, R1
58966E:  IT EQ
589670:  CMPEQ.W         R9, #0
589674:  BNE             loc_589682
589676:  VMOV            R2, S16
58967A:  LDR             R1, [SP,#0x100+var_E4]
58967C:  MOV             R0, R6
58967E:  BLX             j__ZN8CVehicle24ApplyBoatWaterResistanceEP17tBoatHandlingDataf; CVehicle::ApplyBoatWaterResistance(tBoatHandlingData *,float)
589682:  LDRH            R0, [R6,#0x26]
589684:  CMP.W           R0, #0x1CC
589688:  BNE             loc_58969E
58968A:  ADDW            R0, R6, #0x49C
58968E:  VLDR            S0, [R0]
589692:  VCMP.F32        S0, #0.0
589696:  VMRS            APSR_nzcv, FPSCR
58969A:  BNE.W           loc_5897BE
58969E:  CMP.W           R9, #0
5896A2:  BNE.W           loc_5897BE
5896A6:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5896B2)
5896A8:  ADD.W           R4, R6, #0x54 ; 'T'
5896AC:  LDR             R1, [SP,#0x100+var_E4]
5896AE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5896B0:  LDR             R2, [R1,#0x30]
5896B2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5896B4:  STR             R2, [SP,#0x100+x]
5896B6:  LDRD.W          R5, R9, [R1,#0x34]
5896BA:  MOV             R1, R4; CMatrix *
5896BC:  LDR             R2, [R6,#0x14]
5896BE:  LDR.W           R8, [R0]; CTimer::ms_fTimeStep
5896C2:  ADD             R0, SP, #0x100+var_D0; CVector *
5896C4:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
5896C8:  MOV             R0, R5; x
5896CA:  MOV             R1, R8; y
5896CC:  BLX             powf
5896D0:  VLDR            D16, [SP,#0x100+var_D0]
5896D4:  VMOV            S18, R0
5896D8:  LDR             R1, [SP,#0x100+var_C8]
5896DA:  MOV             R0, R9; x
5896DC:  STR             R1, [R6,#0x5C]
5896DE:  MOV             R1, R8; y
5896E0:  VSTR            D16, [R6,#0x54]
5896E4:  BLX             powf
5896E8:  VLDR            S0, [R6,#0x58]
5896EC:  VMOV            S4, R0
5896F0:  VLDR            S2, [R6,#0x5C]
5896F4:  ADD             R0, SP, #0x100+var_D0; CMatrix *
5896F6:  VMUL.F32        S0, S18, S0
5896FA:  VLDR            S20, [R6,#0x54]
5896FE:  VMUL.F32        S2, S4, S2
589702:  MOV             R2, R4
589704:  VSTR            S0, [R6,#0x58]
589708:  VSTR            S2, [R6,#0x5C]
58970C:  LDR             R1, [R6,#0x14]; CVector *
58970E:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
589712:  VLDR            D16, [SP,#0x100+var_D0]
589716:  ADD.W           R2, R6, #0xA8
58971A:  LDR             R0, [SP,#0x100+var_C8]
58971C:  STR             R0, [R6,#0x5C]
58971E:  ADD             R0, SP, #0x100+var_D0; CMatrix *
589720:  VSTR            D16, [R6,#0x54]
589724:  LDR             R4, [R6,#0x14]
589726:  VLDR            S18, [R6,#0x94]
58972A:  MOV             R1, R4; CVector *
58972C:  VLDR            S22, [R4,#0x20]
589730:  VLDR            S24, [R4,#0x24]
589734:  VLDR            S26, [R4,#0x28]
589738:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
58973C:  LDR             R0, [SP,#0x100+x]; x
58973E:  MOV             R1, R8; y
589740:  BLX             powf
589744:  VLDR            S0, =1000.0
589748:  VMOV.F32        S2, #1.0
58974C:  VLDR            S6, [SP,#0x100+var_D0]
589750:  VMUL.F32        S0, S20, S0
589754:  VLDR            S8, [SP,#0x100+var_D0+4]
589758:  VLDR            S10, [SP,#0x100+var_C8]
58975C:  VMUL.F32        S0, S20, S0
589760:  VADD.F32        S0, S0, S2
589764:  VDIV.F32        S0, S2, S0
589768:  VMOV            S2, R0
58976C:  MOV             R0, R6
58976E:  VMUL.F32        S0, S2, S0
589772:  VMUL.F32        S0, S20, S0
589776:  VSUB.F32        S0, S0, S20
58977A:  VMUL.F32        S0, S0, S18
58977E:  VMUL.F32        S2, S0, S22
589782:  VMUL.F32        S4, S0, S24
589786:  VMUL.F32        S0, S0, S26
58978A:  VMOV            R1, S2
58978E:  VLDR            S2, [R4,#0x14]
589792:  VMOV            R2, S4
589796:  VLDR            S4, [R4,#0x18]
58979A:  VMOV            R3, S0
58979E:  VLDR            S0, [R4,#0x10]
5897A2:  VADD.F32        S4, S4, S10
5897A6:  VADD.F32        S0, S0, S6
5897AA:  VADD.F32        S2, S2, S8
5897AE:  VSTR            S0, [SP,#0x100+var_100]
5897B2:  VSTR            S2, [SP,#0x100+var_FC]
5897B6:  VSTR            S4, [SP,#0x100+var_F8]
5897BA:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5897BE:  LDR             R5, [SP,#0x100+var_EC]
5897C0:  CMP.W           R10, #0
5897C4:  VLDR            S2, =10000.0
5897C8:  VLDR            S0, [R5]
5897CC:  VSUB.F32        S0, S16, S0
5897D0:  VMUL.F32        S0, S0, S2
5897D4:  VCVT.S32.F32    S0, S0
5897D8:  LDR             R4, [SP,#0x100+var_E8]
5897DA:  BNE.W           loc_589908
5897DE:  LDR             R0, [R6,#0x14]
5897E0:  VLDR            S2, [R0,#0x28]
5897E4:  VCMPE.F32       S2, #0.0
5897E8:  VMRS            APSR_nzcv, FPSCR
5897EC:  BLE.W           loc_589908
5897F0:  VMOV            R8, S0
5897F4:  VLDR            S2, =200.0
5897F8:  VCVT.F32.S32    S18, S0
5897FC:  LDR             R0, [SP,#0x100+var_E4]
5897FE:  VLDR            S0, [R0,#0x1C]
589802:  VMUL.F32        S0, S0, S18
589806:  VCMPE.F32       S0, S2
58980A:  VMRS            APSR_nzcv, FPSCR
58980E:  BLE             loc_58981E
589810:  VMOV            R2, S0; float
589814:  ADD.W           R0, R6, #0x13C; this
589818:  MOVS            R1, #0x63 ; 'c'; int
58981A:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
58981E:  CMP.W           R8, #0xC9
589822:  BLT             loc_589908
589824:  VLDR            S0, [R6,#0x48]
589828:  VLDR            S2, [R6,#0x4C]
58982C:  VMUL.F32        S8, S0, S0
589830:  VLDR            S4, [R6,#0x50]
589834:  VMUL.F32        S6, S2, S2
589838:  LDR             R0, [R6,#0x14]
58983A:  VMUL.F32        S12, S4, S4
58983E:  VLDR            S10, =-0.01
589842:  VLDR            S14, [R0,#0x10]
589846:  VLDR            S1, [R0,#0x14]
58984A:  VMUL.F32        S0, S14, S0
58984E:  VLDR            S3, [R0,#0x18]
589852:  VMUL.F32        S2, S1, S2
589856:  LDR.W           R0, [R6,#0x388]
58985A:  VADD.F32        S6, S8, S6
58985E:  VMUL.F32        S8, S18, S10
589862:  VLDR            S10, =0.001
589866:  VLDR            S7, [R0,#0x98]
58986A:  VMUL.F32        S10, S18, S10
58986E:  VLDR            S5, [R0,#0x94]
589872:  MOV             R0, R6
589874:  VADD.F32        S0, S0, S2
589878:  VADD.F32        S6, S6, S12
58987C:  VMUL.F32        S8, S8, S7
589880:  VMUL.F32        S12, S3, S4
589884:  VMUL.F32        S6, S10, S6
589888:  VMUL.F32        S2, S8, S14
58988C:  VADD.F32        S0, S0, S12
589890:  VMUL.F32        S10, S8, S1
589894:  VMUL.F32        S8, S8, S3
589898:  VADD.F32        S12, S4, S6
58989C:  VSUB.F32        S4, S5, S4
5898A0:  VMUL.F32        S2, S2, S0
5898A4:  VMUL.F32        S10, S10, S0
5898A8:  VMUL.F32        S0, S8, S0
5898AC:  VLDR            S8, =0.0
5898B0:  VCMPE.F32       S12, S5
5898B4:  VMRS            APSR_nzcv, FPSCR
5898B8:  VADD.F32        S2, S2, S8
5898BC:  IT GT
5898BE:  VMOVGT.F32      S6, S4
5898C2:  VADD.F32        S4, S10, S8
5898C6:  VMAX.F32        D3, D3, D4
5898CA:  VADD.F32        S0, S6, S0
5898CE:  VLDR            S6, [R6,#0x90]
5898D2:  VMUL.F32        S2, S6, S2
5898D6:  VMUL.F32        S4, S6, S4
5898DA:  VMUL.F32        S0, S6, S0
5898DE:  VMOV            R10, S2
5898E2:  VMOV            R9, S4
5898E6:  VMOV            R8, S0
5898EA:  MOV             R1, R10
5898EC:  MOV             R2, R9
5898EE:  MOV             R3, R8
5898F0:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5898F4:  ADD             R2, SP, #0x100+var_6C
5898F6:  MOV             R3, R8
5898F8:  LDM             R2, {R0-R2}
5898FA:  STMEA.W         SP, {R0-R2}
5898FE:  MOV             R0, R6
589900:  MOV             R1, R10
589902:  MOV             R2, R9
589904:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
589908:  CMP.W           R11, #0
58990C:  BEQ             loc_58992C
58990E:  LDR             R0, [SP,#0x100+var_70]
589910:  VLDR            D16, [SP,#0x100+var_78]
589914:  STR.W           R0, [R11,#0x64C]
589918:  ADDW            R0, R11, #0x644
58991C:  VSTR            D16, [R0]
589920:  B               loc_58995E
589922:  ALIGN 4
589924:  DCFS 0.3
589928:  DCD mod_Buoyancy_ptr - 0x588A8C
58992C:  LDR.W           R0, [R6,#0x5A0]
589930:  CBNZ            R0, loc_58995E
589932:  VLDR            S0, [SP,#0x100+var_78]
589936:  ADDW            R0, R6, #0x964
58993A:  VLDR            S2, [SP,#0x100+var_78+4]
58993E:  VMUL.F32        S0, S0, S0
589942:  VLDR            S4, [SP,#0x100+var_70]
589946:  VMUL.F32        S2, S2, S2
58994A:  VMUL.F32        S4, S4, S4
58994E:  VADD.F32        S0, S0, S2
589952:  VADD.F32        S0, S0, S4
589956:  VSQRT.F32       S0, S0
58995A:  VSTR            S0, [R0]
58995E:  VSTR            S16, [R5]
589962:  CMP.W           R11, #0
589966:  ITTTT NE
589968:  LDRBNE.W        R0, [R11,#0x5C0]
58996C:  ANDNE.W         R0, R0, #0xFE
589970:  ORRNE           R0, R4
589972:  STRBNE.W        R0, [R11,#0x5C0]
589976:  ADD             SP, SP, #0xA0
589978:  VPOP            {D8-D15}
58997C:  ADD             SP, SP, #4
58997E:  POP.W           {R8-R11}
589982:  POP             {R4-R7,PC}
589984:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x589990)
589986:  MOVS            R4, #0
589988:  MOVS            R5, #3
58998A:  MOV             R1, R6
58998C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58998E:  MOVS            R3, #0x35 ; '5'
589990:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
589992:  LDR             R2, [R0]; CTimer::ms_fTimeStep
589994:  ADD             R0, SP, #0x100+var_90
589996:  STRD.W          R5, R4, [SP,#0x100+var_100]
58999A:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
58999E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5899AC)
5899A0:  MOV.W           R8, #1
5899A4:  MOV             R1, R6; this
5899A6:  MOVS            R3, #0x35 ; '5'; int
5899A8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5899AA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5899AC:  LDR             R2, [R0]; int
5899AE:  STRD.W          R5, R4, [SP,#0x100+var_100]; int
5899B2:  STRD.W          R4, R8, [SP,#0x100+var_F8]; int
5899B6:  ADD             R4, SP, #0x100+var_D0
5899B8:  MOV             R0, R4; int
5899BA:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
5899BE:  LDR.W           R1, [R6,#0x464]; CPed *
5899C2:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
5899C6:  CMP             R0, #1
5899C8:  BNE             loc_5899DC
5899CA:  LDR.W           R1, [R6,#0x464]; this
5899CE:  ADD.W           R2, R4, #0x34 ; '4'
5899D2:  ADD             R0, SP, #0x100+var_90; int
5899D4:  MOVS            R3, #1
5899D6:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
5899DA:  B               loc_5899E0
5899DC:  STRB.W          R8, [SP,#0x100+var_92]
5899E0:  LDR.W           R0, [R6,#0x464]
5899E4:  ADD             R4, SP, #0x100+var_D0
5899E6:  MOVS            R2, #0; bool
5899E8:  MOV             R1, R4; CEvent *
5899EA:  LDR.W           R0, [R0,#0x440]
5899EE:  ADDS            R0, #0x68 ; 'h'; this
5899F0:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5899F4:  MOV             R0, R4; this
5899F6:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
5899FA:  ADD             R0, SP, #0x100+var_90; this
5899FC:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
589A00:  MOV.W           R10, #1
589A04:  B.W             loc_588A80
