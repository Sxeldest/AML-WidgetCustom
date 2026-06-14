; =========================================================
; Game Engine Function: _ZN10CEscalator6UpdateEv
; Address            : 0x5A7020 - 0x5A7712
; =========================================================

5A7020:  PUSH            {R4-R7,LR}
5A7022:  ADD             R7, SP, #0xC
5A7024:  PUSH.W          {R8-R11}
5A7028:  SUB             SP, SP, #4
5A702A:  VPUSH           {D8-D15}
5A702E:  SUB             SP, SP, #0x10
5A7030:  MOV             R4, R0
5A7032:  LDRB.W          R0, [R4,#0x79]
5A7036:  CMP             R0, #0
5A7038:  BNE.W           loc_5A7242
5A703C:  LDR.W           R0, =(TheCamera_ptr - 0x5A7048)
5A7040:  VLDR            S0, [R4,#0x90]
5A7044:  ADD             R0, PC; TheCamera_ptr
5A7046:  LDR             R0, [R0]; TheCamera
5A7048:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5A704A:  ADD.W           R2, R1, #0x30 ; '0'
5A704E:  CMP             R1, #0
5A7050:  IT EQ
5A7052:  ADDEQ           R2, R0, #4
5A7054:  VLDR            D16, [R4,#0x94]
5A7058:  VLDR            S2, [R2]
5A705C:  VLDR            D17, [R2,#4]
5A7060:  VSUB.F32        S0, S2, S0
5A7064:  VLDR            S4, [R4,#0x9C]
5A7068:  VSUB.F32        D16, D17, D16
5A706C:  VMUL.F32        D1, D16, D16
5A7070:  VMUL.F32        S0, S0, S0
5A7074:  VADD.F32        S0, S0, S2
5A7078:  VADD.F32        S0, S0, S3
5A707C:  VMOV.F32        S2, #20.0
5A7080:  VSQRT.F32       S0, S0
5A7084:  VADD.F32        S2, S4, S2
5A7088:  VCMPE.F32       S0, S2
5A708C:  VMRS            APSR_nzcv, FPSCR
5A7090:  BGE.W           loc_5A7238
5A7094:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x5A709C)
5A7098:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
5A709A:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
5A709C:  LDR             R1, [R0]; CPools::ms_pObjectPool
5A709E:  LDR             R0, [R1,#8]
5A70A0:  CMP             R0, #1
5A70A2:  BLT             loc_5A7120
5A70A4:  LDR.W           R12, [R1,#4]
5A70A8:  CMP             R0, #4
5A70AA:  BCC             loc_5A7104
5A70AC:  BIC.W           R6, R0, #3
5A70B0:  CBZ             R6, loc_5A7104
5A70B2:  VMOV.I32        Q8, #0
5A70B6:  MOV             R3, SP
5A70B8:  VMOV.I16        D18, #1
5A70BC:  MOV             R2, R6
5A70BE:  VMOV.I32        Q10, #0xFF
5A70C2:  MOV             R1, R12
5A70C4:  LDR.W           R5, [R1],#4
5A70C8:  SUBS            R2, #4
5A70CA:  STR             R5, [SP,#0x70+var_70]
5A70CC:  VLD1.32         {D19[0]}, [R3@32]
5A70D0:  VMOVL.U8        Q11, D19
5A70D4:  VSHR.U16        D19, D22, #7
5A70D8:  VEOR            D19, D19, D18
5A70DC:  VMOVL.U16       Q11, D19
5A70E0:  VAND            Q11, Q11, Q10
5A70E4:  VADD.I32        Q8, Q8, Q11
5A70E8:  BNE             loc_5A70C4
5A70EA:  VEXT.8          Q9, Q8, Q8, #8
5A70EE:  CMP             R0, R6
5A70F0:  VADD.I32        Q8, Q8, Q9
5A70F4:  VDUP.32         Q9, D16[1]
5A70F8:  VADD.I32        Q8, Q8, Q9
5A70FC:  VMOV.32         R3, D16[0]
5A7100:  BNE             loc_5A7108
5A7102:  B               loc_5A7122
5A7104:  MOVS            R6, #0
5A7106:  MOVS            R3, #0
5A7108:  ADD.W           R1, R12, R6
5A710C:  SUBS            R2, R0, R6
5A710E:  MOVS            R6, #1
5A7110:  LDRB.W          R5, [R1],#1
5A7114:  SUBS            R2, #1
5A7116:  EOR.W           R5, R6, R5,LSR#7
5A711A:  ADD             R3, R5
5A711C:  BNE             loc_5A7110
5A711E:  B               loc_5A7122
5A7120:  MOVS            R3, #0
5A7122:  LDRD.W          R6, R1, [R4,#0x7C]; unsigned int
5A7126:  SUBS            R0, R0, R3
5A7128:  LDR.W           R2, [R4,#0x84]
5A712C:  ADDS            R3, R6, R1
5A712E:  ADD             R3, R2
5A7130:  ADDS            R3, #0xA
5A7132:  CMP             R0, R3
5A7134:  BLE.W           loc_5A7238
5A7138:  MOVS            R0, #0
5A713A:  CMP             R6, #1
5A713C:  STR.W           R0, [R4,#0xA0]
5A7140:  MOV.W           R0, #1
5A7144:  STRB.W          R0, [R4,#0x79]
5A7148:  BLT             loc_5A71B2
5A714A:  LDR.W           R0, =(MI_ESCALATORSTEP_ptr - 0x5A715C)
5A714E:  ADD.W           R10, R4, #0xA8
5A7152:  MOVS            R6, #0
5A7154:  MOV.W           R9, #5
5A7158:  ADD             R0, PC; MI_ESCALATORSTEP_ptr
5A715A:  LDR.W           R8, [R0]; MI_ESCALATORSTEP
5A715E:  MOV.W           R0, #(elf_hash_bucket+0x88); this
5A7162:  BLX.W           j__ZN7CObjectnwEj; CObject::operator new(uint)
5A7166:  LDRH.W          R1, [R8]; int
5A716A:  MOVS            R2, #1; bool
5A716C:  BLX.W           j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
5A7170:  CMP             R0, #0
5A7172:  STR.W           R0, [R10,R6,LSL#2]
5A7176:  BEQ             loc_5A71A6
5A7178:  LDRD.W          R3, R2, [R4,#0xC]
5A717C:  LDR             R5, [R0,#0x14]
5A717E:  LDR             R1, [R4,#0x14]; CEntity *
5A7180:  CBZ             R5, loc_5A718E
5A7182:  STR             R3, [R5,#0x30]
5A7184:  LDR             R3, [R0,#0x14]
5A7186:  STR             R2, [R3,#0x34]
5A7188:  LDR             R0, [R0,#0x14]
5A718A:  ADDS            R0, #0x38 ; '8'
5A718C:  B               loc_5A7194
5A718E:  STRD.W          R3, R2, [R0,#4]
5A7192:  ADDS            R0, #0xC
5A7194:  STR             R1, [R0]
5A7196:  LDR.W           R0, [R10,R6,LSL#2]; this
5A719A:  BLX.W           j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
5A719E:  LDR.W           R0, [R10,R6,LSL#2]
5A71A2:  STRB.W          R9, [R0,#0x140]
5A71A6:  LDR             R0, [R4,#0x7C]
5A71A8:  ADDS            R6, #1
5A71AA:  CMP             R6, R0
5A71AC:  BLT             loc_5A715E
5A71AE:  LDRD.W          R1, R2, [R4,#0x80]; unsigned int
5A71B2:  ADDS            R0, R2, R1
5A71B4:  CMP             R0, #1
5A71B6:  BLT             loc_5A7238
5A71B8:  LDR.W           R0, =(MI_ESCALATORSTEP8_ptr - 0x5A71C6)
5A71BC:  MOVS            R5, #0
5A71BE:  MOV.W           R8, #5
5A71C2:  ADD             R0, PC; MI_ESCALATORSTEP8_ptr
5A71C4:  LDR.W           R9, [R0]; MI_ESCALATORSTEP8
5A71C8:  MOV.W           R0, #(elf_hash_bucket+0x88); this
5A71CC:  BLX.W           j__ZN7CObjectnwEj; CObject::operator new(uint)
5A71D0:  LDRH.W          R1, [R9]; int
5A71D4:  MOVS            R2, #1; bool
5A71D6:  BLX.W           j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
5A71DA:  LDR             R1, [R4,#0x7C]
5A71DC:  ADD.W           R6, R4, #0xA8
5A71E0:  ADD             R1, R5
5A71E2:  STR.W           R0, [R6,R1,LSL#2]
5A71E6:  LDR             R0, [R4,#0x7C]
5A71E8:  ADD             R0, R5
5A71EA:  LDR.W           R1, [R6,R0,LSL#2]
5A71EE:  CBZ             R1, loc_5A722C
5A71F0:  LDRD.W          R3, R2, [R4,#0xC]
5A71F4:  LDR             R0, [R1,#0x14]
5A71F6:  LDR.W           R12, [R4,#0x14]
5A71FA:  CBZ             R0, loc_5A720A
5A71FC:  STR             R3, [R0,#0x30]
5A71FE:  LDR             R0, [R1,#0x14]
5A7200:  STR             R2, [R0,#0x34]
5A7202:  LDR             R0, [R1,#0x14]
5A7204:  ADD.W           R1, R0, #0x38 ; '8'
5A7208:  B               loc_5A7210
5A720A:  STRD.W          R3, R2, [R1,#4]
5A720E:  ADDS            R1, #0xC; CEntity *
5A7210:  STR.W           R12, [R1]
5A7214:  LDR             R0, [R4,#0x7C]
5A7216:  ADD             R0, R5
5A7218:  LDR.W           R0, [R6,R0,LSL#2]; this
5A721C:  BLX.W           j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
5A7220:  LDR             R0, [R4,#0x7C]
5A7222:  ADD             R0, R5
5A7224:  LDR.W           R0, [R6,R0,LSL#2]
5A7228:  STRB.W          R8, [R0,#0x140]
5A722C:  LDRD.W          R0, R1, [R4,#0x80]
5A7230:  ADDS            R5, #1
5A7232:  ADD             R0, R1
5A7234:  CMP             R5, R0
5A7236:  BLT             loc_5A71C8
5A7238:  LDRB.W          R0, [R4,#0x79]
5A723C:  CMP             R0, #0
5A723E:  BEQ.W           loc_5A7704
5A7242:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5A724E)
5A7246:  VLDR            S0, =0.04
5A724A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5A724C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5A724E:  VLDR            S2, [R0]
5A7252:  LDRB.W          R0, [R4,#0x7A]
5A7256:  VMUL.F32        S0, S2, S0
5A725A:  VLDR            S2, [R4,#0xA0]
5A725E:  CBZ             R0, loc_5A7272
5A7260:  VSUB.F32        S2, S2, S0
5A7264:  VMOV.F32        S4, #1.0
5A7268:  VSTR            S2, [R4,#0xA0]
5A726C:  VADD.F32        S0, S2, S4
5A7270:  B               loc_5A7276
5A7272:  VADD.F32        S0, S0, S2
5A7276:  VCVT.S32.F32    S2, S0
5A727A:  VCVT.F32.S32    S2, S2
5A727E:  LDR             R6, [R4,#0x7C]
5A7280:  CMP             R6, #1
5A7282:  VSUB.F32        S0, S0, S2
5A7286:  VSTR            S0, [R4,#0xA0]
5A728A:  BLT.W           loc_5A73BA
5A728E:  VMOV.F32        S18, #1.0
5A7292:  ADD.W           R10, R4, #0xA8
5A7296:  ADD.W           R9, R4, #0x30 ; '0'
5A729A:  ADD.W           R8, SP, #0x70+var_6C
5A729E:  VLDR            S16, =0.016
5A72A2:  MOVS            R5, #0
5A72A4:  VLDR            S20, =0.4
5A72A8:  VLDR            S0, [R4,#0xC]
5A72AC:  MOV             R0, R8; this
5A72AE:  VLDR            S6, [R4,#0x18]
5A72B2:  VLDR            S2, [R4,#0x10]
5A72B6:  VLDR            S8, [R4,#0x1C]
5A72BA:  VSUB.F32        S0, S6, S0
5A72BE:  VLDR            S4, [R4,#0x14]
5A72C2:  VLDR            S10, [R4,#0x20]
5A72C6:  VSUB.F32        S2, S8, S2
5A72CA:  VSUB.F32        S4, S10, S4
5A72CE:  VSTR            S2, [SP,#0x70+var_68]
5A72D2:  VSTR            S0, [SP,#0x70+var_6C]
5A72D6:  VSTR            S4, [SP,#0x70+var_64]
5A72DA:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5A72DE:  VLDR            S30, [SP,#0x70+var_6C]
5A72E2:  VLDR            S17, [SP,#0x70+var_68]
5A72E6:  VMUL.F32        S26, S30, S16
5A72EA:  VLDR            S28, [SP,#0x70+var_64]
5A72EE:  VMUL.F32        S24, S17, S16
5A72F2:  LDRB.W          R0, [R4,#0x7A]
5A72F6:  VMUL.F32        S22, S28, S16
5A72FA:  CMP             R0, #0
5A72FC:  ITTT NE
5A72FE:  VNEGNE.F32      S22, S22
5A7302:  VNEGNE.F32      S24, S24
5A7306:  VNEGNE.F32      S26, S26
5A730A:  LDR.W           R0, [R10,R5,LSL#2]
5A730E:  CMP             R0, #0
5A7310:  BEQ             loc_5A73B0
5A7312:  LDR             R0, [R0,#0x14]
5A7314:  MOV             R1, R9
5A7316:  VLDR            S19, [R4,#0x18]
5A731A:  VLDR            S21, [R4,#0x1C]
5A731E:  VLDR            S23, [R4,#0x20]
5A7322:  VLDR            S25, [R4,#0xA0]
5A7326:  BLX.W           j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
5A732A:  VMOV            S0, R5
5A732E:  VCVT.F32.S32    S0, S0
5A7332:  LDR.W           R0, [R10,R5,LSL#2]
5A7336:  LDR             R0, [R0,#0x14]
5A7338:  VSUB.F32        S0, S0, S25
5A733C:  VADD.F32        S0, S0, S18
5A7340:  VMUL.F32        S0, S0, S20
5A7344:  VMUL.F32        S2, S30, S0
5A7348:  VMUL.F32        S4, S17, S0
5A734C:  VMUL.F32        S0, S28, S0
5A7350:  VSUB.F32        S2, S19, S2
5A7354:  VSUB.F32        S4, S21, S4
5A7358:  VSUB.F32        S0, S23, S0
5A735C:  VSTR            S2, [R0,#0x30]
5A7360:  LDR.W           R0, [R10,R5,LSL#2]
5A7364:  LDR             R0, [R0,#0x14]
5A7366:  VSTR            S4, [R0,#0x34]
5A736A:  LDR.W           R0, [R10,R5,LSL#2]
5A736E:  LDR             R0, [R0,#0x14]
5A7370:  VSTR            S0, [R0,#0x38]
5A7374:  LDR.W           R0, [R10,R5,LSL#2]
5A7378:  VSTR            S26, [R0,#0x48]
5A737C:  VSTR            S24, [R0,#0x4C]
5A7380:  VSTR            S22, [R0,#0x50]
5A7384:  LDR.W           R2, [R10,R5,LSL#2]
5A7388:  LDR             R0, [R2,#0x18]
5A738A:  CBZ             R0, loc_5A73A0
5A738C:  LDR             R1, [R0,#4]
5A738E:  LDR             R0, [R2,#0x14]
5A7390:  ADDS            R1, #0x10
5A7392:  CBZ             R0, loc_5A739A
5A7394:  BLX.W           j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
5A7398:  B               loc_5A73A0
5A739A:  ADDS            R0, R2, #4
5A739C:  BLX.W           j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
5A73A0:  LDR.W           R0, [R10,R5,LSL#2]; this
5A73A4:  BLX.W           j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
5A73A8:  LDR.W           R0, [R10,R5,LSL#2]; this
5A73AC:  BLX.W           j__ZN9CPhysical12RemoveAndAddEv; CPhysical::RemoveAndAdd(void)
5A73B0:  LDR             R6, [R4,#0x7C]
5A73B2:  ADDS            R5, #1
5A73B4:  CMP             R5, R6
5A73B6:  BLT.W           loc_5A72A8
5A73BA:  LDR.W           R5, [R4,#0x80]
5A73BE:  CMP             R5, #1
5A73C0:  BLT.W           loc_5A74F8
5A73C4:  ADD.W           R9, R4, #0x30 ; '0'
5A73C8:  ADD.W           R8, SP, #0x70+var_6C
5A73CC:  VLDR            S16, =0.016
5A73D0:  MOV.W           R11, #1
5A73D4:  VLDR            S18, =0.4
5A73D8:  MOV.W           R10, #4
5A73DC:  B               loc_5A73E8
5A73DE:  ADD.W           R10, R10, #8
5A73E2:  LDR             R6, [R4,#0x7C]
5A73E4:  ADD.W           R11, R11, #1
5A73E8:  VLDR            S0, [R4]
5A73EC:  MOV             R0, R8; this
5A73EE:  VLDR            S6, [R4,#0xC]
5A73F2:  VLDR            S2, [R4,#4]
5A73F6:  VLDR            S8, [R4,#0x10]
5A73FA:  VSUB.F32        S0, S6, S0
5A73FE:  VLDR            S4, [R4,#8]
5A7402:  VLDR            S10, [R4,#0x14]
5A7406:  VSUB.F32        S2, S8, S2
5A740A:  VSUB.F32        S4, S10, S4
5A740E:  VSTR            S2, [SP,#0x70+var_68]
5A7412:  VSTR            S0, [SP,#0x70+var_6C]
5A7416:  VSTR            S4, [SP,#0x70+var_64]
5A741A:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5A741E:  VLDR            S28, [SP,#0x70+var_6C]
5A7422:  ADD.W           R0, R6, R11
5A7426:  VLDR            S30, [SP,#0x70+var_68]
5A742A:  SUBS            R0, #1
5A742C:  VMUL.F32        S24, S28, S16
5A7430:  VLDR            S26, [SP,#0x70+var_64]
5A7434:  VMUL.F32        S22, S30, S16
5A7438:  LDRB.W          R1, [R4,#0x7A]
5A743C:  VMUL.F32        S20, S26, S16
5A7440:  ADD.W           R5, R4, R0,LSL#2
5A7444:  CMP             R1, #0
5A7446:  ITTT NE
5A7448:  VNEGNE.F32      S20, S20
5A744C:  VNEGNE.F32      S22, S22
5A7450:  VNEGNE.F32      S24, S24
5A7454:  LDR.W           R0, [R5,#0xA8]!
5A7458:  CMP             R0, #0
5A745A:  BEQ             loc_5A74EE
5A745C:  LDR             R0, [R0,#0x14]
5A745E:  MOV             R1, R9
5A7460:  VLDR            S17, [R4]
5A7464:  VLDR            S19, [R4,#4]
5A7468:  VLDR            S21, [R4,#8]
5A746C:  VLDR            S23, [R4,#0xA0]
5A7470:  BLX.W           j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
5A7474:  VMOV            S0, R10
5A7478:  VMUL.F32        S2, S23, S18
5A747C:  VCVT.F32.S32    S0, S0
5A7480:  LDR             R0, [R5]
5A7482:  LDR             R0, [R0,#0x14]
5A7484:  VMUL.F32        S0, S0, S18
5A7488:  VADD.F32        S0, S0, S2
5A748C:  VMUL.F32        S2, S28, S0
5A7490:  VMUL.F32        S4, S30, S0
5A7494:  VMUL.F32        S0, S0, S26
5A7498:  VADD.F32        S2, S2, S17
5A749C:  VADD.F32        S4, S4, S19
5A74A0:  VADD.F32        S0, S0, S21
5A74A4:  VSTR            S2, [R0,#0x30]
5A74A8:  LDR             R0, [R5]
5A74AA:  LDR             R0, [R0,#0x14]
5A74AC:  VSTR            S4, [R0,#0x34]
5A74B0:  LDR             R0, [R5]
5A74B2:  LDR             R0, [R0,#0x14]
5A74B4:  VSTR            S0, [R0,#0x38]
5A74B8:  LDR             R0, [R5]
5A74BA:  VSTR            S24, [R0,#0x48]
5A74BE:  VSTR            S22, [R0,#0x4C]
5A74C2:  VSTR            S20, [R0,#0x50]
5A74C6:  LDR             R2, [R5]
5A74C8:  LDR             R0, [R2,#0x18]
5A74CA:  CMP             R0, #0
5A74CC:  BEQ             loc_5A74E2
5A74CE:  LDR             R1, [R0,#4]
5A74D0:  LDR             R0, [R2,#0x14]
5A74D2:  ADDS            R1, #0x10
5A74D4:  CBZ             R0, loc_5A74DC
5A74D6:  BLX.W           j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
5A74DA:  B               loc_5A74E2
5A74DC:  ADDS            R0, R2, #4
5A74DE:  BLX.W           j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
5A74E2:  LDR             R0, [R5]; this
5A74E4:  BLX.W           j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
5A74E8:  LDR             R0, [R5]; this
5A74EA:  BLX.W           j__ZN9CPhysical12RemoveAndAddEv; CPhysical::RemoveAndAdd(void)
5A74EE:  LDR.W           R5, [R4,#0x80]
5A74F2:  CMP             R11, R5
5A74F4:  BLT.W           loc_5A73DE
5A74F8:  LDR.W           R1, [R4,#0x84]
5A74FC:  CMP             R1, #1
5A74FE:  BLT.W           loc_5A7644
5A7502:  ADD.W           R9, R4, #0x30 ; '0'
5A7506:  ADD.W           R8, SP, #0x70+var_6C
5A750A:  VLDR            S16, =0.016
5A750E:  MOV.W           R11, #1
5A7512:  VLDR            S18, =0.4
5A7516:  MOV.W           R10, #4
5A751A:  B               loc_5A7534
5A751C:  DCFS 0.04
5A7520:  DCFS 0.016
5A7524:  DCFS 0.4
5A7528:  ADD.W           R10, R10, #8
5A752C:  LDR.W           R5, [R4,#0x80]
5A7530:  ADD.W           R11, R11, #1
5A7534:  VLDR            S0, [R4,#0x18]
5A7538:  MOV             R0, R8; this
5A753A:  VLDR            S6, [R4,#0x24]
5A753E:  VLDR            S2, [R4,#0x1C]
5A7542:  VLDR            S8, [R4,#0x28]
5A7546:  VSUB.F32        S0, S6, S0
5A754A:  VLDR            S4, [R4,#0x20]
5A754E:  VLDR            S10, [R4,#0x2C]
5A7552:  VSUB.F32        S2, S8, S2
5A7556:  LDR             R6, [R4,#0x7C]
5A7558:  VSUB.F32        S4, S10, S4
5A755C:  VSTR            S2, [SP,#0x70+var_68]
5A7560:  VSTR            S0, [SP,#0x70+var_6C]
5A7564:  VSTR            S4, [SP,#0x70+var_64]
5A7568:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5A756C:  VLDR            S28, [SP,#0x70+var_6C]
5A7570:  ADDS            R0, R5, R6
5A7572:  VLDR            S30, [SP,#0x70+var_68]
5A7576:  ADD             R0, R11
5A7578:  VMUL.F32        S24, S28, S16
5A757C:  VLDR            S26, [SP,#0x70+var_64]
5A7580:  VMUL.F32        S22, S30, S16
5A7584:  SUBS            R0, #1
5A7586:  VMUL.F32        S20, S26, S16
5A758A:  LDRB.W          R1, [R4,#0x7A]
5A758E:  ADD.W           R5, R4, R0,LSL#2
5A7592:  CMP             R1, #0
5A7594:  ITTT NE
5A7596:  VNEGNE.F32      S20, S20
5A759A:  VNEGNE.F32      S22, S22
5A759E:  VNEGNE.F32      S24, S24
5A75A2:  LDR.W           R0, [R5,#0xA8]!
5A75A6:  CMP             R0, #0
5A75A8:  BEQ             loc_5A763A
5A75AA:  LDR             R0, [R0,#0x14]
5A75AC:  MOV             R1, R9
5A75AE:  VLDR            S17, [R4,#0x18]
5A75B2:  VLDR            S19, [R4,#0x1C]
5A75B6:  VLDR            S21, [R4,#0x20]
5A75BA:  VLDR            S23, [R4,#0xA0]
5A75BE:  BLX.W           j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
5A75C2:  VMOV            S0, R10
5A75C6:  VMUL.F32        S2, S23, S18
5A75CA:  VCVT.F32.S32    S0, S0
5A75CE:  LDR             R0, [R5]
5A75D0:  LDR             R0, [R0,#0x14]
5A75D2:  VMUL.F32        S0, S0, S18
5A75D6:  VADD.F32        S0, S0, S2
5A75DA:  VMUL.F32        S2, S28, S0
5A75DE:  VMUL.F32        S4, S30, S0
5A75E2:  VMUL.F32        S0, S0, S26
5A75E6:  VADD.F32        S2, S2, S17
5A75EA:  VADD.F32        S4, S4, S19
5A75EE:  VADD.F32        S0, S0, S21
5A75F2:  VSTR            S2, [R0,#0x30]
5A75F6:  LDR             R0, [R5]
5A75F8:  LDR             R0, [R0,#0x14]
5A75FA:  VSTR            S4, [R0,#0x34]
5A75FE:  LDR             R0, [R5]
5A7600:  LDR             R0, [R0,#0x14]
5A7602:  VSTR            S0, [R0,#0x38]
5A7606:  LDR             R0, [R5]
5A7608:  VSTR            S24, [R0,#0x48]
5A760C:  VSTR            S22, [R0,#0x4C]
5A7610:  VSTR            S20, [R0,#0x50]
5A7614:  LDR             R2, [R5]
5A7616:  LDR             R0, [R2,#0x18]
5A7618:  CBZ             R0, loc_5A762E
5A761A:  LDR             R1, [R0,#4]
5A761C:  LDR             R0, [R2,#0x14]
5A761E:  ADDS            R1, #0x10
5A7620:  CBZ             R0, loc_5A7628
5A7622:  BLX.W           j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
5A7626:  B               loc_5A762E
5A7628:  ADDS            R0, R2, #4
5A762A:  BLX.W           j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
5A762E:  LDR             R0, [R5]; this
5A7630:  BLX.W           j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
5A7634:  LDR             R0, [R5]; this
5A7636:  BLX.W           j__ZN9CPhysical12RemoveAndAddEv; CPhysical::RemoveAndAdd(void)
5A763A:  LDR.W           R1, [R4,#0x84]; CEntity *
5A763E:  CMP             R11, R1
5A7640:  BLT.W           loc_5A7528
5A7644:  LDR             R0, =(TheCamera_ptr - 0x5A764E)
5A7646:  VLDR            S0, [R4,#0x90]
5A764A:  ADD             R0, PC; TheCamera_ptr
5A764C:  LDR             R0, [R0]; TheCamera
5A764E:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
5A7650:  ADD.W           R3, R2, #0x30 ; '0'
5A7654:  CMP             R2, #0
5A7656:  IT EQ
5A7658:  ADDEQ           R3, R0, #4
5A765A:  VLDR            D16, [R4,#0x94]
5A765E:  VLDR            S2, [R3]
5A7662:  VLDR            D17, [R3,#4]
5A7666:  VSUB.F32        S0, S2, S0
5A766A:  VLDR            S4, [R4,#0x9C]
5A766E:  VSUB.F32        D16, D17, D16
5A7672:  VMUL.F32        D1, D16, D16
5A7676:  VMUL.F32        S0, S0, S0
5A767A:  VADD.F32        S0, S0, S2
5A767E:  VADD.F32        S0, S0, S3
5A7682:  VMOV.F32        S2, #23.0
5A7686:  VSQRT.F32       S0, S0
5A768A:  VADD.F32        S2, S4, S2
5A768E:  VCMPE.F32       S0, S2
5A7692:  VMRS            APSR_nzcv, FPSCR
5A7696:  BLE             loc_5A7704
5A7698:  LDRB.W          R0, [R4,#0x79]
5A769C:  CBZ             R0, loc_5A7704
5A769E:  LDRD.W          R2, R3, [R4,#0x7C]
5A76A2:  ADDS            R0, R2, R1
5A76A4:  ADD             R0, R3
5A76A6:  CMP             R0, #1
5A76A8:  BLT             loc_5A76FE
5A76AA:  LDR             R0, =(deletingEscalator_ptr - 0x5A76BC)
5A76AC:  ADD.W           R5, R4, #0xA8
5A76B0:  MOV.W           R8, #0
5A76B4:  MOV.W           R9, #1
5A76B8:  ADD             R0, PC; deletingEscalator_ptr
5A76BA:  MOVS            R6, #0
5A76BC:  LDR.W           R10, [R0]; deletingEscalator
5A76C0:  LDR             R0, =(deletingEscalator_ptr - 0x5A76C6)
5A76C2:  ADD             R0, PC; deletingEscalator_ptr
5A76C4:  LDR.W           R11, [R0]; deletingEscalator
5A76C8:  LDR.W           R0, [R5,R6,LSL#2]; this
5A76CC:  CBZ             R0, loc_5A76F4
5A76CE:  BLX.W           j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
5A76D2:  STRB.W          R9, [R10]
5A76D6:  LDR.W           R0, [R5,R6,LSL#2]
5A76DA:  CMP             R0, #0
5A76DC:  ITTT NE
5A76DE:  LDRNE           R1, [R0]
5A76E0:  LDRNE           R1, [R1,#4]
5A76E2:  BLXNE           R1
5A76E4:  STRB.W          R8, [R11]
5A76E8:  STR.W           R8, [R5,R6,LSL#2]
5A76EC:  LDRD.W          R2, R3, [R4,#0x7C]
5A76F0:  LDR.W           R1, [R4,#0x84]
5A76F4:  ADDS            R0, R3, R1
5A76F6:  ADDS            R6, #1
5A76F8:  ADD             R0, R2
5A76FA:  CMP             R6, R0
5A76FC:  BLT             loc_5A76C8
5A76FE:  MOVS            R0, #0
5A7700:  STRB.W          R0, [R4,#0x79]
5A7704:  ADD             SP, SP, #0x10
5A7706:  VPOP            {D8-D15}
5A770A:  ADD             SP, SP, #4
5A770C:  POP.W           {R8-R11}
5A7710:  POP             {R4-R7,PC}
