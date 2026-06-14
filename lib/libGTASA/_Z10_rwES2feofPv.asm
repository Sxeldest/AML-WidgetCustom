; =========================================================
; Game Engine Function: _Z10_rwES2feofPv
; Address            : 0x1E2784 - 0x1E2794
; =========================================================

1E2784:  LDR             R0, =(dword_6BD01C - 0x1E278A)
1E2786:  ADD             R0, PC; dword_6BD01C
1E2788:  LDR             R1, [R0]
1E278A:  MOVS            R0, #0
1E278C:  CMP             R1, #2
1E278E:  IT EQ
1E2790:  MOVEQ           R0, #1
1E2792:  BX              LR
