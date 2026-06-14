; =========================================================
; Game Engine Function: sub_F8268
; Address            : 0xF8268 - 0xF8278
; =========================================================

F8268:  LDR             R0, =(dword_2402CC - 0xF8272)
F826A:  MOVS            R2, #0x30 ; '0'
F826C:  LDR             R1, =(unk_2402E8 - 0xF8274)
F826E:  ADD             R0, PC; dword_2402CC
F8270:  ADD             R1, PC; unk_2402E8
F8272:  LDR             R0, [R0]
F8274:  B.W             sub_2242EC
