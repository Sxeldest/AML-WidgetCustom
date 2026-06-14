; =========================================================
; Game Engine Function: _ZN13CMonsterTruck17ProcessSuspensionEv
; Address            : 0x574E90 - 0x5754A4
; =========================================================

574E90:  PUSH            {R4-R7,LR}
574E92:  ADD             R7, SP, #0xC
574E94:  PUSH.W          {R8-R11}
574E98:  SUB             SP, SP, #4
574E9A:  VPUSH           {D8-D12}
574E9E:  SUB             SP, SP, #0xD0; float
574EA0:  MOV             R11, R0
574EA2:  VMOV.F32        S16, #1.0
574EA6:  LDR.W           R0, [R11,#0x14]
574EAA:  ADD.W           R1, R11, #0x7E8
574EAE:  VLDR            S0, [R0,#0x20]
574EB2:  VLDR            S2, [R0,#0x24]
574EB6:  VLDR            S4, [R0,#0x28]
574EBA:  VNEG.F32        S10, S0
574EBE:  VNEG.F32        S6, S2
574EC2:  VLDR            S2, =0.0
574EC6:  VNEG.F32        S8, S4
574ECA:  STR             R1, [SP,#0x118+var_FC]
574ECC:  VMOV.F32        S4, S2
574ED0:  VMOV.F32        S12, S2
574ED4:  VMOV.F32        S14, S2
574ED8:  VSTR            S6, [SP,#0x118+var_B4]
574EDC:  VSTR            S10, [SP,#0x118+var_B8]
574EE0:  VSTR            S8, [SP,#0x118+var_B0]
574EE4:  VLDR            S0, [R1]
574EE8:  ADD.W           R1, R11, #4
574EEC:  VCMPE.F32       S0, S16
574EF0:  VMRS            APSR_nzcv, FPSCR
574EF4:  BGE             loc_574F36
574EF6:  B               loc_574EFC
574EF8:  DCFS 0.0
574EFC:  CMP             R0, #0
574EFE:  MOV             R2, R1
574F00:  IT NE
574F02:  ADDNE.W         R2, R0, #0x30 ; '0'
574F06:  ADD.W           R3, R11, #0x738
574F0A:  ADD.W           R6, R11, #0x740
574F0E:  VLDR            S1, [R2]
574F12:  VLDR            S12, [R2,#4]
574F16:  VLDR            S14, [R2,#8]
574F1A:  ADDW            R2, R11, #0x73C
574F1E:  VLDR            S4, [R6]
574F22:  VLDR            S3, [R2]
574F26:  VLDR            S5, [R3]
574F2A:  VSUB.F32        S14, S4, S14
574F2E:  VSUB.F32        S12, S3, S12
574F32:  VSUB.F32        S4, S5, S1
574F36:  VSTR            S14, [SP,#0x118+var_E0]
574F3A:  VMOV.F32        S14, S2
574F3E:  VSTR            S12, [SP,#0x118+var_E4]
574F42:  VMOV.F32        S12, S2
574F46:  VMOV.F32        S1, S2
574F4A:  ADDW            R4, R11, #0x7EC
574F4E:  VSTR            S8, [SP,#0x118+var_A4]
574F52:  VSTR            S6, [SP,#0x118+var_A8]
574F56:  VSTR            S4, [SP,#0x118+var_E8]
574F5A:  VSTR            S10, [SP,#0x118+var_AC]
574F5E:  VLDR            S4, [R4]
574F62:  VCMPE.F32       S4, S16
574F66:  VMRS            APSR_nzcv, FPSCR
574F6A:  BGE             loc_574FA6
574F6C:  CMP             R0, #0
574F6E:  MOV             R2, R1
574F70:  IT NE
574F72:  ADDNE.W         R2, R0, #0x30 ; '0'
574F76:  ADDW            R3, R11, #0x764
574F7A:  ADDW            R6, R11, #0x76C
574F7E:  VLDR            S3, [R2]
574F82:  VLDR            S14, [R2,#4]
574F86:  VLDR            S1, [R2,#8]
574F8A:  ADD.W           R2, R11, #0x768
574F8E:  VLDR            S12, [R6]
574F92:  VLDR            S5, [R2]
574F96:  VLDR            S7, [R3]
574F9A:  VSUB.F32        S1, S12, S1
574F9E:  VSUB.F32        S14, S5, S14
574FA2:  VSUB.F32        S12, S7, S3
574FA6:  ADD.W           R5, R11, #0x7F0
574FAA:  VSTR            S1, [SP,#0x118+var_D4]
574FAE:  VSTR            S14, [SP,#0x118+var_D8]
574FB2:  VMOV.F32        S14, S2
574FB6:  VSTR            S12, [SP,#0x118+var_DC]
574FBA:  VMOV.F32        S12, S2
574FBE:  VSTR            S8, [SP,#0x118+var_98]
574FC2:  VSTR            S6, [SP,#0x118+var_9C]
574FC6:  VSTR            S10, [SP,#0x118+var_A0]
574FCA:  VLDR            S10, [R5]
574FCE:  VCMPE.F32       S10, S16
574FD2:  VMOV.F32        S10, S2
574FD6:  VMRS            APSR_nzcv, FPSCR
574FDA:  BGE             loc_575014
574FDC:  CMP             R0, #0
574FDE:  ADD.W           R2, R11, #0x790
574FE2:  IT NE
574FE4:  ADDNE.W         R1, R0, #0x30 ; '0'
574FE8:  ADD.W           R3, R11, #0x798
574FEC:  VLDR            S1, [R1]
574FF0:  VLDR            S12, [R1,#4]
574FF4:  VLDR            S14, [R1,#8]
574FF8:  ADDW            R1, R11, #0x794
574FFC:  VLDR            S10, [R3]
575000:  VLDR            S3, [R1]
575004:  VLDR            S5, [R2]
575008:  VSUB.F32        S14, S10, S14
57500C:  VSUB.F32        S12, S3, S12
575010:  VSUB.F32        S10, S5, S1
575014:  VSTR            S14, [SP,#0x118+var_C8]
575018:  ADDW            R6, R11, #0x7F4
57501C:  VSTR            S12, [SP,#0x118+var_CC]
575020:  VSTR            S10, [SP,#0x118+var_D0]
575024:  VLDR            S10, [R0,#0x20]
575028:  VSTR            S8, [SP,#0x118+var_8C]
57502C:  VMOV.F32        S8, S2
575030:  VNEG.F32        S10, S10
575034:  VSTR            S6, [SP,#0x118+var_90]
575038:  VSTR            S10, [SP,#0x118+var_94]
57503C:  VLDR            S6, [R6]
575040:  VCMPE.F32       S6, S16
575044:  VMOV.F32        S6, S2
575048:  VMRS            APSR_nzcv, FPSCR
57504C:  BGE             loc_57507E
57504E:  ADDW            R1, R11, #0x7C4
575052:  VLDR            S2, [R0,#0x30]
575056:  VLDR            S6, [R0,#0x34]
57505A:  VLDR            S8, [R0,#0x38]
57505E:  ADDW            R0, R11, #0x7BC
575062:  VLDR            S10, [R1]
575066:  ADD.W           R1, R11, #0x7C0
57506A:  VLDR            S14, [R0]
57506E:  VLDR            S12, [R1]
575072:  VSUB.F32        S8, S10, S8
575076:  VSUB.F32        S2, S14, S2
57507A:  VSUB.F32        S6, S12, S6
57507E:  VCMPE.F32       S0, S16
575082:  VSTR            S8, [SP,#0x118+var_BC]
575086:  VMRS            APSR_nzcv, FPSCR
57508A:  VSTR            S6, [SP,#0x118+var_C0]
57508E:  VSTR            S2, [SP,#0x118+var_C4]
575092:  BGE             loc_5750C0
575094:  LDR.W           R0, [R11,#0x388]
575098:  ADD.W           R2, R11, #0x748
57509C:  ADD             R3, SP, #0x118+var_E8; CVector *
57509E:  LDR.W           R1, [R0,#0xAC]; float
5750A2:  VLDR            S2, [R0,#0xC0]
5750A6:  ADD             R0, SP, #0x118+var_58
5750A8:  STRD.W          R2, R0, [SP,#0x118+var_110]; CVector *
5750AC:  ADD             R2, SP, #0x118+var_B8; CVector *
5750AE:  MOV             R0, R11; this
5750B0:  VSTR            S0, [SP,#0x118+var_118]
5750B4:  VSTR            S2, [SP,#0x118+var_114]
5750B8:  BLX             j__ZN9CPhysical23ApplySpringCollisionAltEfR7CVectorS1_ffS1_Rf; CPhysical::ApplySpringCollisionAlt(float,CVector &,CVector &,float,float,CVector &,float &)
5750BC:  VLDR            S4, [R4]
5750C0:  VCMPE.F32       S4, S16
5750C4:  VMRS            APSR_nzcv, FPSCR
5750C8:  BGE             loc_575100
5750CA:  LDR.W           R0, [R11,#0x388]
5750CE:  ADDW            R2, R11, #0x774
5750D2:  VLDR            S0, [R0,#0xC0]
5750D6:  LDR.W           R1, [R0,#0xAC]; float
5750DA:  ADD             R0, SP, #0x118+var_58
5750DC:  VSUB.F32        S0, S16, S0
5750E0:  ADDS            R0, #4
5750E2:  STRD.W          R2, R0, [SP,#0x118+var_110]; CVector *
5750E6:  ADD             R0, SP, #0x118+var_B8
5750E8:  ADD.W           R2, R0, #0xC; CVector *
5750EC:  ADD             R0, SP, #0x118+var_E8
5750EE:  ADD.W           R3, R0, #0xC; CVector *
5750F2:  MOV             R0, R11; this
5750F4:  VSTR            S4, [SP,#0x118+var_118]
5750F8:  VSTR            S0, [SP,#0x118+var_114]
5750FC:  BLX             j__ZN9CPhysical23ApplySpringCollisionAltEfR7CVectorS1_ffS1_Rf; CPhysical::ApplySpringCollisionAlt(float,CVector &,CVector &,float,float,CVector &,float &)
575100:  VLDR            S0, [R5]
575104:  VCMPE.F32       S0, S16
575108:  VMRS            APSR_nzcv, FPSCR
57510C:  BGE             loc_575140
57510E:  LDR.W           R0, [R11,#0x388]
575112:  ADD.W           R2, R11, #0x7A0
575116:  LDR.W           R1, [R0,#0xAC]; float
57511A:  VLDR            S2, [R0,#0xC0]
57511E:  ADD             R0, SP, #0x118+var_58
575120:  ADDS            R0, #8
575122:  STRD.W          R2, R0, [SP,#0x118+var_110]; CVector *
575126:  ADD             R0, SP, #0x118+var_B8
575128:  ADD.W           R2, R0, #0x18; CVector *
57512C:  ADD             R0, SP, #0x118+var_E8
57512E:  ADD.W           R3, R0, #0x18; CVector *
575132:  MOV             R0, R11; this
575134:  VSTR            S0, [SP,#0x118+var_118]
575138:  VSTR            S2, [SP,#0x118+var_114]
57513C:  BLX             j__ZN9CPhysical23ApplySpringCollisionAltEfR7CVectorS1_ffS1_Rf; CPhysical::ApplySpringCollisionAlt(float,CVector &,CVector &,float,float,CVector &,float &)
575140:  STR             R4, [SP,#0x118+var_100]
575142:  STRD.W          R6, R5, [SP,#0x118+var_108]
575146:  VLDR            S0, [R6]
57514A:  VCMPE.F32       S0, S16
57514E:  VMRS            APSR_nzcv, FPSCR
575152:  BGE             loc_57518A
575154:  LDR.W           R0, [R11,#0x388]
575158:  ADDW            R2, R11, #0x7CC
57515C:  VLDR            S2, [R0,#0xC0]
575160:  LDR.W           R1, [R0,#0xAC]; float
575164:  ADD             R0, SP, #0x118+var_58
575166:  VSUB.F32        S2, S16, S2
57516A:  ADDS            R0, #0xC
57516C:  STRD.W          R2, R0, [SP,#0x118+var_110]; CVector *
575170:  ADD             R0, SP, #0x118+var_B8
575172:  ADD.W           R2, R0, #0x24 ; '$'; CVector *
575176:  ADD             R0, SP, #0x118+var_E8
575178:  ADD.W           R3, R0, #0x24 ; '$'; CVector *
57517C:  MOV             R0, R11; this
57517E:  VSTR            S0, [SP,#0x118+var_118]
575182:  VSTR            S2, [SP,#0x118+var_114]
575186:  BLX             j__ZN9CPhysical23ApplySpringCollisionAltEfR7CVectorS1_ffS1_Rf; CPhysical::ApplySpringCollisionAlt(float,CVector &,CVector &,float,float,CVector &,float &)
57518A:  ADD             R5, SP, #0x118+var_F8
57518C:  VLDR            S18, =0.35
575190:  MOV.W           R10, #0
575194:  MOVS            R4, #0
575196:  MOV.W           R8, #0
57519A:  ADD             R0, SP, #0x118+var_E8
57519C:  MOV             R1, R11
57519E:  LDR             R2, [R0,R4]
5751A0:  ADD             R0, R4
5751A2:  LDRD.W          R3, R0, [R0,#4]
5751A6:  STR             R0, [SP,#0x118+var_118]
5751A8:  MOV             R0, R5
5751AA:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
5751AE:  ADD             R1, SP, #0x118+var_88
5751B0:  VLDR            D16, [SP,#0x118+var_F8]
5751B4:  ADD.W           R9, R1, R4
5751B8:  LDR             R0, [SP,#0x118+var_F0]
5751BA:  ADD.W           R6, R11, R10
5751BE:  STR.W           R0, [R9,#8]
5751C2:  VSTR            D16, [R9]
5751C6:  LDR.W           R1, [R6,#0x8FC]
5751CA:  CBZ             R1, loc_575214
5751CC:  ADD.W           R0, R11, R4
5751D0:  LDR.W           R2, [R0,#0x90C]
5751D4:  LDR.W           R3, [R0,#0x910]
5751D8:  LDR.W           R0, [R0,#0x914]
5751DC:  STR             R0, [SP,#0x118+var_118]
5751DE:  MOV             R0, R5
5751E0:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
5751E4:  VLDR            S0, [R9]
5751E8:  VLDR            S6, [SP,#0x118+var_F8]
5751EC:  VLDR            S2, [R9,#4]
5751F0:  VSUB.F32        S0, S0, S6
5751F4:  VLDR            S6, [SP,#0x118+var_F8+4]
5751F8:  VLDR            S4, [R9,#8]
5751FC:  VSUB.F32        S2, S2, S6
575200:  VLDR            S6, [SP,#0x118+var_F0]
575204:  VSUB.F32        S4, S4, S6
575208:  VSTR            S0, [R9]
57520C:  VSTR            S2, [R9,#4]
575210:  VSTR            S4, [R9,#8]
575214:  ADD.W           R0, R6, #0x7E8
575218:  VLDR            S0, [R0]
57521C:  VCMPE.F32       S0, S16
575220:  VMRS            APSR_nzcv, FPSCR
575224:  BGE             loc_575268
575226:  ADD.W           R0, R11, R8
57522A:  ADD.W           R1, R0, #0x750
57522E:  VLDR            S0, [R1]
575232:  VCMPE.F32       S0, S18
575236:  VMRS            APSR_nzcv, FPSCR
57523A:  BLE             loc_575268
57523C:  ADDW            R1, R0, #0x74C
575240:  ADD.W           R0, R0, #0x748
575244:  VNEG.F32        S0, S0
575248:  VLDR            S4, [R0]
57524C:  ADD             R0, SP, #0x118+var_B8
57524E:  VLDR            S2, [R1]
575252:  ADD             R0, R4
575254:  VNEG.F32        S4, S4
575258:  VNEG.F32        S2, S2
57525C:  VSTR            S4, [R0]
575260:  VSTR            S2, [R0,#4]
575264:  VSTR            S0, [R0,#8]
575268:  ADDS            R4, #0xC
57526A:  ADD.W           R10, R10, #4
57526E:  ADD.W           R8, R8, #0x2C ; ','
575272:  CMP             R4, #0x30 ; '0'
575274:  BNE             loc_57519A
575276:  LDR             R0, [SP,#0x118+var_FC]
575278:  LDR             R4, [SP,#0x118+var_104]
57527A:  VLDR            S0, [R0]
57527E:  VCMPE.F32       S0, S16
575282:  VMRS            APSR_nzcv, FPSCR
575286:  BGE             loc_5752A2
575288:  LDR.W           R0, [R11,#0x388]
57528C:  ADD             R3, SP, #0x118+var_B8; CVector *
57528E:  LDR             R2, [SP,#0x118+var_58]; float
575290:  LDR.W           R1, [R0,#0xB0]; float
575294:  ADD             R0, SP, #0x118+var_E8
575296:  STR             R0, [SP,#0x118+var_118]; CVector *
575298:  ADD             R0, SP, #0x118+var_88
57529A:  STR             R0, [SP,#0x118+var_114]; CVector *
57529C:  MOV             R0, R11; this
57529E:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
5752A2:  LDR             R0, [SP,#0x118+var_100]
5752A4:  LDR             R5, [SP,#0x118+var_108]
5752A6:  VLDR            S0, [R0]
5752AA:  VCMPE.F32       S0, S16
5752AE:  VMRS            APSR_nzcv, FPSCR
5752B2:  BGE             loc_5752D6
5752B4:  LDR.W           R0, [R11,#0x388]
5752B8:  ADD             R3, SP, #0x118+var_E8
5752BA:  LDR             R2, [SP,#0x118+var_54]; float
5752BC:  ADDS            R3, #0xC
5752BE:  LDR.W           R1, [R0,#0xB0]; float
5752C2:  ADD             R0, SP, #0x118+var_88
5752C4:  ADDS            R0, #0xC
5752C6:  STRD.W          R3, R0, [SP,#0x118+var_118]; CVector *
5752CA:  ADD             R0, SP, #0x118+var_B8
5752CC:  ADD.W           R3, R0, #0xC; CVector *
5752D0:  MOV             R0, R11; this
5752D2:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
5752D6:  VLDR            S0, [R4]
5752DA:  VCMPE.F32       S0, S16
5752DE:  VMRS            APSR_nzcv, FPSCR
5752E2:  BGE             loc_575306
5752E4:  LDR.W           R0, [R11,#0x388]
5752E8:  ADD             R3, SP, #0x118+var_E8
5752EA:  LDR             R2, [SP,#0x118+var_50]; float
5752EC:  ADDS            R3, #0x18
5752EE:  LDR.W           R1, [R0,#0xB0]; float
5752F2:  ADD             R0, SP, #0x118+var_88
5752F4:  ADDS            R0, #0x18
5752F6:  STRD.W          R3, R0, [SP,#0x118+var_118]; CVector *
5752FA:  ADD             R0, SP, #0x118+var_B8
5752FC:  ADD.W           R3, R0, #0x18; CVector *
575300:  MOV             R0, R11; this
575302:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
575306:  VLDR            S0, [R5]
57530A:  VCMPE.F32       S0, S16
57530E:  VMRS            APSR_nzcv, FPSCR
575312:  BGE             loc_575336
575314:  LDR.W           R0, [R11,#0x388]
575318:  ADD             R3, SP, #0x118+var_E8
57531A:  LDR             R2, [SP,#0x118+var_4C]; float
57531C:  ADDS            R3, #0x24 ; '$'
57531E:  LDR.W           R1, [R0,#0xB0]; float
575322:  ADD             R0, SP, #0x118+var_88
575324:  ADDS            R0, #0x24 ; '$'
575326:  STRD.W          R3, R0, [SP,#0x118+var_118]; CVector *
57532A:  ADD             R0, SP, #0x118+var_B8
57532C:  ADD.W           R3, R0, #0x24 ; '$'; CVector *
575330:  MOV             R0, R11; this
575332:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
575336:  VMOV.F32        S18, #0.5
57533A:  VLDR            S20, =0.05
57533E:  VMOV.F32        S22, #0.25
575342:  VLDR            S24, =-0.05
575346:  MOV.W           R9, #0
57534A:  MOVS            R6, #0
57534C:  MOVS            R5, #0
57534E:  ADD.W           R10, R11, R6
575352:  ADD.W           R8, R10, #0x7E8
575356:  VLDR            S0, [R8]
57535A:  VCMPE.F32       S0, S16
57535E:  VMRS            APSR_nzcv, FPSCR
575362:  BGE.W           loc_575488
575366:  LDR.W           R0, [R10,#0x8FC]
57536A:  CMP             R0, #0
57536C:  BEQ.W           loc_575488
575370:  LDRB.W          R1, [R0,#0x3A]
575374:  AND.W           R1, R1, #7
575378:  CMP             R1, #2
57537A:  BNE.W           loc_575488
57537E:  VCMPE.F32       S0, S18
575382:  VMRS            APSR_nzcv, FPSCR
575386:  BGE             loc_5753C0
575388:  VSUB.F32        S0, S16, S0
57538C:  VLDR            S2, [R11,#0x90]
575390:  LDR.W           R12, [R0]
575394:  ADD.W           R3, R11, R5
575398:  ADD.W           LR, R3, #0x748
57539C:  LDRB.W          R2, [R3,#0x75C]
5753A0:  ADD.W           R3, R3, #0x738
5753A4:  LDR.W           R12, [R12,#0xE4]
5753A8:  STRD.W          R3, LR, [SP,#0x118+var_118]
5753AC:  MOVS            R3, #0x31 ; '1'
5753AE:  STR             R3, [SP,#0x118+var_110]
5753B0:  MOV             R3, R11
5753B2:  VMUL.F32        S0, S0, S20
5753B6:  VMUL.F32        S0, S0, S2
5753BA:  VMOV            R1, S0
5753BE:  BLX             R12
5753C0:  ADD.W           R12, R11, R5
5753C4:  ADD.W           R0, R12, #0x750
5753C8:  VLDR            S0, [R0]
5753CC:  VCMPE.F32       S0, S18
5753D0:  VMRS            APSR_nzcv, FPSCR
5753D4:  BLE             loc_575488
5753D6:  ADD.W           R0, R12, #0x748
5753DA:  VLDR            S6, [R8]
5753DE:  VMUL.F32        S0, S0, S24
5753E2:  ADD.W           R9, R12, #0x740
5753E6:  VLDR            S2, [R0]
5753EA:  ADDW            R0, R12, #0x74C
5753EE:  VSUB.F32        S6, S16, S6
5753F2:  ADD.W           LR, R12, #0x738
5753F6:  VLDR            S4, [R0]
5753FA:  VMUL.F32        S2, S2, S22
5753FE:  LDR.W           R0, [R10,#0x8FC]
575402:  ADDW            R4, R12, #0x73C
575406:  VMUL.F32        S4, S4, S22
57540A:  LDR.W           R8, [R0,#0x14]
57540E:  VMUL.F32        S0, S0, S6
575412:  CMP.W           R8, #0
575416:  VMUL.F32        S2, S2, S24
57541A:  VMUL.F32        S4, S4, S24
57541E:  VMUL.F32        S2, S2, S6
575422:  VMUL.F32        S4, S4, S6
575426:  VLDR            S6, [R0,#0x90]
57542A:  VMUL.F32        S0, S6, S0
57542E:  VMUL.F32        S2, S6, S2
575432:  VMUL.F32        S4, S6, S4
575436:  VMOV            R3, S0
57543A:  VLDR            S0, [R9]
57543E:  ADD.W           R9, R8, #0x30 ; '0'
575442:  IT EQ
575444:  ADDEQ.W         R9, R0, #4
575448:  VLDR            S8, [R4]
57544C:  VMOV            R1, S2
575450:  VLDR            S6, [R9,#8]
575454:  VLDR            S2, [R9]
575458:  MOVS            R4, #1
57545A:  VMOV            R2, S4
57545E:  VLDR            S4, [R9,#4]
575462:  VLDR            S10, [LR]
575466:  VSUB.F32        S0, S0, S6
57546A:  VSUB.F32        S4, S8, S4
57546E:  MOV.W           R9, #0
575472:  VSUB.F32        S2, S10, S2
575476:  STR             R4, [SP,#0x118+var_10C]
575478:  VSTR            S2, [SP,#0x118+var_118]
57547C:  VSTR            S4, [SP,#0x118+var_114]
575480:  VSTR            S0, [SP,#0x118+var_110]
575484:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
575488:  ADDS            R5, #0x2C ; ','
57548A:  ADDS            R6, #4
57548C:  CMP             R5, #0xB0
57548E:  STR.W           R9, [R10,#0x8FC]
575492:  BNE.W           loc_57534E
575496:  ADD             SP, SP, #0xD0
575498:  VPOP            {D8-D12}
57549C:  ADD             SP, SP, #4
57549E:  POP.W           {R8-R11}
5754A2:  POP             {R4-R7,PC}
