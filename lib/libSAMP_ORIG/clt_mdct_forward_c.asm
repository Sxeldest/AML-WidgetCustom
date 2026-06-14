; =========================================================
; Game Engine Function: clt_mdct_forward_c
; Address            : 0xC386C - 0xC3C82
; =========================================================

C386C:  PUSH            {R4-R7,LR}
C386E:  ADD             R7, SP, #0xC
C3870:  PUSH.W          {R8-R11}
C3874:  SUB             SP, SP, #0x44
C3876:  LDR.W           R6, =(__stack_chk_guard_ptr - 0xC3880)
C387A:  LDR             R4, [R7,#arg_4]
C387C:  ADD             R6, PC; __stack_chk_guard_ptr
C387E:  LDR.W           R8, [R7,#arg_0]
C3882:  CMP             R4, #1
C3884:  LDR             R6, [R6]; __stack_chk_guard
C3886:  LDR             R6, [R6]
C3888:  STR.W           R6, [R7,#var_24]
C388C:  ADD.W           R6, R0, R4,LSL#2
C3890:  LDR             R6, [R6,#8]
C3892:  STR.W           R6, [R7,#var_34]
C3896:  LDR             R5, [R0]
C3898:  LDR.W           R10, [R0,#0x18]
C389C:  LDR             R0, [R6,#8]
C389E:  STR.W           R0, [R7,#var_50]
C38A2:  MOV.W           R0, R5,ASR#1
C38A6:  LDRSH.W         R6, [R6,#4]
C38AA:  BLT             loc_C38BA
C38AC:  MOV             R5, R0
C38AE:  SUBS            R4, #1
C38B0:  ADD.W           R10, R10, R5,LSL#1
C38B4:  MOV.W           R0, R5,ASR#1
C38B8:  BNE             loc_C38AC
C38BA:  STRD.W          R6, R2, [R7,#var_4C]
C38BE:  MOVS            R2, #7
C38C0:  ADD.W           R2, R2, R0,LSL#2
C38C4:  BIC.W           R2, R2, #7
C38C8:  SUB.W           R9, SP, R2
C38CC:  MOV             SP, R9
C38CE:  MOV.W           LR, R5,ASR#2
C38D2:  MOV.W           R12, R8,ASR#1
C38D6:  ADD.W           R4, R8, #3
C38DA:  SUB.W           R2, SP, LR,LSL#3
C38DE:  ADD.W           R6, R1, R12,LSL#2
C38E2:  STR.W           R2, [R7,#var_30]
C38E6:  ASRS            R5, R4, #2
C38E8:  MOV             SP, R2
C38EA:  CMP             R5, #1
C38EC:  STRD.W          LR, R9, [R7,#var_2C]
C38F0:  STRD.W          R0, R3, [R7,#var_44]
C38F4:  BLT             loc_C39CE
C38F6:  LSLS            R4, R0, #2
C38F8:  BIC.W           R2, R8, #1
C38FC:  ADD.W           R4, R4, R12,LSL#2
C3900:  STR.W           R1, [R7,#var_54]
C3904:  ADD             R1, R4
C3906:  ADD             R2, R3
C3908:  STR.W           R1, [R7,#var_3C]
C390C:  ADD.W           R1, R0, R12
C3910:  ADD.W           R11, R9, R5,LSL#3
C3914:  STR.W           R2, [R7,#var_38]
C3918:  ADD.W           R2, R12, R5,LSL#1
C391C:  SUBS            R1, #1
C391E:  MOV.W           R12, #0
C3922:  MOV.W           R8, #0xFFFFFFFF
C3926:  SUB.W           R0, R1, R5,LSL#1
C392A:  STR.W           R10, [R7,#var_58]
C392E:  STR.W           R2, [R7,#var_5C]
C3932:  STR.W           R0, [R7,#var_60]
C3936:  LDR.W           R0, [R7,#var_3C]
C393A:  MOV             R10, R5
C393C:  LDR.W           R1, [R0,R12,LSL#3]
C3940:  LDR.W           R9, [R0,R8,LSL#2]
C3944:  LDR.W           R0, [R7,#var_38]
C3948:  UXTH.W          LR, R9
C394C:  UXTH            R2, R1
C394E:  LDRSH.W         R3, [R0,R12,LSL#2]
C3952:  LDRSH.W         R0, [R0,R8,LSL#1]
C3956:  MUL.W           R5, LR, R3
C395A:  LDR.W           LR, [R7,#var_28]
C395E:  MULS            R2, R0
C3960:  SMULTB.W        R4, R9, R3
C3964:  SMLATB.W        R1, R1, R0, R4
C3968:  ASRS            R5, R5, #0xF
C396A:  ADD.W           R2, R5, R2,ASR#15
C396E:  ADD.W           R1, R2, R1,LSL#1
C3972:  STR.W           R1, [LR,R12,LSL#3]
C3976:  LDR.W           R5, [R6,R12,LSL#3]
C397A:  LDR.W           R1, [R6,R8,LSL#2]
C397E:  SUB.W           R8, R8, #2
C3982:  UXTH            R4, R5
C3984:  UXTH            R2, R1
C3986:  MULS            R4, R3
C3988:  ASRS            R1, R1, #0x10
C398A:  SMULTB.W        R3, R5, R3
C398E:  MOV             R5, R10
C3990:  MULS            R2, R0
C3992:  MLS.W           R0, R1, R0, R3
C3996:  ASRS            R1, R4, #0xF
C3998:  SUB.W           R1, R1, R2,ASR#15
C399C:  ADD.W           R0, R1, R0,LSL#1
C39A0:  ADD.W           R1, LR, R12,LSL#3
C39A4:  ADD.W           R12, R12, #1
C39A8:  CMP             R5, R12
C39AA:  STR             R0, [R1,#4]
C39AC:  BNE             loc_C3936
C39AE:  LDR.W           R1, [R7,#var_60]
C39B2:  MOV             R4, R5
C39B4:  LDR.W           R0, [R7,#var_54]
C39B8:  LDR.W           R3, [R7,#var_2C]
C39BC:  ADD.W           R8, R0, R1,LSL#2
C39C0:  LDR.W           R1, [R7,#var_5C]
C39C4:  LDR.W           R10, [R7,#var_58]
C39C8:  ADD.W           R6, R0, R1,LSL#2
C39CC:  B               loc_C39E0
C39CE:  ADD.W           R2, R1, R0,LSL#2
C39D2:  MOVS            R4, #0
C39D4:  ADD.W           R2, R2, R12,LSL#2
C39D8:  MOV             R11, R9
C39DA:  SUB.W           R8, R2, #4
C39DE:  MOV             R3, LR
C39E0:  SUBS            R0, R3, R5
C39E2:  CMP             R4, R0
C39E4:  BGE             loc_C3A2E
C39E6:  STR.W           R0, [R7,#var_38]
C39EA:  SUBS            R2, R0, R4
C39EC:  ADDS            R0, R4, R5
C39EE:  MOV             R5, R3
C39F0:  MOV             R9, R6
C39F2:  MOV             R12, R8
C39F4:  LSLS            R1, R0, #1
C39F6:  SUB.W           R1, R1, R3,LSL#1
C39FA:  STR.W           R1, [R7,#var_3C]
C39FE:  LSLS            R1, R3, #1
C3A00:  SUB.W           R4, R1, R0,LSL#1
C3A04:  MOV             R1, R6
C3A06:  ADD.W           LR, R11, R4,LSL#2
C3A0A:  LDR.W           R3, [R9],#8
C3A0E:  SUBS            R2, #1
C3A10:  LDR.W           R0, [R12],#-8
C3A14:  STRD.W          R0, R3, [R11],#8
C3A18:  BNE             loc_C3A0A
C3A1A:  LDR.W           R0, [R7,#var_3C]
C3A1E:  ADD.W           R1, R1, R4,LSL#2
C3A22:  LDR.W           R4, [R7,#var_38]
C3A26:  MOV             R3, R5
C3A28:  ADD.W           R8, R8, R0,LSL#2
C3A2C:  B               loc_C3A32
C3A2E:  MOV             R1, R6
C3A30:  MOV             LR, R11
C3A32:  LDR.W           R12, [R7,#var_40]
C3A36:  CMP             R4, R3
C3A38:  STR.W           R1, [R7,#var_38]
C3A3C:  BGE             loc_C3AD6
C3A3E:  LDR             R1, [R7,#arg_0]
C3A40:  MOV             R0, #0xFFFFFFFE
C3A44:  ADD.W           R2, R0, R1,LSL#1
C3A48:  LDR.W           R0, [R7,#var_44]
C3A4C:  LDR.W           R1, [R7,#var_38]
C3A50:  SUB.W           R0, R1, R0,LSL#2
C3A54:  STR.W           R0, [R7,#var_3C]
C3A58:  LDR.W           R0, [R7,#var_2C]
C3A5C:  SUB.W           R11, R0, R4
C3A60:  MOVS            R4, #0
C3A62:  LDR.W           R0, [R7,#var_3C]
C3A66:  LDRSH.W         R3, [R12,R2]
C3A6A:  SUBS            R2, #4
C3A6C:  LDR.W           R5, [R8]
C3A70:  LDR.W           R0, [R0,R4,LSL#3]
C3A74:  LDRSH.W         R1, [R12,R4,LSL#2]
C3A78:  SMULTB.W        R9, R5, R3
C3A7C:  UXTH            R5, R5
C3A7E:  ASRS            R6, R0, #0x10
C3A80:  UXTH            R0, R0
C3A82:  MULS            R5, R3
C3A84:  MULS            R0, R1
C3A86:  MLS.W           R6, R6, R1, R9
C3A8A:  ASRS            R5, R5, #0xF
C3A8C:  SUB.W           R0, R5, R0,ASR#15
C3A90:  ADD.W           R0, R0, R6,LSL#1
C3A94:  STR.W           R0, [LR,R4,LSL#3]
C3A98:  LDR.W           R0, [R7,#var_44]
C3A9C:  LDR.W           R0, [R8,R0,LSL#2]
C3AA0:  SUB.W           R8, R8, #8
C3AA4:  UXTH            R5, R0
C3AA6:  SMULTB.W        R0, R0, R1
C3AAA:  MUL.W           R9, R5, R1
C3AAE:  LDR.W           R5, [R7,#var_38]
C3AB2:  LDR.W           R6, [R5,R4,LSL#3]
C3AB6:  MOV.W           R1, R9,ASR#15
C3ABA:  UXTH            R5, R6
C3ABC:  SMLATB.W        R0, R6, R3, R0
C3AC0:  MULS            R5, R3
C3AC2:  ADD.W           R1, R1, R5,ASR#15
C3AC6:  ADD.W           R0, R1, R0,LSL#1
C3ACA:  ADD.W           R1, LR, R4,LSL#3
C3ACE:  ADDS            R4, #1
C3AD0:  CMP             R11, R4
C3AD2:  STR             R0, [R1,#4]
C3AD4:  BNE             loc_C3A62
C3AD6:  LDR.W           R0, [R7,#var_2C]
C3ADA:  CMP             R0, #0
C3ADC:  BLE.W           loc_C3C5A
C3AE0:  LDR.W           R1, [R7,#var_50]
C3AE4:  ADD.W           R0, R10, R0,LSL#1
C3AE8:  STR.W           R0, [R7,#var_3C]
C3AEC:  MOVS            R0, #1
C3AEE:  SUBS            R1, #1
C3AF0:  LDR.W           LR, [R7,#var_4C]
C3AF4:  LDR.W           R9, [R7,#var_2C]
C3AF8:  MOVS            R4, #0
C3AFA:  LSLS            R0, R1
C3AFC:  STR.W           R1, [R7,#var_38]
C3B00:  ASRS            R0, R0, #1
C3B02:  STR.W           R0, [R7,#var_40]
C3B06:  LDR.W           R1, [R7,#var_3C]
C3B0A:  LDRSH.W         R0, [R10,R4,LSL#1]
C3B0E:  LDRSH.W         R6, [R1,R4,LSL#1]
C3B12:  LDR.W           R1, [R7,#var_28]
C3B16:  ADD.W           R2, R1, R4,LSL#3
C3B1A:  LDR.W           R5, [R1,R4,LSL#3]
C3B1E:  LDR             R2, [R2,#4]
C3B20:  SMULTB.W        R1, R5, R0
C3B24:  ASRS            R3, R2, #0x10
C3B26:  UXTH.W          R8, R2
C3B2A:  MLS.W           R11, R3, R6, R1
C3B2E:  UXTH            R3, R5
C3B30:  MUL.W           R1, R3, R0
C3B34:  MUL.W           R12, R8, R6
C3B38:  MUL.W           R8, R8, R0
C3B3C:  MULS            R3, R6
C3B3E:  ASRS            R1, R1, #0xF
C3B40:  SMULTB.W        R0, R2, R0
C3B44:  SUB.W           R1, R1, R12,ASR#15
C3B48:  SMLATB.W        R6, R5, R6, R0
C3B4C:  ADD.W           R1, R1, R11,LSL#1
C3B50:  MOV.W           R2, R8,ASR#15
C3B54:  LDR.W           R0, [R7,#var_34]
C3B58:  LDR.W           R5, [R7,#var_40]
C3B5C:  ADD.W           R2, R2, R3,ASR#15
C3B60:  UXTH            R3, R1
C3B62:  MUL.W           R12, R3, LR
C3B66:  ADD.W           R3, R2, R6,LSL#1
C3B6A:  SMLABT.W        R1, LR, R1, R5
C3B6E:  LDR             R6, [R0,#0x30]
C3B70:  UXTH            R2, R3
C3B72:  SMLABT.W        R3, LR, R3, R5
C3B76:  MUL.W           R8, R2, LR
C3B7A:  LDR.W           R2, [R7,#var_38]
C3B7E:  LDRSH.W         R6, [R6,R4,LSL#1]
C3B82:  ADD.W           R1, R1, R12,ASR#16
C3B86:  LDR.W           R5, [R7,#var_30]
C3B8A:  ADDS            R4, #1
C3B8C:  ASRS            R1, R2
C3B8E:  CMP             R9, R4
C3B90:  STR.W           R1, [R5,R6,LSL#3]
C3B94:  ADD.W           R1, R3, R8,ASR#16
C3B98:  ASR.W           R2, R1, R2
C3B9C:  ADD.W           R1, R5, R6,LSL#3
C3BA0:  STR             R2, [R1,#4]
C3BA2:  BNE             loc_C3B06
C3BA4:  LDR.W           R4, [R7,#var_30]
C3BA8:  MOV             R1, R4
C3BAA:  BLX             j_opus_fft_impl
C3BAE:  LDR.W           LR, [R7,#var_48]
C3BB2:  CMP.W           R9, #1
C3BB6:  BLT             loc_C3C62
C3BB8:  LDR.W           R0, [R7,#var_44]
C3BBC:  ADDS            R2, R4, #4
C3BBE:  LDR             R1, [R7,#arg_8]
C3BC0:  MOV             R8, R9
C3BC2:  SUBS            R0, #1
C3BC4:  MOV             R6, R1
C3BC6:  MUL.W           R1, R0, R6
C3BCA:  MOVS            R0, #0
C3BCC:  SUB.W           R0, R0, R6,LSL#3
C3BD0:  STR.W           R0, [R7,#var_34]
C3BD4:  LSLS            R0, R6, #3
C3BD6:  STR.W           R0, [R7,#var_30]
C3BDA:  ADD.W           R1, LR, R1,LSL#2
C3BDE:  LDRSH.W         R6, [R10,R9,LSL#1]
C3BE2:  SUBS.W          R8, R8, #1
C3BE6:  LDR.W           R4, [R2,#-4]
C3BEA:  LDR             R0, [R2]
C3BEC:  ADD.W           R2, R2, #8
C3BF0:  LDRSH.W         R3, [R10]
C3BF4:  ADD.W           R10, R10, #2
C3BF8:  SMULTB.W        R5, R4, R6
C3BFC:  SMULTB.W        R11, R0, R6
C3C00:  SMLATB.W        R5, R0, R3, R5
C3C04:  UXTH            R0, R0
C3C06:  MUL.W           R12, R0, R3
C3C0A:  MUL.W           R0, R6, R0
C3C0E:  STR.W           R5, [R7,#var_28]
C3C12:  MOV.W           R5, R4,ASR#16
C3C16:  UXTH            R4, R4
C3C18:  MLS.W           R11, R5, R3, R11
C3C1C:  MUL.W           R3, R4, R3
C3C20:  MUL.W           R5, R4, R6
C3C24:  MOV.W           R0, R0,ASR#15
C3C28:  SUB.W           R0, R0, R3,ASR#15
C3C2C:  ADD.W           R0, R0, R11,LSL#1
C3C30:  STR.W           R0, [LR]
C3C34:  LDR.W           R6, [R7,#var_28]
C3C38:  MOV.W           R0, R5,ASR#15
C3C3C:  ADD.W           R0, R0, R12,ASR#15
C3C40:  LDR.W           R9, [R7,#var_2C]
C3C44:  ADD.W           R0, R0, R6,LSL#1
C3C48:  STR             R0, [R1]
C3C4A:  LDR.W           R0, [R7,#var_30]
C3C4E:  ADD             LR, R0
C3C50:  LDR.W           R0, [R7,#var_34]
C3C54:  ADD             R1, R0
C3C56:  BNE             loc_C3BDE
C3C58:  B               loc_C3C62
C3C5A:  LDRD.W          R0, R1, [R7,#var_34]
C3C5E:  BLX             j_opus_fft_impl
C3C62:  LDR             R0, =(__stack_chk_guard_ptr - 0xC3C6C)
C3C64:  LDR.W           R1, [R7,#var_24]
C3C68:  ADD             R0, PC; __stack_chk_guard_ptr
C3C6A:  LDR             R0, [R0]; __stack_chk_guard
C3C6C:  LDR             R0, [R0]
C3C6E:  SUBS            R0, R0, R1
C3C70:  ITTTT EQ
C3C72:  SUBEQ.W         R4, R7, #-var_1C
C3C76:  MOVEQ           SP, R4
C3C78:  POPEQ.W         {R8-R11}
C3C7C:  POPEQ           {R4-R7,PC}
C3C7E:  BLX             __stack_chk_fail
