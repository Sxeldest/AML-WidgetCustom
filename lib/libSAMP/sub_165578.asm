; =========================================================
; Game Engine Function: sub_165578
; Address            : 0x165578 - 0x16559A
; =========================================================

165578:  CBZ             R0, loc_16558C
16557A:  LDR             R1, =(dword_381B58 - 0x165580)
16557C:  ADD             R1, PC; dword_381B58
16557E:  LDR             R1, [R1]
165580:  CBZ             R1, loc_16558C
165582:  LDR.W           R2, [R1,#0x370]
165586:  SUBS            R2, #1
165588:  STR.W           R2, [R1,#0x370]
16558C:  LDR             R1, =(dword_381B60 - 0x165594)
16558E:  LDR             R2, =(off_2390B0 - 0x165596)
165590:  ADD             R1, PC; dword_381B60
165592:  ADD             R2, PC; off_2390B0
165594:  LDR             R1, [R1]
165596:  LDR             R2, [R2]; j_opus_decoder_destroy_0
165598:  BX              R2; j_opus_decoder_destroy_0
