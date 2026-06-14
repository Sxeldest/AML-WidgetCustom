; =========================================================
; Game Engine Function: _ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb
; Address            : 0x2DD020 - 0x2DE802
; =========================================================

2DD020:  PUSH            {R4-R7,LR}
2DD022:  ADD             R7, SP, #0xC
2DD024:  PUSH.W          {R8-R11}
2DD028:  SUB             SP, SP, #4
2DD02A:  VPUSH           {D8-D15}
2DD02E:  SUB             SP, SP, #0xE0
2DD030:  MOV             R8, R0
2DD032:  LDR.W           R0, =(byte_793AF0 - 0x2DD03E)
2DD036:  MOV             R5, R3
2DD038:  MOV             R6, R2
2DD03A:  ADD             R0, PC; byte_793AF0
2DD03C:  MOV             R11, R1
2DD03E:  LDRB            R0, [R0]
2DD040:  DMB.W           ISH
2DD044:  TST.W           R0, #1
2DD048:  BNE             loc_2DD060
2DD04A:  LDR.W           R0, =(byte_793AF0 - 0x2DD052)
2DD04E:  ADD             R0, PC; byte_793AF0 ; __guard *
2DD050:  BLX             j___cxa_guard_acquire
2DD054:  CBZ             R0, loc_2DD060
2DD056:  LDR.W           R0, =(byte_793AF0 - 0x2DD05E)
2DD05A:  ADD             R0, PC; byte_793AF0 ; __guard *
2DD05C:  BLX             j___cxa_guard_release
2DD060:  LDR.W           R0, =(byte_7944F4 - 0x2DD068)
2DD064:  ADD             R0, PC; byte_7944F4
2DD066:  LDRB            R0, [R0]
2DD068:  DMB.W           ISH
2DD06C:  TST.W           R0, #1
2DD070:  BNE             loc_2DD088
2DD072:  LDR.W           R0, =(byte_7944F4 - 0x2DD07A)
2DD076:  ADD             R0, PC; byte_7944F4 ; __guard *
2DD078:  BLX             j___cxa_guard_acquire
2DD07C:  CBZ             R0, loc_2DD088
2DD07E:  LDR.W           R0, =(byte_7944F4 - 0x2DD086)
2DD082:  ADD             R0, PC; byte_7944F4 ; __guard *
2DD084:  BLX             j___cxa_guard_release
2DD088:  LDR.W           R0, =(byte_7946F8 - 0x2DD090)
2DD08C:  ADD             R0, PC; byte_7946F8
2DD08E:  LDRB            R0, [R0]
2DD090:  DMB.W           ISH
2DD094:  TST.W           R0, #1
2DD098:  BNE             loc_2DD0B0
2DD09A:  LDR.W           R0, =(byte_7946F8 - 0x2DD0A2)
2DD09E:  ADD             R0, PC; byte_7946F8 ; __guard *
2DD0A0:  BLX             j___cxa_guard_acquire
2DD0A4:  CBZ             R0, loc_2DD0B0
2DD0A6:  LDR.W           R0, =(byte_7946F8 - 0x2DD0AE)
2DD0AA:  ADD             R0, PC; byte_7946F8 ; __guard *
2DD0AC:  BLX             j___cxa_guard_release
2DD0B0:  LDR.W           R0, =(byte_796054 - 0x2DD0B8)
2DD0B4:  ADD             R0, PC; byte_796054
2DD0B6:  LDRB            R0, [R0]
2DD0B8:  DMB.W           ISH
2DD0BC:  TST.W           R0, #1
2DD0C0:  BNE             loc_2DD0F6
2DD0C2:  LDR.W           R0, =(byte_796054 - 0x2DD0CA)
2DD0C6:  ADD             R0, PC; byte_796054 ; __guard *
2DD0C8:  BLX             j___cxa_guard_acquire
2DD0CC:  CBZ             R0, loc_2DD0F6
2DD0CE:  LDR.W           R0, =(_ZN7CMatrixD2Ev_ptr_0 - 0x2DD0DC)
2DD0D2:  MOVS            R3, #0
2DD0D4:  LDR.W           R1, =(unk_79600C - 0x2DD0E2)
2DD0D8:  ADD             R0, PC; _ZN7CMatrixD2Ev_ptr_0
2DD0DA:  LDR.W           R2, =(unk_67A000 - 0x2DD0E6)
2DD0DE:  ADD             R1, PC; unk_79600C ; obj
2DD0E0:  LDR             R0, [R0]; CMatrix::~CMatrix() ; lpfunc
2DD0E2:  ADD             R2, PC; unk_67A000 ; lpdso_handle
2DD0E4:  STRD.W          R3, R3, [R1,#(dword_79604C - 0x79600C)]
2DD0E8:  BLX             __cxa_atexit
2DD0EC:  LDR.W           R0, =(byte_796054 - 0x2DD0F4)
2DD0F0:  ADD             R0, PC; byte_796054 ; __guard *
2DD0F2:  BLX             j___cxa_guard_release
2DD0F6:  LDR.W           R0, =(byte_7960A0 - 0x2DD0FE)
2DD0FA:  ADD             R0, PC; byte_7960A0
2DD0FC:  LDRB            R0, [R0]
2DD0FE:  DMB.W           ISH
2DD102:  TST.W           R0, #1
2DD106:  BNE             loc_2DD13C
2DD108:  LDR.W           R0, =(byte_7960A0 - 0x2DD110)
2DD10C:  ADD             R0, PC; byte_7960A0 ; __guard *
2DD10E:  BLX             j___cxa_guard_acquire
2DD112:  CBZ             R0, loc_2DD13C
2DD114:  LDR.W           R0, =(_ZN7CMatrixD2Ev_ptr_0 - 0x2DD122)
2DD118:  MOVS            R3, #0
2DD11A:  LDR.W           R1, =(unk_796058 - 0x2DD128)
2DD11E:  ADD             R0, PC; _ZN7CMatrixD2Ev_ptr_0
2DD120:  LDR.W           R2, =(unk_67A000 - 0x2DD12C)
2DD124:  ADD             R1, PC; unk_796058 ; obj
2DD126:  LDR             R0, [R0]; CMatrix::~CMatrix() ; lpfunc
2DD128:  ADD             R2, PC; unk_67A000 ; lpdso_handle
2DD12A:  STRD.W          R3, R3, [R1,#(dword_796098 - 0x796058)]
2DD12E:  BLX             __cxa_atexit
2DD132:  LDR.W           R0, =(byte_7960A0 - 0x2DD13A)
2DD136:  ADD             R0, PC; byte_7960A0 ; __guard *
2DD138:  BLX             j___cxa_guard_release
2DD13C:  LDR.W           R10, [R11,#0x2C]
2DD140:  MOVS            R4, #0
2DD142:  CMP.W           R10, #0
2DD146:  ITT NE
2DD148:  LDRNE.W         R9, [R5,#0x2C]
2DD14C:  CMPNE.W         R9, #0
2DD150:  BEQ.W           loc_2DDB3C
2DD154:  LDR.W           R4, =(unk_79600C - 0x2DD160)
2DD158:  MOV             R0, R6; CMatrix *
2DD15A:  STR             R6, [SP,#0x140+var_E0]
2DD15C:  ADD             R4, PC; unk_79600C
2DD15E:  MOV             R1, R4; CMatrix *
2DD160:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
2DD164:  MOV             R1, R0
2DD166:  MOV             R0, R4
2DD168:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
2DD16C:  ADD             R6, SP, #0x140+var_A8
2DD16E:  MOV             R1, R4
2DD170:  MOV             R2, R8
2DD172:  STR             R5, [SP,#0x140+var_DC]
2DD174:  MOV             R0, R6
2DD176:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
2DD17A:  MOV             R0, R4
2DD17C:  MOV             R1, R6
2DD17E:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
2DD182:  MOV             R0, R6; this
2DD184:  LDR             R6, [SP,#0x140+var_DC]
2DD186:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
2DD18A:  ADD.W           R2, R11, #0x18
2DD18E:  ADD             R0, SP, #0x140+var_A8
2DD190:  LDR.W           R5, [R11,#0x24]
2DD194:  MOV             R1, R4
2DD196:  STR             R5, [SP,#0x140+var_B4]
2DD198:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DD19C:  VLDR            D16, [SP,#0x140+var_A8]
2DD1A0:  VMOV            S0, R5
2DD1A4:  LDR             R0, [SP,#0x140+var_A0]
2DD1A6:  STR             R0, [SP,#0x140+var_B8]
2DD1A8:  VSTR            D16, [SP,#0x140+var_C0]
2DD1AC:  VLDR            S2, [SP,#0x140+var_C0]
2DD1B0:  VLDR            S4, [R6]
2DD1B4:  VADD.F32        S16, S2, S0
2DD1B8:  VCMPE.F32       S16, S4
2DD1BC:  VMRS            APSR_nzcv, FPSCR
2DD1C0:  BLT.W           loc_2DDB3A
2DD1C4:  VSUB.F32        S18, S2, S0
2DD1C8:  VLDR            S2, [R6,#0xC]
2DD1CC:  VCMPE.F32       S18, S2
2DD1D0:  VMRS            APSR_nzcv, FPSCR
2DD1D4:  BGT.W           loc_2DDB3A
2DD1D8:  VLDR            S2, [SP,#0x140+var_C0+4]
2DD1DC:  VLDR            S4, [R6,#4]
2DD1E0:  VADD.F32        S20, S2, S0
2DD1E4:  VCMPE.F32       S20, S4
2DD1E8:  VMRS            APSR_nzcv, FPSCR
2DD1EC:  BLT.W           loc_2DDB3A
2DD1F0:  VSUB.F32        S22, S2, S0
2DD1F4:  VLDR            S2, [R6,#0x10]
2DD1F8:  VCMPE.F32       S22, S2
2DD1FC:  VMRS            APSR_nzcv, FPSCR
2DD200:  BGT.W           loc_2DDB3A
2DD204:  VLDR            S2, [SP,#0x140+var_B8]
2DD208:  VLDR            S4, [R6,#8]
2DD20C:  VADD.F32        S24, S2, S0
2DD210:  VCMPE.F32       S24, S4
2DD214:  VMRS            APSR_nzcv, FPSCR
2DD218:  BLT.W           loc_2DDB3A
2DD21C:  VSUB.F32        S26, S2, S0
2DD220:  VLDR            S0, [R6,#0x14]
2DD224:  VCMPE.F32       S26, S0
2DD228:  VMRS            APSR_nzcv, FPSCR
2DD22C:  BGT.W           loc_2DDB3A
2DD230:  LDR.W           R4, =(unk_796058 - 0x2DD23A)
2DD234:  MOV             R0, R8; CMatrix *
2DD236:  ADD             R4, PC; unk_796058
2DD238:  MOV             R1, R4; CMatrix *
2DD23A:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
2DD23E:  MOV             R1, R0
2DD240:  MOV             R0, R4
2DD242:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
2DD246:  ADD             R5, SP, #0x140+var_A8
2DD248:  LDR             R2, [SP,#0x140+var_E0]
2DD24A:  MOV             R1, R4
2DD24C:  MOV             R0, R5
2DD24E:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
2DD252:  MOV             R0, R4
2DD254:  MOV             R1, R5
2DD256:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
2DD25A:  MOV             R0, R5; this
2DD25C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
2DD260:  LDRSH.W         R0, [R10]
2DD264:  STR.W           R8, [SP,#0x140+var_10C]
2DD268:  CMP             R0, #1
2DD26A:  STR.W           R10, [SP,#0x140+var_E4]
2DD26E:  STR.W           R9, [SP,#0x140+var_D4]
2DD272:  STR.W           R11, [SP,#0x140+var_104]
2DD276:  BLT.W           loc_2DD388
2DD27A:  LDR.W           R8, =(unk_7930F0 - 0x2DD28C)
2DD27E:  MOV             R11, R10
2DD280:  LDR.W           R9, =(unk_79600C - 0x2DD290)
2DD284:  ADD.W           R10, SP, #0x140+var_A8
2DD288:  ADD             R8, PC; unk_7930F0
2DD28A:  MOVS            R5, #0
2DD28C:  ADD             R9, PC; unk_79600C
2DD28E:  MOVS            R4, #0
2DD290:  LDR.W           R0, [R11,#8]
2DD294:  ADD.W           R6, R8, R5
2DD298:  MOV             R1, R9
2DD29A:  ADD             R0, R5
2DD29C:  LDR             R0, [R0,#0xC]
2DD29E:  STR             R0, [R6,#0xC]
2DD2A0:  LDR.W           R0, [R11,#8]
2DD2A4:  ADDS            R2, R0, R5
2DD2A6:  MOV             R0, R10
2DD2A8:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DD2AC:  VLDR            D16, [SP,#0x140+var_A8]
2DD2B0:  ADDS            R4, #1
2DD2B2:  LDR             R0, [SP,#0x140+var_A0]
2DD2B4:  STR             R0, [R6,#8]
2DD2B6:  VSTR            D16, [R6]
2DD2BA:  LDR.W           R0, [R11,#8]
2DD2BE:  ADD             R0, R5
2DD2C0:  ADDS            R5, #0x14
2DD2C2:  LDRB            R1, [R0,#0x12]
2DD2C4:  LDRH            R0, [R0,#0x10]
2DD2C6:  STRB            R1, [R6,#0x12]
2DD2C8:  STRH            R0, [R6,#0x10]
2DD2CA:  LDRSH.W         R0, [R11]
2DD2CE:  CMP             R4, R0
2DD2D0:  BLT             loc_2DD290
2DD2D2:  LDR.W           R9, [SP,#0x140+var_D4]
2DD2D6:  CMP             R0, #1
2DD2D8:  BLT             loc_2DD38E
2DD2DA:  LDR             R2, [SP,#0x140+var_DC]
2DD2DC:  MOVS            R6, #0
2DD2DE:  LDR.W           R1, =(unk_7930F0 - 0x2DD2EA)
2DD2E2:  LDR.W           R3, =(unk_7946FC - 0x2DD2FA)
2DD2E6:  ADD             R1, PC; unk_7930F0
2DD2E8:  LDR.W           R10, [SP,#0x140+var_E4]
2DD2EC:  LDR.W           R11, [SP,#0x140+var_104]
2DD2F0:  ADDS            R1, #8
2DD2F2:  VLDR            S0, [R2]
2DD2F6:  ADD             R3, PC; unk_7946FC
2DD2F8:  VLDR            S2, [R2,#4]
2DD2FC:  VLDR            S4, [R2,#8]
2DD300:  VLDR            S6, [R2,#0xC]
2DD304:  VLDR            S8, [R2,#0x10]
2DD308:  VLDR            S10, [R2,#0x14]
2DD30C:  MOVS            R2, #0
2DD30E:  STR             R6, [SP,#0x140+var_FC]
2DD310:  VLDR            S12, [R1,#4]
2DD314:  VLDR            S14, [R1,#-8]
2DD318:  VADD.F32        S1, S14, S12
2DD31C:  VCMPE.F32       S1, S0
2DD320:  VMRS            APSR_nzcv, FPSCR
2DD324:  BLT             loc_2DD37E
2DD326:  VSUB.F32        S14, S14, S12
2DD32A:  VCMPE.F32       S14, S6
2DD32E:  VMRS            APSR_nzcv, FPSCR
2DD332:  BGT             loc_2DD37E
2DD334:  VLDR            S14, [R1,#-4]
2DD338:  VADD.F32        S1, S12, S14
2DD33C:  VCMPE.F32       S1, S2
2DD340:  VMRS            APSR_nzcv, FPSCR
2DD344:  BLT             loc_2DD37E
2DD346:  VSUB.F32        S14, S14, S12
2DD34A:  VCMPE.F32       S14, S8
2DD34E:  VMRS            APSR_nzcv, FPSCR
2DD352:  BGT             loc_2DD37E
2DD354:  VLDR            S14, [R1]
2DD358:  VADD.F32        S1, S12, S14
2DD35C:  VCMPE.F32       S1, S4
2DD360:  VMRS            APSR_nzcv, FPSCR
2DD364:  BLT             loc_2DD37E
2DD366:  VSUB.F32        S12, S14, S12
2DD36A:  VCMPE.F32       S12, S10
2DD36E:  VMRS            APSR_nzcv, FPSCR
2DD372:  ITTTT LE
2DD374:  LDRLE           R6, [SP,#0x140+var_FC]
2DD376:  STRLE.W         R2, [R3,R6,LSL#2]
2DD37A:  ADDLE           R6, #1
2DD37C:  STRLE           R6, [SP,#0x140+var_FC]
2DD37E:  ADDS            R2, #1
2DD380:  ADDS            R1, #0x14
2DD382:  CMP             R2, R0
2DD384:  BLT             loc_2DD310
2DD386:  B               loc_2DD39A
2DD388:  MOVS            R0, #0
2DD38A:  STR             R0, [SP,#0x140+var_FC]
2DD38C:  B               loc_2DD39A
2DD38E:  MOVS            R0, #0
2DD390:  LDR.W           R10, [SP,#0x140+var_E4]
2DD394:  STR             R0, [SP,#0x140+var_FC]
2DD396:  LDR.W           R11, [SP,#0x140+var_104]
2DD39A:  LDRSH.W         R0, [R9]
2DD39E:  CMP             R0, #1
2DD3A0:  BLT.W           loc_2DD4B0
2DD3A4:  LDR.W           R8, =(unk_793AF4 - 0x2DD3B6)
2DD3A8:  MOV             R11, R9
2DD3AA:  LDR.W           R9, =(unk_796058 - 0x2DD3BA)
2DD3AE:  ADD.W           R10, SP, #0x140+var_A8
2DD3B2:  ADD             R8, PC; unk_793AF4
2DD3B4:  MOVS            R5, #0
2DD3B6:  ADD             R9, PC; unk_796058
2DD3B8:  MOVS            R4, #0
2DD3BA:  LDR.W           R0, [R11,#8]
2DD3BE:  ADD.W           R6, R8, R5
2DD3C2:  MOV             R1, R9
2DD3C4:  ADD             R0, R5
2DD3C6:  LDR             R0, [R0,#0xC]
2DD3C8:  STR             R0, [R6,#0xC]
2DD3CA:  LDR.W           R0, [R11,#8]
2DD3CE:  ADDS            R2, R0, R5
2DD3D0:  MOV             R0, R10
2DD3D2:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DD3D6:  VLDR            D16, [SP,#0x140+var_A8]
2DD3DA:  ADDS            R4, #1
2DD3DC:  LDR             R0, [SP,#0x140+var_A0]
2DD3DE:  STR             R0, [R6,#8]
2DD3E0:  VSTR            D16, [R6]
2DD3E4:  LDR.W           R0, [R11,#8]
2DD3E8:  ADD             R0, R5
2DD3EA:  ADDS            R5, #0x14
2DD3EC:  LDRB            R1, [R0,#0x12]
2DD3EE:  LDRH            R0, [R0,#0x10]
2DD3F0:  STRB            R1, [R6,#0x12]
2DD3F2:  STRH            R0, [R6,#0x10]
2DD3F4:  LDRSH.W         R0, [R11]
2DD3F8:  CMP             R4, R0
2DD3FA:  BLT             loc_2DD3BA
2DD3FC:  CMP             R0, #1
2DD3FE:  BLT             loc_2DD4B6
2DD400:  LDR.W           R11, [SP,#0x140+var_104]
2DD404:  MOVS            R2, #0
2DD406:  LDR.W           R1, =(unk_793AF4 - 0x2DD414)
2DD40A:  MOVS            R6, #0
2DD40C:  LDR.W           R3, =(dword_7948FC - 0x2DD424)
2DD410:  ADD             R1, PC; unk_793AF4
2DD412:  LDR.W           R10, [SP,#0x140+var_E4]
2DD416:  LDR.W           R9, [SP,#0x140+var_D4]
2DD41A:  ADDS            R1, #8
2DD41C:  VLDR            S0, [R11]
2DD420:  ADD             R3, PC; dword_7948FC
2DD422:  VLDR            S2, [R11,#4]
2DD426:  VLDR            S4, [R11,#8]
2DD42A:  VLDR            S6, [R11,#0xC]
2DD42E:  VLDR            S8, [R11,#0x10]
2DD432:  VLDR            S10, [R11,#0x14]
2DD436:  STR             R6, [SP,#0x140+var_EC]
2DD438:  VLDR            S12, [R1,#4]
2DD43C:  VLDR            S14, [R1,#-8]
2DD440:  VADD.F32        S1, S14, S12
2DD444:  VCMPE.F32       S1, S0
2DD448:  VMRS            APSR_nzcv, FPSCR
2DD44C:  BLT             loc_2DD4A6
2DD44E:  VSUB.F32        S14, S14, S12
2DD452:  VCMPE.F32       S14, S6
2DD456:  VMRS            APSR_nzcv, FPSCR
2DD45A:  BGT             loc_2DD4A6
2DD45C:  VLDR            S14, [R1,#-4]
2DD460:  VADD.F32        S1, S12, S14
2DD464:  VCMPE.F32       S1, S2
2DD468:  VMRS            APSR_nzcv, FPSCR
2DD46C:  BLT             loc_2DD4A6
2DD46E:  VSUB.F32        S14, S14, S12
2DD472:  VCMPE.F32       S14, S8
2DD476:  VMRS            APSR_nzcv, FPSCR
2DD47A:  BGT             loc_2DD4A6
2DD47C:  VLDR            S14, [R1]
2DD480:  VADD.F32        S1, S12, S14
2DD484:  VCMPE.F32       S1, S4
2DD488:  VMRS            APSR_nzcv, FPSCR
2DD48C:  BLT             loc_2DD4A6
2DD48E:  VSUB.F32        S12, S14, S12
2DD492:  VCMPE.F32       S12, S10
2DD496:  VMRS            APSR_nzcv, FPSCR
2DD49A:  ITTTT LE
2DD49C:  LDRLE           R6, [SP,#0x140+var_EC]
2DD49E:  STRLE.W         R2, [R3,R6,LSL#2]
2DD4A2:  ADDLE           R6, #1
2DD4A4:  STRLE           R6, [SP,#0x140+var_EC]
2DD4A6:  ADDS            R2, #1
2DD4A8:  ADDS            R1, #0x14
2DD4AA:  CMP             R2, R0
2DD4AC:  BLT             loc_2DD438
2DD4AE:  B               loc_2DD4C6
2DD4B0:  MOVS            R1, #0
2DD4B2:  STR             R1, [SP,#0x140+var_EC]
2DD4B4:  B               loc_2DD4C6
2DD4B6:  MOVS            R1, #0
2DD4B8:  LDR.W           R10, [SP,#0x140+var_E4]
2DD4BC:  STR             R1, [SP,#0x140+var_EC]
2DD4BE:  LDR.W           R9, [SP,#0x140+var_D4]
2DD4C2:  LDR.W           R11, [SP,#0x140+var_104]
2DD4C6:  LDR             R1, [SP,#0x140+var_FC]
2DD4C8:  CMP             R1, #0
2DD4CA:  BEQ.W           loc_2DD6AA
2DD4CE:  LDRB.W          R1, [R9,#7]
2DD4D2:  LSLS            R1, R1, #0x1F; CCollisionData *
2DD4D4:  BEQ.W           loc_2DD61E
2DD4D8:  LDRSB.W         R1, [R9,#6]
2DD4DC:  CMP             R1, #1
2DD4DE:  BLT.W           loc_2DD61E
2DD4E2:  LDR.W           R10, =(unk_793AF4 - 0x2DD4F4)
2DD4E6:  MOV             R4, R9
2DD4E8:  LDR.W           R8, =(unk_796058 - 0x2DD4F8)
2DD4EC:  ADD.W           R9, SP, #0x140+var_A8
2DD4F0:  ADD             R10, PC; unk_793AF4
2DD4F2:  MOVS            R5, #0
2DD4F4:  ADD             R8, PC; unk_796058
2DD4F6:  MOVS            R6, #0xC
2DD4F8:  B               loc_2DD4FE
2DD4FA:  LDRH            R0, [R4]
2DD4FC:  ADDS            R6, #0x24 ; '$'
2DD4FE:  SXTAH.W         R0, R5, R0
2DD502:  LDR             R1, [R4,#0x10]
2DD504:  ADD.W           R0, R0, R0,LSL#2
2DD508:  LDR             R1, [R1,R6]
2DD50A:  ADD.W           R0, R10, R0,LSL#2
2DD50E:  STR             R1, [R0,#0xC]
2DD510:  MOV             R1, R8
2DD512:  LDR             R0, [R4,#0x10]
2DD514:  ADD             R0, R6
2DD516:  SUB.W           R2, R0, #0xC
2DD51A:  MOV             R0, R9
2DD51C:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DD520:  LDRSH.W         R0, [R4]
2DD524:  VLDR            D16, [SP,#0x140+var_A8]
2DD528:  ADD             R0, R5
2DD52A:  LDR             R1, [SP,#0x140+var_A0]
2DD52C:  ADD.W           R0, R0, R0,LSL#2
2DD530:  ADD.W           R0, R10, R0,LSL#2
2DD534:  STR             R1, [R0,#8]
2DD536:  VSTR            D16, [R0]
2DD53A:  LDRSH.W         R0, [R4]
2DD53E:  LDR             R1, [R4,#0x10]
2DD540:  ADD             R0, R5
2DD542:  ADDS            R5, #1
2DD544:  ADD             R1, R6
2DD546:  ADD.W           R0, R0, R0,LSL#2
2DD54A:  LDRH            R2, [R1,#4]
2DD54C:  ADD.W           R0, R10, R0,LSL#2
2DD550:  LDRB            R1, [R1,#6]
2DD552:  STRB            R1, [R0,#0x12]
2DD554:  STRH            R2, [R0,#0x10]
2DD556:  LDRSB.W         R0, [R4,#6]
2DD55A:  CMP             R5, R0
2DD55C:  BLT             loc_2DD4FA
2DD55E:  CMP             R0, #1
2DD560:  BLT.W           loc_2DDC0E
2DD564:  LDR.W           R9, [SP,#0x140+var_D4]
2DD568:  MOVS            R6, #0
2DD56A:  LDR.W           R1, =(unk_793AF4 - 0x2DD57E)
2DD56E:  MOV.W           R10, #0
2DD572:  LDR.W           R3, =(dword_7948FC - 0x2DD584)
2DD576:  LDRSH.W         R2, [R9]
2DD57A:  ADD             R1, PC; unk_793AF4
2DD57C:  VLDR            S0, [R11]
2DD580:  ADD             R3, PC; dword_7948FC
2DD582:  VLDR            S2, [R11,#4]
2DD586:  ADD.W           R2, R2, R2,LSL#2
2DD58A:  VLDR            S4, [R11,#8]
2DD58E:  VLDR            S6, [R11,#0xC]
2DD592:  ADD.W           R1, R1, R2,LSL#2
2DD596:  VLDR            S8, [R11,#0x10]
2DD59A:  VLDR            S10, [R11,#0x14]
2DD59E:  ADDS            R1, #8
2DD5A0:  MOVS            R2, #0
2DD5A2:  VLDR            S12, [R1,#4]
2DD5A6:  VLDR            S14, [R1,#-8]
2DD5AA:  VADD.F32        S1, S14, S12
2DD5AE:  VCMPE.F32       S1, S0
2DD5B2:  VMRS            APSR_nzcv, FPSCR
2DD5B6:  BLT             loc_2DD614
2DD5B8:  VSUB.F32        S14, S14, S12
2DD5BC:  VCMPE.F32       S14, S6
2DD5C0:  VMRS            APSR_nzcv, FPSCR
2DD5C4:  BGT             loc_2DD614
2DD5C6:  VLDR            S14, [R1,#-4]
2DD5CA:  VADD.F32        S1, S12, S14
2DD5CE:  VCMPE.F32       S1, S2
2DD5D2:  VMRS            APSR_nzcv, FPSCR
2DD5D6:  BLT             loc_2DD614
2DD5D8:  VSUB.F32        S14, S14, S12
2DD5DC:  VCMPE.F32       S14, S8
2DD5E0:  VMRS            APSR_nzcv, FPSCR
2DD5E4:  BGT             loc_2DD614
2DD5E6:  VLDR            S14, [R1]
2DD5EA:  VADD.F32        S1, S12, S14
2DD5EE:  VCMPE.F32       S1, S4
2DD5F2:  VMRS            APSR_nzcv, FPSCR
2DD5F6:  BLT             loc_2DD614
2DD5F8:  VSUB.F32        S12, S14, S12
2DD5FC:  VCMPE.F32       S12, S10
2DD600:  VMRS            APSR_nzcv, FPSCR
2DD604:  BGT             loc_2DD614
2DD606:  ADD.W           R10, R10, #1
2DD60A:  CMP             R6, #0x7E ; '~'
2DD60C:  STR.W           R2, [R3,R6,LSL#2]
2DD610:  BGT             loc_2DD622
2DD612:  ADDS            R6, #1
2DD614:  ADDS            R2, #1
2DD616:  ADDS            R1, #0x14
2DD618:  CMP             R2, R0
2DD61A:  BLT             loc_2DD5A2
2DD61C:  B               loc_2DD622
2DD61E:  MOV.W           R10, #0
2DD622:  LDRSH.W         R0, [R9,#2]
2DD626:  CMP             R0, #1
2DD628:  BLT             loc_2DD6BC
2DD62A:  LDR.W           R1, [R9,#0xC]
2DD62E:  MOVS            R6, #0
2DD630:  LDR.W           R3, =(dword_794BFC - 0x2DD63E)
2DD634:  MOVS            R2, #0
2DD636:  ADDS            R1, #0xC
2DD638:  STR             R6, [SP,#0x140+var_100]
2DD63A:  ADD             R3, PC; dword_794BFC
2DD63C:  VLDR            S0, [R1,#-0xC]
2DD640:  VCMPE.F32       S16, S0
2DD644:  VMRS            APSR_nzcv, FPSCR
2DD648:  BLT             loc_2DD6A0
2DD64A:  VLDR            S0, [R1]
2DD64E:  VCMPE.F32       S18, S0
2DD652:  VMRS            APSR_nzcv, FPSCR
2DD656:  BGT             loc_2DD6A0
2DD658:  VLDR            S0, [R1,#-8]
2DD65C:  VCMPE.F32       S20, S0
2DD660:  VMRS            APSR_nzcv, FPSCR
2DD664:  BLT             loc_2DD6A0
2DD666:  VLDR            S0, [R1,#4]
2DD66A:  VCMPE.F32       S22, S0
2DD66E:  VMRS            APSR_nzcv, FPSCR
2DD672:  BGT             loc_2DD6A0
2DD674:  VLDR            S0, [R1,#-4]
2DD678:  VCMPE.F32       S24, S0
2DD67C:  VMRS            APSR_nzcv, FPSCR
2DD680:  BLT             loc_2DD6A0
2DD682:  VLDR            S0, [R1,#8]
2DD686:  VCMPE.F32       S26, S0
2DD68A:  VMRS            APSR_nzcv, FPSCR
2DD68E:  BGT             loc_2DD6A0
2DD690:  LDR             R5, [SP,#0x140+var_100]
2DD692:  CMP             R5, #0x3E ; '>'
2DD694:  ADD.W           R6, R5, #1
2DD698:  STR.W           R2, [R3,R5,LSL#2]
2DD69C:  STR             R6, [SP,#0x140+var_100]
2DD69E:  BGT             loc_2DD6C0
2DD6A0:  ADDS            R2, #1
2DD6A2:  ADDS            R1, #0x1C
2DD6A4:  CMP             R2, R0
2DD6A6:  BLT             loc_2DD63C
2DD6A8:  B               loc_2DD6C0
2DD6AA:  LDR             R1, [SP,#0x140+var_EC]
2DD6AC:  CMP             R1, #0
2DD6AE:  ITT EQ
2DD6B0:  LDRBEQ.W        R1, [R10,#6]
2DD6B4:  CMPEQ           R1, #0
2DD6B6:  BEQ.W           loc_2DDB3A
2DD6BA:  B               loc_2DD4CE
2DD6BC:  MOVS            R0, #0
2DD6BE:  STR             R0, [SP,#0x140+var_100]
2DD6C0:  MOV             R0, R9; this
2DD6C2:  BLX             j__ZN10CCollision23CalculateTrianglePlanesEP14CCollisionData; CCollision::CalculateTrianglePlanes(CCollisionData *)
2DD6C6:  LDRSH.W         R1, [R9,#4]
2DD6CA:  LDR.W           R0, [R9,#0x1C]
2DD6CE:  CMP             R1, #0
2DD6D0:  STR             R0, [SP,#0x140+var_108]
2DD6D2:  BEQ             loc_2DD72C
2DD6D4:  LDRB.W          R0, [R9,#7]
2DD6D8:  TST.W           R0, #2
2DD6DC:  BNE             loc_2DD732
2DD6DE:  CMP             R1, #1
2DD6E0:  BLT             loc_2DD72C
2DD6E2:  LDR.W           R8, =(dword_79565C - 0x2DD6F0)
2DD6E6:  ADD             R4, SP, #0x140+var_C0
2DD6E8:  LDR             R2, [SP,#0x140+var_D4]
2DD6EA:  MOVS            R0, #0
2DD6EC:  ADD             R8, PC; dword_79565C
2DD6EE:  MOVS            R5, #0
2DD6F0:  MOVW            R9, #0x255
2DD6F4:  MOVS            R6, #0
2DD6F6:  STR             R0, [SP,#0x140+var_F0]
2DD6F8:  LDRD.W          R1, R0, [R2,#0x14]
2DD6FC:  ADDS            R2, R0, R5
2DD6FE:  MOV             R0, R4
2DD700:  BLX             j__ZN10CCollision18TestSphereTriangleERK10CColSpherePK7CVectorRK12CColTriangleRK17CColTrianglePlane; CCollision::TestSphereTriangle(CColSphere const&,CVector const*,CColTriangle const&,CColTrianglePlane const&)
2DD704:  CMP             R0, #1
2DD706:  BNE             loc_2DD71C
2DD708:  LDR             R1, [SP,#0x140+var_F0]
2DD70A:  LDR             R2, [SP,#0x140+var_D4]
2DD70C:  CMP             R1, R9
2DD70E:  ADD.W           R0, R1, #1
2DD712:  STR.W           R6, [R8,R1,LSL#2]
2DD716:  STR             R0, [SP,#0x140+var_F0]
2DD718:  BLE             loc_2DD71E
2DD71A:  B               loc_2DD816
2DD71C:  LDR             R2, [SP,#0x140+var_D4]
2DD71E:  LDRSH.W         R0, [R2,#4]
2DD722:  ADDS            R6, #1
2DD724:  ADDS            R5, #0x10
2DD726:  CMP             R6, R0
2DD728:  BLT             loc_2DD6F8
2DD72A:  B               loc_2DD816
2DD72C:  MOVS            R0, #0
2DD72E:  STR             R0, [SP,#0x140+var_F0]
2DD730:  B               loc_2DD816
2DD732:  MOV             R8, R10
2DD734:  ADD.W           R10, SP, #0x140+var_C0
2DD738:  MOVS            R1, #0
2DD73A:  MOVW            R9, #0x255
2DD73E:  MOVS            R6, #0
2DD740:  STR             R1, [SP,#0x140+var_F0]
2DD742:  LSLS            R1, R0, #0x1E
2DD744:  BPL             loc_2DD80E
2DD746:  B               loc_2DD7F4
2DD748:  LDR             R1, [SP,#0x140+var_D4]
2DD74A:  MVNS            R2, R6
2DD74C:  RSB.W           R2, R2, R2,LSL#3
2DD750:  LDR             R1, [R1,#0x30]
2DD752:  ADD.W           R4, R1, R2,LSL#2
2DD756:  VLDR            S0, [R4]
2DD75A:  VCMPE.F32       S16, S0
2DD75E:  VMRS            APSR_nzcv, FPSCR
2DD762:  BLT             loc_2DD808
2DD764:  VLDR            S0, [R4,#0xC]
2DD768:  VCMPE.F32       S18, S0
2DD76C:  VMRS            APSR_nzcv, FPSCR
2DD770:  BGT             loc_2DD808
2DD772:  VLDR            S0, [R4,#4]
2DD776:  VCMPE.F32       S20, S0
2DD77A:  VMRS            APSR_nzcv, FPSCR
2DD77E:  BLT             loc_2DD808
2DD780:  VLDR            S0, [R4,#0x10]
2DD784:  VCMPE.F32       S22, S0
2DD788:  VMRS            APSR_nzcv, FPSCR
2DD78C:  BGT             loc_2DD808
2DD78E:  VLDR            S0, [R4,#8]
2DD792:  VCMPE.F32       S24, S0
2DD796:  VMRS            APSR_nzcv, FPSCR
2DD79A:  BLT             loc_2DD808
2DD79C:  VLDR            S0, [R4,#0x14]
2DD7A0:  VCMPE.F32       S26, S0
2DD7A4:  VMRS            APSR_nzcv, FPSCR
2DD7A8:  BGT             loc_2DD808
2DD7AA:  LDRSH.W         R2, [R4,#0x1A]!
2DD7AE:  LDRSH.W         R1, [R4,#-2]
2DD7B2:  CMP             R1, R2
2DD7B4:  BGT             loc_2DD808
2DD7B6:  SUB.W           R11, R1, #1
2DD7BA:  LSLS            R5, R1, #4
2DD7BC:  LDR             R0, [SP,#0x140+var_D4]
2DD7BE:  LDRD.W          R1, R0, [R0,#0x14]
2DD7C2:  ADDS            R2, R0, R5
2DD7C4:  MOV             R0, R10
2DD7C6:  BLX             j__ZN10CCollision18TestSphereTriangleERK10CColSpherePK7CVectorRK12CColTriangleRK17CColTrianglePlane; CCollision::TestSphereTriangle(CColSphere const&,CVector const*,CColTriangle const&,CColTrianglePlane const&)
2DD7CA:  ADD.W           R11, R11, #1
2DD7CE:  CMP             R0, #1
2DD7D0:  BNE             loc_2DD7E8
2DD7D2:  LDR.W           R0, =(dword_79565C - 0x2DD7DC)
2DD7D6:  LDR             R1, [SP,#0x140+var_F0]
2DD7D8:  ADD             R0, PC; dword_79565C
2DD7DA:  CMP             R1, R9
2DD7DC:  STR.W           R11, [R0,R1,LSL#2]
2DD7E0:  ADD.W           R0, R1, #1
2DD7E4:  STR             R0, [SP,#0x140+var_F0]
2DD7E6:  BGT             loc_2DD800
2DD7E8:  LDRSH.W         R0, [R4]
2DD7EC:  ADDS            R5, #0x10
2DD7EE:  CMP             R11, R0
2DD7F0:  BLT             loc_2DD7BC
2DD7F2:  B               loc_2DD800
2DD7F4:  LDR             R1, [SP,#0x140+var_D4]
2DD7F6:  LDR             R1, [R1,#0x30]
2DD7F8:  LDR             R1, [R1]
2DD7FA:  CMP             R6, R1
2DD7FC:  BLT             loc_2DD748
2DD7FE:  B               loc_2DD814
2DD800:  LDR             R0, [SP,#0x140+var_D4]
2DD802:  LDR.W           R11, [SP,#0x140+var_104]
2DD806:  LDRB            R0, [R0,#7]
2DD808:  ADDS            R6, #1
2DD80A:  LSLS            R1, R0, #0x1E
2DD80C:  BMI             loc_2DD7F4
2DD80E:  MOVS            R1, #0
2DD810:  CMP             R6, R1
2DD812:  BLT             loc_2DD748
2DD814:  MOV             R10, R8
2DD816:  LDR             R0, [SP,#0x140+var_EC]
2DD818:  LDR             R1, [SP,#0x140+var_100]
2DD81A:  ORRS            R0, R1
2DD81C:  LDR             R1, [SP,#0x140+var_F0]
2DD81E:  ORRS            R0, R1
2DD820:  BEQ.W           loc_2DDB3A
2DD824:  LDR             R0, [R7,#arg_0]
2DD826:  MOVS            R1, #0xBF800000
2DD82C:  STR.W           R10, [SP,#0x140+var_110]
2DD830:  MOV.W           R12, #0
2DD834:  STR             R1, [R0,#0x28]
2DD836:  LDR             R0, [SP,#0x140+var_FC]
2DD838:  CMP             R0, #1
2DD83A:  BLT.W           loc_2DDAA8
2DD83E:  LDR.W           R9, [SP,#0x140+var_D4]
2DD842:  MOVS            R6, #0
2DD844:  LDR             R0, [SP,#0x140+var_E4]
2DD846:  LDR             R0, [R0,#8]
2DD848:  STR             R0, [SP,#0x140+var_F4]
2DD84A:  LDR.W           R0, =(unk_7946FC - 0x2DD852)
2DD84E:  ADD             R0, PC; unk_7946FC
2DD850:  LDR.W           R0, [R0,R6,LSL#2]
2DD854:  STR             R0, [SP,#0x140+var_F8]
2DD856:  MOV             R0, #0x6753C21C
2DD85E:  STR             R0, [SP,#0x140+var_A8]
2DD860:  LDR             R0, [SP,#0x140+var_EC]
2DD862:  CMP             R0, #1
2DD864:  BLT             loc_2DD8F6
2DD866:  MOVS            R2, #0x2C ; ','
2DD868:  LDR             R1, [R7,#arg_0]
2DD86A:  MLA.W           R8, R12, R2, R1
2DD86E:  LDR.W           R5, =(dword_7948FC - 0x2DD87A)
2DD872:  MOV.W           R11, #0
2DD876:  ADD             R5, PC; dword_7948FC
2DD878:  MOV             R4, R0
2DD87A:  MOV             R10, R12
2DD87C:  LDRSH.W         R1, [R9]
2DD880:  LDR             R0, [R5]
2DD882:  CMP             R0, R1
2DD884:  BGE             loc_2DD8A8
2DD886:  LDR.W           R1, =(unk_7946FC - 0x2DD892)
2DD88A:  ADD.W           R0, R0, R0,LSL#2
2DD88E:  ADD             R1, PC; unk_7946FC
2DD890:  LDR.W           R2, [R1,R6,LSL#2]
2DD894:  LDR.W           R1, [R9,#8]
2DD898:  ADD.W           R1, R1, R0,LSL#2
2DD89C:  ADD.W           R0, R2, R2,LSL#2
2DD8A0:  LDR.W           R2, =(unk_7930F0 - 0x2DD8A8)
2DD8A4:  ADD             R2, PC; unk_7930F0
2DD8A6:  B               loc_2DD8DA
2DD8A8:  LDRB.W          R2, [R9,#7]
2DD8AC:  LSLS            R2, R2, #0x1F
2DD8AE:  ITT NE
2DD8B0:  LDRBNE.W        R2, [R9,#6]
2DD8B4:  CMPNE           R2, #0
2DD8B6:  BEQ             loc_2DD8EC
2DD8B8:  LDR.W           R2, =(unk_7946FC - 0x2DD8C6)
2DD8BC:  SUBS            R0, R0, R1
2DD8BE:  LDR.W           R1, [R9,#0x10]
2DD8C2:  ADD             R2, PC; unk_7946FC
2DD8C4:  ADD.W           R0, R0, R0,LSL#3
2DD8C8:  LDR.W           R2, [R2,R6,LSL#2]
2DD8CC:  ADD.W           R1, R1, R0,LSL#2
2DD8D0:  ADD.W           R0, R2, R2,LSL#2
2DD8D4:  LDR.W           R2, =(unk_7930F0 - 0x2DD8DC)
2DD8D8:  ADD             R2, PC; unk_7930F0
2DD8DA:  ADD.W           R0, R2, R0,LSL#2
2DD8DE:  ADD             R3, SP, #0x140+var_A8
2DD8E0:  MOV             R2, R8
2DD8E2:  BLX             j__ZN10CCollision19ProcessSphereSphereERK10CColSphereS2_R9CColPointRf; CCollision::ProcessSphereSphere(CColSphere const&,CColSphere const&,CColPoint &,float &)
2DD8E6:  ORR.W           R11, R11, R0
2DD8EA:  MOV             R12, R10
2DD8EC:  SUBS            R4, #1
2DD8EE:  ADD.W           R5, R5, #4
2DD8F2:  BNE             loc_2DD87C
2DD8F4:  B               loc_2DD8FA
2DD8F6:  MOV.W           R11, #0
2DD8FA:  LDR             R1, [SP,#0x140+var_100]
2DD8FC:  STR             R6, [SP,#0x140+var_D8]
2DD8FE:  CMP             R1, #1
2DD900:  BLT             loc_2DD9B4
2DD902:  LDR             R0, [SP,#0x140+var_F8]
2DD904:  MOV             R5, R1
2DD906:  LDR             R2, [SP,#0x140+var_F4]
2DD908:  LDR.W           R4, =(dword_794BFC - 0x2DD914)
2DD90C:  ADD.W           R0, R0, R0,LSL#2
2DD910:  ADD             R4, PC; dword_794BFC
2DD912:  ADD.W           R0, R2, R0,LSL#2
2DD916:  ADD.W           R8, R0, #0x10
2DD91A:  ADD.W           R2, R0, #0x11
2DD91E:  STR             R2, [SP,#0x140+var_E8]
2DD920:  LDR.W           R1, =(unk_7946FC - 0x2DD92E)
2DD924:  MOVS            R3, #0x2C ; ','
2DD926:  LDR             R0, [R4]
2DD928:  MOV             R10, R12
2DD92A:  ADD             R1, PC; unk_7946FC
2DD92C:  LDR.W           R2, [R1,R6,LSL#2]
2DD930:  RSB.W           R0, R0, R0,LSL#3
2DD934:  LDR             R1, [R7,#arg_0]
2DD936:  MLA.W           R6, R12, R3, R1
2DD93A:  LDR.W           R1, [R9,#0xC]
2DD93E:  ADD             R3, SP, #0x140+var_A8
2DD940:  ADD.W           R1, R1, R0,LSL#2
2DD944:  ADD.W           R0, R2, R2,LSL#2
2DD948:  LDR.W           R2, =(unk_7930F0 - 0x2DD950)
2DD94C:  ADD             R2, PC; unk_7930F0
2DD94E:  ADD.W           R0, R2, R0,LSL#2
2DD952:  MOV             R2, R6
2DD954:  BLX             j__ZN10CCollision16ProcessSphereBoxERK10CColSphereRK7CColBoxR9CColPointRf; CCollision::ProcessSphereBox(CColSphere const&,CColBox const&,CColPoint &,float &)
2DD958:  CMP             R0, #1
2DD95A:  BNE             loc_2DD9A8
2DD95C:  LDRB.W          R0, [R8,#2]
2DD960:  MOV.W           R11, #1
2DD964:  LDRH.W          R1, [R8]
2DD968:  STRB.W          R0, [R6,#0x22]
2DD96C:  LDR             R0, [R7,#arg_C]
2DD96E:  STRH            R1, [R6,#0x20]
2DD970:  CBZ             R0, loc_2DD9A8
2DD972:  MOV             R12, R10
2DD974:  CMP.W           R12, #0x1E
2DD978:  BGT             loc_2DD9AA
2DD97A:  LDR             R0, [SP,#0x140+var_E8]
2DD97C:  LDR             R6, [SP,#0x140+var_D8]
2DD97E:  LDRB            R0, [R0]
2DD980:  CMP             R0, #2
2DD982:  BHI             loc_2DD9AC
2DD984:  ADD.W           R12, R12, #1
2DD988:  LDR             R0, [R7,#arg_0]
2DD98A:  MOVS            R1, #0x2C ; ','
2DD98C:  MOV.W           R11, #0
2DD990:  MLA.W           R0, R12, R1, R0
2DD994:  MOV             R1, #0x6753C21C
2DD99C:  STR             R1, [SP,#0x140+var_A8]
2DD99E:  MOVS            R1, #0xBF800000
2DD9A4:  STR             R1, [R0,#0x28]
2DD9A6:  B               loc_2DD9AC
2DD9A8:  MOV             R12, R10
2DD9AA:  LDR             R6, [SP,#0x140+var_D8]
2DD9AC:  SUBS            R5, #1
2DD9AE:  ADD.W           R4, R4, #4
2DD9B2:  BNE             loc_2DD920
2DD9B4:  LDR             R1, [SP,#0x140+var_F0]
2DD9B6:  CMP             R1, #1
2DD9B8:  BLT             loc_2DDA6C
2DD9BA:  LDR             R0, [SP,#0x140+var_F8]
2DD9BC:  MOV             R8, R1
2DD9BE:  LDR.W           R9, =(dword_79565C - 0x2DD9CC)
2DD9C2:  LDR             R2, [SP,#0x140+var_F4]
2DD9C4:  ADD.W           R0, R0, R0,LSL#2
2DD9C8:  ADD             R9, PC; dword_79565C
2DD9CA:  ADD.W           R0, R2, R0,LSL#2
2DD9CE:  ADDS            R0, #0x11
2DD9D0:  STR             R0, [SP,#0x140+var_E8]
2DD9D2:  LDR             R2, [SP,#0x140+var_D4]
2DD9D4:  MOV             R10, R12
2DD9D6:  LDRD.W          R1, R0, [R2,#0x14]
2DD9DA:  LDR             R3, [R2,#0x1C]
2DD9DC:  LDR.W           R2, =(unk_7946FC - 0x2DD9E8)
2DD9E0:  LDR.W           R5, [R9]
2DD9E4:  ADD             R2, PC; unk_7946FC
2DD9E6:  LDR.W           R4, [R2,R6,LSL#2]
2DD9EA:  MOVS            R6, #0x2C ; ','
2DD9EC:  LDR             R2, [R7,#arg_0]
2DD9EE:  MLA.W           R2, R12, R6, R2
2DD9F2:  LDR.W           R6, =(unk_7930F0 - 0x2DD9FA)
2DD9F6:  ADD             R6, PC; unk_7930F0
2DD9F8:  STR             R2, [SP,#0x140+var_140]
2DD9FA:  ADD             R2, SP, #0x140+var_A8
2DD9FC:  STR             R2, [SP,#0x140+var_13C]
2DD9FE:  ADD.W           R2, R0, R5,LSL#4
2DDA02:  ADD.W           R0, R5, R5,LSL#2
2DDA06:  ADD.W           R3, R3, R0,LSL#2
2DDA0A:  ADD.W           R0, R4, R4,LSL#2
2DDA0E:  ADD.W           R0, R6, R0,LSL#2
2DDA12:  BLX             j__ZN10CCollision21ProcessSphereTriangleERK10CColSpherePK7CVectorRK12CColTriangleRK17CColTrianglePlaneR9CColPointRf; CCollision::ProcessSphereTriangle(CColSphere const&,CVector const*,CColTriangle const&,CColTrianglePlane const&,CColPoint &,float &)
2DDA16:  CMP             R0, #1
2DDA18:  ORR.W           R11, R11, R0
2DDA1C:  ITT EQ
2DDA1E:  LDREQ           R0, [R7,#arg_C]
2DDA20:  CMPEQ           R0, #1
2DDA22:  BEQ             loc_2DDA2A
2DDA24:  MOV             R12, R10
2DDA26:  LDR             R6, [SP,#0x140+var_D8]
2DDA28:  B               loc_2DDA62
2DDA2A:  MOV             R12, R10
2DDA2C:  MOV.W           R11, #1
2DDA30:  CMP.W           R12, #0x1E
2DDA34:  BGT             loc_2DDA26
2DDA36:  LDR             R0, [SP,#0x140+var_E8]
2DDA38:  LDR             R6, [SP,#0x140+var_D8]
2DDA3A:  LDRB            R0, [R0]
2DDA3C:  CMP             R0, #2
2DDA3E:  BHI             loc_2DDA62
2DDA40:  ADD.W           R12, R12, #1
2DDA44:  LDR             R0, [R7,#arg_0]
2DDA46:  MOVS            R1, #0x2C ; ','
2DDA48:  MOV.W           R11, #0
2DDA4C:  MLA.W           R0, R12, R1, R0
2DDA50:  MOV             R1, #0x6753C21C
2DDA58:  STR             R1, [SP,#0x140+var_A8]
2DDA5A:  MOVS            R1, #0xBF800000
2DDA60:  STR             R1, [R0,#0x28]
2DDA62:  SUBS.W          R8, R8, #1
2DDA66:  ADD.W           R9, R9, #4
2DDA6A:  BNE             loc_2DD9D2
2DDA6C:  MOVS.W          R0, R11,LSL#31
2DDA70:  BEQ             loc_2DDA96
2DDA72:  LDR.W           R9, [SP,#0x140+var_D4]
2DDA76:  CMP.W           R12, #0x1E
2DDA7A:  LDR.W           R11, [SP,#0x140+var_104]
2DDA7E:  BGT             loc_2DDAA8
2DDA80:  ADD.W           R12, R12, #1
2DDA84:  LDR             R0, [R7,#arg_0]
2DDA86:  MOVS            R1, #0x2C ; ','
2DDA88:  MLA.W           R0, R12, R1, R0
2DDA8C:  MOVS            R1, #0xBF800000
2DDA92:  STR             R1, [R0,#0x28]
2DDA94:  B               loc_2DDA9E
2DDA96:  LDR.W           R9, [SP,#0x140+var_D4]
2DDA9A:  LDR.W           R11, [SP,#0x140+var_104]
2DDA9E:  LDR             R0, [SP,#0x140+var_FC]
2DDAA0:  ADDS            R6, #1
2DDAA2:  CMP             R6, R0
2DDAA4:  BLT.W           loc_2DD844
2DDAA8:  LDR.W           R10, [SP,#0x140+var_E4]
2DDAAC:  LDR             R6, [R7,#arg_8]
2DDAAE:  LDRB.W          R1, [R10,#7]
2DDAB2:  LDRSB.W         R0, [R10,#6]
2DDAB6:  LSLS            R1, R1, #0x1F
2DDAB8:  BNE             loc_2DDB4C
2DDABA:  CMP             R0, #1
2DDABC:  BLT.W           loc_2DE3D6
2DDAC0:  LDR.W           R8, =(unk_79600C - 0x2DDAD2)
2DDAC4:  ADD.W           R11, SP, #0x140+var_A8
2DDAC8:  LDR.W           R9, =(unk_7944F8 - 0x2DDAD6)
2DDACC:  MOVS            R4, #0
2DDACE:  ADD             R8, PC; unk_79600C
2DDAD0:  MOVS            R6, #0
2DDAD2:  ADD             R9, PC; unk_7944F8
2DDAD4:  STR.W           R12, [SP,#0x140+var_E8]
2DDAD8:  LDR.W           R0, [R10,#0x10]
2DDADC:  MOV             R1, R8
2DDADE:  ADDS            R2, R0, R4
2DDAE0:  MOV             R0, R11
2DDAE2:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DDAE6:  VLDR            D16, [SP,#0x140+var_A8]
2DDAEA:  ADD.W           R5, R9, R4
2DDAEE:  LDR             R0, [SP,#0x140+var_A0]
2DDAF0:  MOV             R1, R8
2DDAF2:  STR             R0, [R5,#8]
2DDAF4:  VSTR            D16, [R5]
2DDAF8:  LDR.W           R0, [R10,#0x10]
2DDAFC:  ADD             R0, R4
2DDAFE:  ADD.W           R2, R0, #0x10
2DDB02:  MOV             R0, R11
2DDB04:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DDB08:  VLDR            D16, [SP,#0x140+var_A8]
2DDB0C:  ADDS            R4, #0x20 ; ' '
2DDB0E:  LDR             R0, [SP,#0x140+var_A0]
2DDB10:  ADDS            R6, #1
2DDB12:  STR             R0, [R5,#0x18]
2DDB14:  VSTR            D16, [R5,#0x10]
2DDB18:  LDRSB.W         R0, [R10,#6]
2DDB1C:  CMP             R6, R0
2DDB1E:  BLT             loc_2DDAD8
2DDB20:  LDR.W           R11, [SP,#0x140+var_104]
2DDB24:  UXTB            R1, R0
2DDB26:  SXTB            R2, R1
2DDB28:  CMP             R2, #1
2DDB2A:  BLT.W           loc_2DDDFC
2DDB2E:  LDR.W           R12, [SP,#0x140+var_E8]
2DDB32:  CMP             R1, #3
2DDB34:  BHI             loc_2DDC18
2DDB36:  LDR             R6, [R7,#arg_8]
2DDB38:  B               loc_2DDC46
2DDB3A:  MOVS            R4, #0
2DDB3C:  MOV             R0, R4
2DDB3E:  ADD             SP, SP, #0xE0
2DDB40:  VPOP            {D8-D15}
2DDB44:  ADD             SP, SP, #4
2DDB46:  POP.W           {R8-R11}
2DDB4A:  POP             {R4-R7,PC}
2DDB4C:  CMP             R0, #1
2DDB4E:  BLT.W           loc_2DE3D6
2DDB52:  MOVS            R0, #0
2DDB54:  MOVS            R1, #8
2DDB56:  LDR.W           R2, [R10,#0x10]
2DDB5A:  LDR.W           R3, [R6,R0,LSL#2]
2DDB5E:  ADDS            R0, #1
2DDB60:  STR             R3, [R2,R1]
2DDB62:  ADDS            R1, #0x24 ; '$'
2DDB64:  LDRSB.W         R2, [R10,#6]
2DDB68:  CMP             R0, R2
2DDB6A:  BLT             loc_2DDB56
2DDB6C:  CMP             R2, #1
2DDB6E:  BLT.W           loc_2DE3D6
2DDB72:  LDR.W           R4, =(unk_7930F0 - 0x2DDB84)
2DDB76:  ADD.W           R9, SP, #0x140+var_A8
2DDB7A:  LDR.W           R8, =(unk_79600C - 0x2DDB88)
2DDB7E:  MOVS            R5, #0
2DDB80:  ADD             R4, PC; unk_7930F0
2DDB82:  MOVS            R6, #0xC
2DDB84:  ADD             R8, PC; unk_79600C
2DDB86:  STR.W           R12, [SP,#0x140+var_E8]
2DDB8A:  LDR.W           R0, [R10,#0x10]
2DDB8E:  MOV             R1, R8
2DDB90:  LDR             R0, [R0,R6]
2DDB92:  STR             R0, [R4,#0xC]
2DDB94:  LDR.W           R0, [R10,#0x10]
2DDB98:  ADD             R0, R6
2DDB9A:  SUB.W           R2, R0, #0xC
2DDB9E:  MOV             R0, R9
2DDBA0:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DDBA4:  VLDR            D16, [SP,#0x140+var_A8]
2DDBA8:  ADDS            R5, #1
2DDBAA:  LDR             R0, [SP,#0x140+var_A0]
2DDBAC:  STR             R0, [R4,#8]
2DDBAE:  VSTR            D16, [R4]
2DDBB2:  LDR.W           R0, [R10,#0x10]
2DDBB6:  ADD             R0, R6
2DDBB8:  ADDS            R6, #0x24 ; '$'
2DDBBA:  LDRB            R1, [R0,#6]
2DDBBC:  LDRH            R0, [R0,#4]
2DDBBE:  STRB            R1, [R4,#0x12]
2DDBC0:  STRH            R0, [R4,#0x10]
2DDBC2:  ADDS            R4, #0x14
2DDBC4:  LDRSB.W         R0, [R10,#6]
2DDBC8:  CMP             R5, R0
2DDBCA:  BLT             loc_2DDB8A
2DDBCC:  CMP             R0, #1
2DDBCE:  BLT.W           loc_2DDDFC
2DDBD2:  VMOV.F32        S18, #0.5
2DDBD6:  LDR.W           R5, =(unk_795FFC - 0x2DDBE8)
2DDBDA:  LDR.W           R4, =(unk_7930F0 - 0x2DDBEE)
2DDBDE:  ADD             R0, SP, #0x140+var_A8
2DDBE0:  LDR.W           LR, =(unk_7930F0 - 0x2DDBF0)
2DDBE4:  ADD             R5, PC; unk_795FFC
2DDBE6:  LDR.W           R12, [SP,#0x140+var_E8]
2DDBEA:  ADD             R4, PC; unk_7930F0
2DDBEC:  ADD             LR, PC; unk_7930F0
2DDBEE:  VLDR            S16, =1.0e24
2DDBF2:  VLDR            S20, =0.35
2DDBF6:  MOVS            R3, #0
2DDBF8:  VLDR            S22, =0.3
2DDBFC:  MOV.W           R9, #0x2C ; ','
2DDC00:  VLDR            S24, =0.9
2DDC04:  MOV.W           R8, #0
2DDC08:  ADDS            R0, #0x10
2DDC0A:  STR             R0, [SP,#0x140+var_120]
2DDC0C:  B               loc_2DE318
2DDC0E:  MOV.W           R10, #0
2DDC12:  LDR.W           R9, [SP,#0x140+var_D4]
2DDC16:  B               loc_2DD622
2DDC18:  LDR             R6, [R7,#arg_8]
2DDC1A:  BIC.W           R3, R0, #3
2DDC1E:  CBZ             R3, loc_2DDC46
2DDC20:  LDR.W           R1, =(unk_795FBC - 0x2DDC34)
2DDC24:  ADR.W           R2, dword_2DE810
2DDC28:  VMOV.I32        Q9, #4
2DDC2C:  VLD1.64         {D16-D17}, [R2@128]
2DDC30:  ADD             R1, PC; unk_795FBC
2DDC32:  MOV             R2, R3
2DDC34:  VST1.32         {D16-D17}, [R1]!
2DDC38:  VADD.I32        Q8, Q8, Q9
2DDC3C:  SUBS            R2, #4
2DDC3E:  BNE             loc_2DDC34
2DDC40:  CMP             R3, R0
2DDC42:  BEQ             loc_2DDC58
2DDC44:  B               loc_2DDC48
2DDC46:  MOVS            R3, #0
2DDC48:  LDR.W           R1, =(unk_795FBC - 0x2DDC50)
2DDC4C:  ADD             R1, PC; unk_795FBC
2DDC4E:  STR.W           R3, [R1,R3,LSL#2]
2DDC52:  ADDS            R3, #1
2DDC54:  CMP             R3, R0
2DDC56:  BLT             loc_2DDC4E
2DDC58:  SUBS            R0, R3, #1
2DDC5A:  CMP             R0, #0
2DDC5C:  BLT.W           loc_2DDE02
2DDC60:  LDR.W           R11, =(unk_7944F8 - 0x2DDC74)
2DDC64:  MOV.W           R8, #0x2C ; ','
2DDC68:  MOV.W           R10, #1
2DDC6C:  MOV.W           R9, #0
2DDC70:  ADD             R11, PC; unk_7944F8
2DDC72:  STR             R3, [SP,#0x140+var_D8]
2DDC74:  LDR.W           R1, =(unk_795FFC - 0x2DDC7E)
2DDC78:  MOVS            R0, #0
2DDC7A:  ADD             R1, PC; unk_795FFC
2DDC7C:  STRB.W          R0, [R1,R9]
2DDC80:  LDR             R0, [SP,#0x140+var_EC]
2DDC82:  CMP             R0, #1
2DDC84:  BLT             loc_2DDCD4
2DDC86:  LDR.W           R5, =(dword_7948FC - 0x2DDC90)
2DDC8A:  LDR             R4, [SP,#0x140+var_EC]
2DDC8C:  ADD             R5, PC; dword_7948FC
2DDC8E:  LDR.W           R0, =(unk_795FBC - 0x2DDC98)
2DDC92:  LDR             R1, [SP,#0x140+var_D4]
2DDC94:  ADD             R0, PC; unk_795FBC
2DDC96:  LDR             R2, [R7,#arg_4]
2DDC98:  LDR.W           R3, [R0,R9,LSL#2]
2DDC9C:  LDR             R0, [R5]
2DDC9E:  LDR             R1, [R1,#8]
2DDCA0:  MLA.W           R2, R3, R8, R2
2DDCA4:  ADD.W           R0, R0, R0,LSL#2
2DDCA8:  ADD.W           R1, R1, R0,LSL#2
2DDCAC:  LDR.W           R0, =(unk_7944F8 - 0x2DDCB4)
2DDCB0:  ADD             R0, PC; unk_7944F8
2DDCB2:  ADD.W           R0, R0, R3,LSL#5
2DDCB6:  ADD.W           R3, R6, R3,LSL#2
2DDCBA:  BLX             j__ZN10CCollision17ProcessLineSphereERK8CColLineRK10CColSphereR9CColPointRf; CCollision::ProcessLineSphere(CColLine const&,CColSphere const&,CColPoint &,float &)
2DDCBE:  CMP             R0, #1
2DDCC0:  BNE             loc_2DDCCC
2DDCC2:  LDR.W           R0, =(unk_795FFC - 0x2DDCCA)
2DDCC6:  ADD             R0, PC; unk_795FFC
2DDCC8:  STRB.W          R10, [R0,R9]
2DDCCC:  SUBS            R4, #1
2DDCCE:  ADD.W           R5, R5, #4
2DDCD2:  BNE             loc_2DDC8E
2DDCD4:  LDR             R0, [SP,#0x140+var_100]
2DDCD6:  CMP             R0, #1
2DDCD8:  BLT             loc_2DDD28
2DDCDA:  LDR.W           R5, =(dword_794BFC - 0x2DDCE4)
2DDCDE:  LDR             R4, [SP,#0x140+var_100]
2DDCE0:  ADD             R5, PC; dword_794BFC
2DDCE2:  LDR.W           R0, =(unk_795FBC - 0x2DDCEC)
2DDCE6:  LDR             R1, [SP,#0x140+var_D4]
2DDCE8:  ADD             R0, PC; unk_795FBC
2DDCEA:  LDR             R2, [R7,#arg_4]
2DDCEC:  LDR.W           R3, [R0,R9,LSL#2]
2DDCF0:  LDR             R0, [R5]
2DDCF2:  LDR             R1, [R1,#0xC]
2DDCF4:  MLA.W           R2, R3, R8, R2
2DDCF8:  RSB.W           R0, R0, R0,LSL#3
2DDCFC:  ADD.W           R1, R1, R0,LSL#2
2DDD00:  LDR.W           R0, =(unk_7944F8 - 0x2DDD08)
2DDD04:  ADD             R0, PC; unk_7944F8
2DDD06:  ADD.W           R0, R0, R3,LSL#5
2DDD0A:  ADD.W           R3, R6, R3,LSL#2
2DDD0E:  BLX             j__ZN10CCollision14ProcessLineBoxERK8CColLineRK7CColBoxR9CColPointRf; CCollision::ProcessLineBox(CColLine const&,CColBox const&,CColPoint &,float &)
2DDD12:  CMP             R0, #1
2DDD14:  BNE             loc_2DDD20
2DDD16:  LDR.W           R0, =(unk_795FFC - 0x2DDD1E)
2DDD1A:  ADD             R0, PC; unk_795FFC
2DDD1C:  STRB.W          R10, [R0,R9]
2DDD20:  SUBS            R4, #1
2DDD22:  ADD.W           R5, R5, #4
2DDD26:  BNE             loc_2DDCE2
2DDD28:  LDR             R0, [SP,#0x140+var_F0]
2DDD2A:  CMP             R0, #1
2DDD2C:  BLT             loc_2DDD8A
2DDD2E:  LDR.W           R5, =(dword_79565C - 0x2DDD38)
2DDD32:  LDR             R4, [SP,#0x140+var_F0]
2DDD34:  ADD             R5, PC; dword_79565C
2DDD36:  LDR             R0, [SP,#0x140+var_D4]
2DDD38:  LDR             R2, [R7,#arg_4]
2DDD3A:  LDRD.W          R1, LR, [R0,#0x14]
2DDD3E:  LDR.W           R12, [R0,#0x1C]
2DDD42:  LDR.W           R0, =(unk_795FBC - 0x2DDD4C)
2DDD46:  LDR             R6, [R5]
2DDD48:  ADD             R0, PC; unk_795FBC
2DDD4A:  LDR.W           R0, [R0,R9,LSL#2]
2DDD4E:  MLA.W           R3, R0, R8, R2
2DDD52:  LDR             R2, [R7,#arg_8]
2DDD54:  ADD.W           R2, R2, R0,LSL#2
2DDD58:  ADD.W           R0, R11, R0,LSL#5
2DDD5C:  STRD.W          R3, R2, [SP,#0x140+var_140]
2DDD60:  ADD.W           R3, R6, R6,LSL#2
2DDD64:  MOVS            R2, #0
2DDD66:  STR             R2, [SP,#0x140+var_138]
2DDD68:  ADD.W           R2, LR, R6,LSL#4
2DDD6C:  ADD.W           R3, R12, R3,LSL#2
2DDD70:  BLX             j__ZN10CCollision19ProcessLineTriangleERK8CColLinePK7CVectorRK12CColTriangleRK17CColTrianglePlaneR9CColPointRfP15CStoredCollPoly; CCollision::ProcessLineTriangle(CColLine const&,CVector const*,CColTriangle const&,CColTrianglePlane const&,CColPoint &,float &,CStoredCollPoly *)
2DDD74:  CMP             R0, #1
2DDD76:  BNE             loc_2DDD82
2DDD78:  LDR.W           R0, =(unk_795FFC - 0x2DDD80)
2DDD7C:  ADD             R0, PC; unk_795FFC
2DDD7E:  STRB.W          R10, [R0,R9]
2DDD82:  SUBS            R4, #1
2DDD84:  ADD.W           R5, R5, #4
2DDD88:  BNE             loc_2DDD36
2DDD8A:  LDR.W           R0, =(unk_795FFC - 0x2DDD92)
2DDD8E:  ADD             R0, PC; unk_795FFC
2DDD90:  LDRB.W          R0, [R0,R9]
2DDD94:  CBZ             R0, loc_2DDDE6
2DDD96:  LDR.W           R0, =(unk_795FBC - 0x2DDDA0)
2DDD9A:  LDR             R1, [R7,#arg_4]
2DDD9C:  ADD             R0, PC; unk_795FBC
2DDD9E:  LDR             R5, [SP,#0x140+var_E0]
2DDDA0:  LDR.W           R0, [R0,R9,LSL#2]
2DDDA4:  MOV             R4, R1
2DDDA6:  MOV             R1, R5
2DDDA8:  MLA.W           R6, R0, R8, R4
2DDDAC:  ADD             R0, SP, #0x140+var_A8
2DDDAE:  MOV             R2, R6
2DDDB0:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DDDB4:  LDR             R0, [SP,#0x140+var_A0]
2DDDB6:  MOV             R1, R5; CVector *
2DDDB8:  VLDR            D16, [SP,#0x140+var_A8]
2DDDBC:  STR             R0, [R6,#8]
2DDDBE:  LDR.W           R0, =(unk_795FBC - 0x2DDDCA)
2DDDC2:  VSTR            D16, [R6]
2DDDC6:  ADD             R0, PC; unk_795FBC
2DDDC8:  LDR.W           R0, [R0,R9,LSL#2]
2DDDCC:  MLA.W           R4, R0, R8, R4
2DDDD0:  ADD             R0, SP, #0x140+var_A8; CMatrix *
2DDDD2:  ADD.W           R2, R4, #0x10
2DDDD6:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
2DDDDA:  VLDR            D16, [SP,#0x140+var_A8]
2DDDDE:  LDR             R0, [SP,#0x140+var_A0]
2DDDE0:  STR             R0, [R4,#0x18]
2DDDE2:  VSTR            D16, [R4,#0x10]
2DDDE6:  LDR             R3, [SP,#0x140+var_D8]
2DDDE8:  ADD.W           R9, R9, #1
2DDDEC:  LDR             R6, [R7,#arg_8]
2DDDEE:  CMP             R9, R3
2DDDF0:  BNE.W           loc_2DDC74
2DDDF4:  LDR.W           R10, [SP,#0x140+var_E4]
2DDDF8:  LDR.W           R11, [SP,#0x140+var_104]
2DDDFC:  LDR.W           R12, [SP,#0x140+var_E8]
2DDE00:  B               loc_2DE3D6
2DDE02:  LDR.W           R10, [SP,#0x140+var_E4]
2DDE06:  LDR.W           R11, [SP,#0x140+var_104]
2DDE0A:  B               loc_2DE3D6
2DDE0C:  DCD byte_793AF0 - 0x2DD03E
2DDE10:  DCD byte_793AF0 - 0x2DD052
2DDE14:  DCD byte_793AF0 - 0x2DD05E
2DDE18:  DCD byte_7944F4 - 0x2DD068
2DDE1C:  DCD byte_7944F4 - 0x2DD07A
2DDE20:  DCD byte_7944F4 - 0x2DD086
2DDE24:  DCD byte_7946F8 - 0x2DD090
2DDE28:  DCD byte_7946F8 - 0x2DD0A2
2DDE2C:  DCD byte_7946F8 - 0x2DD0AE
2DDE30:  DCD byte_796054 - 0x2DD0B8
2DDE34:  DCD byte_796054 - 0x2DD0CA
2DDE38:  DCD _ZN7CMatrixD2Ev_ptr_0 - 0x2DD0DC
2DDE3C:  DCD unk_79600C - 0x2DD0E2
2DDE40:  DCD unk_67A000 - 0x2DD0E6
2DDE44:  DCD byte_796054 - 0x2DD0F4
2DDE48:  DCD byte_7960A0 - 0x2DD0FE
2DDE4C:  DCD byte_7960A0 - 0x2DD110
2DDE50:  DCD _ZN7CMatrixD2Ev_ptr_0 - 0x2DD122
2DDE54:  DCD unk_796058 - 0x2DD128
2DDE58:  DCD unk_67A000 - 0x2DD12C
2DDE5C:  DCD byte_7960A0 - 0x2DD13A
2DDE60:  DCD unk_79600C - 0x2DD160
2DDE64:  DCD unk_796058 - 0x2DD23A
2DDE68:  DCD unk_7930F0 - 0x2DD28C
2DDE6C:  DCD unk_79600C - 0x2DD290
2DDE70:  DCD unk_7930F0 - 0x2DD2EA
2DDE74:  DCD unk_7946FC - 0x2DD2FA
2DDE78:  DCD unk_793AF4 - 0x2DD3B6
2DDE7C:  DCD unk_796058 - 0x2DD3BA
2DDE80:  DCD unk_793AF4 - 0x2DD414
2DDE84:  DCD dword_7948FC - 0x2DD424
2DDE88:  DCD unk_793AF4 - 0x2DD4F4
2DDE8C:  DCD unk_796058 - 0x2DD4F8
2DDE90:  DCD unk_793AF4 - 0x2DD57E
2DDE94:  DCD dword_7948FC - 0x2DD584
2DDE98:  DCD dword_794BFC - 0x2DD63E
2DDE9C:  DCD dword_79565C - 0x2DD6F0
2DDEA0:  DCD dword_79565C - 0x2DD7DC
2DDEA4:  DCD unk_7946FC - 0x2DD852
2DDEA8:  DCD dword_7948FC - 0x2DD87A
2DDEAC:  DCD unk_7946FC - 0x2DD892
2DDEB0:  DCD unk_7930F0 - 0x2DD8A8
2DDEB4:  DCD unk_7946FC - 0x2DD8C6
2DDEB8:  DCD unk_7930F0 - 0x2DD8DC
2DDEBC:  DCFS 1.0e24
2DDEC0:  DCFS 0.35
2DDEC4:  DCFS 0.3
2DDEC8:  DCFS 0.9
2DDECC:  ADD.W           R0, R5, R8
2DDED0:  STR.W           R12, [SP,#0x140+var_E8]
2DDED4:  STR             R0, [SP,#0x140+var_F8]
2DDED6:  LDR.W           R0, [R10,#0x10]
2DDEDA:  STR             R0, [SP,#0x140+var_134]
2DDEDC:  MOV             R0, #0x6753C21C
2DDEE4:  STR             R0, [SP,#0x140+var_C4]
2DDEE6:  LDR             R0, [SP,#0x140+var_EC]
2DDEE8:  CMP             R0, #1
2DDEEA:  BLT             loc_2DDFE2
2DDEEC:  LDR             R0, [R7,#arg_4]
2DDEEE:  MOVS            R1, #0x2C ; ','
2DDEF0:  MLA.W           R0, R8, R1, R0
2DDEF4:  LDR.W           R5, =(dword_7948FC - 0x2DDEFE)
2DDEF8:  LDR             R4, [SP,#0x140+var_EC]
2DDEFA:  ADD             R5, PC; dword_7948FC
2DDEFC:  STR             R0, [SP,#0x140+var_11C]
2DDEFE:  ADD.W           R1, R0, #0x20 ; ' '
2DDF02:  ADDS            R0, #0x28 ; '('
2DDF04:  STR             R0, [SP,#0x140+var_128]
2DDF06:  LDR             R0, [SP,#0x140+var_D8]
2DDF08:  STR             R1, [SP,#0x140+var_124]
2DDF0A:  ADD.W           R1, R8, R8,LSL#3
2DDF0E:  ADDS            R0, #0x10
2DDF10:  STR             R0, [SP,#0x140+var_FC]
2DDF12:  LDR             R0, [R7,#arg_8]
2DDF14:  STR             R1, [SP,#0x140+var_114]
2DDF16:  ADD.W           R0, R0, R8,LSL#2
2DDF1A:  STR             R0, [SP,#0x140+var_F4]
2DDF1C:  LDR             R0, [SP,#0x140+var_134]
2DDF1E:  ADD.W           R0, R0, R1,LSL#2
2DDF22:  ADDS            R0, #0x10
2DDF24:  STR             R0, [SP,#0x140+var_12C]
2DDF26:  LDR             R0, [R5]
2DDF28:  ADD             R3, SP, #0x140+var_C4
2DDF2A:  LDR             R1, [SP,#0x140+var_D4]
2DDF2C:  LDR             R2, [SP,#0x140+var_D8]
2DDF2E:  ADD.W           R0, R0, R0,LSL#2
2DDF32:  LDR             R1, [R1,#8]
2DDF34:  ADD.W           R1, R1, R0,LSL#2
2DDF38:  MOV             R0, R11
2DDF3A:  BLX             j__ZN10CCollision19ProcessSphereSphereERK10CColSphereS2_R9CColPointRf; CCollision::ProcessSphereSphere(CColSphere const&,CColSphere const&,CColPoint &,float &)
2DDF3E:  CMP             R0, #1
2DDF40:  BNE             loc_2DDFDA
2DDF42:  LDR.W           R9, =(unk_796058 - 0x2DDF50)
2DDF46:  ADD.W           R10, SP, #0x140+var_A8
2DDF4A:  LDR             R2, [SP,#0x140+var_D8]
2DDF4C:  ADD             R9, PC; unk_796058
2DDF4E:  MOV             R0, R10
2DDF50:  MOV             R1, R9
2DDF52:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DDF56:  MOV             R0, R10
2DDF58:  LDR             R2, [SP,#0x140+var_FC]
2DDF5A:  VLD1.32         {D13}, [R0@64]!
2DDF5E:  MOV             R1, R9; CVector *
2DDF60:  VLDR            S28, [R0]
2DDF64:  MOV             R0, R10; CMatrix *
2DDF66:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
2DDF6A:  LDR             R0, [SP,#0x140+var_E4]
2DDF6C:  LDR             R1, [SP,#0x140+var_114]
2DDF6E:  LDR             R0, [R0,#0x10]
2DDF70:  ADD.W           R0, R0, R1,LSL#2
2DDF74:  VLDR            D16, [R0]
2DDF78:  VSUB.F32        D16, D13, D16
2DDF7C:  VLDR            S0, [R0,#0xC]
2DDF80:  LDR             R0, [SP,#0x140+var_F4]
2DDF82:  VMUL.F32        S0, S0, S0
2DDF86:  VMUL.F32        D1, D16, D16
2DDF8A:  VSUB.F32        S0, S0, S3
2DDF8E:  VSUB.F32        S0, S0, S2
2DDF92:  VLDR            S2, [R0]
2DDF96:  VSQRT.F32       S0, S0
2DDF9A:  VADD.F32        S0, S28, S0
2DDF9E:  VCMPE.F32       S0, S2
2DDFA2:  VMRS            APSR_nzcv, FPSCR
2DDFA6:  BLT             loc_2DDFD0
2DDFA8:  LDR             R1, [SP,#0x140+var_F8]
2DDFAA:  MOVS            R0, #1
2DDFAC:  STRB            R0, [R1]
2DDFAE:  LDR             R0, [SP,#0x140+var_F4]
2DDFB0:  VSTR            S0, [R0]
2DDFB4:  LDR             R0, [SP,#0x140+var_11C]
2DDFB6:  LDR             R1, [SP,#0x140+var_D8]
2DDFB8:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
2DDFBC:  LDR             R1, [SP,#0x140+var_128]
2DDFBE:  LDR             R0, [R6]
2DDFC0:  STR             R0, [R1]
2DDFC2:  LDR             R0, [SP,#0x140+var_12C]
2DDFC4:  LDR             R2, [SP,#0x140+var_124]
2DDFC6:  MOV             R1, R0
2DDFC8:  LDRH            R0, [R1]
2DDFCA:  LDRB            R1, [R1,#2]
2DDFCC:  STRB            R1, [R2,#2]
2DDFCE:  STRH            R0, [R2]
2DDFD0:  MOV             R0, #0x6753C21C
2DDFD8:  STR             R0, [SP,#0x140+var_C4]
2DDFDA:  SUBS            R4, #1
2DDFDC:  ADD.W           R5, R5, #4
2DDFE0:  BNE             loc_2DDF26
2DDFE2:  LDR             R1, [SP,#0x140+var_100]
2DDFE4:  CMP             R1, #1
2DDFE6:  BLT.W           loc_2DE188
2DDFEA:  MOVS            R2, #0x2C ; ','
2DDFEC:  LDR             R0, [R7,#arg_4]
2DDFEE:  MLA.W           R2, R8, R2, R0
2DDFF2:  VMOV.F32        S26, S16
2DDFF6:  LDR.W           R10, =(dword_794BFC - 0x2DE004)
2DDFFA:  MOVW            R5, #0xC21C
2DDFFE:  MOV             R9, R1
2DE000:  ADD             R10, PC; dword_794BFC
2DE002:  MOVT            R5, #0x6753
2DE006:  STR             R2, [SP,#0x140+var_12C]
2DE008:  ADD.W           R0, R2, #0x20 ; ' '
2DE00C:  STR             R0, [SP,#0x140+var_130]
2DE00E:  LDR             R0, [SP,#0x140+var_D8]
2DE010:  STR.W           R11, [SP,#0x140+var_118]
2DE014:  ADD.W           R3, R0, #0x20 ; ' '
2DE018:  ADDS            R0, #0x10
2DE01A:  STR             R0, [SP,#0x140+var_FC]
2DE01C:  LDR             R0, [R7,#arg_8]
2DE01E:  STR             R3, [SP,#0x140+var_128]
2DE020:  ADD.W           R0, R0, R8,LSL#2
2DE024:  STR             R0, [SP,#0x140+var_11C]
2DE026:  ADD.W           R0, R8, R8,LSL#3
2DE02A:  LDR             R3, [SP,#0x140+var_134]
2DE02C:  STR             R0, [SP,#0x140+var_114]
2DE02E:  ADD.W           R0, R3, R0,LSL#2
2DE032:  ADDS            R0, #0x10
2DE034:  STR             R0, [SP,#0x140+var_124]
2DE036:  MOVS            R0, #0
2DE038:  STR             R0, [SP,#0x140+var_F4]
2DE03A:  ADD.W           R0, R2, #0x28 ; '('
2DE03E:  STR             R0, [SP,#0x140+var_134]
2DE040:  LDR.W           R0, [R10]
2DE044:  ADD             R3, SP, #0x140+var_C4
2DE046:  LDR             R1, [SP,#0x140+var_D4]
2DE048:  LDR             R4, [SP,#0x140+var_D8]
2DE04A:  RSB.W           R0, R0, R0,LSL#3
2DE04E:  LDR             R1, [R1,#0xC]
2DE050:  MOV             R2, R4
2DE052:  ADD.W           R1, R1, R0,LSL#2
2DE056:  MOV             R0, R11
2DE058:  BLX             j__ZN10CCollision16ProcessSphereBoxERK10CColSphereRK7CColBoxR9CColPointRf; CCollision::ProcessSphereBox(CColSphere const&,CColBox const&,CColPoint &,float &)
2DE05C:  CMP             R0, #1
2DE05E:  BNE.W           loc_2DE178
2DE062:  LDR.W           R5, =(unk_796058 - 0x2DE070)
2DE066:  ADD.W           R11, SP, #0x140+var_A8
2DE06A:  MOV             R2, R4
2DE06C:  ADD             R5, PC; unk_796058
2DE06E:  MOV             R0, R11
2DE070:  MOV             R1, R5
2DE072:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DE076:  MOV             R0, R11
2DE078:  LDR             R2, [SP,#0x140+var_FC]
2DE07A:  VLD1.32         {D15}, [R0@64]!
2DE07E:  MOV             R1, R5; CVector *
2DE080:  VLDR            S28, [R0]
2DE084:  MOV             R0, R11; CMatrix *
2DE086:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
2DE08A:  VLDR            S0, [SP,#0x140+var_A0]
2DE08E:  VCMPE.F32       S0, S18
2DE092:  VMRS            APSR_nzcv, FPSCR
2DE096:  BLE             loc_2DE0F2
2DE098:  LDR             R0, [SP,#0x140+var_E4]
2DE09A:  LDR             R1, [SP,#0x140+var_114]
2DE09C:  LDR             R0, [R0,#0x10]
2DE09E:  ADD.W           R0, R0, R1,LSL#2
2DE0A2:  VLDR            S0, [R0,#8]
2DE0A6:  VCMPE.F32       S28, S0
2DE0AA:  VMRS            APSR_nzcv, FPSCR
2DE0AE:  BGE             loc_2DE0F2
2DE0B0:  VLDR            D16, [R0]
2DE0B4:  MOVW            R5, #0xC21C
2DE0B8:  VSUB.F32        D16, D15, D16
2DE0BC:  VLDR            S2, [R0,#0xC]
2DE0C0:  LDR             R0, [SP,#0x140+var_11C]
2DE0C2:  MOVT            R5, #0x6753
2DE0C6:  VMUL.F32        S0, S2, S2
2DE0CA:  VMUL.F32        D2, D16, D16
2DE0CE:  VSUB.F32        S0, S0, S5
2DE0D2:  VSUB.F32        S0, S0, S4
2DE0D6:  VLDR            S4, [R0]
2DE0DA:  VSQRT.F32       S0, S0
2DE0DE:  VADD.F32        S0, S28, S0
2DE0E2:  VCMPE.F32       S0, S4
2DE0E6:  VMRS            APSR_nzcv, FPSCR
2DE0EA:  BGE             loc_2DE124
2DE0EC:  LDR.W           R11, [SP,#0x140+var_118]
2DE0F0:  B               loc_2DE178
2DE0F2:  VLDR            S0, [SP,#0x140+var_C4]
2DE0F6:  MOVW            R5, #0xC21C
2DE0FA:  LDR.W           R11, [SP,#0x140+var_118]
2DE0FE:  MOVT            R5, #0x6753
2DE102:  VCMPE.F32       S0, S26
2DE106:  VMRS            APSR_nzcv, FPSCR
2DE10A:  BGE             loc_2DE178
2DE10C:  VMOV.F32        S26, S0
2DE110:  LDR             R0, [SP,#0x140+var_124]
2DE112:  LDR             R2, [SP,#0x140+var_128]
2DE114:  MOV             R1, R0
2DE116:  LDRH            R0, [R1]
2DE118:  LDRB            R1, [R1,#2]
2DE11A:  STRB            R1, [R2,#2]
2DE11C:  STRH            R0, [R2]
2DE11E:  MOVS            R0, #1
2DE120:  STR             R0, [SP,#0x140+var_F4]
2DE122:  B               loc_2DE178
2DE124:  VSUB.F32        S4, S0, S4
2DE128:  LDR.W           R11, [SP,#0x140+var_118]
2DE12C:  VMUL.F32        S2, S2, S20
2DE130:  VCMPE.F32       S4, S2
2DE134:  VMRS            APSR_nzcv, FPSCR
2DE138:  BLE             loc_2DE150
2DE13A:  LDR             R0, [SP,#0x140+var_124]
2DE13C:  LDR             R2, [SP,#0x140+var_128]
2DE13E:  VLDR            S26, [SP,#0x140+var_C4]
2DE142:  MOV             R1, R0
2DE144:  LDRH            R0, [R1]
2DE146:  LDRB            R1, [R1,#2]
2DE148:  STRB            R1, [R2,#2]
2DE14A:  STRH            R0, [R2]
2DE14C:  MOVS            R0, #1
2DE14E:  STR             R0, [SP,#0x140+var_F4]
2DE150:  LDR             R1, [SP,#0x140+var_F8]
2DE152:  MOVS            R0, #1
2DE154:  STRB            R0, [R1]
2DE156:  LDR             R0, [SP,#0x140+var_11C]
2DE158:  VSTR            S0, [R0]
2DE15C:  LDR             R0, [SP,#0x140+var_12C]
2DE15E:  LDR             R1, [SP,#0x140+var_D8]
2DE160:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
2DE164:  LDR             R1, [SP,#0x140+var_134]
2DE166:  LDR             R0, [R6]
2DE168:  STR             R0, [R1]
2DE16A:  LDR             R0, [SP,#0x140+var_124]
2DE16C:  LDR             R2, [SP,#0x140+var_130]
2DE16E:  MOV             R1, R0
2DE170:  LDRH            R0, [R1]
2DE172:  LDRB            R1, [R1,#2]
2DE174:  STRB            R1, [R2,#2]
2DE176:  STRH            R0, [R2]
2DE178:  SUBS.W          R9, R9, #1
2DE17C:  ADD.W           R10, R10, #4
2DE180:  STR             R5, [SP,#0x140+var_C4]
2DE182:  BNE.W           loc_2DE040
2DE186:  B               loc_2DE18C
2DE188:  MOVS            R0, #0
2DE18A:  STR             R0, [SP,#0x140+var_F4]
2DE18C:  LDR             R1, [SP,#0x140+var_D8]
2DE18E:  MOV             R0, R1
2DE190:  VLD1.32         {D16-D17}, [R0]!
2DE194:  VLD1.32         {D18-D19}, [R0]
2DE198:  ADD.W           R0, R1, #0x1C
2DE19C:  VLD1.32         {D20-D21}, [R0]
2DE1A0:  ADD             R0, SP, #0x140+var_A8
2DE1A2:  MOV             R1, R0
2DE1A4:  ADD.W           R0, R1, #0x1C
2DE1A8:  VST1.32         {D20-D21}, [R0]
2DE1AC:  MOV             R0, R1
2DE1AE:  VST1.64         {D16-D17}, [R0]!
2DE1B2:  VST1.64         {D18-D19}, [R0]
2DE1B6:  LDR             R0, [SP,#0x140+var_F0]
2DE1B8:  CMP             R0, #1
2DE1BA:  BLT             loc_2DE276
2DE1BC:  MOVS            R2, #0x2C ; ','
2DE1BE:  LDR             R1, [R7,#arg_4]
2DE1C0:  MLA.W           R9, R8, R2, R1
2DE1C4:  LDR.W           R5, =(dword_79565C - 0x2DE1CE)
2DE1C8:  LDR             R1, [R7,#arg_8]
2DE1CA:  ADD             R5, PC; dword_79565C
2DE1CC:  MOV             R4, R0
2DE1CE:  ADD.W           R10, R1, R8,LSL#2
2DE1D2:  MOVS            R0, #0
2DE1D4:  LDR             R2, [SP,#0x140+var_D4]
2DE1D6:  MOVT            R0, #0xBF80
2DE1DA:  STR             R0, [SP,#0x140+var_80]
2DE1DC:  LDRD.W          R1, R0, [R2,#0x14]
2DE1E0:  LDR             R6, [R5]
2DE1E2:  LDR             R3, [R2,#0x1C]
2DE1E4:  ADD             R2, SP, #0x140+var_A8
2DE1E6:  STR             R2, [SP,#0x140+var_140]
2DE1E8:  ADD             R2, SP, #0x140+var_C4
2DE1EA:  STR             R2, [SP,#0x140+var_13C]
2DE1EC:  ADD.W           R2, R0, R6,LSL#4
2DE1F0:  ADD.W           R0, R6, R6,LSL#2
2DE1F4:  ADD.W           R3, R3, R0,LSL#2
2DE1F8:  MOV             R0, R11
2DE1FA:  BLX             j__ZN10CCollision21ProcessSphereTriangleERK10CColSpherePK7CVectorRK12CColTriangleRK17CColTrianglePlaneR9CColPointRf; CCollision::ProcessSphereTriangle(CColSphere const&,CVector const*,CColTriangle const&,CColTrianglePlane const&,CColPoint &,float &)
2DE1FE:  CMP             R0, #1
2DE200:  BNE             loc_2DE26A
2DE202:  LDR             R0, [R5]
2DE204:  LDR             R1, [SP,#0x140+var_108]
2DE206:  LDR             R2, [SP,#0x140+var_E0]
2DE208:  ADD.W           R0, R0, R0,LSL#2
2DE20C:  ADD.W           R1, R1, R0,LSL#2
2DE210:  VLDR            S0, [R1,#8]
2DE214:  VCMPE.F32       S0, S22
2DE218:  VMRS            APSR_nzcv, FPSCR
2DE21C:  BLE             loc_2DE240
2DE21E:  VLDR            S2, [R2,#0x28]
2DE222:  VCMPE.F32       S2, S24
2DE226:  VMRS            APSR_nzcv, FPSCR
2DE22A:  ITTTT GT
2DE22C:  LDRGT           R2, [SP,#0x140+var_108]
2DE22E:  LDRGT.W         R0, [R2,R0,LSL#2]
2DE232:  LDRGT           R1, [R1,#4]
2DE234:  LDRGT           R2, [SP,#0x140+var_120]
2DE236:  ITT GT
2DE238:  STRDGT.W        R0, R1, [R2]
2DE23C:  VSTRGT          S0, [SP,#0x140+var_90]
2DE240:  LDR             R0, [SP,#0x140+var_E4]
2DE242:  LDR             R1, [SP,#0x140+var_F8]
2DE244:  LDR             R0, [R0,#0x10]
2DE246:  STRD.W          R1, R10, [SP,#0x140+var_140]
2DE24A:  ADD.W           R1, R8, R8,LSL#3
2DE24E:  LDR             R3, [SP,#0x140+var_D8]
2DE250:  ADD.W           R2, R0, R1,LSL#2
2DE254:  LDR.W           R1, =(unk_796058 - 0x2DE262)
2DE258:  ADD             R0, SP, #0x140+var_A8
2DE25A:  STR.W           R9, [SP,#0x140+var_138]
2DE25E:  ADD             R1, PC; unk_796058
2DE260:  BLX             j__Z20ProcessDiscCollisionR9CColPointRK7CMatrixRK8CColDiskS0_RbRfS0_; ProcessDiscCollision(CColPoint &,CMatrix const&,CColDisk const&,CColPoint &,bool &,float &,CColPoint &)
2DE264:  LDR             R1, [SP,#0x140+var_F4]
2DE266:  ORRS            R1, R0
2DE268:  STR             R1, [SP,#0x140+var_F4]
2DE26A:  LDR             R2, [R7,#arg_8]
2DE26C:  SUBS            R4, #1
2DE26E:  ADD.W           R5, R5, #4
2DE272:  BNE             loc_2DE1D2
2DE274:  B               loc_2DE278
2DE276:  LDR             R2, [R7,#arg_8]
2DE278:  LDR.W           R12, [SP,#0x140+var_E8]
2DE27C:  CMP.W           R12, #0x1E
2DE280:  BGT             loc_2DE2A8
2DE282:  LDR             R0, [SP,#0x140+var_F4]
2DE284:  MOV.W           R9, #0x2C ; ','
2DE288:  LDR.W           R10, [SP,#0x140+var_E4]
2DE28C:  LDR.W           R11, [SP,#0x140+var_104]
2DE290:  LSLS            R0, R0, #0x1F
2DE292:  BEQ             loc_2DE2B4
2DE294:  ADD.W           R12, R12, #1
2DE298:  LDR             R0, [R7,#arg_0]
2DE29A:  MOVS            R1, #0
2DE29C:  MLA.W           R0, R12, R9, R0
2DE2A0:  MOVT            R1, #0xBF80
2DE2A4:  STR             R1, [R0,#0x28]
2DE2A6:  B               loc_2DE2B4
2DE2A8:  LDR.W           R10, [SP,#0x140+var_E4]
2DE2AC:  MOV.W           R9, #0x2C ; ','
2DE2B0:  LDR.W           R11, [SP,#0x140+var_104]
2DE2B4:  LDR             R0, [SP,#0x140+var_F8]
2DE2B6:  LDRB            R0, [R0]
2DE2B8:  CBZ             R0, loc_2DE2F6
2DE2BA:  LDR             R0, [R7,#arg_4]
2DE2BC:  MLA.W           R6, R8, R9, R0
2DE2C0:  LDR             R5, [SP,#0x140+var_E0]
2DE2C2:  ADD             R0, SP, #0x140+var_D0
2DE2C4:  MOV             R4, R12
2DE2C6:  MOV             R1, R5
2DE2C8:  MOV             R2, R6
2DE2CA:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DE2CE:  LDR             R0, [SP,#0x140+var_C8]
2DE2D0:  ADD.W           R2, R6, #0x10
2DE2D4:  VLDR            D16, [SP,#0x140+var_D0]
2DE2D8:  MOV             R1, R5; CVector *
2DE2DA:  STR             R0, [R6,#8]
2DE2DC:  ADD             R0, SP, #0x140+var_D0; CMatrix *
2DE2DE:  VSTR            D16, [R6]
2DE2E2:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
2DE2E6:  VLDR            D16, [SP,#0x140+var_D0]
2DE2EA:  MOV             R12, R4
2DE2EC:  LDR             R0, [SP,#0x140+var_C8]
2DE2EE:  STR             R0, [R6,#0x18]
2DE2F0:  VSTR            D16, [R6,#0x10]
2DE2F4:  B               loc_2DE302
2DE2F6:  MOV             R0, #0xCCBEBC20
2DE2FE:  STR.W           R0, [R2,R8,LSL#2]
2DE302:  LDR.W           R5, =(unk_795FFC - 0x2DE314)
2DE306:  MOVS            R3, #0
2DE308:  LDR.W           R4, =(unk_7930F0 - 0x2DE316)
2DE30C:  LDR.W           LR, =(unk_7930F0 - 0x2DE318)
2DE310:  ADD             R5, PC; unk_795FFC
2DE312:  ADD             R4, PC; unk_7930F0
2DE314:  ADD             LR, PC; unk_7930F0
2DE316:  B               loc_2DE3CA
2DE318:  LDR             R0, [R7,#arg_0]
2DE31A:  MLA.W           R1, R12, R9, R0
2DE31E:  MOVS            R0, #0xBF800000
2DE324:  STRB.W          R3, [R5,R8]
2DE328:  MOV             R6, R1
2DE32A:  STR.W           R0, [R6,#0x28]!
2DE32E:  ADD.W           R0, R8, R8,LSL#2
2DE332:  LDR             R2, [SP,#0x140+var_DC]
2DE334:  ADD.W           R11, R4, R0,LSL#2
2DE338:  VLDR            S2, [R11]
2DE33C:  VLDR            S0, [R11,#0xC]
2DE340:  VLDR            S6, [R2]
2DE344:  VADD.F32        S4, S2, S0
2DE348:  VCMPE.F32       S4, S6
2DE34C:  VMRS            APSR_nzcv, FPSCR
2DE350:  BLT             loc_2DE3C6
2DE352:  VSUB.F32        S2, S2, S0
2DE356:  VLDR            S4, [R2,#0xC]
2DE35A:  VCMPE.F32       S2, S4
2DE35E:  VMRS            APSR_nzcv, FPSCR
2DE362:  BGT             loc_2DE3C6
2DE364:  STR             R1, [SP,#0x140+var_D8]
2DE366:  ADD.W           R1, LR, R0,LSL#2
2DE36A:  VLDR            S6, [R2,#4]
2DE36E:  VLDR            S2, [R1,#4]
2DE372:  VADD.F32        S4, S0, S2
2DE376:  VCMPE.F32       S4, S6
2DE37A:  VMRS            APSR_nzcv, FPSCR
2DE37E:  BLT             loc_2DE3C6
2DE380:  VSUB.F32        S2, S2, S0
2DE384:  VLDR            S4, [R2,#0x10]
2DE388:  VCMPE.F32       S2, S4
2DE38C:  VMRS            APSR_nzcv, FPSCR
2DE390:  BGT             loc_2DE3C6
2DE392:  LDR.W           R1, =(unk_7930F0 - 0x2DE39E)
2DE396:  VLDR            S6, [R2,#8]
2DE39A:  ADD             R1, PC; unk_7930F0
2DE39C:  ADD.W           R0, R1, R0,LSL#2
2DE3A0:  VLDR            S2, [R0,#8]
2DE3A4:  VADD.F32        S4, S0, S2
2DE3A8:  VCMPE.F32       S4, S6
2DE3AC:  VMRS            APSR_nzcv, FPSCR
2DE3B0:  BLT             loc_2DE3C6
2DE3B2:  VSUB.F32        S0, S2, S0
2DE3B6:  VLDR            S2, [R2,#0x14]
2DE3BA:  VCMPE.F32       S0, S2
2DE3BE:  VMRS            APSR_nzcv, FPSCR
2DE3C2:  BLE.W           loc_2DDECC
2DE3C6:  LDR.W           R11, [SP,#0x140+var_104]
2DE3CA:  LDRSB.W         R0, [R10,#6]
2DE3CE:  ADD.W           R8, R8, #1
2DE3D2:  CMP             R8, R0
2DE3D4:  BLT             loc_2DE318
2DE3D6:  LDR             R5, [SP,#0x140+var_E0]
2DE3D8:  MOV             R9, R12
2DE3DA:  CMP.W           R12, #1
2DE3DE:  BLT             loc_2DE41E
2DE3E0:  LDR             R6, [R7,#arg_0]
2DE3E2:  ADD.W           R8, SP, #0x140+var_A8
2DE3E6:  MOV             R4, R9
2DE3E8:  MOV             R0, R8
2DE3EA:  MOV             R1, R5
2DE3EC:  MOV             R2, R6
2DE3EE:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DE3F2:  VLDR            D16, [SP,#0x140+var_A8]
2DE3F6:  ADD.W           R2, R6, #0x10
2DE3FA:  LDR             R0, [SP,#0x140+var_A0]
2DE3FC:  MOV             R1, R5; CVector *
2DE3FE:  STR             R0, [R6,#8]
2DE400:  MOV             R0, R8; CMatrix *
2DE402:  VSTR            D16, [R6]
2DE406:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
2DE40A:  VLDR            D16, [SP,#0x140+var_A8]
2DE40E:  SUBS            R4, #1
2DE410:  LDR             R0, [SP,#0x140+var_A0]
2DE412:  STR             R0, [R6,#0x18]
2DE414:  VSTR            D16, [R6,#0x10]
2DE418:  ADD.W           R6, R6, #0x2C ; ','
2DE41C:  BNE             loc_2DE3E8
2DE41E:  LDR             R0, [SP,#0x140+var_EC]
2DE420:  CMP             R0, #1
2DE422:  BLT             loc_2DE4BC
2DE424:  LDRH.W          R0, [R10,#4]
2DE428:  CMP             R0, #0
2DE42A:  ITT EQ
2DE42C:  LDRHEQ.W        R0, [R10,#2]
2DE430:  CMPEQ           R0, #0
2DE432:  BEQ             loc_2DE4BC
2DE434:  LDR             R0, [SP,#0x140+var_DC]
2DE436:  LDR.W           R1, =(unk_796058 - 0x2DE444)
2DE43A:  ADD.W           R2, R0, #0x18
2DE43E:  LDR             R6, [R0,#0x24]
2DE440:  ADD             R1, PC; unk_796058
2DE442:  ADD             R0, SP, #0x140+var_D0
2DE444:  STR             R6, [SP,#0x140+var_9C]
2DE446:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DE44A:  VLDR            D16, [SP,#0x140+var_D0]
2DE44E:  LDR             R0, [SP,#0x140+var_C8]
2DE450:  STR             R0, [SP,#0x140+var_A0]
2DE452:  VSTR            D16, [SP,#0x140+var_A8]
2DE456:  LDRH.W          R1, [R10,#4]; CCollisionData *
2DE45A:  CBZ             R1, loc_2DE4C2
2DE45C:  LDR.W           R0, [R11,#0x2C]; this
2DE460:  CBZ             R0, loc_2DE46A
2DE462:  BLX             j__ZN10CCollision23CalculateTrianglePlanesEP14CCollisionData; CCollision::CalculateTrianglePlanes(CCollisionData *)
2DE466:  LDRH.W          R1, [R10,#4]
2DE46A:  SXTH            R0, R1
2DE46C:  CMP             R0, #1
2DE46E:  BLT             loc_2DE4C8
2DE470:  LDR.W           R10, =(dword_794CFC - 0x2DE480)
2DE474:  ADD.W           R8, SP, #0x140+var_A8
2DE478:  LDR             R2, [SP,#0x140+var_E4]
2DE47A:  MOVS            R0, #0
2DE47C:  ADD             R10, PC; dword_794CFC
2DE47E:  MOVS            R4, #0
2DE480:  MOVW            R11, #0x255
2DE484:  MOVS            R5, #0
2DE486:  STR             R0, [SP,#0x140+var_E0]
2DE488:  LDRD.W          R1, R0, [R2,#0x14]
2DE48C:  ADDS            R2, R0, R4
2DE48E:  MOV             R0, R8
2DE490:  BLX             j__ZN10CCollision18TestSphereTriangleERK10CColSpherePK7CVectorRK12CColTriangleRK17CColTrianglePlane; CCollision::TestSphereTriangle(CColSphere const&,CVector const*,CColTriangle const&,CColTrianglePlane const&)
2DE494:  CMP             R0, #1
2DE496:  BNE             loc_2DE4AC
2DE498:  LDR             R1, [SP,#0x140+var_E0]
2DE49A:  LDR             R2, [SP,#0x140+var_E4]
2DE49C:  CMP             R1, R11
2DE49E:  ADD.W           R0, R1, #1
2DE4A2:  STR.W           R5, [R10,R1,LSL#2]
2DE4A6:  STR             R0, [SP,#0x140+var_E0]
2DE4A8:  BLE             loc_2DE4AE
2DE4AA:  B               loc_2DE4CE
2DE4AC:  LDR             R2, [SP,#0x140+var_E4]
2DE4AE:  LDRSH.W         R0, [R2,#4]
2DE4B2:  ADDS            R5, #1
2DE4B4:  ADDS            R4, #0x10
2DE4B6:  CMP             R5, R0
2DE4B8:  BLT             loc_2DE488
2DE4BA:  B               loc_2DE4CE
2DE4BC:  MOV             R4, R9
2DE4BE:  B.W             loc_2DDB3C
2DE4C2:  MOVS            R0, #0
2DE4C4:  MOV             R2, R10
2DE4C6:  B               loc_2DE4CC
2DE4C8:  MOVS            R0, #0
2DE4CA:  LDR             R2, [SP,#0x140+var_E4]
2DE4CC:  STR             R0, [SP,#0x140+var_E0]
2DE4CE:  LDRSH.W         R0, [R2,#2]
2DE4D2:  MOV             R10, R2
2DE4D4:  CMP             R0, #1
2DE4D6:  BLT             loc_2DE57C
2DE4D8:  VMOV            S10, R6
2DE4DC:  VLDR            S12, [SP,#0x140+var_A8]
2DE4E0:  VLDR            S6, [SP,#0x140+var_A8+4]
2DE4E4:  MOVS            R2, #0
2DE4E6:  VLDR            S2, [SP,#0x140+var_A0]
2DE4EA:  VSUB.F32        S8, S12, S10
2DE4EE:  VSUB.F32        S4, S6, S10
2DE4F2:  LDR.W           R1, [R10,#0xC]
2DE4F6:  VSUB.F32        S0, S2, S10
2DE4FA:  LDR             R5, =(unk_794AFC - 0x2DE512)
2DE4FC:  VADD.F32        S2, S2, S10
2DE500:  STR             R2, [SP,#0x140+var_D8]
2DE502:  VADD.F32        S6, S6, S10
2DE506:  LDR             R2, [SP,#0x140+var_E0]
2DE508:  VADD.F32        S10, S12, S10
2DE50C:  ADDS            R1, #0xC
2DE50E:  ADD             R5, PC; unk_794AFC
2DE510:  MOVS            R3, #0
2DE512:  MOV             R4, R9
2DE514:  VLDR            S12, [R1,#-0xC]
2DE518:  VCMPE.F32       S10, S12
2DE51C:  VMRS            APSR_nzcv, FPSCR
2DE520:  BLT             loc_2DE572
2DE522:  VLDR            S12, [R1]
2DE526:  VCMPE.F32       S8, S12
2DE52A:  VMRS            APSR_nzcv, FPSCR
2DE52E:  BGT             loc_2DE572
2DE530:  VLDR            S12, [R1,#-8]
2DE534:  VCMPE.F32       S6, S12
2DE538:  VMRS            APSR_nzcv, FPSCR
2DE53C:  BLT             loc_2DE572
2DE53E:  VLDR            S12, [R1,#4]
2DE542:  VCMPE.F32       S4, S12
2DE546:  VMRS            APSR_nzcv, FPSCR
2DE54A:  BGT             loc_2DE572
2DE54C:  VLDR            S12, [R1,#-4]
2DE550:  VCMPE.F32       S2, S12
2DE554:  VMRS            APSR_nzcv, FPSCR
2DE558:  BLT             loc_2DE572
2DE55A:  VLDR            S12, [R1,#8]
2DE55E:  VCMPE.F32       S0, S12
2DE562:  VMRS            APSR_nzcv, FPSCR
2DE566:  BGT             loc_2DE572
2DE568:  LDR             R6, [SP,#0x140+var_D8]
2DE56A:  STR.W           R3, [R5,R6,LSL#2]
2DE56E:  ADDS            R6, #1
2DE570:  STR             R6, [SP,#0x140+var_D8]
2DE572:  ADDS            R3, #1
2DE574:  ADDS            R1, #0x1C
2DE576:  CMP             R3, R0
2DE578:  BLT             loc_2DE514
2DE57A:  B               loc_2DE584
2DE57C:  MOVS            R0, #0
2DE57E:  MOV             R4, R9
2DE580:  STR             R0, [SP,#0x140+var_D8]
2DE582:  LDR             R2, [SP,#0x140+var_E0]
2DE584:  CMP             R2, #0
2DE586:  BEQ.W           loc_2DE68C
2DE58A:  MOVS            R1, #0x2C ; ','
2DE58C:  LDR             R0, [R7,#arg_0]
2DE58E:  MLA.W           R0, R4, R1, R0
2DE592:  MOVS            R1, #0xBF800000
2DE598:  STR             R1, [R0,#0x28]
2DE59A:  LDR             R0, [SP,#0x140+var_EC]
2DE59C:  LDR             R1, [SP,#0x140+var_110]
2DE59E:  SUBS            R3, R0, R1
2DE5A0:  CMP             R3, #1
2DE5A2:  MOV             R1, R3
2DE5A4:  STR             R1, [SP,#0x140+var_F0]
2DE5A6:  MOV.W           R1, #0
2DE5AA:  BLT             loc_2DE694
2DE5AC:  LDR.W           R12, =(dword_7948FC - 0x2DE5BC)
2DE5B0:  MOV.W           R11, #0
2DE5B4:  LDR.W           LR, =(unk_793AF4 - 0x2DE5C0)
2DE5B8:  ADD             R12, PC; dword_7948FC
2DE5BA:  STR             R1, [SP,#0x140+var_DC]
2DE5BC:  ADD             LR, PC; unk_793AF4
2DE5BE:  MOVW            R1, #0xC21C
2DE5C2:  CMP             R2, #1
2DE5C4:  MOVT            R1, #0x6753
2DE5C8:  STR             R1, [SP,#0x140+var_D0]
2DE5CA:  BLT             loc_2DE680
2DE5CC:  MOVS            R1, #0x2C ; ','
2DE5CE:  LDR             R0, [R7,#arg_0]
2DE5D0:  MLA.W           R8, R4, R1, R0
2DE5D4:  LDR.W           R10, =(dword_794CFC - 0x2DE5DE)
2DE5D8:  MOVS            R5, #0
2DE5DA:  ADD             R10, PC; dword_794CFC
2DE5DC:  MOV             R6, R2
2DE5DE:  STR             R4, [SP,#0x140+var_E8]
2DE5E0:  LDR             R0, [SP,#0x140+var_E4]
2DE5E2:  ADD             R3, SP, #0x140+var_D0
2DE5E4:  ADD.W           R9, R0, #0x14
2DE5E8:  LDM.W           R9, {R1,R2,R9}
2DE5EC:  LDR.W           R0, [R12,R11,LSL#2]
2DE5F0:  LDR.W           R4, [R10],#4
2DE5F4:  STR.W           R8, [SP,#0x140+var_140]
2DE5F8:  ADD.W           R0, R0, R0,LSL#2
2DE5FC:  STR             R3, [SP,#0x140+var_13C]
2DE5FE:  ADD.W           R2, R2, R4,LSL#4
2DE602:  ADD.W           R4, R4, R4,LSL#2
2DE606:  ADD.W           R0, LR, R0,LSL#2
2DE60A:  ADD.W           R3, R9, R4,LSL#2
2DE60E:  MOV             R9, R8
2DE610:  MOV             R8, R11
2DE612:  MOV             R4, R12
2DE614:  MOV             R11, LR
2DE616:  BLX             j__ZN10CCollision21ProcessSphereTriangleERK10CColSpherePK7CVectorRK12CColTriangleRK17CColTrianglePlaneR9CColPointRf; CCollision::ProcessSphereTriangle(CColSphere const&,CVector const*,CColTriangle const&,CColTrianglePlane const&,CColPoint &,float &)
2DE61A:  ORRS            R5, R0
2DE61C:  SUBS            R6, #1
2DE61E:  MOV             LR, R11
2DE620:  MOV             R11, R8
2DE622:  MOV             R8, R9
2DE624:  MOV             R12, R4
2DE626:  BNE             loc_2DE5E0
2DE628:  LSLS            R0, R5, #0x1F
2DE62A:  BEQ             loc_2DE676
2DE62C:  VLDR            S0, [R8,#0x10]
2DE630:  VLDR            S2, [R8,#0x14]
2DE634:  VLDR            S4, [R8,#0x18]
2DE638:  VNEG.F32        S0, S0
2DE63C:  VNEG.F32        S2, S2
2DE640:  VNEG.F32        S4, S4
2DE644:  VSTR            S0, [R8,#0x10]
2DE648:  VSTR            S2, [R8,#0x14]
2DE64C:  VSTR            S4, [R8,#0x18]
2DE650:  LDR             R4, [SP,#0x140+var_E8]
2DE652:  LDR.W           R10, [SP,#0x140+var_E4]
2DE656:  CMP             R4, #0x1E
2DE658:  BGT             loc_2DE690
2DE65A:  ADDS            R4, #1
2DE65C:  LDR             R0, [R7,#arg_0]
2DE65E:  MOVS            R1, #0x2C ; ','
2DE660:  MLA.W           R0, R4, R1, R0
2DE664:  MOVS            R1, #0xBF800000
2DE66A:  STR             R1, [R0,#0x28]
2DE66C:  LDR             R0, [SP,#0x140+var_DC]
2DE66E:  ADDS            R0, #1
2DE670:  STR             R0, [SP,#0x140+var_DC]
2DE672:  LDR             R0, [SP,#0x140+var_EC]
2DE674:  B               loc_2DE67E
2DE676:  ADD.W           R10, SP, #0x140+var_EC
2DE67A:  LDM.W           R10, {R0,R4,R10}
2DE67E:  LDR             R2, [SP,#0x140+var_E0]
2DE680:  LDR             R1, [SP,#0x140+var_F0]
2DE682:  ADD.W           R11, R11, #1
2DE686:  CMP             R11, R1
2DE688:  BLT             loc_2DE5BE
2DE68A:  B               loc_2DE696
2DE68C:  MOVS            R0, #0
2DE68E:  STR             R0, [SP,#0x140+var_DC]
2DE690:  LDR             R0, [SP,#0x140+var_EC]
2DE692:  B               loc_2DE696
2DE694:  STR             R1, [SP,#0x140+var_DC]
2DE696:  LDR             R1, [SP,#0x140+var_D8]
2DE698:  CMP             R1, #0
2DE69A:  BEQ             loc_2DE794
2DE69C:  LDR             R1, [SP,#0x140+var_110]
2DE69E:  SUBS            R1, R0, R1
2DE6A0:  CMP             R1, #1
2DE6A2:  MOV             R0, R1
2DE6A4:  STR             R0, [SP,#0x140+var_E0]
2DE6A6:  BLT             loc_2DE794
2DE6A8:  MOV.W           R11, #0
2DE6AC:  MOV.W           R9, #0x2C ; ','
2DE6B0:  MOV             R0, #0x6753C21C
2DE6B8:  STR             R0, [SP,#0x140+var_D0]
2DE6BA:  LDR             R0, [SP,#0x140+var_D8]
2DE6BC:  CMP             R0, #1
2DE6BE:  BLT             loc_2DE78A
2DE6C0:  LDR             R0, =(dword_7948FC - 0x2DE6CA)
2DE6C2:  MOVS            R5, #0
2DE6C4:  LDR             R1, [SP,#0x140+var_D4]
2DE6C6:  ADD             R0, PC; dword_7948FC
2DE6C8:  LDR.W           R0, [R0,R11,LSL#2]
2DE6CC:  LDR             R1, [R1,#8]
2DE6CE:  ADD.W           R2, R0, R0,LSL#2
2DE6D2:  ADD.W           R1, R1, R2,LSL#2
2DE6D6:  ADD.W           R8, R1, #0x10
2DE6DA:  B               loc_2DE6E4
2DE6DC:  LDR             R0, =(dword_7948FC - 0x2DE6E2)
2DE6DE:  ADD             R0, PC; dword_7948FC
2DE6E0:  LDR.W           R0, [R0,R11,LSL#2]
2DE6E4:  LDR             R1, =(unk_794AFC - 0x2DE6F4)
2DE6E6:  ADD.W           R0, R0, R0,LSL#2
2DE6EA:  LDR             R2, [R7,#arg_0]
2DE6EC:  MLA.W           R6, R4, R9, R2
2DE6F0:  ADD             R1, PC; unk_794AFC
2DE6F2:  LDR             R3, =(unk_793AF4 - 0x2DE700)
2DE6F4:  LDR.W           R1, [R1,R5,LSL#2]
2DE6F8:  LDR.W           R2, [R10,#0xC]
2DE6FC:  ADD             R3, PC; unk_793AF4
2DE6FE:  RSB.W           R1, R1, R1,LSL#3
2DE702:  ADD.W           R0, R3, R0,LSL#2
2DE706:  ADD             R3, SP, #0x140+var_D0
2DE708:  ADD.W           R1, R2, R1,LSL#2
2DE70C:  MOV             R2, R6
2DE70E:  BLX             j__ZN10CCollision16ProcessSphereBoxERK10CColSphereRK7CColBoxR9CColPointRf; CCollision::ProcessSphereBox(CColSphere const&,CColBox const&,CColPoint &,float &)
2DE712:  CMP             R0, #1
2DE714:  BNE             loc_2DE782
2DE716:  LDR             R0, =(unk_794AFC - 0x2DE722)
2DE718:  CMP             R4, #0x1E
2DE71A:  VLDR            S0, [R6,#0x10]
2DE71E:  ADD             R0, PC; unk_794AFC
2DE720:  VLDR            S2, [R6,#0x14]
2DE724:  VLDR            S4, [R6,#0x18]
2DE728:  VNEG.F32        S0, S0
2DE72C:  LDR.W           R0, [R0,R5,LSL#2]
2DE730:  VNEG.F32        S2, S2
2DE734:  LDR.W           R1, [R10,#0xC]
2DE738:  VNEG.F32        S4, S4
2DE73C:  RSB.W           R0, R0, R0,LSL#3
2DE740:  ADD.W           R0, R1, R0,LSL#2
2DE744:  LDRH            R1, [R0,#0x18]
2DE746:  LDRB            R0, [R0,#0x1A]
2DE748:  STRB.W          R0, [R6,#0x22]
2DE74C:  STRH            R1, [R6,#0x20]
2DE74E:  LDRB.W          R0, [R8,#2]
2DE752:  LDRH.W          R1, [R8]
2DE756:  STRB.W          R0, [R6,#0x25]
2DE75A:  STRH.W          R1, [R6,#0x23]
2DE75E:  VSTR            S0, [R6,#0x10]
2DE762:  VSTR            S2, [R6,#0x14]
2DE766:  VSTR            S4, [R6,#0x18]
2DE76A:  BGT             loc_2DE78A
2DE76C:  ADDS            R4, #1
2DE76E:  LDR             R0, [R7,#arg_0]
2DE770:  MOVS            R1, #0
2DE772:  MLA.W           R0, R4, R9, R0
2DE776:  MOVT            R1, #0xBF80
2DE77A:  STR             R1, [R0,#0x28]
2DE77C:  LDR             R0, [SP,#0x140+var_DC]
2DE77E:  ADDS            R0, #1
2DE780:  STR             R0, [SP,#0x140+var_DC]
2DE782:  LDR             R0, [SP,#0x140+var_D8]
2DE784:  ADDS            R5, #1
2DE786:  CMP             R5, R0
2DE788:  BLT             loc_2DE6DC
2DE78A:  LDR             R0, [SP,#0x140+var_E0]
2DE78C:  ADD.W           R11, R11, #1
2DE790:  CMP             R11, R0
2DE792:  BNE             loc_2DE6B0
2DE794:  LDR             R0, [SP,#0x140+var_DC]
2DE796:  CMP             R0, #1
2DE798:  BLT.W           loc_2DDB3C
2DE79C:  SUBS            R6, R4, R0
2DE79E:  MOVS            R0, #0x2C ; ','
2DE7A0:  LDR             R1, [R7,#arg_0]
2DE7A2:  ADD.W           R8, SP, #0x140+var_A8
2DE7A6:  MLA.W           R5, R6, R0, R1
2DE7AA:  LDR.W           R9, [SP,#0x140+var_10C]
2DE7AE:  MOV             R0, R8
2DE7B0:  MOV             R1, R9
2DE7B2:  MOV             R2, R5
2DE7B4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DE7B8:  VLDR            D16, [SP,#0x140+var_A8]
2DE7BC:  ADD.W           R2, R5, #0x10
2DE7C0:  LDR             R0, [SP,#0x140+var_A0]
2DE7C2:  MOV             R1, R9; CVector *
2DE7C4:  STR             R0, [R5,#8]
2DE7C6:  MOV             R0, R8; CMatrix *
2DE7C8:  VSTR            D16, [R5]
2DE7CC:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
2DE7D0:  VLDR            D16, [SP,#0x140+var_A8]
2DE7D4:  ADDS            R6, #1
2DE7D6:  LDR             R0, [SP,#0x140+var_A0]
2DE7D8:  CMP             R6, R4
2DE7DA:  STR             R0, [R5,#0x18]
2DE7DC:  VSTR            D16, [R5,#0x10]
2DE7E0:  LDRH.W          R12, [R5,#0x23]!
2DE7E4:  MOV             R1, R5
2DE7E6:  LDRB            R3, [R5,#2]
2DE7E8:  LDRH.W          R2, [R1,#-3]!
2DE7EC:  LDRB            R0, [R1,#2]
2DE7EE:  STRH            R2, [R5]
2DE7F0:  STRH.W          R12, [R1]
2DE7F4:  STRB            R3, [R1,#2]
2DE7F6:  STRB            R0, [R5,#2]
2DE7F8:  ADD.W           R5, R5, #9
2DE7FC:  BLT             loc_2DE7AE
2DE7FE:  B.W             loc_2DDB3C
