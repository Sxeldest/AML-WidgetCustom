; =========================================================
; Game Engine Function: sub_88408
; Address            : 0x88408 - 0x88438
; =========================================================

88408:  PUSH            {R4,R6,R7,LR}
8840A:  ADD             R7, SP, #8
8840C:  MOV             R4, R0
8840E:  LDR             R0, [R0,#8]
88410:  CBZ             R0, loc_88434
88412:  LDR             R1, =(dword_1ACF68 - 0x88418)
88414:  ADD             R1, PC; dword_1ACF68
88416:  LDR             R1, [R1]
88418:  CMP             R1, #0
8841A:  ITTT NE
8841C:  LDRNE.W         R2, [R1,#0x370]
88420:  SUBNE           R2, #1
88422:  STRNE.W         R2, [R1,#0x370]
88426:  LDR             R1, =(dword_1ACF70 - 0x8842E)
88428:  LDR             R2, =(off_11724C - 0x88430)
8842A:  ADD             R1, PC; dword_1ACF70
8842C:  ADD             R2, PC; off_11724C
8842E:  LDR             R1, [R1]
88430:  LDR             R2, [R2]; j_opus_decoder_destroy_0
88432:  BLX             R2; j_opus_decoder_destroy_0
88434:  MOV             R0, R4
88436:  POP             {R4,R6,R7,PC}
