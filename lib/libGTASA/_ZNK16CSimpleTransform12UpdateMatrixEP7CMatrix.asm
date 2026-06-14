; =========================================================
; Game Engine Function: _ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix
; Address            : 0x40862C - 0x40864A
; =========================================================

40862C:  PUSH            {R4,R5,R7,LR}
40862E:  ADD             R7, SP, #8
408630:  MOV             R5, R0
408632:  MOV             R4, R1
408634:  LDM.W           R5, {R1-R3}; float
408638:  MOV             R0, R4; this
40863A:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
40863E:  LDR             R1, [R5,#0xC]; x
408640:  MOV             R0, R4; this
408642:  POP.W           {R4,R5,R7,LR}
408646:  B.W             j_j__ZN7CMatrix14SetRotateZOnlyEf; j_CMatrix::SetRotateZOnly(float)
