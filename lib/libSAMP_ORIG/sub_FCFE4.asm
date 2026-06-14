; =========================================================
; Game Engine Function: sub_FCFE4
; Address            : 0xFCFE4 - 0xFCFF0
; =========================================================

FCFE4:  PUSH            {R7,LR}
FCFE6:  MOV             R7, SP
FCFE8:  LDR             R0, [R0]; th
FCFEA:  BLX             pthread_detach
FCFEE:  POP             {R7,PC}
