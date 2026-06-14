; =========================================================
; Game Engine Function: _ZN7CCamera11SetRwCameraEP8RwCamera
; Address            : 0x3E15CC - 0x3E15EE
; =========================================================

3E15CC:  PUSH            {R4,R6,R7,LR}
3E15CE:  ADD             R7, SP, #8
3E15D0:  MOV             R4, R0
3E15D2:  ADDW            R0, R4, #0x98C
3E15D6:  STR.W           R1, [R4,#0x8D8]
3E15DA:  ADDS            R1, #0x20 ; ' '
3E15DC:  MOVS            R2, #0
3E15DE:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
3E15E2:  LDR.W           R0, [R4,#0x8D8]
3E15E6:  POP.W           {R4,R6,R7,LR}
3E15EA:  B.W             j_j__ZN6CMBlur14MotionBlurOpenEP8RwCamera; j_CMBlur::MotionBlurOpen(RwCamera *)
