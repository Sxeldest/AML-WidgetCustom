; =========================================================
; Game Engine Function: sub_170FD0
; Address            : 0x170FD0 - 0x170FFE
; =========================================================

170FD0:  PUSH            {R4,R6,R7,LR}
170FD2:  ADD             R7, SP, #8
170FD4:  MOV             R4, R0
170FD6:  LDR             R0, [R0,#8]
170FD8:  CBZ             R0, loc_170FFA
170FDA:  LDR             R1, =(dword_381B58 - 0x170FE0)
170FDC:  ADD             R1, PC; dword_381B58
170FDE:  LDR             R1, [R1]
170FE0:  CBZ             R1, loc_170FEC
170FE2:  LDR.W           R2, [R1,#0x370]
170FE6:  SUBS            R2, #1
170FE8:  STR.W           R2, [R1,#0x370]
170FEC:  LDR             R1, =(dword_381B60 - 0x170FF4)
170FEE:  LDR             R2, =(off_2390B0 - 0x170FF6)
170FF0:  ADD             R1, PC; dword_381B60
170FF2:  ADD             R2, PC; off_2390B0
170FF4:  LDR             R1, [R1]
170FF6:  LDR             R2, [R2]; j_opus_decoder_destroy_0
170FF8:  BLX             R2; j_opus_decoder_destroy_0
170FFA:  MOV             R0, R4
170FFC:  POP             {R4,R6,R7,PC}
