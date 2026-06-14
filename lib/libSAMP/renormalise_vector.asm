; =========================================================
; Game Engine Function: renormalise_vector
; Address            : 0x19F624 - 0x19F6A8
; =========================================================

19F624:  PUSH            {R4-R7,LR}
19F626:  ADD             R7, SP, #0xC
19F628:  PUSH.W          {R8}
19F62C:  MOV             R4, R1
19F62E:  MOV             R8, R2
19F630:  MOV             R5, R0
19F632:  CMP             R4, #1
19F634:  BLT             loc_19F64C
19F636:  MOVS            R0, #0
19F638:  MOV             R1, R5
19F63A:  MOV             R2, R4
19F63C:  LDRSH.W         R3, [R1],#2
19F640:  SUBS            R2, #1
19F642:  SMLABB.W        R0, R3, R3, R0
19F646:  BNE             loc_19F63C
19F648:  ADDS            R1, R0, #1
19F64A:  B               loc_19F64E
19F64C:  MOVS            R1, #1
19F64E:  CLZ.W           R0, R1
19F652:  RSB.W           R2, R0, #0x1F
19F656:  BIC.W           R0, R2, #1
19F65A:  SUB.W           R3, R0, #0xE
19F65E:  RSB.W           R0, R0, #0xE
19F662:  ASRS            R6, R2, #1
19F664:  CMP             R6, #7
19F666:  LSL.W           R0, R1, R0
19F66A:  IT GT
19F66C:  ASRGT.W         R0, R1, R3
19F670:  BLX             j_celt_rsqrt_norm
19F674:  CMP             R4, #1
19F676:  BLT             loc_19F6A2
19F678:  SMULBB.W        R2, R8, R0
19F67C:  ADDS            R0, R6, #1
19F67E:  MOVS            R1, #1
19F680:  MOV.W           R3, #0x8000
19F684:  LSLS            R1, R0
19F686:  ASRS            R1, R1, #1
19F688:  ADD.W           R2, R3, R2,LSL#1
19F68C:  ASRS            R2, R2, #0x10
19F68E:  LDRSH.W         R3, [R5]
19F692:  SUBS            R4, #1
19F694:  SMLABB.W        R3, R2, R3, R1
19F698:  ASR.W           R3, R3, R0
19F69C:  STRH.W          R3, [R5],#2
19F6A0:  BNE             loc_19F68E
19F6A2:  POP.W           {R8}
19F6A6:  POP             {R4-R7,PC}
