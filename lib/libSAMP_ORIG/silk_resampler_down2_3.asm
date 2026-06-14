; =========================================================
; Game Engine Function: silk_resampler_down2_3
; Address            : 0xCF5A0 - 0xCF774
; =========================================================

CF5A0:  PUSH            {R4-R7,LR}
CF5A2:  ADD             R7, SP, #0xC
CF5A4:  PUSH.W          {R8-R11}
CF5A8:  SUB.W           SP, SP, #0x7C8
CF5AC:  SUB             SP, SP, #4
CF5AE:  MOV             R8, R2
CF5B0:  LDR             R2, =(__stack_chk_guard_ptr - 0xCF5BA)
CF5B2:  MOV             R10, R1
CF5B4:  LDR             R1, =(silk_Resampler_2_3_COEFS_LQ_ptr - 0xCF5BE)
CF5B6:  ADD             R2, PC; __stack_chk_guard_ptr
CF5B8:  MOV             R5, R3
CF5BA:  ADD             R1, PC; silk_Resampler_2_3_COEFS_LQ_ptr
CF5BC:  LDR             R2, [R2]; __stack_chk_guard
CF5BE:  LDR             R1, [R1]; silk_Resampler_2_3_COEFS_LQ
CF5C0:  LDR             R2, [R2]
CF5C2:  STR.W           R2, [R7,#var_20]
CF5C6:  LDRD.W          R12, R2, [R0]
CF5CA:  LDRD.W          R3, R6, [R0,#8]
CF5CE:  LDRSH.W         R11, [R1,#(word_578DC - 0x578D8)]
CF5D2:  STR             R6, [SP,#0x7E8+var_7A4]
CF5D4:  LDRSH.W         R6, [R1,#(word_578E0 - 0x578D8)]
CF5D8:  LDRSH.W         R9, [R1,#(word_578DE - 0x578D8)]
CF5DC:  LDRSH.W         R1, [R1,#(word_578E2 - 0x578D8)]
CF5E0:  STR             R6, [SP,#0x7E8+var_7C0]
CF5E2:  ADD             R6, SP, #0x7E8+var_7B0
CF5E4:  STR             R1, [SP,#0x7E8+var_7BC]
CF5E6:  ADD.W           R1, R6, #8
CF5EA:  STRD.W          R2, R3, [SP,#0x7E8+var_7AC]
CF5EE:  STR             R0, [SP,#0x7E8+var_7E0]
CF5F0:  ADDS            R0, #0x10
CF5F2:  STR             R0, [SP,#0x7E8+var_7C8]
CF5F4:  LDR             R0, =(silk_Resampler_2_3_COEFS_LQ_ptr - 0xCF600)
CF5F6:  STR             R1, [SP,#0x7E8+var_7DC]
CF5F8:  ADD.W           R1, R6, #0x10
CF5FC:  ADD             R0, PC; silk_Resampler_2_3_COEFS_LQ_ptr
CF5FE:  STR.W           R12, [SP,#0x7E8+var_7B0]
CF602:  STR             R1, [SP,#0x7E8+var_7C4]
CF604:  LDR             R0, [R0]; silk_Resampler_2_3_COEFS_LQ
CF606:  STR             R0, [SP,#0x7E8+var_7CC]
CF608:  B               loc_CF622
CF60A:  ADD.W           R1, R6, R4,LSL#2
CF60E:  LDR.W           R0, [R6,R4,LSL#2]
CF612:  LDRD.W          R2, R3, [R1,#4]
CF616:  LDR             R1, [R1,#0xC]
CF618:  ADD.W           R8, R8, R4,LSL#1
CF61C:  STR             R1, [SP,#0x7E8+var_7A4]
CF61E:  ADD             R1, SP, #0x7E8+var_7B0
CF620:  STM             R1!, {R0,R2,R3}
CF622:  CMP.W           R5, #0x1E0
CF626:  MOV             R4, R5
CF628:  IT GE
CF62A:  MOVGE.W         R4, #0x1E0
CF62E:  MOV             R2, R8
CF630:  STR             R4, [SP,#0x7E8+var_7E8]
CF632:  LDRD.W          R0, R1, [SP,#0x7E8+var_7C8]
CF636:  LDR             R3, [SP,#0x7E8+var_7CC]
CF638:  BLX             j_silk_resampler_private_AR2
CF63C:  CMP             R4, #3
CF63E:  BLT             loc_CF736
CF640:  STRD.W          R4, R8, [SP,#0x7E8+var_7D8]
CF644:  MVNS            R0, R5
CF646:  MOV             R2, #0xFFFFFE1F
CF64A:  CMP             R0, R2
CF64C:  LDR             R1, [SP,#0x7E8+var_7B0]
CF64E:  STR             R5, [SP,#0x7E8+var_7D0]
CF650:  IT LE
CF652:  MOVLE           R0, R2
CF654:  LDR             R2, [SP,#0x7E8+var_7DC]
CF656:  RSB.W           LR, R0, #2
CF65A:  LDR             R5, [SP,#0x7E8+var_7BC]
CF65C:  UXTH            R3, R1
CF65E:  MOV             R12, R11
CF660:  MUL.W           R3, R3, R12
CF664:  LDR.W           R6, [R2,#-4]
CF668:  SUB.W           LR, LR, #3
CF66C:  UXTH            R0, R6
CF66E:  MUL.W           R4, R0, R9
CF672:  STR             R0, [SP,#0x7E8+var_7B4]
CF674:  ASRS            R3, R3, #0x10
CF676:  SMLATB.W        R1, R1, R12, R3
CF67A:  LDR             R3, [R2]
CF67C:  SMLATB.W        R1, R6, R9, R1
CF680:  ADD.W           R1, R1, R4,ASR#16
CF684:  UXTH            R4, R3
CF686:  MUL.W           R0, R4, R5
CF68A:  MOVS            R4, #1
CF68C:  SMLATB.W        R1, R3, R5, R1
CF690:  STR             R0, [SP,#0x7E8+var_7B8]
CF692:  ADD.W           R5, R1, R0,ASR#16
CF696:  LDR             R1, [R2,#4]
CF698:  LDR             R0, [SP,#0x7E8+var_7C0]
CF69A:  UXTH.W          R11, R1
CF69E:  MUL.W           R8, R11, R0
CF6A2:  SMLATB.W        R5, R1, R0, R5
CF6A6:  ADD.W           R5, R5, R8,ASR#16
CF6AA:  MOV             R8, #0xFFFF8000
CF6B2:  ADD.W           R5, R4, R5,ASR#5
CF6B6:  ASRS            R4, R5, #1
CF6B8:  CMP             R4, R8
CF6BA:  MOV             R4, R8
CF6BC:  IT GT
CF6BE:  ASRGT           R4, R5, #1
CF6C0:  MOVW            R5, #0x7FFF
CF6C4:  CMP             R4, R5
CF6C6:  IT GE
CF6C8:  MOVGE           R4, R5
CF6CA:  STRH.W          R4, [R10]
CF6CE:  LDR             R4, [SP,#0x7E8+var_7B4]
CF6D0:  MUL.W           R5, R4, R0
CF6D4:  ASRS            R5, R5, #0x10
CF6D6:  SMLATB.W        R6, R6, R0, R5
CF6DA:  LDR             R5, [SP,#0x7E8+var_7BC]
CF6DC:  LDR             R0, [SP,#0x7E8+var_7B8]
CF6DE:  SMLATB.W        R3, R3, R5, R6
CF6E2:  MUL.W           R6, R11, R9
CF6E6:  MOV             R11, R12
CF6E8:  ADD.W           R3, R3, R0,ASR#16
CF6EC:  MOVS            R0, #1
CF6EE:  SMLATB.W        R3, R1, R9, R3
CF6F2:  ADD.W           R3, R3, R6,ASR#16
CF6F6:  LDR             R6, [R2,#8]
CF6F8:  ADDS            R2, #0xC
CF6FA:  SMLATB.W        R3, R6, R12, R3
CF6FE:  UXTH            R6, R6
CF700:  MUL.W           R6, R6, R12
CF704:  ADD.W           R3, R3, R6,ASR#16
CF708:  ADD.W           R3, R0, R3,ASR#5
CF70C:  MOVW            R0, #0x7FFF
CF710:  ASRS            R6, R3, #1
CF712:  CMP             R6, R8
CF714:  IT GT
CF716:  MOVGT.W         R8, R3,ASR#1
CF71A:  CMP             R8, R0
CF71C:  IT GE
CF71E:  MOVGE           R8, R0
CF720:  CMP.W           LR, #5
CF724:  STRH.W          R8, [R10,#2]
CF728:  ADD.W           R10, R10, #4
CF72C:  BGT             loc_CF65C
CF72E:  LDRD.W          R8, R5, [SP,#0x7E8+var_7D4]
CF732:  ADD             R6, SP, #0x7E8+var_7B0
CF734:  LDR             R4, [SP,#0x7E8+var_7D8]
CF736:  SUBS            R5, R5, R4
CF738:  CMP             R5, #1
CF73A:  BGE.W           loc_CF60A
CF73E:  ADD.W           R1, R6, R4,LSL#2
CF742:  LDR.W           R0, [R6,R4,LSL#2]
CF746:  LDRD.W          R2, R3, [R1,#4]
CF74A:  LDR             R6, [SP,#0x7E8+var_7E0]
CF74C:  LDR             R1, [R1,#0xC]
CF74E:  STM.W           R6, {R0,R2,R3}
CF752:  LDR             R0, =(__stack_chk_guard_ptr - 0xCF75A)
CF754:  STR             R1, [R6,#0xC]
CF756:  ADD             R0, PC; __stack_chk_guard_ptr
CF758:  LDR.W           R1, [R7,#var_20]
CF75C:  LDR             R0, [R0]; __stack_chk_guard
CF75E:  LDR             R0, [R0]
CF760:  SUBS            R0, R0, R1
CF762:  ITTTT EQ
CF764:  ADDEQ.W         SP, SP, #0x7C8
CF768:  ADDEQ           SP, SP, #4
CF76A:  POPEQ.W         {R8-R11}
CF76E:  POPEQ           {R4-R7,PC}
CF770:  BLX             __stack_chk_fail
