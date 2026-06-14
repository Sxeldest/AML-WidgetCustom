; =========================================================
; Game Engine Function: sub_171378
; Address            : 0x171378 - 0x1713A6
; =========================================================

171378:  PUSH            {R4,R6,R7,LR}
17137A:  ADD             R7, SP, #8
17137C:  MOV             R4, R0
17137E:  LDR             R0, [R0,#8]
171380:  CBZ             R0, loc_1713A2
171382:  LDR             R1, =(dword_381B58 - 0x171388)
171384:  ADD             R1, PC; dword_381B58
171386:  LDR             R1, [R1]
171388:  CBZ             R1, loc_171394
17138A:  LDR.W           R2, [R1,#0x370]
17138E:  SUBS            R2, #1
171390:  STR.W           R2, [R1,#0x370]
171394:  LDR             R1, =(dword_381B60 - 0x17139C)
171396:  LDR             R2, =(off_2390B0 - 0x17139E)
171398:  ADD             R1, PC; dword_381B60
17139A:  ADD             R2, PC; off_2390B0
17139C:  LDR             R1, [R1]
17139E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
1713A0:  BLX             R2; j_opus_decoder_destroy_0
1713A2:  MOV             R0, R4
1713A4:  POP             {R4,R6,R7,PC}
