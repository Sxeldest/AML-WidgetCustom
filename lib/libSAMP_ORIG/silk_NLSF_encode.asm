; =========================================================
; Game Engine Function: silk_NLSF_encode
; Address            : 0xD3834 - 0xD3B0A
; =========================================================

D3834:  PUSH            {R4-R7,LR}
D3836:  ADD             R7, SP, #0xC
D3838:  PUSH.W          {R8-R11}
D383C:  SUB             SP, SP, #0xAC
D383E:  STR.W           R0, [R7,#var_C4]
D3842:  MOV             R5, R2
D3844:  LDR             R0, =(__stack_chk_guard_ptr - 0xD3850)
D3846:  MOV             R6, R1
D3848:  STR.W           R3, [R7,#var_A0]
D384C:  ADD             R0, PC; __stack_chk_guard_ptr
D384E:  LDR             R0, [R0]; __stack_chk_guard
D3850:  LDR             R0, [R0]
D3852:  STR.W           R0, [R7,#var_24]
D3856:  MOV             R0, R6
D3858:  LDRSH.W         R2, [R5,#2]
D385C:  LDR             R1, [R5,#0x24]
D385E:  BLX             j_silk_NLSF_stabilize
D3862:  LDRSH.W         R0, [R5]
D3866:  MOVS            R4, #7
D3868:  ADD.W           R1, R4, R0,LSL#2
D386C:  BIC.W           R1, R1, #7
D3870:  SUB.W           R8, SP, R1
D3874:  MOV             SP, R8
D3876:  LDRD.W          R2, R3, [R5,#8]
D387A:  LDRSH.W         R1, [R5,#2]
D387E:  STRD.W          R0, R1, [SP,#0xC8+var_D0]!
D3882:  MOV             R1, R6
D3884:  MOV             R0, R8
D3886:  STR.W           R1, [R7,#var_9C]
D388A:  BLX             j_silk_NLSF_VQ
D388E:  ADD             SP, SP, #8
D3890:  LDR.W           R9, [R7,#arg_4]
D3894:  ADD.W           R0, R4, R9,LSL#2
D3898:  BIC.W           R4, R0, #7
D389C:  SUB.W           R1, SP, R4
D38A0:  MOV             SP, R1
D38A2:  STR.W           R5, [R7,#var_A4]
D38A6:  MOV             R0, R8
D38A8:  LDRSH.W         R2, [R5]
D38AC:  MOV             R3, R9
D38AE:  STR.W           R1, [R7,#var_B0]
D38B2:  BLX             j_silk_insertion_sort_increasing
D38B6:  SUB.W           R8, SP, R4
D38BA:  MOV             SP, R8
D38BC:  SUB.W           R0, SP, R9,LSL#4
D38C0:  STR.W           R0, [R7,#var_B4]
D38C4:  MOV             SP, R0
D38C6:  CMP.W           R9, #1
D38CA:  BLT.W           loc_D3AA2
D38CE:  LDR             R0, [R7,#arg_8]
D38D0:  MOVS            R5, #0
D38D2:  LDR             R1, [R7,#arg_0]
D38D4:  ASRS            R0, R0, #1
D38D6:  SBFX.W          R1, R1, #2, #0x10
D38DA:  STR.W           R1, [R7,#var_BC]
D38DE:  STR.W           R0, [R7,#var_C0]
D38E2:  STR.W           R8, [R7,#var_B8]
D38E6:  LDR.W           R0, [R7,#var_B0]
D38EA:  STR.W           R5, [R7,#var_AC]
D38EE:  LDR.W           R0, [R0,R5,LSL#2]
D38F2:  STR.W           R0, [R7,#var_A8]
D38F6:  LDR.W           R0, [R7,#var_A4]
D38FA:  LDRSH.W         R4, [R0,#2]
D38FE:  CMP             R4, #1
D3900:  BLT             loc_D3A00
D3902:  LDR.W           R3, [R7,#var_A8]
D3906:  MOV.W           R11, #0
D390A:  LDR.W           R2, [R7,#var_A4]
D390E:  MUL.W           R0, R3, R4
D3912:  LDRD.W          R1, R2, [R2,#8]
D3916:  MLA.W           R10, R3, R4, R1
D391A:  ADD.W           R8, R2, R0,LSL#1
D391E:  LDR.W           R1, [R7,#var_9C]
D3922:  LDRB.W          R0, [R10,R11]
D3926:  LDRSH.W         R2, [R8,R11,LSL#1]
D392A:  LDRH.W          R1, [R1,R11,LSL#1]
D392E:  SUB.W           R0, R1, R0,LSL#7
D3932:  SMULBB.W        R1, R2, R2
D3936:  SXTH            R0, R0
D3938:  SMULBB.W        R0, R0, R2
D393C:  SUB.W           R2, R7, #-var_44
D3940:  CMP             R1, #0
D3942:  MOV.W           R0, R0,LSR#14
D3946:  STRH.W          R0, [R2,R11,LSL#1]
D394A:  MOV             R0, R1
D394C:  IT EQ
D394E:  NEGEQ           R0, R0
D3950:  CLZ.W           R9, R0
D3954:  SUB.W           R0, R9, #1
D3958:  LSL.W           R6, R1, R0
D395C:  MOV             R0, #0x1FFFFFFF
D3960:  ASRS            R1, R6, #0x10
D3962:  BLX             sub_108848
D3966:  LDR.W           R1, [R7,#var_A0]
D396A:  LDRSH.W         R2, [R1,R11,LSL#1]
D396E:  SXTH            R1, R0
D3970:  CMP             R2, #0
D3972:  MOV             R3, R2
D3974:  IT MI
D3976:  NEGMI           R3, R2
D3978:  CLZ.W           R3, R3
D397C:  SUBS            R5, R3, #1
D397E:  LSLS            R2, R5
D3980:  UXTH            R5, R2
D3982:  MULS            R5, R1
D3984:  ASRS            R5, R5, #0x10
D3986:  SMLATB.W        R5, R2, R0, R5
D398A:  SMMUL.W         R6, R5, R6
D398E:  SUB.W           R2, R2, R6,LSL#3
D3992:  UXTH            R6, R2
D3994:  SMLABT.W        R0, R0, R2, R5
D3998:  MULS            R1, R6
D399A:  ADD.W           R0, R0, R1,ASR#16
D399E:  RSB.W           R1, R9, #1
D39A2:  ADD             R1, R3
D39A4:  ADDS            R1, #0x1C
D39A6:  CMP             R1, #0x14
D39A8:  BGT             loc_D39CC
D39AA:  RSB.W           R1, R1, #0x15
D39AE:  MOV             R2, #0x7FFFFFFF
D39B2:  MOV.W           R3, #0x80000000
D39B6:  LSRS            R2, R1
D39B8:  ASRS            R3, R1
D39BA:  CMP             R3, R2
D39BC:  BLE             loc_D39DE
D39BE:  CMP             R0, R3
D39C0:  MOV             R6, R3
D39C2:  BGT             loc_D39EC
D39C4:  CMP             R0, R2
D39C6:  IT LT
D39C8:  MOVLT           R0, R2
D39CA:  B               loc_D39EA
D39CC:  SUB.W           R2, R1, #0x15
D39D0:  CMP             R1, #0x35 ; '5'
D39D2:  MOV.W           R1, #0
D39D6:  IT LT
D39D8:  ASRLT.W         R1, R0, R2
D39DC:  B               loc_D39F0
D39DE:  CMP             R0, R2
D39E0:  MOV             R6, R2
D39E2:  BGT             loc_D39EC
D39E4:  CMP             R0, R3
D39E6:  IT LT
D39E8:  MOVLT           R0, R3
D39EA:  MOV             R6, R0
D39EC:  LSL.W           R1, R6, R1
D39F0:  SUB.W           R0, R7, #-var_64
D39F4:  STRH.W          R1, [R0,R11,LSL#1]
D39F8:  ADD.W           R11, R11, #1
D39FC:  CMP             R11, R4
D39FE:  BLT             loc_D391E
D3A00:  LDR.W           R4, [R7,#var_A4]
D3A04:  SUB.W           R5, R7, #-var_94
D3A08:  LDR.W           R6, [R7,#var_A8]
D3A0C:  SUB.W           R8, R7, #-var_74
D3A10:  MOV             R0, R5
D3A12:  MOV             R1, R8
D3A14:  MOV             R2, R4
D3A16:  MOV             R3, R6
D3A18:  BLX             j_silk_NLSF_unpack
D3A1C:  LDRSH.W         R0, [R4,#2]
D3A20:  LDRSH.W         R1, [R4,#4]
D3A24:  LDRSH.W         R2, [R4,#6]
D3A28:  LDR             R3, [R4,#0x20]
D3A2A:  SUB             SP, SP, #0x18
D3A2C:  STRD.W          R5, R3, [SP,#0xE0+var_E0]; int
D3A30:  MOV             R3, R8; int
D3A32:  STRD.W          R1, R2, [SP,#0xE0+var_D8]; __int16
D3A36:  SUB.W           R2, R7, #-var_64; int
D3A3A:  LDR             R1, [R7,#arg_0]
D3A3C:  STRD.W          R1, R0, [SP,#0xE0+var_D0]; int
D3A40:  SUB.W           R1, R7, #-var_44; int
D3A44:  LDR.W           R5, [R7,#var_AC]
D3A48:  LDR.W           R0, [R7,#var_B4]
D3A4C:  ADD.W           R0, R0, R5,LSL#4; int
D3A50:  BLX             j_silk_NLSF_del_dec_quant
D3A54:  ADD             SP, SP, #0x18
D3A56:  LDR.W           R8, [R7,#var_B8]
D3A5A:  CMP             R6, #0
D3A5C:  LDR.W           R2, [R7,#var_C0]
D3A60:  STR.W           R0, [R8,R5,LSL#2]
D3A64:  LDRSH.W         R0, [R4]
D3A68:  LDR             R1, [R4,#0x10]
D3A6A:  MLA.W           R0, R2, R0, R1
D3A6E:  ITTE NE
D3A70:  ADDNE           R1, R0, R6
D3A72:  LDRBNE.W        R1, [R1,#-1]
D3A76:  MOVEQ.W         R1, #0x100
D3A7A:  LDRB            R0, [R0,R6]
D3A7C:  SUBS            R0, R1, R0
D3A7E:  BLX             j_silk_lin2log
D3A82:  RSB.W           R0, R0, #0x400
D3A86:  LDR.W           R2, [R7,#var_BC]
D3A8A:  LDR.W           R1, [R8,R5,LSL#2]
D3A8E:  SXTH            R0, R0
D3A90:  SMLABB.W        R0, R0, R2, R1
D3A94:  STR.W           R0, [R8,R5,LSL#2]
D3A98:  ADDS            R5, #1
D3A9A:  LDR             R0, [R7,#arg_4]
D3A9C:  CMP             R5, R0
D3A9E:  BNE.W           loc_D38E6
D3AA2:  LDR             R2, [R7,#arg_4]
D3AA4:  SUB.W           R1, R7, #-var_98
D3AA8:  MOV             R0, R8
D3AAA:  MOVS            R3, #1
D3AAC:  BLX             j_silk_insertion_sort_increasing
D3AB0:  LDR.W           R1, [R7,#var_98]
D3AB4:  LDR.W           R0, [R7,#var_B0]
D3AB8:  LDR.W           R5, [R7,#var_C4]
D3ABC:  LDR.W           R2, [R0,R1,LSL#2]
D3AC0:  MOV             R0, R5
D3AC2:  STRB.W          R2, [R0],#1; dest
D3AC6:  LDR.W           R4, [R7,#var_A4]
D3ACA:  LDR.W           R3, [R7,#var_B4]
D3ACE:  LDRSH.W         R2, [R4,#2]; n
D3AD2:  ADD.W           R1, R3, R1,LSL#4; src
D3AD6:  BLX             j_memcpy
D3ADA:  LDR.W           R0, [R7,#var_9C]
D3ADE:  MOV             R1, R5
D3AE0:  MOV             R2, R4
D3AE2:  BLX             j_silk_NLSF_decode
D3AE6:  LDR             R1, =(__stack_chk_guard_ptr - 0xD3AF0)
D3AE8:  LDR.W           R0, [R8]
D3AEC:  ADD             R1, PC; __stack_chk_guard_ptr
D3AEE:  LDR.W           R2, [R7,#var_24]
D3AF2:  LDR             R1, [R1]; __stack_chk_guard
D3AF4:  LDR             R1, [R1]
D3AF6:  SUBS            R1, R1, R2
D3AF8:  ITTTT EQ
D3AFA:  SUBEQ.W         R4, R7, #-var_1C
D3AFE:  MOVEQ           SP, R4
D3B00:  POPEQ.W         {R8-R11}
D3B04:  POPEQ           {R4-R7,PC}
D3B06:  BLX             __stack_chk_fail
