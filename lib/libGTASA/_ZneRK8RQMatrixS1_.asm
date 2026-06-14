; =========================================================
; Game Engine Function: _ZneRK8RQMatrixS1_
; Address            : 0x1D3566 - 0x1D3578
; =========================================================

1D3566:  PUSH            {R7,LR}
1D3568:  MOV             R7, SP
1D356A:  MOVS            R2, #0x40 ; '@'; size_t
1D356C:  BLX             memcmp
1D3570:  CMP             R0, #0
1D3572:  IT NE
1D3574:  MOVNE           R0, #1
1D3576:  POP             {R7,PC}
