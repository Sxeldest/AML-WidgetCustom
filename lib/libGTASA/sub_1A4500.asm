; =========================================================
; Game Engine Function: sub_1A4500
; Address            : 0x1A4500 - 0x1A453E
; =========================================================

1A4500:  PUSH            {R4,R6,R7,LR}
1A4502:  ADD             R7, SP, #8
1A4504:  LDR             R0, =(gHandShaker_ptr - 0x1A450A)
1A4506:  ADD             R0, PC; gHandShaker_ptr
1A4508:  LDR             R4, [R0]; gHandShaker
1A450A:  ADD.W           R0, R4, #0x320; this
1A450E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A4512:  ADD.W           R0, R4, #0x28C; this
1A4516:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A451A:  ADD.W           R0, R4, #0x1F8; this
1A451E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A4522:  ADD.W           R0, R4, #0x164; this
1A4526:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A452A:  ADD.W           R0, R4, #0xD0; this
1A452E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
1A4532:  ADD.W           R0, R4, #0x3C ; '<'; this
1A4536:  POP.W           {R4,R6,R7,LR}
1A453A:  B.W             j_j__ZN7CMatrixD2Ev; j_CMatrix::~CMatrix()
