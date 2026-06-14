; =========================================================
; Game Engine Function: sub_838DC
; Address            : 0x838DC - 0x83912
; =========================================================

838DC:  PUSH            {R4,R5,R7,LR}
838DE:  ADD             R7, SP, #8
838E0:  LDR             R1, =(dword_1A4A00 - 0x838EC)
838E2:  MOVS            R5, #0
838E4:  LDR             R0, =(sub_834C0+1 - 0x838EE)
838E6:  LDR             R4, =(off_110560 - 0x838F0)
838E8:  ADD             R1, PC; dword_1A4A00 ; obj
838EA:  ADD             R0, PC; sub_834C0 ; lpfunc
838EC:  ADD             R4, PC; off_110560
838EE:  STRD.W          R5, R5, [R1]
838F2:  STR             R5, [R1,#(dword_1A4A08 - 0x1A4A00)]
838F4:  MOV             R2, R4; lpdso_handle
838F6:  BLX             __cxa_atexit
838FA:  LDR             R1, =(dword_1A4A0C - 0x83904)
838FC:  MOV             R2, R4
838FE:  LDR             R0, =(sub_83500+1 - 0x83906)
83900:  ADD             R1, PC; dword_1A4A0C
83902:  ADD             R0, PC; sub_83500
83904:  STRD.W          R5, R5, [R1]
83908:  STR             R5, [R1,#(dword_1A4A14 - 0x1A4A0C)]
8390A:  POP.W           {R4,R5,R7,LR}
8390E:  B.W             sub_10C188
