; =========================================================
; Game Engine Function: _ZN13CCarEnterExit42IsPathToDoorBlockedByVehicleCollisionModelERK4CPedR8CVehicleRK7CVector
; Address            : 0x50842C - 0x508516
; =========================================================

50842C:  PUSH            {R4-R7,LR}
50842E:  ADD             R7, SP, #0xC
508430:  PUSH.W          {R8,R9,R11}
508434:  SUB             SP, SP, #0xA0
508436:  MOV             R4, R1
508438:  MOV             R9, R0
50843A:  LDRH            R0, [R4,#0x26]
50843C:  MOVW            R1, #0x241
508440:  MOV             R8, R2
508442:  MOVS            R6, #0
508444:  CMP             R0, R1
508446:  BEQ             loc_50850C
508448:  MOV             R0, R4; this
50844A:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
50844E:  LDR             R5, [R0,#0x2C]
508450:  LDR             R0, [R4,#0x14]; CMatrix *
508452:  ADD             R4, SP, #0xB8+var_60
508454:  STRD.W          R6, R6, [SP,#0xB8+var_20]
508458:  MOV             R1, R4; CMatrix *
50845A:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
50845E:  LDR.W           R0, [R9,#0x14]
508462:  MOV             R1, R4; CMatrix *
508464:  ADD.W           R2, R0, #0x30 ; '0'
508468:  CMP             R0, #0
50846A:  ADD             R0, SP, #0xB8+var_70; this
50846C:  IT EQ
50846E:  ADDEQ.W         R2, R9, #4; CVector *
508472:  BLX             j__ZN7CVector12FromMultiplyERK7CMatrixRKS_; CVector::FromMultiply(CMatrix const&,CVector const&)
508476:  ADD             R0, SP, #0xB8+var_80; this
508478:  MOV             R1, R4; CMatrix *
50847A:  MOV             R2, R8; CVector *
50847C:  BLX             j__ZN7CVector12FromMultiplyERK7CMatrixRKS_; CVector::FromMultiply(CMatrix const&,CVector const&)
508480:  VLDR            D16, [SP,#0xB8+var_70]
508484:  LDR             R0, [SP,#0xB8+var_68]
508486:  VSTR            D16, [SP,#0xB8+var_B8]
50848A:  LDRD.W          R1, R2, [SP,#0xB8+var_80]
50848E:  STR             R0, [SP,#0xB8+var_B0]
508490:  STR             R0, [SP,#0xB8+var_A0]
508492:  STRD.W          R1, R2, [SP,#0xB8+var_A8]
508496:  LDRSH.W         R6, [R5]
50849A:  CMP             R6, #1
50849C:  BLT             loc_5084F6
50849E:  LDR             R1, [R5,#8]
5084A0:  LDRD.W          R2, R1, [R1]
5084A4:  STRD.W          R2, R1, [SP,#0xB8+var_98]
5084A8:  ADD             R1, SP, #0xB8+var_98
5084AA:  STR             R0, [SP,#0xB8+var_90]
5084AC:  LDR             R0, [R5,#8]
5084AE:  LDR             R0, [R0,#0xC]
5084B0:  STR             R0, [SP,#0xB8+var_8C]
5084B2:  MOV             R0, SP
5084B4:  BLX             j__ZN10CCollision14TestLineSphereERK8CColLineRK10CColSphere; CCollision::TestLineSphere(CColLine const&,CColSphere const&)
5084B8:  MOVS            R4, #0
5084BA:  CBNZ            R0, loc_5084F2
5084BC:  ADD.W           R9, SP, #0xB8+var_98
5084C0:  MOVS            R6, #0x20 ; ' '
5084C2:  MOV             R8, SP
5084C4:  LDRSH.W         R0, [R5]
5084C8:  ADDS            R4, #1
5084CA:  CMP             R4, R0
5084CC:  BGE             loc_5084FA
5084CE:  LDR             R0, [R5,#8]
5084D0:  LDR             R1, [SP,#0xB8+var_B0]
5084D2:  ADD             R0, R6
5084D4:  LDRD.W          R2, R0, [R0,#-0xC]
5084D8:  STR             R1, [SP,#0xB8+var_90]
5084DA:  MOV             R1, R9
5084DC:  STRD.W          R2, R0, [SP,#0xB8+var_98]
5084E0:  LDR             R0, [R5,#8]
5084E2:  LDR             R0, [R0,R6]
5084E4:  STR             R0, [SP,#0xB8+var_8C]
5084E6:  MOV             R0, R8
5084E8:  BLX             j__ZN10CCollision14TestLineSphereERK8CColLineRK10CColSphere; CCollision::TestLineSphere(CColLine const&,CColSphere const&)
5084EC:  ADDS            R6, #0x14
5084EE:  CMP             R0, #0
5084F0:  BEQ             loc_5084C4
5084F2:  LDRH            R6, [R5]
5084F4:  B               loc_5084FC
5084F6:  MOVS            R4, #0
5084F8:  B               loc_5084FC
5084FA:  UXTH            R6, R0
5084FC:  ADD             R0, SP, #0xB8+var_60; this
5084FE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
508502:  SXTH            R0, R6
508504:  MOVS            R6, #0
508506:  CMP             R4, R0
508508:  IT NE
50850A:  MOVNE           R6, #1
50850C:  MOV             R0, R6
50850E:  ADD             SP, SP, #0xA0
508510:  POP.W           {R8,R9,R11}
508514:  POP             {R4-R7,PC}
