; =========================================================
; Game Engine Function: _ZN7CCameraD0Ev
; Address            : 0x3D6894 - 0x3D68E6
; =========================================================

3D6894:  PUSH            {R4,R6,R7,LR}
3D6896:  ADD             R7, SP, #8
3D6898:  MOV             R4, R0
3D689A:  LDR             R0, =(_ZTV7CCamera_ptr - 0x3D68A2)
3D689C:  MOVS            R1, #0
3D689E:  ADD             R0, PC; _ZTV7CCamera_ptr
3D68A0:  STR             R1, [R4,#0x14]
3D68A2:  LDR             R0, [R0]; `vtable for'CCamera ...
3D68A4:  ADDS            R0, #8
3D68A6:  STR             R0, [R4]
3D68A8:  ADDW            R0, R4, #0xA64; this
3D68AC:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D68B0:  ADDW            R0, R4, #0xA1C; this
3D68B4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D68B8:  ADDW            R0, R4, #0x9D4; this
3D68BC:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D68C0:  ADDW            R0, R4, #0x98C; this
3D68C4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D68C8:  ADDW            R0, R4, #0x944; this
3D68CC:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D68D0:  ADDW            R0, R4, #0x8FC; this
3D68D4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D68D8:  MOV             R0, R4; this
3D68DA:  BLX             j__ZN10CPlaceableD2Ev; CPlaceable::~CPlaceable()
3D68DE:  POP.W           {R4,R6,R7,LR}
3D68E2:  B.W             j__ZdlPv; operator delete(void *)
