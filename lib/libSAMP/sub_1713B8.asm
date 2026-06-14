; =========================================================
; Game Engine Function: sub_1713B8
; Address            : 0x1713B8 - 0x171416
; =========================================================

1713B8:  PUSH            {R4-R7,LR}
1713BA:  ADD             R7, SP, #0xC
1713BC:  PUSH.W          {R8}
1713C0:  MOV             R4, R0
1713C2:  BL              sub_17165C
1713C6:  LDR             R0, [R4,#0x14]
1713C8:  LDR             R1, =(dword_381B58 - 0x1713D2)
1713CA:  LDR             R3, =(dword_381B60 - 0x1713D4)
1713CC:  LDR             R6, =(off_2390B0 - 0x1713D6)
1713CE:  ADD             R1, PC; dword_381B58
1713D0:  ADD             R3, PC; dword_381B60
1713D2:  ADD             R6, PC; off_2390B0
1713D4:  CBZ             R0, loc_1713F6
1713D6:  MOV             R8, R1
1713D8:  LDR             R1, [R1]
1713DA:  CBZ             R1, loc_1713E6
1713DC:  LDR.W           R2, [R1,#0x370]
1713E0:  SUBS            R2, #1
1713E2:  STR.W           R2, [R1,#0x370]
1713E6:  LDR             R1, [R3]
1713E8:  LDR             R2, [R6]; j_opus_decoder_destroy_0
1713EA:  MOV             R5, R6
1713EC:  MOV             R6, R3
1713EE:  BLX             R2; j_opus_decoder_destroy_0
1713F0:  MOV             R3, R6
1713F2:  MOV             R6, R5
1713F4:  MOV             R1, R8
1713F6:  LDR             R0, [R4,#8]
1713F8:  CBZ             R0, loc_17140E
1713FA:  LDR             R1, [R1]
1713FC:  CBZ             R1, loc_171408
1713FE:  LDR.W           R2, [R1,#0x370]
171402:  SUBS            R2, #1
171404:  STR.W           R2, [R1,#0x370]
171408:  LDR             R1, [R3]
17140A:  LDR             R2, [R6]; j_opus_decoder_destroy_0
17140C:  BLX             R2; j_opus_decoder_destroy_0
17140E:  MOV             R0, R4
171410:  POP.W           {R8}
171414:  POP             {R4-R7,PC}
