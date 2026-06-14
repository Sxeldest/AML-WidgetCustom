; =========================================================
; Game Engine Function: sub_21DE6C
; Address            : 0x21DE6C - 0x21DE84
; =========================================================

21DE6C:  LDR             R1, =(dword_6BD644 - 0x21DE76)
21DE6E:  MOVS            R3, #0
21DE70:  LDR             R2, =(sub_21EDC4+1 - 0x21DE78)
21DE72:  ADD             R1, PC; dword_6BD644
21DE74:  ADD             R2, PC; sub_21EDC4
21DE76:  LDR             R1, [R1]
21DE78:  STR             R3, [R0,R1]
21DE7A:  ADD             R1, R0
21DE7C:  LDR             R3, [R0,#0x10]
21DE7E:  STR             R3, [R1,#4]
21DE80:  STR             R2, [R0,#0x10]
21DE82:  BX              LR
