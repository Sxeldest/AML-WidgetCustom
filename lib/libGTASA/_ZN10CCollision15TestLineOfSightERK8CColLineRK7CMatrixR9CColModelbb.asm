; =========================================================
; Game Engine Function: _ZN10CCollision15TestLineOfSightERK8CColLineRK7CMatrixR9CColModelbb
; Address            : 0x2DC20C - 0x2DC3F0
; =========================================================

2DC20C:  PUSH            {R4-R7,LR}
2DC20E:  ADD             R7, SP, #0xC
2DC210:  PUSH.W          {R8-R11}
2DC214:  SUB             SP, SP, #0x3C
2DC216:  MOV             R8, R2
2DC218:  MOV             R4, R3
2DC21A:  LDR.W           R5, [R8,#0x2C]
2DC21E:  MOV             R9, R1
2DC220:  MOV             R10, R0
2DC222:  CMP             R5, #0
2DC224:  BEQ.W           loc_2DC3E2
2DC228:  LDR             R0, =(byte_79306C - 0x2DC22E)
2DC22A:  ADD             R0, PC; byte_79306C
2DC22C:  LDRB            R0, [R0]
2DC22E:  DMB.W           ISH
2DC232:  TST.W           R0, #1
2DC236:  BNE             loc_2DC262
2DC238:  LDR             R0, =(byte_79306C - 0x2DC23E)
2DC23A:  ADD             R0, PC; byte_79306C ; __guard *
2DC23C:  BLX             j___cxa_guard_acquire
2DC240:  CBZ             R0, loc_2DC262
2DC242:  LDR             R0, =(_ZN7CMatrixD2Ev_ptr_0 - 0x2DC24C)
2DC244:  MOVS            R3, #0
2DC246:  LDR             R1, =(unk_793024 - 0x2DC250)
2DC248:  ADD             R0, PC; _ZN7CMatrixD2Ev_ptr_0
2DC24A:  LDR             R2, =(unk_67A000 - 0x2DC254)
2DC24C:  ADD             R1, PC; unk_793024 ; obj
2DC24E:  LDR             R0, [R0]; CMatrix::~CMatrix() ; lpfunc
2DC250:  ADD             R2, PC; unk_67A000 ; lpdso_handle
2DC252:  STRD.W          R3, R3, [R1,#(dword_793064 - 0x793024)]
2DC256:  BLX             __cxa_atexit
2DC25A:  LDR             R0, =(byte_79306C - 0x2DC260)
2DC25C:  ADD             R0, PC; byte_79306C ; __guard *
2DC25E:  BLX             j___cxa_guard_release
2DC262:  LDR             R6, =(unk_793024 - 0x2DC26A)
2DC264:  MOV             R0, R9; CMatrix *
2DC266:  ADD             R6, PC; unk_793024
2DC268:  MOV             R1, R6; CMatrix *
2DC26A:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
2DC26E:  ADD.W           R9, SP, #0x58+var_48
2DC272:  MOV             R1, R6
2DC274:  MOV             R2, R10
2DC276:  MOV             R0, R9
2DC278:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DC27C:  ADD.W           R2, R10, #0x10
2DC280:  ADD.W           R10, SP, #0x58+var_54
2DC284:  MOV             R1, R6
2DC286:  MOV             R0, R10
2DC288:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DC28C:  ADD             R0, SP, #0x58+var_3C; this
2DC28E:  MOV             R1, R9; CVector *
2DC290:  MOV             R2, R10; CVector *
2DC292:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
2DC296:  MOV             R1, R8; CColLine *
2DC298:  BLX             j__ZN10CCollision14TestLineBox_DWERK8CColLineRK4CBox; CCollision::TestLineBox_DW(CColLine const&,CBox const&)
2DC29C:  CMP             R0, #1
2DC29E:  BNE.W           loc_2DC3E2
2DC2A2:  LDRSH.W         R0, [R5]
2DC2A6:  LDR.W           R10, [R7,#arg_0]
2DC2AA:  CMP             R0, #1
2DC2AC:  BLT             loc_2DC30A
2DC2AE:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC2BA)
2DC2B0:  MOVS            R6, #0
2DC2B2:  MOV.W           R9, #0x10
2DC2B6:  ADD             R0, PC; g_surfaceInfos_ptr
2DC2B8:  LDR.W           R11, [R0]; g_surfaceInfos
2DC2BC:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC2C2)
2DC2BE:  ADD             R0, PC; g_surfaceInfos_ptr
2DC2C0:  LDR.W           R8, [R0]; g_surfaceInfos
2DC2C4:  CMP             R4, #1
2DC2C6:  BNE             loc_2DC2D6
2DC2C8:  LDR             R0, [R5,#8]
2DC2CA:  LDRB.W          R1, [R0,R9]; unsigned int
2DC2CE:  MOV             R0, R11; this
2DC2D0:  BLX             j__ZN14SurfaceInfos_c12IsSeeThroughEj; SurfaceInfos_c::IsSeeThrough(uint)
2DC2D4:  CBNZ            R0, loc_2DC2FC
2DC2D6:  CMP.W           R10, #1
2DC2DA:  BNE             loc_2DC2EA
2DC2DC:  LDR             R0, [R5,#8]
2DC2DE:  LDRB.W          R1, [R0,R9]; unsigned int
2DC2E2:  MOV             R0, R8; this
2DC2E4:  BLX             j__ZN14SurfaceInfos_c14IsShootThroughEj; SurfaceInfos_c::IsShootThrough(uint)
2DC2E8:  CBNZ            R0, loc_2DC2FC
2DC2EA:  LDR             R0, [R5,#8]
2DC2EC:  ADD             R0, R9
2DC2EE:  SUB.W           R1, R0, #0x10
2DC2F2:  ADD             R0, SP, #0x58+var_3C
2DC2F4:  BLX             j__ZN10CCollision14TestLineSphereERK8CColLineRK10CColSphere; CCollision::TestLineSphere(CColLine const&,CColSphere const&)
2DC2F8:  CMP             R0, #0
2DC2FA:  BNE             loc_2DC3EC
2DC2FC:  LDRSH.W         R0, [R5]
2DC300:  ADDS            R6, #1
2DC302:  ADD.W           R9, R9, #0x14
2DC306:  CMP             R6, R0
2DC308:  BLT             loc_2DC2C4
2DC30A:  LDRSH.W         R0, [R5,#2]
2DC30E:  CMP             R0, #1
2DC310:  BLT             loc_2DC36E
2DC312:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC31E)
2DC314:  MOVS            R6, #0
2DC316:  MOV.W           R9, #0x18
2DC31A:  ADD             R0, PC; g_surfaceInfos_ptr
2DC31C:  LDR.W           R11, [R0]; g_surfaceInfos
2DC320:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC326)
2DC322:  ADD             R0, PC; g_surfaceInfos_ptr
2DC324:  LDR.W           R8, [R0]; g_surfaceInfos
2DC328:  CMP             R4, #1
2DC32A:  BNE             loc_2DC33A
2DC32C:  LDR             R0, [R5,#0xC]
2DC32E:  LDRB.W          R1, [R0,R9]; unsigned int
2DC332:  MOV             R0, R11; this
2DC334:  BLX             j__ZN14SurfaceInfos_c12IsSeeThroughEj; SurfaceInfos_c::IsSeeThrough(uint)
2DC338:  CBNZ            R0, loc_2DC360
2DC33A:  CMP.W           R10, #1
2DC33E:  BNE             loc_2DC34E
2DC340:  LDR             R0, [R5,#0xC]
2DC342:  LDRB.W          R1, [R0,R9]; unsigned int
2DC346:  MOV             R0, R8; this
2DC348:  BLX             j__ZN14SurfaceInfos_c14IsShootThroughEj; SurfaceInfos_c::IsShootThrough(uint)
2DC34C:  CBNZ            R0, loc_2DC360
2DC34E:  LDR             R0, [R5,#0xC]
2DC350:  ADD             R0, R9
2DC352:  SUB.W           R1, R0, #0x18; CColLine *
2DC356:  ADD             R0, SP, #0x58+var_3C; this
2DC358:  BLX             j__ZN10CCollision14TestLineBox_DWERK8CColLineRK4CBox; CCollision::TestLineBox_DW(CColLine const&,CBox const&)
2DC35C:  CMP             R0, #0
2DC35E:  BNE             loc_2DC3EC
2DC360:  LDRSH.W         R0, [R5,#2]
2DC364:  ADDS            R6, #1
2DC366:  ADD.W           R9, R9, #0x1C
2DC36A:  CMP             R6, R0
2DC36C:  BLT             loc_2DC328
2DC36E:  MOV             R0, R5; this
2DC370:  BLX             j__ZN10CCollision23CalculateTrianglePlanesEP14CCollisionData; CCollision::CalculateTrianglePlanes(CCollisionData *)
2DC374:  LDRSH.W         R0, [R5,#4]
2DC378:  CMP             R0, #1
2DC37A:  BLT             loc_2DC3E2
2DC37C:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC38C)
2DC37E:  MOVS            R6, #0xC
2DC380:  MOV.W           R9, #0
2DC384:  MOV.W           R8, #0
2DC388:  ADD             R0, PC; g_surfaceInfos_ptr
2DC38A:  LDR.W           R11, [R0]; g_surfaceInfos
2DC38E:  LDR             R0, =(g_surfaceInfos_ptr - 0x2DC394)
2DC390:  ADD             R0, PC; g_surfaceInfos_ptr
2DC392:  LDR             R0, [R0]; g_surfaceInfos
2DC394:  STR             R0, [SP,#0x58+var_58]
2DC396:  CMP             R4, #1
2DC398:  BNE             loc_2DC3A6
2DC39A:  LDR             R0, [R5,#0x18]
2DC39C:  LDRB            R1, [R0,R6]; unsigned int
2DC39E:  MOV             R0, R11; this
2DC3A0:  BLX             j__ZN14SurfaceInfos_c12IsSeeThroughEj; SurfaceInfos_c::IsSeeThrough(uint)
2DC3A4:  CBNZ            R0, loc_2DC3D0
2DC3A6:  CMP.W           R10, #1
2DC3AA:  BNE             loc_2DC3B8
2DC3AC:  LDR             R0, [R5,#0x18]
2DC3AE:  LDRB            R1, [R0,R6]; unsigned int
2DC3B0:  LDR             R0, [SP,#0x58+var_58]; this
2DC3B2:  BLX             j__ZN14SurfaceInfos_c14IsShootThroughEj; SurfaceInfos_c::IsShootThrough(uint)
2DC3B6:  CBNZ            R0, loc_2DC3D0
2DC3B8:  LDRD.W          R1, R0, [R5,#0x14]
2DC3BC:  LDR             R2, [R5,#0x1C]
2DC3BE:  ADD             R0, R6
2DC3C0:  ADD.W           R3, R2, R9
2DC3C4:  SUB.W           R2, R0, #0xC
2DC3C8:  ADD             R0, SP, #0x58+var_3C
2DC3CA:  BLX             j__ZN10CCollision16TestLineTriangleERK8CColLinePK7CVectorRK12CColTriangleRK17CColTrianglePlane; CCollision::TestLineTriangle(CColLine const&,CVector const*,CColTriangle const&,CColTrianglePlane const&)
2DC3CE:  CBNZ            R0, loc_2DC3EC
2DC3D0:  LDRSH.W         R0, [R5,#4]
2DC3D4:  ADD.W           R8, R8, #1
2DC3D8:  ADD.W           R9, R9, #0x14
2DC3DC:  ADDS            R6, #0x10
2DC3DE:  CMP             R8, R0
2DC3E0:  BLT             loc_2DC396
2DC3E2:  MOVS            R0, #0
2DC3E4:  ADD             SP, SP, #0x3C ; '<'
2DC3E6:  POP.W           {R8-R11}
2DC3EA:  POP             {R4-R7,PC}
2DC3EC:  MOVS            R0, #1
2DC3EE:  B               loc_2DC3E4
