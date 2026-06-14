; =========================================================
; Game Engine Function: sub_FCFAC
; Address            : 0xFCFAC - 0xFCFBA
; =========================================================

FCFAC:  PUSH            {R7,LR}
FCFAE:  MOV             R7, SP
FCFB0:  LDR             R0, [R0]; th
FCFB2:  MOVS            R1, #0; thread_return
FCFB4:  BLX             pthread_join
FCFB8:  POP             {R7,PC}
