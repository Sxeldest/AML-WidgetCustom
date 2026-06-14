; =========================================================
; Game Engine Function: _ZN15CMatrixLinkListD2Ev
; Address            : 0x408D54 - 0x408D8C
; =========================================================

408D54:  PUSH            {R4,R6,R7,LR}
408D56:  ADD             R7, SP, #8
408D58:  MOV             R4, R0
408D5A:  ADD.W           R0, R4, #0x1A4; this
408D5E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
408D62:  ADD.W           R0, R4, #0x150; this
408D66:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
408D6A:  ADD.W           R0, R4, #0xFC; this
408D6E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
408D72:  ADD.W           R0, R4, #0xA8; this
408D76:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
408D7A:  ADD.W           R0, R4, #0x54 ; 'T'; this
408D7E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
408D82:  MOV             R0, R4; this
408D84:  POP.W           {R4,R6,R7,LR}
408D88:  B.W             j_j__ZN7CMatrixD2Ev; j_CMatrix::~CMatrix()
