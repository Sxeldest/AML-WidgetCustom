; =========================================================
; Game Engine Function: silk_resampler_private_IIR_FIR
; Address            : 0xB56F8 - 0xB58E8
; =========================================================

B56F8:  PUSH            {R4-R7,LR}
B56FA:  ADD             R7, SP, #0xC
B56FC:  PUSH.W          {R8-R11}
B5700:  SUB             SP, SP, #0x3C
B5702:  MOV             R8, R1
B5704:  LDR             R1, =(__stack_chk_guard_ptr - 0xB570A)
B5706:  ADD             R1, PC; __stack_chk_guard_ptr
B5708:  LDR             R1, [R1]; __stack_chk_guard
B570A:  LDR             R1, [R1]
B570C:  STR.W           R1, [R7,#var_24]
B5710:  MOVS            R1, #0x17
B5712:  LDR.W           R4, [R0,#0x10C]
B5716:  ADD.W           R1, R1, R4,LSL#2
B571A:  BIC.W           R1, R1, #7
B571E:  SUB.W           R10, SP, R1
B5722:  MOV             SP, R10
B5724:  MOV             R1, R0
B5726:  MOVW            R11, #0x8000
B572A:  LDR.W           LR, [R1,#0x18]!
B572E:  MOVT            R11, #0xFFFF
B5732:  LDR.W           R12, [R1,#4]
B5736:  LDR             R5, [R1,#8]
B5738:  LDR             R6, [R1,#0xC]
B573A:  STR.W           LR, [R10]
B573E:  STR.W           R6, [R10,#0xC]
B5742:  STR.W           R5, [R10,#8]
B5746:  STR.W           R12, [R10,#4]
B574A:  STR.W           R1, [R7,#var_54]
B574E:  LDR.W           R9, [R1,#0xF8]
B5752:  ADD.W           R1, R10, #0x10
B5756:  STR.W           R1, [R7,#var_4C]
B575A:  LDR             R1, =(silk_resampler_frac_FIR_12_ptr - 0xB5764)
B575C:  STR.W           R0, [R7,#var_50]
B5760:  ADD             R1, PC; silk_resampler_frac_FIR_12_ptr
B5762:  STR.W           R9, [R7,#var_3C]
B5766:  LDR             R6, [R1]; silk_resampler_frac_FIR_12
B5768:  STR.W           R6, [R7,#var_28]
B576C:  B               loc_B5798
B576E:  ADD.W           R1, R10, R5,LSL#2
B5772:  LDR.W           R0, [R10,R5,LSL#2]
B5776:  LDRD.W          R2, R6, [R1,#4]
B577A:  LDR             R1, [R1,#0xC]
B577C:  STM.W           R10, {R0,R2,R6}
B5780:  LDR.W           R0, [R7,#var_50]
B5784:  LDR.W           R2, [R7,#var_48]
B5788:  STR.W           R1, [R10,#0xC]
B578C:  LDR.W           R6, [R7,#var_28]
B5790:  ADD.W           R2, R2, R5,LSL#1
B5794:  LDR.W           R4, [R0,#0x10C]
B5798:  CMP             R3, R4
B579A:  STR.W           R3, [R7,#var_40]
B579E:  IT LT
B57A0:  MOVLT           R4, R3
B57A2:  LDR.W           R1, [R7,#var_4C]
B57A6:  MOV             R3, R4
B57A8:  STR.W           R2, [R7,#var_48]
B57AC:  BLX             j_silk_resampler_private_up2_HQ
B57B0:  LSLS            R0, R4, #0x11
B57B2:  CMP             R0, #1
B57B4:  STR.W           R4, [R7,#var_44]
B57B8:  BLT             loc_B58A2
B57BA:  MOVS            R1, #0
B57BC:  STR.W           R0, [R7,#var_38]
B57C0:  UXTH            R2, R1
B57C2:  MOV             LR, R11
B57C4:  LSLS            R2, R2, #1
B57C6:  UXTAH.W         R2, R2, R1
B57CA:  UBFX.W          R3, R2, #0xE, #0x10
B57CE:  LSLS            R2, R2, #2
B57D0:  ADD.W           R5, R6, R3,LSL#3
B57D4:  ASRS            R6, R1, #0x10
B57D6:  LDRSH.W         R0, [R5,#4]
B57DA:  STR.W           R0, [R7,#var_34]
B57DE:  LDRSH.W         R0, [R5,#6]
B57E2:  LDRSH.W         R4, [R5,#2]
B57E6:  ADD.W           R5, R10, R6,LSL#1
B57EA:  STR.W           R0, [R7,#var_2C]
B57EE:  MOV             R0, R8
B57F0:  MOV             R8, R10
B57F2:  LDRSH.W         R10, [R5,#2]
B57F6:  LDRSH.W         R12, [R5,#4]
B57FA:  LDRSH.W         R11, [R5,#6]
B57FE:  SMULBB.W        R4, R4, R10
B5802:  MOV             R10, R8
B5804:  MOV             R8, R0
B5806:  LDR.W           R0, [R7,#var_28]
B580A:  LDRSH.W         R6, [R10,R6,LSL#1]
B580E:  LDRSH.W         R9, [R5,#8]
B5812:  LDRSH.W         R3, [R0,R3,LSL#3]
B5816:  LDR.W           R0, [R7,#var_34]
B581A:  STR.W           R9, [R7,#var_30]
B581E:  LDR.W           R9, [R7,#var_3C]
B5822:  SMLABB.W        R3, R3, R6, R4
B5826:  LDR.W           R6, [R7,#var_30]
B582A:  SMLABB.W        R0, R0, R12, R3
B582E:  MOVS            R3, #0xB
B5830:  SUB.W           R2, R3, R2,LSR#16
B5834:  LDR.W           R3, [R7,#var_28]
B5838:  ADD             R1, R9
B583A:  LDRSH.W         R12, [R3,R2,LSL#3]
B583E:  LDR.W           R3, [R7,#var_28]
B5842:  ADD.W           R2, R3, R2,LSL#3
B5846:  LDR.W           R3, [R7,#var_2C]
B584A:  LDRSH.W         R4, [R2,#4]
B584E:  SMLABB.W        R0, R3, R11, R0
B5852:  MOV             R11, LR
B5854:  LDRSH.W         LR, [R2,#2]
B5858:  LDRSH.W         R2, [R2,#6]
B585C:  LDRSH.W         R3, [R5,#0xC]
B5860:  SMLABB.W        R0, R2, R6, R0
B5864:  LDRSH.W         R2, [R5,#0xE]
B5868:  LDRSH.W         R5, [R5,#0xA]
B586C:  LDR.W           R6, [R7,#var_28]
B5870:  SMLABB.W        R0, R4, R5, R0
B5874:  SMLABB.W        R0, LR, R3, R0
B5878:  MOVW            R3, #0x7FFF
B587C:  SMLABB.W        R0, R12, R2, R0
B5880:  MOVS            R2, #1
B5882:  ADD.W           R0, R2, R0,ASR#14
B5886:  ASRS            R2, R0, #1
B5888:  CMP             R2, R11
B588A:  MOV             R2, R11
B588C:  IT GT
B588E:  ASRGT           R2, R0, #1
B5890:  LDR.W           R0, [R7,#var_38]
B5894:  CMP             R2, R3
B5896:  IT GE
B5898:  MOVGE           R2, R3
B589A:  CMP             R1, R0
B589C:  STRH.W          R2, [R8],#2
B58A0:  BLT             loc_B57C0
B58A2:  LDRD.W          R5, R3, [R7,#var_44]
B58A6:  SUBS            R3, R3, R5
B58A8:  CMP             R3, #1
B58AA:  BGE.W           loc_B576E
B58AE:  LDR.W           R6, [R7,#var_54]
B58B2:  ADD.W           R1, R10, R5,LSL#2
B58B6:  LDR.W           R0, [R10,R5,LSL#2]
B58BA:  LDR             R2, [R1,#4]
B58BC:  LDR             R3, [R1,#8]
B58BE:  LDR             R1, [R1,#0xC]
B58C0:  STR             R0, [R6]
B58C2:  LDR             R0, =(__stack_chk_guard_ptr - 0xB58CA)
B58C4:  STR             R1, [R6,#0xC]
B58C6:  ADD             R0, PC; __stack_chk_guard_ptr
B58C8:  STR             R3, [R6,#8]
B58CA:  STR             R2, [R6,#4]
B58CC:  LDR             R0, [R0]; __stack_chk_guard
B58CE:  LDR.W           R1, [R7,#var_24]
B58D2:  LDR             R0, [R0]
B58D4:  SUBS            R0, R0, R1
B58D6:  ITTTT EQ
B58D8:  SUBEQ.W         R4, R7, #-var_1C
B58DC:  MOVEQ           SP, R4
B58DE:  POPEQ.W         {R8-R11}
B58E2:  POPEQ           {R4-R7,PC}
B58E4:  BLX             __stack_chk_fail
