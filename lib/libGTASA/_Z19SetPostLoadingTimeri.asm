; =========================================================
; Game Engine Function: _Z19SetPostLoadingTimeri
; Address            : 0x3BCBC0 - 0x3BCBE0
; =========================================================

3BCBC0:  PUSH            {R4,R5,R7,LR}
3BCBC2:  ADD             R7, SP, #8
3BCBC4:  MOV             R4, R0
3BCBC6:  LDR             R0, =(isPostLoading_ptr - 0x3BCBCE)
3BCBC8:  LDR             R1, =(PostLoadingTimer_ptr - 0x3BCBD0)
3BCBCA:  ADD             R0, PC; isPostLoading_ptr
3BCBCC:  ADD             R1, PC; PostLoadingTimer_ptr
3BCBCE:  LDR             R0, [R0]; isPostLoading
3BCBD0:  LDR             R5, [R1]; PostLoadingTimer
3BCBD2:  MOVS            R1, #1
3BCBD4:  STRB            R1, [R0]
3BCBD6:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
3BCBDA:  ADD             R0, R4
3BCBDC:  STR             R0, [R5]
3BCBDE:  POP             {R4,R5,R7,PC}
