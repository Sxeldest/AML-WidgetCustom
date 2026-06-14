; =========================================================
; Game Engine Function: _ZN11RenderQueueD2Ev
; Address            : 0x1D1FE6 - 0x1D1FFE
; =========================================================

1D1FE6:  PUSH            {R4,R6,R7,LR}; Alternative name is 'RenderQueue::~RenderQueue()'
1D1FE8:  ADD             R7, SP, #8
1D1FEA:  MOV             R4, R0
1D1FEC:  LDR.W           R0, [R4,#0x260]; p
1D1FF0:  BLX             free
1D1FF4:  MOVS            R0, #0
1D1FF6:  STRD.W          R0, R0, [R4,#0x260]
1D1FFA:  MOV             R0, R4
1D1FFC:  POP             {R4,R6,R7,PC}
