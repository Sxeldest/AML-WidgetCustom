; =========================================================
; Game Engine Function: sub_171440
; Address            : 0x171440 - 0x17146E
; =========================================================

171440:  PUSH            {R4,R6,R7,LR}
171442:  ADD             R7, SP, #8
171444:  MOV             R4, R0
171446:  LDR             R0, [R0,#8]
171448:  CBZ             R0, loc_17146A
17144A:  LDR             R1, =(dword_381B58 - 0x171450)
17144C:  ADD             R1, PC; dword_381B58
17144E:  LDR             R1, [R1]
171450:  CBZ             R1, loc_17145C
171452:  LDR.W           R2, [R1,#0x370]
171456:  SUBS            R2, #1
171458:  STR.W           R2, [R1,#0x370]
17145C:  LDR             R1, =(dword_381B60 - 0x171464)
17145E:  LDR             R2, =(off_2390B0 - 0x171466)
171460:  ADD             R1, PC; dword_381B60
171462:  ADD             R2, PC; off_2390B0
171464:  LDR             R1, [R1]
171466:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171468:  BLX             R2; j_opus_decoder_destroy_0
17146A:  MOV             R0, R4
17146C:  POP             {R4,R6,R7,PC}
