; =========================================================
; Game Engine Function: sub_17161C
; Address            : 0x17161C - 0x17164A
; =========================================================

17161C:  PUSH            {R4,R6,R7,LR}
17161E:  ADD             R7, SP, #8
171620:  MOV             R4, R0
171622:  LDR             R0, [R0,#8]
171624:  CBZ             R0, loc_171646
171626:  LDR             R1, =(dword_381B58 - 0x17162C)
171628:  ADD             R1, PC; dword_381B58
17162A:  LDR             R1, [R1]
17162C:  CBZ             R1, loc_171638
17162E:  LDR.W           R2, [R1,#0x370]
171632:  SUBS            R2, #1
171634:  STR.W           R2, [R1,#0x370]
171638:  LDR             R1, =(dword_381B60 - 0x171640)
17163A:  LDR             R2, =(off_2390B0 - 0x171642)
17163C:  ADD             R1, PC; dword_381B60
17163E:  ADD             R2, PC; off_2390B0
171640:  LDR             R1, [R1]
171642:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171644:  BLX             R2; j_opus_decoder_destroy_0
171646:  MOV             R0, R4
171648:  POP             {R4,R6,R7,PC}
