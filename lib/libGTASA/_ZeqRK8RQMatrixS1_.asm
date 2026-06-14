; =========================================================
; Game Engine Function: _ZeqRK8RQMatrixS1_
; Address            : 0x1D3550 - 0x1D3566
; =========================================================

1D3550:  PUSH            {R7,LR}
1D3552:  MOV             R7, SP
1D3554:  MOVS            R2, #0x40 ; '@'; size_t
1D3556:  BLX             memcmp
1D355A:  MOVS            R1, #0
1D355C:  CMP             R0, #0
1D355E:  IT EQ
1D3560:  MOVEQ           R1, #1
1D3562:  MOV             R0, R1
1D3564:  POP             {R7,PC}
