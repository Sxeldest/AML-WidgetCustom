; =========================================================
; Game Engine Function: _Z22RtAnimInterpolatorCopyP18RtAnimInterpolatorS0_
; Address            : 0x1EB466 - 0x1EB47C
; =========================================================

1EB466:  PUSH            {R7,LR}
1EB468:  MOV             R7, SP
1EB46A:  LDR             R2, [R0,#0x24]
1EB46C:  ADDS            R1, #0x4C ; 'L'; void *
1EB46E:  LDR             R3, [R0,#0x2C]
1EB470:  ADDS            R0, #0x4C ; 'L'; void *
1EB472:  MULS            R2, R3; size_t
1EB474:  BLX             memcpy_1
1EB478:  MOVS            R0, #1
1EB47A:  POP             {R7,PC}
