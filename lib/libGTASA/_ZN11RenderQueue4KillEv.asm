; =========================================================
; Game Engine Function: _ZN11RenderQueue4KillEv
; Address            : 0x1D2560 - 0x1D25B2
; =========================================================

1D2560:  PUSH            {R4,R5,R7,LR}
1D2562:  ADD             R7, SP, #8
1D2564:  LDR             R0, =(renderQueue_ptr - 0x1D256A)
1D2566:  ADD             R0, PC; renderQueue_ptr
1D2568:  LDR             R0, [R0]; renderQueue
1D256A:  LDR             R4, [R0]
1D256C:  LDRB.W          R0, [R4,#0x258]
1D2570:  CBZ             R0, loc_1D259A
1D2572:  LDR             R0, =(GraphicsThreadHandle_ptr - 0x1D257C)
1D2574:  MOVS            R2, #1
1D2576:  LDR             R1, =(KillGraphicsThread_ptr - 0x1D257E)
1D2578:  ADD             R0, PC; GraphicsThreadHandle_ptr
1D257A:  ADD             R1, PC; KillGraphicsThread_ptr
1D257C:  LDR             R5, [R0]; GraphicsThreadHandle
1D257E:  LDR             R1, [R1]; KillGraphicsThread
1D2580:  LDR             R0, [R5]; void *
1D2582:  STRB            R2, [R1]
1D2584:  BLX             j__Z13OS_ThreadWaitPv; OS_ThreadWait(void *)
1D2588:  LDR             R0, [R5]; void *
1D258A:  BLX             j__Z14OS_ThreadClosePv; OS_ThreadClose(void *)
1D258E:  LDR             R0, =(renderQueue_ptr - 0x1D2594)
1D2590:  ADD             R0, PC; renderQueue_ptr
1D2592:  LDR             R0, [R0]; renderQueue
1D2594:  LDR             R4, [R0]
1D2596:  MOVS            R0, #0
1D2598:  STR             R0, [R5]
1D259A:  CMP             R4, #0
1D259C:  IT EQ
1D259E:  POPEQ           {R4,R5,R7,PC}
1D25A0:  LDR.W           R0, [R4,#0x260]; p
1D25A4:  BLX             free
1D25A8:  MOV             R0, R4; void *
1D25AA:  POP.W           {R4,R5,R7,LR}
1D25AE:  B.W             j__ZdlPv; operator delete(void *)
