; =========================================================
; Game Engine Function: _ZN7CCameraD2Ev
; Address            : 0x3D6840 - 0x3D688E
; =========================================================

3D6840:  PUSH            {R4,R6,R7,LR}
3D6842:  ADD             R7, SP, #8
3D6844:  MOV             R4, R0
3D6846:  LDR             R0, =(_ZTV7CCamera_ptr - 0x3D684E)
3D6848:  MOVS            R1, #0
3D684A:  ADD             R0, PC; _ZTV7CCamera_ptr
3D684C:  STR             R1, [R4,#0x14]
3D684E:  LDR             R0, [R0]; `vtable for'CCamera ...
3D6850:  ADDS            R0, #8
3D6852:  STR             R0, [R4]
3D6854:  ADDW            R0, R4, #0xA64; this
3D6858:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D685C:  ADDW            R0, R4, #0xA1C; this
3D6860:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D6864:  ADDW            R0, R4, #0x9D4; this
3D6868:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D686C:  ADDW            R0, R4, #0x98C; this
3D6870:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D6874:  ADDW            R0, R4, #0x944; this
3D6878:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D687C:  ADDW            R0, R4, #0x8FC; this
3D6880:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3D6884:  MOV             R0, R4; this
3D6886:  POP.W           {R4,R6,R7,LR}
3D688A:  B.W             sub_18E264
