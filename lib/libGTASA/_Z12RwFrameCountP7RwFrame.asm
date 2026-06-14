; =========================================================
; Game Engine Function: _Z12RwFrameCountP7RwFrame
; Address            : 0x1D8672 - 0x1D8692
; =========================================================

1D8672:  PUSH            {R4,R5,R7,LR}
1D8674:  ADD             R7, SP, #8
1D8676:  LDR.W           R5, [R0,#0x98]
1D867A:  MOVS            R4, #1
1D867C:  CBZ             R5, loc_1D868E
1D867E:  MOV             R0, R5
1D8680:  BLX             j__Z12RwFrameCountP7RwFrame; RwFrameCount(RwFrame *)
1D8684:  LDR.W           R5, [R5,#0x9C]
1D8688:  ADD             R4, R0
1D868A:  CMP             R5, #0
1D868C:  BNE             loc_1D867E
1D868E:  MOV             R0, R4
1D8690:  POP             {R4,R5,R7,PC}
