; =========================================================
; Game Engine Function: sub_171558
; Address            : 0x171558 - 0x171586
; =========================================================

171558:  PUSH            {R4,R6,R7,LR}
17155A:  ADD             R7, SP, #8
17155C:  MOV             R4, R0
17155E:  LDR             R0, [R0,#8]
171560:  CBZ             R0, loc_171582
171562:  LDR             R1, =(dword_381B58 - 0x171568)
171564:  ADD             R1, PC; dword_381B58
171566:  LDR             R1, [R1]
171568:  CBZ             R1, loc_171574
17156A:  LDR.W           R2, [R1,#0x370]
17156E:  SUBS            R2, #1
171570:  STR.W           R2, [R1,#0x370]
171574:  LDR             R1, =(dword_381B60 - 0x17157C)
171576:  LDR             R2, =(off_2390B0 - 0x17157E)
171578:  ADD             R1, PC; dword_381B60
17157A:  ADD             R2, PC; off_2390B0
17157C:  LDR             R1, [R1]
17157E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
171580:  BLX             R2; j_opus_decoder_destroy_0
171582:  MOV             R0, R4
171584:  POP             {R4,R6,R7,PC}
