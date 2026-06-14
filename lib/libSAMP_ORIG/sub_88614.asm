; =========================================================
; Game Engine Function: sub_88614
; Address            : 0x88614 - 0x88638
; =========================================================

88614:  CBZ             R0, loc_8862A
88616:  LDR             R1, =(dword_1ACF68 - 0x8861C)
88618:  ADD             R1, PC; dword_1ACF68
8861A:  LDR             R1, [R1]
8861C:  CMP             R1, #0
8861E:  ITTT NE
88620:  LDRNE.W         R2, [R1,#0x370]
88624:  SUBNE           R2, #1
88626:  STRNE.W         R2, [R1,#0x370]
8862A:  LDR             R1, =(dword_1ACF70 - 0x88632)
8862C:  LDR             R2, =(off_11724C - 0x88634)
8862E:  ADD             R1, PC; dword_1ACF70
88630:  ADD             R2, PC; off_11724C
88632:  LDR             R1, [R1]
88634:  LDR             R2, [R2]; j_opus_decoder_destroy_0
88636:  BX              R2; j_opus_decoder_destroy_0
