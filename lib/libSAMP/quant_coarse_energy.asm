; =========================================================
; Game Engine Function: quant_coarse_energy
; Address            : 0x199AFC - 0x199EF2
; =========================================================

199AFC:  PUSH            {R4-R7,LR}
199AFE:  ADD             R7, SP, #0xC
199B00:  PUSH.W          {R8-R11}
199B04:  SUB             SP, SP, #0xD4
199B06:  MOV             R5, R0
199B08:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x199B16)
199B0C:  STR.W           R2, [R7,#var_8C]
199B10:  MOV             R6, R1
199B12:  ADD             R0, PC; __stack_chk_guard_ptr
199B14:  MOV             R8, R3
199B16:  LDR.W           R9, [R7,#arg_1C]
199B1A:  LDR             R0, [R0]; __stack_chk_guard
199B1C:  LDR.W           R10, [R7,#arg_14]
199B20:  LDR             R2, [R7,#arg_8]
199B22:  LDR             R1, [R0]
199B24:  LDRD.W          R3, R4, [R7,#arg_24]
199B28:  STR.W           R1, [R7,#var_24]
199B2C:  LDR             R1, [R7,#arg_20]
199B2E:  LDR             R0, [R7,#arg_2C]
199B30:  CBZ             R1, loc_199B36
199B32:  MOVS            R4, #1
199B34:  B               loc_199B58
199B36:  CBZ             R4, loc_199B3C
199B38:  MOVS            R4, #0
199B3A:  B               loc_199B58
199B3C:  LDR.W           R1, [R7,#var_8C]
199B40:  MOVS            R4, #0
199B42:  LDR.W           R12, [R3]
199B46:  SUBS            R1, R1, R6
199B48:  MUL.W           R1, R1, R10
199B4C:  CMP.W           R12, R1,LSL#1
199B50:  BLE             loc_199B58
199B52:  CMP             R1, R9
199B54:  IT LT
199B56:  MOVLT           R4, #1
199B58:  MULS            R0, R2
199B5A:  STR.W           R4, [R7,#var_A8]
199B5E:  LDRD.W          R4, R11, [R7,#arg_0]
199B62:  LDR             R1, [R3]
199B64:  MULS            R0, R1
199B66:  MOV.W           R1, R10,LSL#9
199B6A:  BLX             sub_220A6C
199B6E:  STR.W           R0, [R7,#var_C4]
199B72:  CMP             R6, R8
199B74:  LDR.W           R12, [R5,#8]
199B78:  STRD.W          R6, R5, [R7,#var_98]
199B7C:  BGE             loc_199BCA
199B7E:  SUB.W           LR, R8, R6
199B82:  ADD.W           R9, R4, R6,LSL#1
199B86:  ADD.W           R4, R11, R6,LSL#1
199B8A:  MOV.W           R8, R12,LSL#1
199B8E:  MOVS            R5, #0
199B90:  MOVS            R0, #0
199B92:  MOV             R1, LR
199B94:  MOV             R2, R9
199B96:  MOV             R3, R4
199B98:  LDRSH.W         R6, [R2],#2
199B9C:  SUBS            R1, #1
199B9E:  LDRSH.W         R11, [R3],#2
199BA2:  MOV.W           R6, R6,LSR#3
199BA6:  SUB.W           R6, R6, R11,LSR#3
199BAA:  SMLABB.W        R5, R6, R6, R5
199BAE:  BNE             loc_199B98
199BB0:  ADDS            R0, #1
199BB2:  ADD             R9, R8
199BB4:  ADD             R4, R8
199BB6:  CMP             R0, R10
199BB8:  BLT             loc_199B92
199BBA:  LDR.W           R11, [R7,#src]
199BBE:  ASRS            R1, R5, #0xE
199BC0:  LDR.W           R6, [R7,#var_98]
199BC4:  LDR.W           R9, [R7,#arg_1C]
199BC8:  B               loc_199BCC
199BCA:  MOVS            R1, #0
199BCC:  LDR             R0, [R7,#arg_10]
199BCE:  CMP             R1, #0xC8
199BD0:  MOV.W           R8, #0x4000
199BD4:  MOV             R2, R0
199BD6:  LDR.W           R0, [R2,#0x1C]!
199BDA:  IT GE
199BDC:  MOVGE           R1, #0xC8
199BDE:  STR.W           R1, [R7,#var_A4]
199BE2:  STR.W           R2, [R7,#var_90]
199BE6:  CLZ.W           R0, R0
199BEA:  LDR.W           R1, [R2,#-8]
199BEE:  LDR.W           R2, [R7,#var_8C]
199BF2:  ADD             R0, R1
199BF4:  SUBS            R2, R2, R6
199BF6:  SUB.W           R1, R0, #0x1D
199BFA:  CMP             R2, #0xB
199BFC:  SUB.W           R0, R0, #0x20 ; ' '
199C00:  STR.W           R1, [R7,#var_AC]
199C04:  STR.W           R0, [R7,#var_B0]
199C08:  BLT             loc_199C18
199C0A:  MOV.W           R0, R9,LSL#7
199C0E:  CMP.W           R0, #0x4000
199C12:  IT LT
199C14:  MOVLT.W         R8, R9,LSL#7
199C18:  LDR.W           R9, [R7,#arg_10]
199C1C:  MOV.W           R0, R10,LSL#1
199C20:  MUL.W           R2, R0, R12; n
199C24:  SUB.W           R1, R7, #-var_40
199C28:  STR.W           R0, [R7,#var_B4]
199C2C:  MOV             R12, R9
199C2E:  STR.W           R1, [R7,#var_B8]
199C32:  LDM.W           R12, {R0,R3-R6,LR}
199C36:  SUB.W           R12, R7, #-var_58
199C3A:  STM.W           R1, {R0,R3-R6,LR}
199C3E:  LDR.W           R0, [R9,#0x18]
199C42:  STRD.W          R0, R12, [R7,#var_C0]
199C46:  LDR.W           R1, [R7,#var_90]
199C4A:  LDM.W           R1, {R0,R3-R6}
199C4E:  STM.W           R12, {R0,R3-R6}
199C52:  ADDS            R0, R2, #7
199C54:  BIC.W           R1, R0, #7
199C58:  SUB.W           R0, SP, R1; dest
199C5C:  MOV             SP, R0
199C5E:  SUB.W           R1, SP, R1
199C62:  STR.W           R1, [R7,#var_9C]
199C66:  MOV             SP, R1
199C68:  MOV             R1, R11; src
199C6A:  STR.W           R0, [R7,#var_A0]
199C6E:  BLX             j_memcpy
199C72:  LDR             R0, [R7,#arg_30]
199C74:  MOV             R5, R8
199C76:  LDR.W           R9, [R7,#arg_8]
199C7A:  MOV.W           R11, #0
199C7E:  CMP             R0, #0
199C80:  MOV.W           R0, #0
199C84:  IT NE
199C86:  MOVNE.W         R5, #0xC00
199C8A:  LDR.W           R3, [R7,#var_AC]
199C8E:  MOVS            R4, #0
199C90:  MOVS            R2, #0
199C92:  CMP             R3, R9
199C94:  IT HI
199C96:  MOVHI.W         R11, #1
199C9A:  LDR.W           R1, [R7,#var_A8]
199C9E:  CMP             R1, #0
199CA0:  IT EQ
199CA2:  MOVEQ           R0, #1
199CA4:  ORR.W           R6, R11, R0
199CA8:  LDR             R0, [R7,#arg_28]
199CAA:  CMP             R0, #0
199CAC:  IT EQ
199CAE:  MOVEQ           R4, #1
199CB0:  ORRS            R0, R1
199CB2:  BEQ             loc_199D06
199CB4:  CMP             R3, R9
199CB6:  BHI             loc_199D06
199CB8:  LDR             R0, =(unk_C2655 - 0x199CBE)
199CBA:  ADD             R0, PC; unk_C2655
199CBC:  SUB             SP, SP, #0x30 ; '0'
199CBE:  LDR             R2, [R7,#arg_18]
199CC0:  MOVS            R1, #0x54 ; 'T'
199CC2:  MOV             R3, R2
199CC4:  MOVS            R2, #1
199CC6:  MLA.W           R0, R3, R1, R0
199CCA:  SXTH            R1, R5
199CCC:  STRD.W          R2, R1, [SP,#0x120+var_100]
199CD0:  LDR             R1, [R7,#arg_30]
199CD2:  STR             R1, [SP,#0x120+var_F8]
199CD4:  LDR.W           R1, [R7,#var_A0]
199CD8:  STRD.W          R1, R9, [SP,#0x120+var_120]
199CDC:  ADDS            R0, #0x2A ; '*'
199CDE:  LDR.W           R1, [R7,#var_B0]
199CE2:  STRD.W          R1, R0, [SP,#0x120+var_118]
199CE6:  LDR.W           R0, [R7,#var_9C]
199CEA:  STR             R0, [SP,#0x120+var_110]
199CEC:  LDR             R0, [R7,#arg_10]
199CEE:  STRD.W          R0, R10, [SP,#0x120+var_10C]
199CF2:  STR             R3, [SP,#0x120+var_104]
199CF4:  LDRD.W          R1, R0, [R7,#var_98]
199CF8:  LDR.W           R2, [R7,#var_8C]
199CFC:  LDR             R3, [R7,#arg_0]
199CFE:  BL              sub_199F08
199D02:  ADD             SP, SP, #0x30 ; '0'
199D04:  MOV             R2, R0
199D06:  LDR.W           R8, [R7,#arg_C]
199D0A:  CMP             R6, #1
199D0C:  BNE.W           loc_199E30
199D10:  ORR.W           R0, R4, R11
199D14:  LDR.W           R11, [R7,#arg_10]
199D18:  STR.W           R0, [R7,#var_A8]
199D1C:  STR.W           R2, [R7,#var_C8]
199D20:  MOV             R0, R11
199D22:  STR.W           R5, [R7,#var_AC]
199D26:  BLX             j_ec_tell_frac
199D2A:  ADD.W           R1, R11, #4
199D2E:  STR.W           R0, [R7,#var_EC]
199D32:  LDR.W           R12, [R11]
199D36:  SUB.W           R0, R7, #-var_70
199D3A:  STRD.W          R0, R1, [R7,#var_D0]
199D3E:  LDM.W           R1, {R2-R6}
199D42:  STM             R0!, {R2-R6}
199D44:  SUB.W           R0, R7, #-var_88
199D48:  LDR.W           R8, [R7,#var_90]
199D4C:  LDR.W           LR, [R11,#0x18]
199D50:  STR.W           R0, [R7,#var_D4]
199D54:  MOV             R1, R8
199D56:  LDM.W           R1, {R2-R6}
199D5A:  STM             R0!, {R2-R6}
199D5C:  LDR.W           R9, [R7,#var_C0]
199D60:  STR.W           LR, [R7,#var_E0]
199D64:  SUB.W           R2, LR, R9; n
199D68:  STR.W           R12, [R7,#var_DC]
199D6C:  ADDS            R0, R2, #7
199D6E:  ADD.W           R1, R12, R9; src
199D72:  BIC.W           R0, R0, #7
199D76:  SUB.W           R0, SP, R0; dest
199D7A:  MOV             SP, R0
199D7C:  STRD.W          R1, R0, [R7,#var_E8]
199D80:  STR.W           R2, [R7,#n]
199D84:  BLX             j_memcpy
199D88:  LDR.W           R12, [R7,#var_B8]
199D8C:  MOV             R0, R11
199D8E:  LDM.W           R12, {R1-R6}
199D92:  STM             R0!, {R1-R6}
199D94:  MOV             R0, R8
199D96:  STR.W           R9, [R11,#0x18]
199D9A:  LDR.W           R4, [R7,#var_BC]
199D9E:  LDR.W           R8, [R7,#arg_C]
199DA2:  LDM.W           R4, {R1-R3,R5,R6}
199DA6:  STM             R0!, {R1-R3,R5,R6}
199DA8:  SUB             SP, SP, #0x30 ; '0'
199DAA:  LDR.W           R0, [R7,#var_AC]
199DAE:  MOVS            R1, #0
199DB0:  LDR             R3, [R7,#arg_0]
199DB2:  LDR.W           R9, [R7,#src]
199DB6:  SXTH            R0, R0
199DB8:  STRD.W          R1, R0, [SP,#0x120+var_100]
199DBC:  LDR             R0, [R7,#arg_30]
199DBE:  LDR             R1, [R7,#arg_18]
199DC0:  STR             R0, [SP,#0x120+var_F8]
199DC2:  LDR             R0, =(unk_C2655 - 0x199DCC)
199DC4:  MOV             R2, R1
199DC6:  MOVS            R1, #0x54 ; 'T'
199DC8:  ADD             R0, PC; unk_C2655
199DCA:  STR.W           R10, [SP,#0x120+var_108]
199DCE:  MLA.W           R0, R2, R1, R0
199DD2:  STRD.W          R8, R11, [SP,#0x120+var_110]
199DD6:  LDR.W           R10, [R7,#var_94]
199DDA:  STR             R2, [SP,#0x120+var_104]
199DDC:  LDR.W           R1, [R7,#var_98]
199DE0:  STR             R0, [SP,#0x120+var_114]
199DE2:  LDR.W           R0, [R7,#var_B0]
199DE6:  LDR.W           R2, [R7,#var_8C]
199DEA:  STR             R0, [SP,#0x120+var_118]
199DEC:  LDR             R0, [R7,#arg_8]
199DEE:  STR             R0, [SP,#0x120+var_11C]
199DF0:  MOV             R0, R10
199DF2:  STR.W           R9, [SP,#0x120+var_120]
199DF6:  BL              sub_199F08
199DFA:  ADD             SP, SP, #0x30 ; '0'
199DFC:  LDR.W           R1, [R7,#var_A8]
199E00:  CBZ             R1, loc_199E4C
199E02:  LDR             R0, =(unk_B3CBC - 0x199E0A)
199E04:  LDR             R1, [R7,#arg_18]
199E06:  ADD             R0, PC; unk_B3CBC
199E08:  LDR             R6, [R7,#arg_24]
199E0A:  LDRSH.W         R0, [R0,R1,LSL#1]
199E0E:  LDR             R1, [R6]
199E10:  SMULBB.W        R0, R0, R0
199E14:  UXTH            R3, R1
199E16:  SBFX.W          R2, R0, #0xF, #0x10
199E1A:  LSLS            R0, R0, #1
199E1C:  SMULTT.W        R0, R1, R0
199E20:  LDR.W           R1, [R7,#var_A4]
199E24:  MULS            R2, R3
199E26:  ADD.W           R1, R1, R2,ASR#15
199E2A:  ADD.W           R0, R1, R0,LSL#1
199E2E:  B               loc_199ED0
199E30:  LDR.W           R4, [R7,#var_94]
199E34:  LDR.W           R5, [R7,#var_B4]
199E38:  LDR.W           R1, [R7,#var_A0]; src
199E3C:  LDR             R0, [R4,#8]
199E3E:  MUL.W           R2, R5, R0; n
199E42:  LDR             R0, [R7,#src]; dest
199E44:  BLX             j_memcpy
199E48:  LDR             R0, [R4,#8]
199E4A:  B               loc_199EBC
199E4C:  LDR.W           R1, [R7,#var_C8]
199E50:  CMP             R1, R0
199E52:  BLT             loc_199E6A
199E54:  BNE             loc_199E02
199E56:  LDR             R0, [R7,#arg_10]
199E58:  BLX             j_ec_tell_frac
199E5C:  LDR.W           R1, [R7,#var_C4]
199E60:  ADD             R0, R1
199E62:  LDR.W           R1, [R7,#var_EC]
199E66:  CMP             R0, R1
199E68:  BLE             loc_199E02
199E6A:  LDR             R0, [R7,#arg_10]
199E6C:  MOV             R12, R0
199E6E:  LDR.W           R0, [R7,#var_DC]
199E72:  STR.W           R0, [R12]
199E76:  LDRD.W          R4, R5, [R7,#var_D0]
199E7A:  LDM.W           R4, {R0-R3,R6}
199E7E:  STM             R5!, {R0-R3,R6}
199E80:  LDR.W           R0, [R7,#var_E0]
199E84:  STR.W           R0, [R12,#0x18]
199E88:  LDR.W           R4, [R7,#var_D4]
199E8C:  LDR.W           R5, [R7,#var_90]
199E90:  LDM.W           R4, {R0-R3,R6}
199E94:  STM             R5!, {R0-R3,R6}
199E96:  LDRD.W          R0, R1, [R7,#var_E8]; src
199E9A:  LDR.W           R2, [R7,#n]; n
199E9E:  BLX             j_memcpy
199EA2:  LDR.W           R0, [R10,#8]
199EA6:  LDR.W           R5, [R7,#var_B4]
199EAA:  LDR.W           R1, [R7,#var_A0]; src
199EAE:  MUL.W           R2, R5, R0; n
199EB2:  MOV             R0, R9; dest
199EB4:  BLX             j_memcpy
199EB8:  LDR.W           R0, [R10,#8]
199EBC:  MUL.W           R2, R5, R0; n
199EC0:  LDR.W           R1, [R7,#var_9C]; src
199EC4:  MOV             R0, R8; dest
199EC6:  BLX             j_memcpy
199ECA:  LDR             R6, [R7,#arg_24]
199ECC:  LDR.W           R0, [R7,#var_A4]
199ED0:  STR             R0, [R6]
199ED2:  LDR             R0, =(__stack_chk_guard_ptr - 0x199EDC)
199ED4:  LDR.W           R1, [R7,#var_24]
199ED8:  ADD             R0, PC; __stack_chk_guard_ptr
199EDA:  LDR             R0, [R0]; __stack_chk_guard
199EDC:  LDR             R0, [R0]
199EDE:  SUBS            R0, R0, R1
199EE0:  ITTTT EQ
199EE2:  SUBEQ.W         R4, R7, #-var_1C
199EE6:  MOVEQ           SP, R4
199EE8:  POPEQ.W         {R8-R11}
199EEC:  POPEQ           {R4-R7,PC}
199EEE:  BLX             __stack_chk_fail
