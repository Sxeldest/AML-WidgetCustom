; =========================================================
; Game Engine Function: _ZN28CTaskUtilityLineUpPedWithCar24GetPositionToOpenCarDoorEP8CVehiclefP21CAnimBlendAssociation
; Address            : 0x50A564 - 0x50A5FE
; =========================================================

50A564:  PUSH            {R4-R7,LR}
50A566:  ADD             R7, SP, #0xC
50A568:  PUSH.W          {R8,R9,R11}
50A56C:  SUB             SP, SP, #0x60
50A56E:  MOV             R6, R2
50A570:  MOV             R5, R1
50A572:  LDR             R1, [R6,#0x14]; CMatrix *
50A574:  ADD.W           R8, SP, #0x78+var_60
50A578:  MOV             R4, R0
50A57A:  MOV             R9, R3
50A57C:  MOV             R0, R8; this
50A57E:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
50A582:  LDR             R0, [R7,#arg_0]
50A584:  MOV             R1, R5; CVehicle *
50A586:  STR             R0, [SP,#0x78+var_78]
50A588:  ADD             R0, SP, #0x78+var_70; this
50A58A:  MOV             R2, R6; float
50A58C:  MOV             R3, R9; CAnimBlendAssociation *
50A58E:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar29GetLocalPositionToOpenCarDoorEP8CVehiclefP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::GetLocalPositionToOpenCarDoor(CVehicle *,float,CAnimBlendAssociation *)
50A592:  LDR             R0, [SP,#0x78+var_68]
50A594:  MOV             R1, R8; CVector *
50A596:  STR             R0, [R4,#8]
50A598:  ADD             R0, SP, #0x78+var_70; CMatrix *
50A59A:  VLDR            D16, [SP,#0x78+var_70]
50A59E:  MOV             R2, R4
50A5A0:  VSTR            D16, [R4]
50A5A4:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
50A5A8:  VLDR            D16, [SP,#0x78+var_70]
50A5AC:  LDR             R0, [SP,#0x78+var_68]
50A5AE:  STR             R0, [R4,#8]
50A5B0:  VSTR            D16, [R4]
50A5B4:  LDR             R0, [R6,#0x14]
50A5B6:  VLDR            S0, [R4]
50A5BA:  ADD.W           R1, R0, #0x30 ; '0'
50A5BE:  CMP             R0, #0
50A5C0:  VLDR            S2, [R4,#4]
50A5C4:  MOV             R0, R8; this
50A5C6:  VLDR            S4, [R4,#8]
50A5CA:  IT EQ
50A5CC:  ADDEQ           R1, R6, #4
50A5CE:  VLDR            S6, [R1]
50A5D2:  VLDR            S8, [R1,#4]
50A5D6:  VLDR            S10, [R1,#8]
50A5DA:  VADD.F32        S0, S6, S0
50A5DE:  VADD.F32        S2, S8, S2
50A5E2:  VADD.F32        S4, S10, S4
50A5E6:  VSTR            S0, [R4]
50A5EA:  VSTR            S2, [R4,#4]
50A5EE:  VSTR            S4, [R4,#8]
50A5F2:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
50A5F6:  ADD             SP, SP, #0x60 ; '`'
50A5F8:  POP.W           {R8,R9,R11}
50A5FC:  POP             {R4-R7,PC}
