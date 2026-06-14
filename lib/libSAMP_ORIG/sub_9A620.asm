; =========================================================
; Game Engine Function: sub_9A620
; Address            : 0x9A620 - 0x9A650
; =========================================================

9A620:  PUSH            {R4,R6,R7,LR}
9A622:  ADD             R7, SP, #8
9A624:  MOV             R4, R0
9A626:  LDR             R0, [R0,#8]
9A628:  CBZ             R0, loc_9A64C
9A62A:  LDR             R1, =(dword_1ACF68 - 0x9A630)
9A62C:  ADD             R1, PC; dword_1ACF68
9A62E:  LDR             R1, [R1]
9A630:  CMP             R1, #0
9A632:  ITTT NE
9A634:  LDRNE.W         R2, [R1,#0x370]
9A638:  SUBNE           R2, #1
9A63A:  STRNE.W         R2, [R1,#0x370]
9A63E:  LDR             R1, =(dword_1ACF70 - 0x9A646)
9A640:  LDR             R2, =(off_11724C - 0x9A648)
9A642:  ADD             R1, PC; dword_1ACF70
9A644:  ADD             R2, PC; off_11724C
9A646:  LDR             R1, [R1]
9A648:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A64A:  BLX             R2; j_opus_decoder_destroy_0
9A64C:  MOV             R0, R4
9A64E:  POP             {R4,R6,R7,PC}
