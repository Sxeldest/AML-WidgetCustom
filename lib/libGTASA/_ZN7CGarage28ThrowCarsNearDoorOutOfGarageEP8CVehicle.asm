; =========================================================
; Game Engine Function: _ZN7CGarage28ThrowCarsNearDoorOutOfGarageEP8CVehicle
; Address            : 0x311F90 - 0x3121B2
; =========================================================

311F90:  PUSH            {R4-R7,LR}
311F92:  ADD             R7, SP, #0xC
311F94:  PUSH.W          {R8-R11}
311F98:  SUB             SP, SP, #4
311F9A:  VPUSH           {D8-D11}
311F9E:  SUB             SP, SP, #0x20
311FA0:  MOV             R5, R0
311FA2:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x311FAA)
311FA4:  STR             R1, [SP,#0x60+var_60]
311FA6:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
311FA8:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
311FAA:  LDR             R0, [R0]; CPools::ms_pVehiclePool
311FAC:  STR             R0, [SP,#0x60+var_5C]
311FAE:  LDR             R1, [R0,#8]
311FB0:  CMP             R1, #0
311FB2:  BEQ.W           loc_3121A4
311FB6:  VMOV.F32        S16, #0.5
311FBA:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x311FC4)
311FBC:  VLDR            S18, =0.02
311FC0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
311FC2:  VLDR            S20, =0.0
311FC6:  VLDR            S22, =-0.0
311FCA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
311FCC:  STR             R0, [SP,#0x60+var_54]
311FCE:  LDR             R0, [SP,#0x60+var_5C]
311FD0:  SUBS            R1, #1
311FD2:  LDR             R0, [R0,#4]
311FD4:  STR             R1, [SP,#0x60+var_58]
311FD6:  LDRSB           R0, [R0,R1]
311FD8:  CMP             R0, #0
311FDA:  BLT.W           loc_31219C
311FDE:  LDR             R0, [SP,#0x60+var_5C]
311FE0:  MOVW            R2, #0xA2C
311FE4:  LDR             R1, [SP,#0x60+var_58]
311FE6:  LDR             R0, [R0]
311FE8:  MLA.W           R4, R1, R2, R0
311FEC:  CMP             R4, #0
311FEE:  ITT NE
311FF0:  LDRNE           R0, [SP,#0x60+var_60]
311FF2:  CMPNE           R4, R0
311FF4:  BEQ.W           loc_31219C
311FF8:  MOV             R0, R5; this
311FFA:  MOV             R1, R4; CEntity *
311FFC:  BLX             j__ZN7CGarage18IsEntityTouching3DEP7CEntity; CGarage::IsEntityTouching3D(CEntity *)
312000:  CMP             R0, #0
312002:  BEQ.W           loc_31219C
312006:  MOV             R0, R4; this
312008:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
31200C:  LDR.W           R11, [R0,#0x2C]
312010:  LDRSH.W         R0, [R11]
312014:  CMP             R0, #1
312016:  BLT.W           loc_31219C
31201A:  ADD.W           R0, R4, #0x50 ; 'P'
31201E:  ADD.W           R10, R4, #0x4C ; 'L'
312022:  ADD.W           R8, R4, #0x48 ; 'H'
312026:  ADDS            R6, R4, #4
312028:  ADDS            R4, #0x14
31202A:  MOV.W           R9, #0
31202E:  STR             R0, [SP,#0x60+var_50]
312030:  LDR.W           R0, [R11,#8]
312034:  ADD.W           R2, R9, R9,LSL#2
312038:  LDR             R1, [R4]
31203A:  ADD.W           R2, R0, R2,LSL#2
31203E:  ADD             R0, SP, #0x60+var_4C
312040:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
312044:  VLDR            S0, [SP,#0x60+var_44]
312048:  VLDR            S2, [R5,#8]
31204C:  VCMPE.F32       S2, S0
312050:  VMRS            APSR_nzcv, FPSCR
312054:  BGT             loc_3120E0
312056:  VLDR            S2, [R5,#0x1C]
31205A:  VADD.F32        S2, S2, S20
31205E:  VCMPE.F32       S2, S0
312062:  VMRS            APSR_nzcv, FPSCR
312066:  BLT             loc_3120E0
312068:  VLDR            S0, [SP,#0x60+var_4C]
31206C:  VLDR            S4, [R5]
312070:  VLDR            S2, [SP,#0x60+var_48]
312074:  VLDR            S6, [R5,#4]
312078:  VSUB.F32        S0, S0, S4
31207C:  VLDR            S8, [R5,#0xC]
312080:  VSUB.F32        S2, S2, S6
312084:  VLDR            S10, [R5,#0x10]
312088:  VMUL.F32        S6, S0, S8
31208C:  VMUL.F32        S4, S2, S10
312090:  VADD.F32        S4, S6, S4
312094:  VCMPE.F32       S4, S22
312098:  VMRS            APSR_nzcv, FPSCR
31209C:  BLT             loc_3120E0
31209E:  VLDR            S6, [R5,#0x20]
3120A2:  VADD.F32        S6, S6, S20
3120A6:  VCMPE.F32       S4, S6
3120AA:  VMRS            APSR_nzcv, FPSCR
3120AE:  BGT             loc_3120E0
3120B0:  VLDR            S4, [R5,#0x14]
3120B4:  VLDR            S6, [R5,#0x18]
3120B8:  VMUL.F32        S0, S0, S4
3120BC:  VMUL.F32        S2, S2, S6
3120C0:  VADD.F32        S0, S0, S2
3120C4:  VCMPE.F32       S0, S22
3120C8:  VMRS            APSR_nzcv, FPSCR
3120CC:  BLT             loc_3120E0
3120CE:  VLDR            S2, [R5,#0x24]
3120D2:  VADD.F32        S2, S2, S20
3120D6:  VCMPE.F32       S0, S2
3120DA:  VMRS            APSR_nzcv, FPSCR
3120DE:  BLE             loc_31218E
3120E0:  VLDR            S0, [R5,#0x28]
3120E4:  MOV             R1, R6
3120E6:  VLDR            S2, [R5,#0x2C]
3120EA:  LDR             R0, [R4]
3120EC:  VADD.F32        S0, S0, S2
3120F0:  VLDR            S4, [R5,#0x30]
3120F4:  CMP             R0, #0
3120F6:  VLDR            S6, [R5,#0x34]
3120FA:  IT NE
3120FC:  ADDNE.W         R1, R0, #0x30 ; '0'
312100:  VLDR            S2, [R1]
312104:  MOV             R1, R6
312106:  VMUL.F32        S0, S0, S16
31210A:  VSUB.F32        S0, S2, S0
31210E:  VSTR            S0, [SP,#0x60+var_4C]
312112:  VADD.F32        S0, S4, S6
312116:  LDR             R0, [R4]
312118:  CMP             R0, #0
31211A:  IT NE
31211C:  ADDNE.W         R1, R0, #0x30 ; '0'
312120:  MOVS            R0, #0
312122:  VLDR            S2, [R1,#4]
312126:  STR             R0, [SP,#0x60+var_44]
312128:  ADD             R0, SP, #0x60+var_4C; this
31212A:  VMUL.F32        S0, S0, S16
31212E:  VSUB.F32        S0, S2, S0
312132:  VSTR            S0, [SP,#0x60+var_48]
312136:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
31213A:  VLDR            S0, [SP,#0x60+var_4C]
31213E:  VLDR            S2, [SP,#0x60+var_48]
312142:  VLDR            S4, [SP,#0x60+var_44]
312146:  VMUL.F32        S0, S0, S18
31214A:  VMUL.F32        S2, S2, S18
31214E:  LDR             R0, [SP,#0x60+var_54]
312150:  VMUL.F32        S4, S4, S18
312154:  VLDR            S8, [R10]
312158:  VLDR            S6, [R0]
31215C:  LDR             R0, [SP,#0x60+var_50]
31215E:  VMUL.F32        S0, S0, S6
312162:  VMUL.F32        S2, S2, S6
312166:  VLDR            S10, [R0]
31216A:  VMUL.F32        S4, S4, S6
31216E:  VLDR            S6, [R8]
312172:  VADD.F32        S0, S6, S0
312176:  VADD.F32        S2, S2, S8
31217A:  VADD.F32        S4, S4, S10
31217E:  VSTR            S0, [R8]
312182:  VSTR            S2, [R10]
312186:  VSTR            S4, [R0]
31218A:  LDRSH.W         R9, [R11]
31218E:  LDRSH.W         R0, [R11]
312192:  ADD.W           R9, R9, #1
312196:  CMP             R9, R0
312198:  BLT.W           loc_312030
31219C:  LDR             R1, [SP,#0x60+var_58]
31219E:  CMP             R1, #0
3121A0:  BNE.W           loc_311FCE
3121A4:  ADD             SP, SP, #0x20 ; ' '
3121A6:  VPOP            {D8-D11}
3121AA:  ADD             SP, SP, #4
3121AC:  POP.W           {R8-R11}
3121B0:  POP             {R4-R7,PC}
