; =========================================================
; Game Engine Function: _ZN18CPtrListDoubleLinkD2Ev
; Address            : 0x42CCEC - 0x42CCFA
; =========================================================

42CCEC:  PUSH            {R4,R6,R7,LR}
42CCEE:  ADD             R7, SP, #8
42CCF0:  MOV             R4, R0
42CCF2:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
42CCF6:  MOV             R0, R4
42CCF8:  POP             {R4,R6,R7,PC}
