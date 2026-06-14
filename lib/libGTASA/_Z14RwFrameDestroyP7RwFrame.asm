; =========================================================
; Game Engine Function: _Z14RwFrameDestroyP7RwFrame
; Address            : 0x1D846C - 0x1D8492
; =========================================================

1D846C:  PUSH            {R4,R6,R7,LR}
1D846E:  ADD             R7, SP, #8
1D8470:  MOV             R4, R0
1D8472:  BLX             j__Z14_rwFrameDeInitP7RwFrame; _rwFrameDeInit(RwFrame *)
1D8476:  LDR             R0, =(RwEngineInstance_ptr - 0x1D847E)
1D8478:  LDR             R1, =(dword_6BCEB4 - 0x1D8480)
1D847A:  ADD             R0, PC; RwEngineInstance_ptr
1D847C:  ADD             R1, PC; dword_6BCEB4
1D847E:  LDR             R0, [R0]; RwEngineInstance
1D8480:  LDR             R1, [R1]
1D8482:  LDR             R2, [R0]
1D8484:  LDR             R0, [R2,R1]
1D8486:  MOV             R1, R4
1D8488:  LDR.W           R2, [R2,#0x140]
1D848C:  BLX             R2
1D848E:  MOVS            R0, #1
1D8490:  POP             {R4,R6,R7,PC}
