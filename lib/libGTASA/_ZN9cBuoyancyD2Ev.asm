; =========================================================
; Game Engine Function: _ZN9cBuoyancyD2Ev
; Address            : 0x570BE8 - 0x570BFA
; =========================================================

570BE8:  PUSH            {R4,R6,R7,LR}
570BEA:  ADD             R7, SP, #8
570BEC:  MOV             R4, R0
570BEE:  ADD.W           R0, R4, #0xC; this
570BF2:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
570BF6:  MOV             R0, R4
570BF8:  POP             {R4,R6,R7,PC}
