; =========================================================
; Game Engine Function: sub_F8280
; Address            : 0xF8280 - 0xF8290
; =========================================================

F8280:  LDR             R1, =(dword_2402CC - 0xF828A)
F8282:  MOVS            R2, #0x30 ; '0'
F8284:  LDR             R0, =(unk_2402E8 - 0xF828C)
F8286:  ADD             R1, PC; dword_2402CC
F8288:  ADD             R0, PC; unk_2402E8
F828A:  LDR             R1, [R1]
F828C:  B.W             sub_2242EC
