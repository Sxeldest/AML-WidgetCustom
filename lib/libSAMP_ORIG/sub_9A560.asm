; =========================================================
; Game Engine Function: sub_9A560
; Address            : 0x9A560 - 0x9A590
; =========================================================

9A560:  PUSH            {R4,R6,R7,LR}
9A562:  ADD             R7, SP, #8
9A564:  MOV             R4, R0
9A566:  LDR             R0, [R0,#8]
9A568:  CBZ             R0, loc_9A58C
9A56A:  LDR             R1, =(dword_1ACF68 - 0x9A570)
9A56C:  ADD             R1, PC; dword_1ACF68
9A56E:  LDR             R1, [R1]
9A570:  CMP             R1, #0
9A572:  ITTT NE
9A574:  LDRNE.W         R2, [R1,#0x370]
9A578:  SUBNE           R2, #1
9A57A:  STRNE.W         R2, [R1,#0x370]
9A57E:  LDR             R1, =(dword_1ACF70 - 0x9A586)
9A580:  LDR             R2, =(off_11724C - 0x9A588)
9A582:  ADD             R1, PC; dword_1ACF70
9A584:  ADD             R2, PC; off_11724C
9A586:  LDR             R1, [R1]
9A588:  LDR             R2, [R2]; j_opus_decoder_destroy_0
9A58A:  BLX             R2; j_opus_decoder_destroy_0
9A58C:  MOV             R0, R4
9A58E:  POP             {R4,R6,R7,PC}
