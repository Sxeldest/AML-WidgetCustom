; =========================================================
; Game Engine Function: _ZN8CRestart31FindClosestHospitalRestartPointE7CVectorPS0_Pf
; Address            : 0x324A38 - 0x324C1C
; =========================================================

324A38:  PUSH            {R4-R7,LR}
324A3A:  ADD             R7, SP, #0xC
324A3C:  PUSH.W          {R8-R11}
324A40:  SUB             SP, SP, #4
324A42:  VPUSH           {D8-D11}
324A46:  SUB             SP, SP, #0x18
324A48:  MOV             R4, R3
324A4A:  LDR             R3, =(_ZN8CRestart16bOverrideRestartE_ptr - 0x324A54)
324A4C:  STRD.W          R0, R1, [SP,#0x58+var_50]
324A50:  ADD             R3, PC; _ZN8CRestart16bOverrideRestartE_ptr
324A52:  LDR             R6, [R7,#arg_0]
324A54:  STR             R2, [SP,#0x58+var_48]
324A56:  LDR             R3, [R3]; CRestart::bOverrideRestart ...
324A58:  LDRB            R0, [R3]; CRestart::bOverrideRestart
324A5A:  CBZ             R0, loc_324A84
324A5C:  LDR             R0, =(_ZN8CRestart16OverridePositionE_ptr - 0x324A64)
324A5E:  LDR             R1, =(_ZN8CRestart15OverrideHeadingE_ptr - 0x324A68)
324A60:  ADD             R0, PC; _ZN8CRestart16OverridePositionE_ptr
324A62:  LDR             R2, =(_ZN8CRestart16bOverrideRestartE_ptr - 0x324A6C)
324A64:  ADD             R1, PC; _ZN8CRestart15OverrideHeadingE_ptr
324A66:  LDR             R0, [R0]; CRestart::OverridePosition ...
324A68:  ADD             R2, PC; _ZN8CRestart16bOverrideRestartE_ptr
324A6A:  LDR             R1, [R1]; CRestart::OverrideHeading ...
324A6C:  LDR             R2, [R2]; CRestart::bOverrideRestart ...
324A6E:  VLDR            D16, [R0]
324A72:  LDR             R0, [R0,#(dword_7B6F08 - 0x7B6F00)]
324A74:  STR             R0, [R4,#8]
324A76:  VSTR            D16, [R4]
324A7A:  LDR             R0, [R1]; CRestart::OverrideHeading
324A7C:  STR             R0, [R6]
324A7E:  MOVS            R0, #0
324A80:  STRB            R0, [R2]; CRestart::bOverrideRestart
324A82:  B               loc_324C0E
324A84:  LDR             R0, =(_ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr - 0x324A8A)
324A86:  ADD             R0, PC; _ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr
324A88:  LDR             R0, [R0]; CRestart::bOverrideRespawnBasePointForMission ...
324A8A:  LDRB            R0, [R0]; CRestart::bOverrideRespawnBasePointForMission
324A8C:  CBZ             R0, loc_324AAA
324A8E:  LDR             R0, =(_ZN8CRestart34OverrideRespawnBasePointForMissionE_ptr - 0x324A98)
324A90:  MOVS            R2, #0
324A92:  LDR             R1, =(_ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr - 0x324A9A)
324A94:  ADD             R0, PC; _ZN8CRestart34OverrideRespawnBasePointForMissionE_ptr
324A96:  ADD             R1, PC; _ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr
324A98:  LDR             R0, [R0]; CRestart::OverrideRespawnBasePointForMission ...
324A9A:  LDR             R1, [R1]; CVector *
324A9C:  VLDR            D16, [R0]
324AA0:  LDR             R0, [R0,#(dword_7B6F48 - 0x7B6F40)]
324AA2:  STR             R0, [SP,#0x58+var_48]
324AA4:  STRB            R2, [R1]; CRestart::bOverrideRespawnBasePointForMission
324AA6:  VSTR            D16, [SP,#0x58+var_50]
324AAA:  LDR             R0, =(_ZN8CRestart26ExtraHospitalRestartRadiusE_ptr - 0x324AB0)
324AAC:  ADD             R0, PC; _ZN8CRestart26ExtraHospitalRestartRadiusE_ptr
324AAE:  LDR             R0, [R0]; CRestart::ExtraHospitalRestartRadius ...
324AB0:  VLDR            S0, [R0]
324AB4:  VCMPE.F32       S0, #0.0
324AB8:  VMRS            APSR_nzcv, FPSCR
324ABC:  BLE             loc_324B02
324ABE:  LDR             R0, =(_ZN8CRestart25ExtraHospitalRestartCoorsE_ptr - 0x324AC8)
324AC0:  VLDR            D16, [SP,#0x58+var_50]
324AC4:  ADD             R0, PC; _ZN8CRestart25ExtraHospitalRestartCoorsE_ptr
324AC6:  LDR             R0, [R0]; CRestart::ExtraHospitalRestartCoors ...
324AC8:  VLDR            D17, [R0]
324ACC:  VSUB.F32        D16, D16, D17
324AD0:  VMUL.F32        D1, D16, D16
324AD4:  VADD.F32        S2, S2, S3
324AD8:  VSQRT.F32       S2, S2
324ADC:  VCMPE.F32       S2, S0
324AE0:  VMRS            APSR_nzcv, FPSCR
324AE4:  BGE             loc_324B02
324AE6:  LDR             R0, =(_ZN8CRestart25ExtraHospitalRestartCoorsE_ptr - 0x324AEE)
324AE8:  LDR             R1, =(_ZN8CRestart27ExtraHospitalRestartHeadingE_ptr - 0x324AF0)
324AEA:  ADD             R0, PC; _ZN8CRestart25ExtraHospitalRestartCoorsE_ptr
324AEC:  ADD             R1, PC; _ZN8CRestart27ExtraHospitalRestartHeadingE_ptr
324AEE:  LDR             R0, [R0]; CRestart::ExtraHospitalRestartCoors ...
324AF0:  LDR             R1, [R1]; CRestart::ExtraHospitalRestartHeading ...
324AF2:  VLDR            D16, [R0]
324AF6:  LDR             R0, [R0,#(dword_7B6F1C - 0x7B6F14)]
324AF8:  STR             R0, [R4,#8]
324AFA:  VSTR            D16, [R4]
324AFE:  LDR             R0, [R1]; CRestart::ExtraHospitalRestartHeading
324B00:  B               loc_324C0C
324B02:  ADD             R0, SP, #0x58+var_50; this
324B04:  BLX             j__ZN9CTheZones20GetLevelFromPositionEPK7CVector; CTheZones::GetLevelFromPosition(CVector const*)
324B08:  MOV             R5, R0
324B0A:  LDR             R0, =(_ZN8CRestart24NumberOfHospitalRestartsE_ptr - 0x324B10)
324B0C:  ADD             R0, PC; _ZN8CRestart24NumberOfHospitalRestartsE_ptr
324B0E:  LDR             R0, [R0]; CRestart::NumberOfHospitalRestarts ...
324B10:  LDRH            R0, [R0]; CRestart::NumberOfHospitalRestarts
324B12:  CMP             R0, #0
324B14:  BEQ             loc_324C0E
324B16:  LDR             R0, =(_ZN8CRestart24HospitalRestartWhenToUseE_ptr - 0x324B26)
324B18:  VMOV.F32        S18, #6.0
324B1C:  STR             R4, [SP,#0x58+var_54]
324B1E:  MOVW            R8, #0xFFFF
324B22:  ADD             R0, PC; _ZN8CRestart24HospitalRestartWhenToUseE_ptr
324B24:  VLDR            S16, =1.0e7
324B28:  MOV.W           R9, #0
324B2C:  MOV.W           R10, #0
324B30:  LDR             R4, [R0]; CRestart::HospitalRestartWhenToUse ...
324B32:  LDR             R0, =(_ZN8CRestart24NumberOfHospitalRestartsE_ptr - 0x324B38)
324B34:  ADD             R0, PC; _ZN8CRestart24NumberOfHospitalRestartsE_ptr
324B36:  LDR             R6, [R0]; CRestart::NumberOfHospitalRestarts ...
324B38:  LDR             R0, =(_ZN8CRestart21HospitalRestartPointsE_ptr - 0x324B3E)
324B3A:  ADD             R0, PC; _ZN8CRestart21HospitalRestartPointsE_ptr
324B3C:  LDR.W           R11, [R0]; CRestart::HospitalRestartPoints ...
324B40:  LDR.W           R0, [R4,R9,LSL#2]
324B44:  VMOV            S0, R0
324B48:  MOVS            R0, #(dword_B4+1); this
324B4A:  VCVT.F32.S32    S20, S0
324B4E:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
324B52:  VMOV            S0, R0
324B56:  VCMPE.F32       S0, S20
324B5A:  VMRS            APSR_nzcv, FPSCR
324B5E:  BLT             loc_324BCE
324B60:  ADD.W           R0, R9, R9,LSL#1
324B64:  VLDR            S0, [SP,#0x58+var_50]
324B68:  VLDR            S2, [SP,#0x58+var_50+4]
324B6C:  CMP             R5, #0
324B6E:  ADD.W           R0, R11, R0,LSL#2; this
324B72:  VLDR            S4, [SP,#0x58+var_48]
324B76:  VLDR            S6, [R0]
324B7A:  VLDR            S8, [R0,#4]
324B7E:  VSUB.F32        S0, S0, S6
324B82:  VLDR            S10, [R0,#8]
324B86:  VSUB.F32        S2, S2, S8
324B8A:  VSUB.F32        S4, S4, S10
324B8E:  VMUL.F32        S0, S0, S0
324B92:  VMUL.F32        S2, S2, S2
324B96:  VMUL.F32        S4, S4, S4
324B9A:  VADD.F32        S0, S0, S2
324B9E:  VADD.F32        S0, S0, S4
324BA2:  VSQRT.F32       S22, S0
324BA6:  BEQ             loc_324BBA
324BA8:  VMUL.F32        S20, S22, S18
324BAC:  BLX             j__ZN9CTheZones20GetLevelFromPositionEPK7CVector; CTheZones::GetLevelFromPosition(CVector const*)
324BB0:  CMP             R5, R0
324BB2:  IT EQ
324BB4:  VMOVEQ.F32      S20, S22
324BB8:  B               loc_324BBE
324BBA:  VMOV.F32        S20, S22
324BBE:  VCMPE.F32       S20, S16
324BC2:  VMRS            APSR_nzcv, FPSCR
324BC6:  ITT LT
324BC8:  MOVLT           R8, R10
324BCA:  VMOVLT.F32      S16, S20
324BCE:  ADD.W           R10, R10, #1
324BD2:  LDRH            R0, [R6]; CRestart::NumberOfHospitalRestarts
324BD4:  UXTH.W          R9, R10
324BD8:  CMP             R9, R0
324BDA:  BCC             loc_324B40
324BDC:  LDR             R6, [R7,#arg_0]
324BDE:  SXTH.W          R0, R8
324BE2:  LDR             R5, [SP,#0x58+var_54]
324BE4:  CMP             R0, #0
324BE6:  BLT             loc_324C0E
324BE8:  LDR             R1, =(_ZN8CRestart21HospitalRestartPointsE_ptr - 0x324BF4)
324BEA:  ADD.W           R3, R0, R0,LSL#1
324BEE:  LDR             R2, =(_ZN8CRestart23HospitalRestartHeadingsE_ptr - 0x324BF6)
324BF0:  ADD             R1, PC; _ZN8CRestart21HospitalRestartPointsE_ptr
324BF2:  ADD             R2, PC; _ZN8CRestart23HospitalRestartHeadingsE_ptr
324BF4:  LDR             R1, [R1]; CRestart::HospitalRestartPoints ...
324BF6:  LDR             R2, [R2]; CRestart::HospitalRestartHeadings ...
324BF8:  ADD.W           R1, R1, R3,LSL#2
324BFC:  VLDR            D16, [R1]
324C00:  LDR             R1, [R1,#8]
324C02:  STR             R1, [R5,#8]
324C04:  VSTR            D16, [R5]
324C08:  LDR.W           R0, [R2,R0,LSL#2]
324C0C:  STR             R0, [R6]
324C0E:  ADD             SP, SP, #0x18
324C10:  VPOP            {D8-D11}
324C14:  ADD             SP, SP, #4
324C16:  POP.W           {R8-R11}
324C1A:  POP             {R4-R7,PC}
