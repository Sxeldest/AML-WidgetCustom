; =========================================================
; Game Engine Function: _ZN6CTrain24SkipToNextAllowedStationEPS_
; Address            : 0x580E98 - 0x5810B4
; =========================================================

580E98:  PUSH            {R4-R7,LR}
580E9A:  ADD             R7, SP, #0xC
580E9C:  PUSH.W          {R8-R11}
580EA0:  SUB             SP, SP, #4
580EA2:  VPUSH           {D8-D9}
580EA6:  SUB             SP, SP, #0x20
580EA8:  MOV             R6, R0
580EAA:  LDR.W           R0, [R6,#0x5E4]
580EAE:  CMP             R0, #0
580EB0:  BNE             loc_580EA8
580EB2:  ADDW            R0, R6, #0x5BC
580EB6:  LDR.W           R9, [R6,#0x5BC]
580EBA:  STR             R0, [SP,#0x50+var_4C]
580EBC:  VMOV.F32        S18, #1.0
580EC0:  LDR             R0, =(StationDist_ptr - 0x580EC8)
580EC2:  LDR             R1, =(_ZN6CTrain13aStationCoorsE_ptr - 0x580ECE)
580EC4:  ADD             R0, PC; StationDist_ptr
580EC6:  VLDR            S16, =100.0
580ECA:  ADD             R1, PC; _ZN6CTrain13aStationCoorsE_ptr
580ECC:  LDR             R0, [R0]; StationDist
580ECE:  STR             R0, [SP,#0x50+var_34]
580ED0:  LDR             R0, =(StationDist_ptr - 0x580EDA)
580ED2:  LDR.W           R8, [R1]; CTrain::aStationCoors ...
580ED6:  ADD             R0, PC; StationDist_ptr
580ED8:  LDR             R0, [R0]; StationDist
580EDA:  STR             R0, [SP,#0x50+var_38]
580EDC:  LDR             R0, =(StationDist_ptr - 0x580EE2)
580EDE:  ADD             R0, PC; StationDist_ptr
580EE0:  LDR.W           R11, [R0]; StationDist
580EE4:  LDR             R0, =(StationDist_ptr - 0x580EEA)
580EE6:  ADD             R0, PC; StationDist_ptr
580EE8:  LDR             R0, [R0]; StationDist
580EEA:  STR             R0, [SP,#0x50+var_3C]
580EEC:  LDR             R0, =(StationDist_ptr - 0x580EF2)
580EEE:  ADD             R0, PC; StationDist_ptr
580EF0:  LDR             R0, [R0]; StationDist
580EF2:  STR             R0, [SP,#0x50+var_40]
580EF4:  LDR             R0, =(StationDist_ptr - 0x580EFA)
580EF6:  ADD             R0, PC; StationDist_ptr
580EF8:  LDR             R0, [R0]; StationDist
580EFA:  STR             R0, [SP,#0x50+var_44]
580EFC:  LDR             R0, =(StationDist_ptr - 0x580F02)
580EFE:  ADD             R0, PC; StationDist_ptr
580F00:  LDR             R0, [R0]; StationDist
580F02:  STR             R0, [SP,#0x50+var_48]
580F04:  LDR             R0, =(StationDist_ptr - 0x580F0A)
580F06:  ADD             R0, PC; StationDist_ptr
580F08:  LDR             R0, [R0]; StationDist
580F0A:  STR             R0, [SP,#0x50+var_50]
580F0C:  LDR             R1, [SP,#0x50+var_34]
580F0E:  VMOV            S0, R9
580F12:  LDRH.W          R0, [R6,#0x5CC]
580F16:  VLDR            S2, [R1]
580F1A:  AND.W           R0, R0, #0x40 ; '@'
580F1E:  VCMPE.F32       S2, S0
580F22:  VMRS            APSR_nzcv, FPSCR
580F26:  BLE             loc_580F2C
580F28:  MOVS            R1, #0
580F2A:  B               loc_580F90
580F2C:  LDR             R1, [SP,#0x50+var_3C]
580F2E:  VLDR            S2, [R1,#4]
580F32:  VCMPE.F32       S2, S0
580F36:  VMRS            APSR_nzcv, FPSCR
580F3A:  BLE             loc_580F40
580F3C:  MOVS            R1, #1
580F3E:  B               loc_580F90
580F40:  LDR             R1, [SP,#0x50+var_40]
580F42:  VLDR            S2, [R1,#8]
580F46:  VCMPE.F32       S2, S0
580F4A:  VMRS            APSR_nzcv, FPSCR
580F4E:  BLE             loc_580F54
580F50:  MOVS            R1, #2
580F52:  B               loc_580F90
580F54:  LDR             R1, [SP,#0x50+var_44]
580F56:  VLDR            S2, [R1,#0xC]
580F5A:  VCMPE.F32       S2, S0
580F5E:  VMRS            APSR_nzcv, FPSCR
580F62:  BLE             loc_580F68
580F64:  MOVS            R1, #3
580F66:  B               loc_580F90
580F68:  LDR             R1, [SP,#0x50+var_48]
580F6A:  VLDR            S2, [R1,#0x10]
580F6E:  VCMPE.F32       S2, S0
580F72:  VMRS            APSR_nzcv, FPSCR
580F76:  BLE             loc_580F7C
580F78:  MOVS            R1, #4
580F7A:  B               loc_580F90
580F7C:  LDR             R1, [SP,#0x50+var_50]
580F7E:  VLDR            S2, [R1,#0x14]
580F82:  VCMPE.F32       S2, S0
580F86:  VMRS            APSR_nzcv, FPSCR
580F8A:  ITE LE
580F8C:  MOVLE           R1, #6
580F8E:  MOVGT           R1, #5
580F90:  CMP             R1, #5
580F92:  IT HI
580F94:  MOVHI           R1, #0
580F96:  CBNZ            R0, loc_580FA4
580F98:  CMP             R1, #0
580F9A:  MOV.W           R2, #0xFFFFFFFF
580F9E:  IT EQ
580FA0:  MOVEQ           R2, #5
580FA2:  ADD             R1, R2
580FA4:  LDR             R2, [SP,#0x50+var_38]
580FA6:  ADD.W           R2, R2, R1,LSL#2
580FAA:  VLDR            S2, [R2]
580FAE:  VSUB.F32        S0, S0, S2
580FB2:  VABS.F32        S0, S0
580FB6:  VCMPE.F32       S0, S16
580FBA:  VMRS            APSR_nzcv, FPSCR
580FBE:  BGE             loc_580FD4
580FC0:  UXTH            R0, R0
580FC2:  ADD.W           R0, R1, R0,LSR#5
580FC6:  SUBS            R1, R0, #1
580FC8:  CMP             R1, #0
580FCA:  IT LT
580FCC:  ADDLT           R1, R0, #5
580FCE:  CMP             R1, #5
580FD0:  IT GT
580FD2:  MOVGT           R1, #0; CVector *
580FD4:  ADD.W           R10, R1, R1,LSL#1
580FD8:  LDR.W           R9, [R11,R1,LSL#2]
580FDC:  ADD.W           R4, R8, R10,LSL#2
580FE0:  MOV             R0, R4; this
580FE2:  BLX             j__ZN9CTheZones20GetLevelFromPositionEPK7CVector; CTheZones::GetLevelFromPosition(CVector const*)
580FE6:  MOV             R5, R0
580FE8:  MOVS            R0, #(dword_B4+1); this
580FEA:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
580FEE:  VMOV            S0, R0
580FF2:  VMOV            S2, R5
580FF6:  VADD.F32        S0, S0, S18
580FFA:  VCVT.F32.S32    S2, S2
580FFE:  VCMPE.F32       S0, S2
581002:  VMRS            APSR_nzcv, FPSCR
581006:  BLT.W           loc_580F0C
58100A:  VMOV.F32        S16, #20.0
58100E:  LDRH.W          R0, [R6,#0x5CC]
581012:  VMOV.F32        S0, #-20.0
581016:  ADR             R1, loc_5810DC
581018:  ANDS.W          R0, R0, #0x40 ; '@'
58101C:  VMOV            S2, R9
581020:  IT EQ
581022:  VMOVEQ.F32      S0, S16
581026:  CMP             R0, #0
581028:  VADD.F32        S0, S0, S2
58102C:  IT EQ
58102E:  ADDEQ           R1, #4; CVector *
581030:  LDR             R0, [SP,#0x50+var_4C]
581032:  VLDR            S2, [R1]
581036:  VSTR            S0, [R0]
58103A:  ADD.W           R0, R6, #0x5B8
58103E:  VSTR            S2, [R0]
581042:  MOV             R0, R4; this
581044:  BLX             j__ZN10CStreaming9LoadSceneERK7CVector; CStreaming::LoadScene(CVector const&)
581048:  MOVS            R0, #0; this
58104A:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
58104E:  LDR             R0, =(_ZN6CTrain13aStationCoorsE_ptr - 0x581056)
581050:  LDR             R1, [R6,#0x14]; unsigned int
581052:  ADD             R0, PC; _ZN6CTrain13aStationCoorsE_ptr
581054:  CMP             R1, #0
581056:  LDR             R0, [R0]; CTrain::aStationCoors ...
581058:  ADD.W           R0, R0, R10,LSL#2
58105C:  VLDR            S0, [R0,#4]
581060:  ADD.W           R0, R1, #0x30 ; '0'
581064:  IT EQ
581066:  ADDEQ           R0, R6, #4
581068:  VLDR            S6, [R4]
58106C:  VLDR            S2, [R0]
581070:  VLDR            S4, [R0,#4]
581074:  VSUB.F32        S2, S6, S2
581078:  VSUB.F32        S0, S0, S4
58107C:  VMUL.F32        S2, S2, S2
581080:  VMUL.F32        S0, S0, S0
581084:  VADD.F32        S0, S2, S0
581088:  VMOV.F32        S2, #23.0
58108C:  VSQRT.F32       S0, S0
581090:  VDIV.F32        S0, S0, S16
581094:  VADD.F32        S0, S0, S2
581098:  VCVT.U32.F32    S0, S0
58109C:  VMOV            R0, S0; this
5810A0:  ADD             SP, SP, #0x20 ; ' '
5810A2:  VPOP            {D8-D9}
5810A6:  ADD             SP, SP, #4
5810A8:  POP.W           {R8-R11}
5810AC:  POP.W           {R4-R7,LR}
5810B0:  B.W             sub_18D29C
