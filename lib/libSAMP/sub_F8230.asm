; =========================================================
; Game Engine Function: sub_F8230
; Address            : 0xF8230 - 0xF8248
; =========================================================

F8230:  LDR             R2, =(dword_2402CC - 0xF823C)
F8232:  ADD.W           R0, R0, R0,LSL#1
F8236:  LDR             R1, =(unk_240318 - 0xF823E)
F8238:  ADD             R2, PC; dword_2402CC
F823A:  ADD             R1, PC; unk_240318
F823C:  ADD.W           R1, R1, R0,LSL#4
F8240:  LDR             R0, [R2]
F8242:  MOVS            R2, #0x30 ; '0'
F8244:  B.W             sub_2242EC
