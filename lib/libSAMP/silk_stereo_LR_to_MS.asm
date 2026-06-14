; =========================================================
; Game Engine Function: silk_stereo_LR_to_MS
; Address            : 0x1A993C - 0x1AA186
; =========================================================

1A993C:  PUSH            {R4-R7,LR}
1A993E:  ADD             R7, SP, #0xC
1A9940:  PUSH.W          {R8-R11}
1A9944:  SUB             SP, SP, #0x4C
1A9946:  STR.W           R3, [R7,#var_3C]
1A994A:  MOV             R9, R0
1A994C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1A995E)
1A9950:  MOV.W           LR, #7
1A9954:  LDR             R3, [R7,#arg_18]
1A9956:  MOVW            R10, #0x8000
1A995A:  ADD             R0, PC; __stack_chk_guard_ptr
1A995C:  STR.W           R2, [R7,#var_60]
1A9960:  ADD.W           R12, R3, #2
1A9964:  MOVT            R10, #0xFFFF
1A9968:  LDR             R0, [R0]; __stack_chk_guard
1A996A:  ADD.W           R2, LR, R12,LSL#1
1A996E:  BIC.W           R2, R2, #7
1A9972:  SUB.W           R11, SP, R2
1A9976:  SUBS            R2, R1, #4
1A9978:  LDR             R0, [R0]
1A997A:  STR.W           R0, [R7,#var_24]
1A997E:  STR.W           R1, [R7,#var_5C]
1A9982:  MOV             SP, R11
1A9984:  CMP.W           R3, #0xFFFFFFFF
1A9988:  BLT             loc_1A99CE
1A998A:  LDR.W           R0, [R7,#var_60]
1A998E:  MOVS            R6, #0
1A9990:  MOVW            R5, #0x7FFF
1A9994:  SUB.W           R8, R0, #4
1A9998:  LDRSH.W         R4, [R2,R6,LSL#1]
1A999C:  LDRSH.W         R0, [R8,R6,LSL#1]
1A99A0:  ADDS            R1, R0, R4
1A99A2:  SUBS            R0, R4, R0
1A99A4:  AND.W           R3, R1, #1
1A99A8:  ADD.W           R1, R3, R1,LSR#1
1A99AC:  STRH.W          R1, [R2,R6,LSL#1]
1A99B0:  AND.W           R1, R0, #1
1A99B4:  ADD.W           R0, R1, R0,ASR#1
1A99B8:  CMP             R0, R10
1A99BA:  IT LE
1A99BC:  MOVLE           R0, R10
1A99BE:  CMP             R0, R5
1A99C0:  IT GE
1A99C2:  MOVGE           R0, R5
1A99C4:  STRH.W          R0, [R11,R6,LSL#1]
1A99C8:  ADDS            R6, #1
1A99CA:  CMP             R6, R12
1A99CC:  BLT             loc_1A9998
1A99CE:  LDRD.W          R8, R6, [R7,#arg_8]
1A99D2:  MOV             R1, R11
1A99D4:  LDR.W           R0, [R9,#4]
1A99D8:  STR             R0, [R2]
1A99DA:  LDR             R4, [R7,#arg_18]
1A99DC:  LDR.W           R11, [R9,#8]
1A99E0:  STR.W           R11, [R1]
1A99E4:  LDR.W           R0, [R2,R4,LSL#1]
1A99E8:  STR.W           R0, [R9,#4]
1A99EC:  LDR.W           R0, [R1,R4,LSL#1]
1A99F0:  STR.W           R1, [R7,#var_64]
1A99F4:  STR.W           R0, [R9,#8]
1A99F8:  ADD.W           R0, LR, R4,LSL#1
1A99FC:  BIC.W           R0, R0, #7
1A9A00:  SUB.W           R1, SP, R0
1A9A04:  MOV             SP, R1
1A9A06:  SUB.W           R3, SP, R0
1A9A0A:  MOV             SP, R3
1A9A0C:  MOV.W           LR, R4,LSL#1
1A9A10:  CMP             R4, #0
1A9A12:  STR.W           R9, [R7,#var_4C]
1A9A16:  STR.W           R3, [R7,#var_38]
1A9A1A:  BLE             loc_1A9AD4
1A9A1C:  MOV             R6, R3
1A9A1E:  LDRH            R2, [R2]
1A9A20:  LDR.W           R3, [R7,#var_5C]
1A9A24:  MOV             R0, R4
1A9A26:  MOV.W           R8, R11,LSR#16
1A9A2A:  MOV.W           R10, #1
1A9A2E:  MOV             R4, R1
1A9A30:  MOV             R5, R0
1A9A32:  LDRSH.W         R12, [R3]
1A9A36:  SUBS            R5, #1
1A9A38:  LDRSH.W         R9, [R3,#-2]
1A9A3C:  ADD.W           R3, R3, #2
1A9A40:  SXTAH.W         R2, R12, R2
1A9A44:  ADD.W           R2, R2, R9,LSL#1
1A9A48:  ADD.W           R0, R10, R2,ASR#1
1A9A4C:  MOV.W           R2, R0,ASR#1
1A9A50:  STRH.W          R2, [R4],#2
1A9A54:  UXTH.W          R2, R9
1A9A58:  SUB.W           R0, R2, R0,ASR#1
1A9A5C:  STRH.W          R0, [R6],#2
1A9A60:  BNE             loc_1A9A32
1A9A62:  ADD.W           R0, LR, #7
1A9A66:  BIC.W           R0, R0, #7
1A9A6A:  SUB.W           R2, SP, R0
1A9A6E:  MOV             SP, R2
1A9A70:  SUB.W           R10, SP, R0
1A9A74:  MOV             SP, R10
1A9A76:  LDR             R4, [R7,#arg_18]
1A9A78:  CMP             R4, #1
1A9A7A:  BLT             loc_1A9AEA
1A9A7C:  LDR.W           R0, [R7,#var_64]
1A9A80:  MOV             R3, R10
1A9A82:  MOV.W           LR, #1
1A9A86:  STR.W           R3, [R7,#var_40]
1A9A8A:  ADD.W           R10, R0, #4
1A9A8E:  MOV             R5, R3
1A9A90:  MOV             R6, R2
1A9A92:  MOV             R3, R4
1A9A94:  LDRSH.W         R9, [R10],#2
1A9A98:  MOV             R12, R8
1A9A9A:  SXTH.W          R0, R12
1A9A9E:  SUBS            R3, #1
1A9AA0:  SXTAH.W         R8, R9, R11
1A9AA4:  MOV             R11, R12
1A9AA6:  ADD.W           R0, R8, R0,LSL#1
1A9AAA:  UXTH.W          R8, R9
1A9AAE:  ADD.W           R0, LR, R0,ASR#1
1A9AB2:  MOV.W           R4, R0,ASR#1
1A9AB6:  SUB.W           R0, R12, R0,ASR#1
1A9ABA:  STRH.W          R4, [R6],#2
1A9ABE:  STRH.W          R0, [R5],#2
1A9AC2:  BNE             loc_1A9A94
1A9AC4:  LDR.W           R9, [R7,#var_4C]
1A9AC8:  LDRD.W          R8, R6, [R7,#arg_8]
1A9ACC:  LDR             R4, [R7,#arg_18]
1A9ACE:  LDR.W           R10, [R7,#var_40]
1A9AD2:  B               loc_1A9AF2
1A9AD4:  ADD.W           R0, LR, #7
1A9AD8:  BIC.W           R0, R0, #7
1A9ADC:  SUB.W           R2, SP, R0
1A9AE0:  MOV             SP, R2
1A9AE2:  SUB.W           R10, SP, R0
1A9AE6:  MOV             SP, R10
1A9AE8:  B               loc_1A9AF2
1A9AEA:  LDR.W           R9, [R7,#var_4C]
1A9AEE:  LDRD.W          R8, R6, [R7,#arg_8]
1A9AF2:  LDR             R3, [R7,#arg_14]
1A9AF4:  SMULBB.W        R0, R6, R6
1A9AF8:  ADD.W           R5, R3, R3,LSL#2
1A9AFC:  MOVW            R3, #0x28F
1A9B00:  CMP.W           R4, R5,LSL#1
1A9B04:  UXTH            R6, R0
1A9B06:  IT EQ
1A9B08:  MOVEQ.W         R3, #0x148
1A9B0C:  LSRS            R0, R0, #0x10
1A9B0E:  MULS            R0, R3
1A9B10:  MULS            R6, R3
1A9B12:  SUB             SP, SP, #8
1A9B14:  ADD.W           R6, R0, R6,LSR#16
1A9B18:  ADD.W           R3, R9, #0xC
1A9B1C:  SUB.W           R0, R7, #-var_30
1A9B20:  STRD.W          R4, R6, [SP,#0x70+var_70]
1A9B24:  BLX             j_silk_stereo_find_predictor
1A9B28:  ADD             SP, SP, #8
1A9B2A:  MOV             R1, R0
1A9B2C:  STR.W           R0, [R7,#var_2C]
1A9B30:  STR.W           R1, [R7,#var_48]
1A9B34:  SUB             SP, SP, #8
1A9B36:  MOV             R0, R6
1A9B38:  LDR.W           R1, [R7,#var_38]
1A9B3C:  STR.W           R0, [R7,#var_40]
1A9B40:  ADD.W           R3, R9, #0x14
1A9B44:  SUB.W           R0, R7, #-var_34
1A9B48:  MOV             R2, R10
1A9B4A:  STR             R4, [SP,#0x70+var_70]
1A9B4C:  STR             R6, [SP,#0x70+var_6C]
1A9B4E:  BLX             j_silk_stereo_find_predictor
1A9B52:  ADD             SP, SP, #8
1A9B54:  STR.W           R0, [R7,#var_38]
1A9B58:  CMP.W           R4, R5,LSL#1
1A9B5C:  MOV.W           R0, #0x258
1A9B60:  STR.W           R5, [R7,#var_44]
1A9B64:  IT EQ
1A9B66:  MOVEQ.W         R0, #0x4B0
1A9B6A:  SUB.W           R10, R8, R0
1A9B6E:  CMP.W           R10, #1
1A9B72:  IT LE
1A9B74:  MOVLE.W         R10, #1
1A9B78:  CMP.W           R10, #0
1A9B7C:  MOV             R0, R10
1A9B7E:  IT MI
1A9B80:  RSBMI.W         R0, R10, #0
1A9B84:  LDR.W           R1, [R7,#var_34]
1A9B88:  CLZ.W           R4, R0
1A9B8C:  SUBS            R0, R4, #1
1A9B8E:  LSL.W           R5, R10, R0
1A9B92:  LDRSH.W         R0, [R7,#var_30]
1A9B96:  ADD.W           R0, R0, R0,LSL#1
1A9B9A:  ADD             R1, R0
1A9B9C:  MOVW            R0, #0x8000
1A9BA0:  CMP.W           R1, #0x10000
1A9BA4:  MOVT            R0, #0xFFFF
1A9BA8:  IT GE
1A9BAA:  MOVGE.W         R1, #0x10000
1A9BAE:  SUB.W           R0, R0, #0xC8000
1A9BB2:  ADD.W           R8, R1, R1,LSL#1
1A9BB6:  STR.W           R1, [R7,#var_50]
1A9BBA:  ADD.W           R1, R8, #0xD0000
1A9BBE:  SUBS.W          R0, R0, R8
1A9BC2:  IT LT
1A9BC4:  MOVLT           R0, R1
1A9BC6:  CLZ.W           R6, R0
1A9BCA:  SUBS            R0, R6, #1
1A9BCC:  LSL.W           R11, R1, R0
1A9BD0:  MOV             R0, #0x1FFFFFFF
1A9BD4:  MOV.W           R1, R11,ASR#16
1A9BD8:  BLX             sub_220A40
1A9BDC:  UXTH            R1, R5
1A9BDE:  SXTH            R2, R0
1A9BE0:  MULS            R1, R2
1A9BE2:  ASRS            R1, R1, #0x10
1A9BE4:  SMLABT.W        R1, R0, R5, R1
1A9BE8:  SMMUL.W         R3, R11, R1
1A9BEC:  SUB.W           R3, R5, R3,LSL#3
1A9BF0:  SMLABT.W        R0, R0, R3, R1
1A9BF4:  UXTH            R1, R3
1A9BF6:  MULS            R1, R2
1A9BF8:  MOV.W           R3, #0x7D0
1A9BFC:  ADD.W           R0, R0, R1,ASR#16
1A9C00:  RSB.W           R1, R6, #1
1A9C04:  ADD             R1, R4
1A9C06:  MOV.W           R6, #0x258
1A9C0A:  ADD.W           R2, R1, #9
1A9C0E:  LDR             R1, [R7,#arg_14]
1A9C10:  CMP.W           R2, #0xFFFFFFFF
1A9C14:  SXTH            R1, R1
1A9C16:  SMLABB.W        R11, R1, R6, R3
1A9C1A:  LDR.W           R1, [R7,#var_38]
1A9C1E:  STR.W           R1, [R7,#var_28]
1A9C22:  BLE             loc_1A9C30
1A9C24:  MOVS            R1, #0
1A9C26:  CMP             R2, #0x20 ; ' '
1A9C28:  IT LT
1A9C2A:  ASRLT.W         R1, R0, R2
1A9C2E:  B               loc_1A9C62
1A9C30:  NEGS            R1, R2
1A9C32:  MOV             R2, #0x7FFFFFFF
1A9C36:  MOV.W           R3, #0x80000000
1A9C3A:  LSRS            R2, R1
1A9C3C:  ASRS            R3, R1
1A9C3E:  CMP             R3, R2
1A9C40:  BLE             loc_1A9C50
1A9C42:  CMP             R0, R3
1A9C44:  MOV             R5, R3
1A9C46:  BGT             loc_1A9C5E
1A9C48:  CMP             R0, R2
1A9C4A:  IT LT
1A9C4C:  MOVLT           R0, R2
1A9C4E:  B               loc_1A9C5C
1A9C50:  CMP             R0, R2
1A9C52:  MOV             R5, R2
1A9C54:  BGT             loc_1A9C5E
1A9C56:  CMP             R0, R3
1A9C58:  IT LT
1A9C5A:  MOVLT           R0, R3
1A9C5C:  MOV             R5, R0
1A9C5E:  LSL.W           R1, R5, R1
1A9C62:  LDRD.W          R4, R5, [R7,#arg_0]
1A9C66:  CMP             R1, R11
1A9C68:  LDR             R6, [R7,#arg_10]
1A9C6A:  STR             R1, [R5]
1A9C6C:  BGE             loc_1A9D02
1A9C6E:  ADD.W           R0, R8, #0x10000
1A9C72:  SXTH.W          R1, R11
1A9C76:  SUB.W           R8, R10, R11
1A9C7A:  UXTH            R2, R0
1A9C7C:  MULS            R2, R1
1A9C7E:  RSB.W           R1, R11, R8,LSL#1
1A9C82:  CMP             R1, #0
1A9C84:  MOV             R3, R1
1A9C86:  IT MI
1A9C88:  NEGMI           R3, R1
1A9C8A:  CLZ.W           R4, R3
1A9C8E:  ASRS            R2, R2, #0x10
1A9C90:  SMLATB.W        R0, R0, R11, R2
1A9C94:  SUBS            R2, R4, #1
1A9C96:  LSL.W           R5, R1, R2
1A9C9A:  CMP             R0, #0
1A9C9C:  MOV             R1, R0
1A9C9E:  IT MI
1A9CA0:  NEGMI           R1, R0
1A9CA2:  CLZ.W           R6, R1
1A9CA6:  SUBS            R1, R6, #1
1A9CA8:  LSL.W           R9, R0, R1
1A9CAC:  MOV             R0, #0x1FFFFFFF
1A9CB0:  MOV.W           R1, R9,ASR#16
1A9CB4:  BLX             sub_220A40
1A9CB8:  UXTH            R1, R5
1A9CBA:  SXTH            R2, R0
1A9CBC:  MULS            R1, R2
1A9CBE:  ASRS            R1, R1, #0x10
1A9CC0:  SMLABT.W        R1, R0, R5, R1
1A9CC4:  SMMUL.W         R3, R1, R9
1A9CC8:  SUB.W           R3, R5, R3,LSL#3
1A9CCC:  UXTH            R5, R3
1A9CCE:  SMLABT.W        R0, R0, R3, R1
1A9CD2:  MULS            R2, R5
1A9CD4:  RSB.W           R1, R6, #1
1A9CD8:  LDR             R5, [R7,#arg_4]
1A9CDA:  ADD             R1, R4
1A9CDC:  STRD.W          R11, R8, [R5]
1A9CE0:  ADD.W           R0, R0, R2,ASR#16
1A9CE4:  ADD.W           R2, R1, #0xC
1A9CE8:  CMP.W           R2, #0xFFFFFFFF
1A9CEC:  BLE             loc_1A9D0E
1A9CEE:  MOVS            R1, #0
1A9CF0:  CMP             R2, #0x20 ; ' '
1A9CF2:  IT LT
1A9CF4:  ASRLT.W         R1, R0, R2
1A9CF8:  LDR.W           R9, [R7,#var_4C]
1A9CFC:  LDR             R4, [R7,#arg_0]
1A9CFE:  LDR             R6, [R7,#arg_10]
1A9D00:  B               loc_1A9D4E
1A9D02:  SUB.W           R0, R10, R1
1A9D06:  MOV.W           R1, #0x4000
1A9D0A:  STR             R0, [R5,#4]
1A9D0C:  B               loc_1A9D5E
1A9D0E:  RSB.W           R12, R2, #0
1A9D12:  LDR.W           R9, [R7,#var_4C]
1A9D16:  LDR             R4, [R7,#arg_0]
1A9D18:  MOV             R2, #0x7FFFFFFF
1A9D1C:  LDR             R6, [R7,#arg_10]
1A9D1E:  MOV.W           R3, #0x80000000
1A9D22:  LSR.W           R2, R2, R12
1A9D26:  ASR.W           R3, R3, R12
1A9D2A:  CMP             R3, R2
1A9D2C:  BLE             loc_1A9D3C
1A9D2E:  CMP             R0, R3
1A9D30:  MOV             R1, R3
1A9D32:  BGT             loc_1A9D4A
1A9D34:  CMP             R0, R2
1A9D36:  IT LT
1A9D38:  MOVLT           R0, R2
1A9D3A:  B               loc_1A9D48
1A9D3C:  CMP             R0, R2
1A9D3E:  MOV             R1, R2
1A9D40:  BGT             loc_1A9D4A
1A9D42:  CMP             R0, R3
1A9D44:  IT LT
1A9D46:  MOVLT           R0, R3
1A9D48:  MOV             R1, R0
1A9D4A:  LSL.W           R1, R1, R12
1A9D4E:  CMP             R1, #0
1A9D50:  IT LE
1A9D52:  MOVLE           R1, #0
1A9D54:  CMP.W           R1, #0x4000
1A9D58:  IT GE
1A9D5A:  MOVGE.W         R1, #0x4000
1A9D5E:  LDRSH.W         R0, [R9,#0x1C]
1A9D62:  CMP             R6, #0
1A9D64:  LDR.W           R3, [R7,#var_40]
1A9D68:  SUB.W           R1, R1, R0
1A9D6C:  UXTH            R2, R1
1A9D6E:  SXTH            R3, R3
1A9D70:  MOV.W           R1, R1,LSR#16
1A9D74:  MUL.W           R2, R3, R2
1A9D78:  MLA.W           R0, R1, R3, R0
1A9D7C:  ADD.W           R0, R0, R2,LSR#16
1A9D80:  STRH.W          R0, [R9,#0x1C]
1A9D84:  MOV.W           R0, #0
1A9D88:  STRB            R0, [R4]
1A9D8A:  BEQ             loc_1A9DA8
1A9D8C:  MOVS            R1, #0
1A9D8E:  STR.W           R0, [R7,#var_28]
1A9D92:  STR.W           R1, [R7,#var_50]
1A9D96:  LDR.W           R1, [R7,#var_3C]
1A9D9A:  STR.W           R0, [R7,#var_2C]
1A9D9E:  SUB.W           R0, R7, #-var_2C
1A9DA2:  BLX             j_silk_stereo_quant_pred
1A9DA6:  B               loc_1A9ECE
1A9DA8:  LDRH.W          R1, [R9,#0x1E]
1A9DAC:  MOV.W           R0, R10,LSL#3
1A9DB0:  CBZ             R1, loc_1A9DC2
1A9DB2:  MOVS            R1, #0xB
1A9DB4:  MUL.W           R1, R11, R1
1A9DB8:  CMP             R0, R1
1A9DBA:  BGE             loc_1A9DD2
1A9DBC:  LDRH.W          R0, [R9,#0x1C]
1A9DC0:  B               loc_1A9DEC
1A9DC2:  MOVS            R1, #0xD
1A9DC4:  MUL.W           R1, R11, R1
1A9DC8:  CMP             R0, R1
1A9DCA:  BGE             loc_1A9E26
1A9DCC:  LDRH.W          R0, [R9,#0x1C]
1A9DD0:  B               loc_1A9E42
1A9DD2:  LDR.W           R2, [R7,#var_50]
1A9DD6:  LDRSH.W         R0, [R9,#0x1C]
1A9DDA:  UXTH            R1, R2
1A9DDC:  MULS            R1, R0
1A9DDE:  ASRS            R1, R1, #0x10
1A9DE0:  SMLATB.W        R1, R2, R0, R1
1A9DE4:  UXTH            R0, R0
1A9DE6:  CMP.W           R1, #0x148
1A9DEA:  BGE             loc_1A9E82
1A9DEC:  LDR.W           R1, [R7,#var_38]
1A9DF0:  LDR.W           R2, [R7,#var_48]
1A9DF4:  SMULBB.W        R1, R1, R0
1A9DF8:  SMULBB.W        R0, R2, R0
1A9DFC:  ASRS            R1, R1, #0xE
1A9DFE:  STR.W           R1, [R7,#var_28]
1A9E02:  ASRS            R0, R0, #0xE
1A9E04:  LDR.W           R1, [R7,#var_3C]
1A9E08:  STR.W           R0, [R7,#var_2C]
1A9E0C:  SUB.W           R0, R7, #-var_2C
1A9E10:  BLX             j_silk_stereo_quant_pred
1A9E14:  MOVS            R1, #0
1A9E16:  MOVS            R0, #0
1A9E18:  STR.W           R1, [R7,#var_28]
1A9E1C:  STR.W           R0, [R7,#var_50]
1A9E20:  STR.W           R1, [R7,#var_2C]
1A9E24:  B               loc_1A9ECE
1A9E26:  LDR.W           R2, [R7,#var_50]
1A9E2A:  LDRSH.W         R0, [R9,#0x1C]
1A9E2E:  UXTH            R1, R2
1A9E30:  MULS            R1, R0
1A9E32:  ASRS            R1, R1, #0x10
1A9E34:  SMLATB.W        R1, R2, R0, R1
1A9E38:  MOVW            R2, #0x332
1A9E3C:  UXTH            R0, R0
1A9E3E:  CMP             R1, R2
1A9E40:  BGT             loc_1A9E82
1A9E42:  LDR.W           R1, [R7,#var_38]
1A9E46:  LDR.W           R2, [R7,#var_48]
1A9E4A:  SMULBB.W        R1, R1, R0
1A9E4E:  SMULBB.W        R0, R2, R0
1A9E52:  ASRS            R1, R1, #0xE
1A9E54:  STR.W           R1, [R7,#var_28]
1A9E58:  ASRS            R0, R0, #0xE
1A9E5A:  LDR.W           R1, [R7,#var_3C]
1A9E5E:  STR.W           R0, [R7,#var_2C]
1A9E62:  SUB.W           R0, R7, #-var_2C
1A9E66:  BLX             j_silk_stereo_quant_pred
1A9E6A:  MOVS            R1, #0
1A9E6C:  MOVS            R0, #0
1A9E6E:  STRD.W          R1, R1, [R7,#var_2C]
1A9E72:  STR.W           R10, [R5]
1A9E76:  STR.W           R0, [R7,#var_50]
1A9E7A:  MOVS            R0, #1
1A9E7C:  STR             R1, [R5,#4]
1A9E7E:  STRB            R0, [R4]
1A9E80:  B               loc_1A9ED4
1A9E82:  SXTH            R1, R0
1A9E84:  MOVW            R2, #0x3CCE
1A9E88:  CMP             R1, R2
1A9E8A:  BLT             loc_1A9E9E
1A9E8C:  LDR.W           R1, [R7,#var_3C]
1A9E90:  SUB.W           R0, R7, #-var_2C
1A9E94:  BLX             j_silk_stereo_quant_pred
1A9E98:  MOV.W           R0, #0x4000
1A9E9C:  B               loc_1A9ECA
1A9E9E:  LDR.W           R1, [R7,#var_38]
1A9EA2:  LDR.W           R2, [R7,#var_48]
1A9EA6:  SMULBB.W        R1, R1, R0
1A9EAA:  SMULBB.W        R0, R2, R0
1A9EAE:  ASRS            R1, R1, #0xE
1A9EB0:  STR.W           R1, [R7,#var_28]
1A9EB4:  ASRS            R0, R0, #0xE
1A9EB6:  LDR.W           R1, [R7,#var_3C]
1A9EBA:  STR.W           R0, [R7,#var_2C]
1A9EBE:  SUB.W           R0, R7, #-var_2C
1A9EC2:  BLX             j_silk_stereo_quant_pred
1A9EC6:  LDRSH.W         R0, [R9,#0x1C]
1A9ECA:  STR.W           R0, [R7,#var_50]
1A9ECE:  LDRB            R0, [R4]
1A9ED0:  CMP             R0, #1
1A9ED2:  BNE             loc_1A9EF6
1A9ED4:  LDRH.W          R0, [R9,#0x20]
1A9ED8:  LDRD.W          R2, R1, [R7,#arg_14]
1A9EDC:  SUB.W           R1, R1, R2,LSL#3
1A9EE0:  ADD             R0, R1
1A9EE2:  STRH.W          R0, [R9,#0x20]
1A9EE6:  LDR.W           R1, [R7,#var_44]
1A9EEA:  SXTH            R0, R0
1A9EEC:  CMP             R0, R1
1A9EEE:  BGE             loc_1A9EFA
1A9EF0:  MOVS            R0, #0
1A9EF2:  STRB            R0, [R4]
1A9EF4:  B               loc_1A9F06
1A9EF6:  MOVS            R0, #0
1A9EF8:  B               loc_1A9EFE
1A9EFA:  MOVW            R0, #0x2710
1A9EFE:  STRH.W          R0, [R9,#0x20]
1A9F02:  LDRB            R0, [R4]
1A9F04:  CBNZ            R0, loc_1A9F1C
1A9F06:  LDR             R0, [R5,#4]
1A9F08:  CMP             R0, #0
1A9F0A:  BGT             loc_1A9F1C
1A9F0C:  SUB.W           R1, R10, #1
1A9F10:  MOVS            R0, #1
1A9F12:  CMP             R1, #1
1A9F14:  IT LE
1A9F16:  MOVLE           R1, R0
1A9F18:  STRD.W          R1, R0, [R5]
1A9F1C:  LDR             R0, [R7,#arg_14]
1A9F1E:  MOV             R4, R0
1A9F20:  MOV.W           R0, #0x10000
1A9F24:  MOV.W           R11, R4,LSL#3
1A9F28:  MOV             R1, R11
1A9F2A:  BLX             sub_220A40
1A9F2E:  LDR.W           R1, [R7,#var_2C]
1A9F32:  CMP             R4, #1
1A9F34:  STR.W           R1, [R7,#var_54]
1A9F38:  LDR.W           R1, [R7,#var_28]
1A9F3C:  STR.W           R1, [R7,#var_58]
1A9F40:  MOV             R1, #0xFFFF8000
1A9F48:  MOV             R5, R1
1A9F4A:  BLT.W           loc_1AA07C
1A9F4E:  LDR.W           R1, [R7,#var_4C]
1A9F52:  MOVS            R3, #1
1A9F54:  LDR.W           R2, [R7,#var_58]
1A9F58:  MOV.W           R9, #0
1A9F5C:  MOVW            R10, #0x7FFF
1A9F60:  LDRSH.W         R8, [R1,#2]
1A9F64:  LDRSH.W         LR, [R1]
1A9F68:  SUB.W           R6, R2, R8
1A9F6C:  LDR.W           R2, [R7,#var_54]
1A9F70:  LDRSH.W         R1, [R1,#0x1E]
1A9F74:  SMULBB.W        R6, R6, R0
1A9F78:  ADD.W           R6, R3, R6,ASR#15
1A9F7C:  MOV.W           R12, R6,ASR#1
1A9F80:  SUB.W           R6, R2, LR
1A9F84:  LDR.W           R2, [R7,#var_50]
1A9F88:  SMULBB.W        R6, R6, R0
1A9F8C:  SUBS            R4, R2, R1
1A9F8E:  SXTH            R2, R0
1A9F90:  ADD.W           R6, R3, R6,ASR#15
1A9F94:  UXTH            R3, R4
1A9F96:  MULS            R2, R3
1A9F98:  ASRS            R6, R6, #1
1A9F9A:  ASRS            R2, R2, #0x10
1A9F9C:  SMLATB.W        R0, R4, R0, R2
1A9FA0:  SUB.W           R2, R5, #0x8000
1A9FA4:  MUL.W           R4, R12, R2
1A9FA8:  MUL.W           R3, R6, R2
1A9FAC:  LSLS            R0, R0, #0xA
1A9FAE:  STR.W           R0, [R7,#var_38]
1A9FB2:  ADD.W           R1, R0, R1,LSL#10
1A9FB6:  LSLS            R0, R6, #0x10
1A9FB8:  SUB.W           R4, R4, R8,LSL#16
1A9FBC:  STR.W           R0, [R7,#var_3C]
1A9FC0:  LDR.W           R0, [R7,#var_60]
1A9FC4:  SUB.W           R2, R3, LR,LSL#16
1A9FC8:  LDR.W           R8, [R7,#var_5C]
1A9FCC:  SUBS            R0, #2
1A9FCE:  STR.W           R0, [R7,#var_40]
1A9FD2:  MOV.W           R0, R12,LSL#16
1A9FD6:  STR.W           R0, [R7,#var_44]
1A9FDA:  LDR.W           R0, [R7,#var_64]
1A9FDE:  ADDS            R0, #2
1A9FE0:  STR.W           R0, [R7,#var_48]
1A9FE4:  LDR.W           R0, [R7,#var_48]
1A9FE8:  MOV             LR, R11
1A9FEA:  LDRSH.W         R12, [R8,#-4]
1A9FEE:  LDRSH.W         R11, [R0,R9,LSL#1]
1A9FF2:  LDRSH.W         R0, [R8,#-2]
1A9FF6:  ASRS            R6, R0, #5
1A9FF8:  SMULTB.W        R3, R1, R11
1A9FFC:  SMLABT.W        R3, R6, R4, R3
1AA000:  AND.W           R6, R1, #0xFC00
1AA004:  MUL.W           R6, R6, R11
1AA008:  MOV             R11, R5
1AA00A:  ASRS            R5, R4, #0x10
1AA00C:  ADD.W           R3, R3, R6,ASR#16
1AA010:  LSLS            R6, R0, #0xB
1AA012:  UXTH            R6, R6
1AA014:  MULS            R5, R6
1AA016:  ADD.W           R3, R3, R5,ASR#16
1AA01A:  LDRSH.W         R5, [R8]
1AA01E:  ADD.W           R8, R8, #2
1AA022:  ADD.W           R6, R5, R12
1AA026:  ASRS            R5, R2, #0x10
1AA028:  ADD.W           R0, R6, R0,LSL#1
1AA02C:  LSLS            R6, R0, #9
1AA02E:  ASRS            R0, R0, #7
1AA030:  UXTH            R6, R6
1AA032:  SMLABT.W        R0, R0, R2, R3
1AA036:  MULS            R6, R5
1AA038:  MOVS            R3, #1
1AA03A:  MOV             R5, R11
1AA03C:  MOV             R11, LR
1AA03E:  ADD.W           R0, R0, R6,ASR#16
1AA042:  ADD.W           R0, R3, R0,ASR#7
1AA046:  ASRS            R3, R0, #1
1AA048:  CMP             R3, R5
1AA04A:  MOV             R3, R5
1AA04C:  IT GT
1AA04E:  ASRGT           R3, R0, #1
1AA050:  CMP             R3, R10
1AA052:  IT GE
1AA054:  MOVGE           R3, R10
1AA056:  LDR.W           R0, [R7,#var_40]
1AA05A:  STRH.W          R3, [R0,R9,LSL#1]
1AA05E:  ADD.W           R9, R9, #1
1AA062:  CMP             R9, R11
1AA064:  LDR.W           R0, [R7,#var_3C]
1AA068:  SUB.W           R2, R2, R0
1AA06C:  LDR.W           R0, [R7,#var_44]
1AA070:  SUB.W           R4, R4, R0
1AA074:  LDR.W           R0, [R7,#var_38]
1AA078:  ADD             R1, R0
1AA07A:  BLT             loc_1A9FE4
1AA07C:  LDR             R1, [R7,#arg_18]
1AA07E:  CMP             R11, R1
1AA080:  BGE             loc_1AA150
1AA082:  LDR.W           R6, [R7,#var_50]
1AA086:  SUB.W           R10, R1, R11
1AA08A:  LDR             R3, [R7,#arg_14]
1AA08C:  LDR.W           R2, [R7,#var_64]
1AA090:  ASRS            R1, R6, #6
1AA092:  LSLS            R6, R6, #0xA
1AA094:  STR.W           R1, [R7,#var_38]
1AA098:  UXTH            R1, R6
1AA09A:  LDR.W           R6, [R7,#var_58]
1AA09E:  ADD.W           R2, R2, R3,LSL#4
1AA0A2:  STR.W           R1, [R7,#var_3C]
1AA0A6:  ADDS            R2, #2
1AA0A8:  NEGS            R6, R6
1AA0AA:  LDR.W           R0, [R7,#var_5C]
1AA0AE:  LDR.W           R3, [R7,#var_60]
1AA0B2:  SXTH            R1, R6
1AA0B4:  LDR.W           R6, [R7,#var_54]
1AA0B8:  STR.W           R1, [R7,#var_40]
1AA0BC:  ADD.W           R3, R3, R11,LSL#1
1AA0C0:  NEGS            R6, R6
1AA0C2:  ADD.W           R0, R0, R11,LSL#1
1AA0C6:  SUBS            R3, #2
1AA0C8:  SXTH            R1, R6
1AA0CA:  STR.W           R1, [R7,#var_44]
1AA0CE:  LDRD.W          R9, R11, [R7,#var_44]
1AA0D2:  LDRSH.W         R5, [R0,#-4]
1AA0D6:  LDRSH.W         R6, [R0]
1AA0DA:  LDRSH.W         R4, [R0,#-2]
1AA0DE:  ADDS            R0, #2
1AA0E0:  ADD             R5, R6
1AA0E2:  LDR.W           R1, [R7,#var_38]
1AA0E6:  ADD.W           R5, R5, R4,LSL#1
1AA0EA:  LSLS            R6, R4, #0xB
1AA0EC:  UXTH            R6, R6
1AA0EE:  ASRS            R4, R4, #5
1AA0F0:  MOV.W           LR, R5,LSL#9
1AA0F4:  MUL.W           R12, R6, R11
1AA0F8:  UXTH.W          R6, LR
1AA0FC:  MUL.W           LR, R6, R9
1AA100:  LDRSH.W         R6, [R2],#2
1AA104:  ASRS            R5, R5, #7
1AA106:  SMULBB.W        R8, R1, R6
1AA10A:  LDR.W           R1, [R7,#var_3C]
1AA10E:  SMLABB.W        R4, R4, R11, R8
1AA112:  MULS            R6, R1
1AA114:  MOV             R1, #0xFFFF8000
1AA11C:  ADD.W           R4, R4, R6,ASR#16
1AA120:  ADD.W           R6, R4, R12,ASR#16
1AA124:  SMLABB.W        R6, R5, R9, R6
1AA128:  MOVS            R5, #1
1AA12A:  ADD.W           R6, R6, LR,ASR#16
1AA12E:  ADD.W           R6, R5, R6,ASR#7
1AA132:  ASRS            R5, R6, #1
1AA134:  CMP             R5, R1
1AA136:  MOV             R5, R1
1AA138:  MOVW            R1, #0x7FFF
1AA13C:  IT GT
1AA13E:  ASRGT           R5, R6, #1
1AA140:  CMP             R5, R1
1AA142:  IT GE
1AA144:  MOVGE           R5, R1
1AA146:  SUBS.W          R10, R10, #1
1AA14A:  STRH.W          R5, [R3],#2
1AA14E:  BNE             loc_1AA0D2
1AA150:  LDR.W           R0, [R7,#var_4C]
1AA154:  LDR.W           R1, [R7,#var_58]
1AA158:  STRH            R1, [R0,#2]
1AA15A:  LDR.W           R1, [R7,#var_54]
1AA15E:  STRH            R1, [R0]
1AA160:  LDR.W           R1, [R7,#var_50]
1AA164:  STRH            R1, [R0,#0x1E]
1AA166:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AA170)
1AA168:  LDR.W           R1, [R7,#var_24]
1AA16C:  ADD             R0, PC; __stack_chk_guard_ptr
1AA16E:  LDR             R0, [R0]; __stack_chk_guard
1AA170:  LDR             R0, [R0]
1AA172:  SUBS            R0, R0, R1
1AA174:  ITTTT EQ
1AA176:  SUBEQ.W         R4, R7, #-var_1C
1AA17A:  MOVEQ           SP, R4
1AA17C:  POPEQ.W         {R8-R11}
1AA180:  POPEQ           {R4-R7,PC}
1AA182:  BLX             __stack_chk_fail
