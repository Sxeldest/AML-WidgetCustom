; =========================================================
; Game Engine Function: sub_D9888
; Address            : 0xD9888 - 0xD9E10
; =========================================================

D9888:  PUSH            {R4-R7,LR}
D988A:  ADD             R7, SP, #0xC
D988C:  PUSH.W          {R8-R11}
D9890:  SUB             SP, SP, #0x64
D9892:  MOV             R8, R3
D9894:  LDR.W           R3, =(__stack_chk_guard_ptr - 0xD98A0)
D9898:  LDR.W           R12, [R7,#arg_0]
D989C:  ADD             R3, PC; __stack_chk_guard_ptr
D989E:  LDR.W           R11, [R7,#arg_14]
D98A2:  ADD.W           R9, R12, #0x400
D98A6:  LDR             R3, [R3]; __stack_chk_guard
D98A8:  LDR             R6, [R3]
D98AA:  MUL.W           R3, R8, R9
D98AE:  STR.W           R6, [R7,#var_24]
D98B2:  STR.W           R0, [R7,#var_48]
D98B6:  LDR             R6, [R0]
D98B8:  MOVS            R0, #7
D98BA:  STR.W           R6, [R7,#var_38]
D98BE:  ADD.W           R0, R0, R3,LSL#2
D98C2:  LDR             R6, [R6,#4]
D98C4:  BIC.W           R0, R0, #7
D98C8:  SUB.W           R0, SP, R0
D98CC:  ADD.W           R3, R0, R9,LSL#2
D98D0:  MOV             SP, R0
D98D2:  STRD.W          R0, R3, [R7,#var_2C]
D98D6:  ADD.W           R0, R6, R12
D98DA:  ADD.W           R5, R1, R6,LSL#2
D98DE:  SUB.W           R3, R7, #-var_2C
D98E2:  STR.W           R6, [R7,#var_34]
D98E6:  LSLS            R0, R0, #2
D98E8:  MOV.W           R10, R12,LSL#2
D98EC:  MOVS            R4, #0
D98EE:  MOV             R6, R2
D98F0:  STR.W           R1, [R7,#dest]
D98F4:  STR.W           R2, [R7,#var_40]
D98F8:  STR.W           R0, [R7,#var_44]
D98FC:  STR.W           R10, [R7,#n]
D9900:  LDR.W           R10, [R3,R4,LSL#2]
D9904:  MOV             R1, R6; src
D9906:  MOV.W           R2, #0x1000; n
D990A:  MOV             R0, R10; dest
D990C:  BLX             j_memcpy
D9910:  ADD.W           R0, R10, #0x1000; dest
D9914:  LDR.W           R10, [R7,#n]
D9918:  MOV             R1, R5; src
D991A:  MOV             R2, R10; n
D991C:  BLX             j_memcpy
D9920:  LDR.W           R0, [R7,#var_44]
D9924:  ADDS            R4, #1
D9926:  SUB.W           R3, R7, #-var_2C
D992A:  ADD.W           R6, R6, #0x1000
D992E:  ADD             R5, R0
D9930:  CMP             R4, R8
D9932:  BLT             loc_D9900
D9934:  CMP.W           R11, #0
D9938:  BEQ             loc_D99FE
D993A:  BIC.W           R0, R9, #1
D993E:  ADDS            R0, #7
D9940:  BIC.W           R0, R0, #7
D9944:  SUB.W           R5, SP, R0
D9948:  MOV             SP, R5
D994A:  LDR.W           R4, [R7,#var_48]
D994E:  LDR             R0, [R4,#0x48]
D9950:  SUB             SP, SP, #8
D9952:  STR             R0, [SP,#0x88+var_88]; int
D9954:  SUB.W           R0, R7, #-var_2C; int
D9958:  MOV             R1, R5; src
D995A:  MOV             R2, R9; int
D995C:  MOV             R3, R8; int
D995E:  BLX             j_pitch_downsample
D9962:  ADD             SP, SP, #8
D9964:  LDR             R0, [R4,#0x48]
D9966:  SUB             SP, SP, #8
D9968:  LDR.W           R9, [R7,#arg_0]
D996C:  SUB.W           R6, R7, #-var_30
D9970:  STRD.W          R6, R0, [SP,#0x88+var_88]
D9974:  ADD.W           R0, R5, #0x400
D9978:  MOV             R1, R5
D997A:  MOVW            R3, #0x3D3
D997E:  MOV             R2, R9
D9980:  BLX             j_pitch_search
D9984:  ADD             SP, SP, #8
D9986:  LDR.W           R0, [R7,#var_30]
D998A:  MOV             R2, R4
D998C:  RSB.W           R0, R0, #0x400
D9990:  STR.W           R0, [R7,#var_30]
D9994:  LDR.W           R0, [R2,#0x68]!
D9998:  LDR             R1, [R4,#0x48]
D999A:  MOV             R4, R2
D999C:  MOV             R10, R2
D999E:  LDRSH.W         R2, [R4,#4]!
D99A2:  SUB             SP, SP, #0x10
D99A4:  STRD.W          R6, R0, [SP,#0x90+var_90]
D99A8:  MOV             R0, R5
D99AA:  STRD.W          R2, R1, [SP,#0x90+var_88]
D99AE:  MOV.W           R1, #0x400
D99B2:  MOVS            R2, #0xF
D99B4:  MOV             R3, R9
D99B6:  BLX             j_remove_doubling
D99BA:  ADD             SP, SP, #0x10
D99BC:  LDR.W           R2, [R7,#var_30]
D99C0:  MOVW            R1, #0x3FF
D99C4:  MOV             LR, R10
D99C6:  CMP             R2, R1
D99C8:  MOVW            R1, #0x599A
D99CC:  ITT GE
D99CE:  MOVWGE          R2, #0x3FE
D99D2:  STRGE.W         R2, [R7,#var_30]
D99D6:  SMULBB.W        R1, R0, R1
D99DA:  LDR.W           R0, [R7,#var_48]
D99DE:  LDR             R0, [R0,#0x38]
D99E0:  LSLS            R3, R1, #1
D99E2:  LSRS            R1, R1, #0xF
D99E4:  CMP             R0, #2
D99E6:  IT GT
D99E8:  ASRGT           R1, R3, #0x11
D99EA:  CMP             R0, #5
D99EC:  ITT GE
D99EE:  SXTHGE          R1, R1
D99F0:  LSRGE           R1, R1, #1
D99F2:  CMP             R0, #8
D99F4:  IT GT
D99F6:  MOVGT           R1, #0
D99F8:  SUB.W           R3, R7, #-var_2C
D99FC:  B               loc_D9A12
D99FE:  LDR.W           R0, [R7,#var_48]
D9A02:  MOVS            R2, #0xF
D9A04:  MOVS            R1, #0
D9A06:  STR.W           R2, [R7,#var_30]
D9A0A:  ADD.W           R4, R0, #0x6C ; 'l'
D9A0E:  ADD.W           LR, R0, #0x68 ; 'h'
D9A12:  LDR.W           R0, [LR]
D9A16:  MOVW            R6, #0x199A
D9A1A:  LDRSH.W         R12, [R4]
D9A1E:  SUBS            R5, R2, R0
D9A20:  IT MI
D9A22:  NEGMI           R5, R5
D9A24:  LDR.W           R4, [R7,#var_48]
D9A28:  ADD.W           R5, R5, R5,LSL#2
D9A2C:  LSLS            R5, R5, #1
D9A2E:  CMP             R5, R2
D9A30:  LDR             R2, [R7,#arg_18]
D9A32:  IT GT
D9A34:  MOVWGT          R6, #0x3334
D9A38:  CMP             R2, #0x19
D9A3A:  IT LT
D9A3C:  ADDWLT          R6, R6, #0xCCD
D9A40:  CMP             R2, #0x23 ; '#'
D9A42:  IT LT
D9A44:  ADDWLT          R6, R6, #0xCCD
D9A48:  MOVW            R2, #0x3334
D9A4C:  CMP             R12, R2
D9A4E:  BLT             loc_D9A66
D9A50:  MOVW            R5, #0x4667
D9A54:  MOVW            R2, #0xF333
D9A58:  CMP             R12, R5
D9A5A:  ITTE GE
D9A5C:  SUBWGE          R6, R6, #0xCCD
D9A60:  UXTAHGE.W       R6, R2, R6
D9A64:  ADDLT           R6, R6, R2
D9A66:  SXTH            R2, R6
D9A68:  MOVW            R6, #0x199A
D9A6C:  CMP             R2, R6
D9A6E:  IT GT
D9A70:  MOVGT           R6, R2
D9A72:  SXTH            R2, R1
D9A74:  CMP             R6, R2
D9A76:  BLE             loc_D9A8C
D9A78:  MOVS            R1, #0
D9A7A:  MOVS            R2, #0
D9A7C:  STR.W           R1, [R7,#var_80]
D9A80:  MOVS            R1, #0
D9A82:  STR.W           R1, [R7,#var_78]
D9A86:  LDR.W           R11, [R7,#dest]
D9A8A:  B               loc_D9ADE
D9A8C:  SUBS.W          R2, R2, R12
D9A90:  LDR.W           R11, [R7,#dest]
D9A94:  IT MI
D9A96:  NEGMI           R2, R2
D9A98:  MOVW            R6, #0xCCD
D9A9C:  CMP             R2, R6
D9A9E:  MOVW            R2, #0x5556
D9AA2:  IT LT
D9AA4:  MOVLT           R1, R12
D9AA6:  MOVT            R2, #0x5555
D9AAA:  SXTH            R1, R1
D9AAC:  ADD.W           R1, R1, #0x600
D9AB0:  ASRS            R1, R1, #0xA
D9AB2:  SMMUL.W         R2, R1, R2
D9AB6:  ADD.W           R2, R2, R2,LSR#31
D9ABA:  SUBS            R2, #1
D9ABC:  CMP             R2, #7
D9ABE:  IT GE
D9AC0:  MOVGE           R2, #7
D9AC2:  CMP             R1, #5
D9AC4:  IT LE
D9AC6:  MOVLE           R2, #0
D9AC8:  ADD.W           R1, R2, R2,LSL#1
D9ACC:  STR.W           R2, [R7,#var_78]
D9AD0:  MOV.W           R2, #0xC00
D9AD4:  ADD.W           R2, R2, R1,LSL#10
D9AD8:  MOVS            R1, #1
D9ADA:  STR.W           R1, [R7,#var_80]
D9ADE:  UXTH            R1, R2
D9AE0:  STR.W           R8, [R7,#dest]
D9AE4:  NEGS            R1, R1
D9AE6:  STR.W           R1, [R7,#var_50]
D9AEA:  LDR.W           R1, [R7,#var_34]
D9AEE:  STR.W           R2, [R7,#var_7C]
D9AF2:  STR.W           LR, [R7,#var_54]
D9AF6:  MOV.W           R8, R1,LSL#2
D9AFA:  LDR             R1, [R7,#arg_0]
D9AFC:  CMP.W           R1, #0x400
D9B00:  BLE.W           loc_D9C66
D9B04:  ADD.W           R6, R4, #0xF4
D9B08:  MOVS            R1, #1
D9B0A:  MOV             R4, R3
D9B0C:  MOV.W           R9, #0
D9B10:  STR.W           R1, [R7,#var_5C]
D9B14:  STR.W           R8, [R7,#var_74]
D9B18:  B               loc_D9B46
D9B1A:  ADD.W           R4, R4, #0x1000
D9B1E:  LDR.W           LR, [R7,#var_54]
D9B22:  LDR.W           R9, [R7,#var_68]
D9B26:  ADDS            R1, #1
D9B28:  LDR.W           R0, [R7,#var_44]
D9B2C:  ADD             R6, R8
D9B2E:  STR.W           R4, [R7,#var_40]
D9B32:  ADD.W           R9, R9, #1
D9B36:  LDR.W           R4, [R7,#var_64]
D9B3A:  ADD             R11, R0
D9B3C:  STR.W           R1, [R7,#var_5C]
D9B40:  LDR.W           R0, [LR]
D9B44:  ADDS            R4, #4
D9B46:  CMP             R0, #0xF
D9B48:  MOV             R2, R8; n
D9B4A:  IT LE
D9B4C:  MOVLE           R0, #0xF
D9B4E:  LDR.W           R1, [R7,#var_38]
D9B52:  LDR             R5, [R1,#0x24]
D9B54:  MOV             R1, R6; src
D9B56:  STR.W           R0, [LR]
D9B5A:  MOV             R0, R11; dest
D9B5C:  BLX             j_memcpy
D9B60:  LDR.W           R0, [R7,#var_34]
D9B64:  MOV             R1, R5
D9B66:  STR.W           R1, [R7,#var_60]
D9B6A:  SUBS.W          R10, R5, R0
D9B6E:  STR.W           R6, [R7,#var_58]
D9B72:  STRD.W          R9, R4, [R7,#var_68]
D9B76:  BEQ             loc_D9BC4
D9B78:  LDR.W           R6, [R7,#var_48]
D9B7C:  LDR.W           R1, [R7,#var_48]
D9B80:  LDR             R3, [R4]
D9B82:  LDRH.W          R4, [R6,#0x6C]
D9B86:  LDR             R0, [R1,#0x48]
D9B88:  LDR             R2, [R1,#0x68]
D9B8A:  LDR             R1, [R1,#0x70]
D9B8C:  SUB             SP, SP, #0x20 ; ' '
D9B8E:  NEGS            R4, R4
D9B90:  SXTH            R4, R4
D9B92:  STRD.W          R10, R4, [SP,#0xA0+var_A0]
D9B96:  STR             R4, [SP,#0xA0+var_98]
D9B98:  LDR.W           R4, [R7,#var_48]
D9B9C:  STRD.W          R1, R1, [SP,#0xA0+var_94]
D9BA0:  MOVS            R1, #0
D9BA2:  STRD.W          R1, R1, [SP,#0xA0+var_8C]
D9BA6:  ADD.W           R1, R3, #0x1000
D9BAA:  STR             R0, [SP,#0xA0+var_84]
D9BAC:  ADD.W           R0, R11, R8
D9BB0:  MOV             R3, R2
D9BB2:  BLX             j_comb_filter
D9BB6:  ADD             SP, SP, #0x20 ; ' '
D9BB8:  SUB.W           R0, R7, #-var_2C
D9BBC:  MOV             R5, R11
D9BBE:  ADD.W           R9, R0, R9,LSL#2
D9BC2:  B               loc_D9BCC
D9BC4:  MOV             R9, R4
D9BC6:  MOV             R5, R11
D9BC8:  LDR.W           R4, [R7,#var_48]
D9BCC:  LDR.W           R0, [R7,#var_38]
D9BD0:  LDR             R1, [R4,#0x70]
D9BD2:  LDRH.W          R6, [R4,#0x6C]
D9BD6:  LDR.W           R8, [R0,#0x34]
D9BDA:  LDR.W           R3, [R7,#var_30]
D9BDE:  LDR.W           R12, [R4,#0x48]
D9BE2:  LDR             R2, [R4,#0x68]
D9BE4:  LDR.W           LR, [R9]
D9BE8:  SUB             SP, SP, #0x20 ; ' '
D9BEA:  LDR.W           R0, [R7,#var_50]
D9BEE:  NEGS            R6, R6
D9BF0:  LDR             R4, [R7,#arg_0]
D9BF2:  SXTH            R6, R6
D9BF4:  SXTH            R0, R0
D9BF6:  MOV             R11, R4
D9BF8:  SUB.W           R4, R11, R10
D9BFC:  STRD.W          R4, R6, [SP,#0xA0+var_A0]
D9C00:  STRD.W          R0, R1, [SP,#0xA0+var_98]
D9C04:  ADD.W           R1, LR, R10,LSL#2
D9C08:  LDR             R0, [R7,#arg_4]
D9C0A:  ADD.W           R1, R1, #0x1000
D9C0E:  STRD.W          R0, R8, [SP,#0xA0+var_90]
D9C12:  LDR.W           R0, [R7,#var_34]
D9C16:  STRD.W          R0, R12, [SP,#0xA0+var_88]
D9C1A:  LDR.W           R0, [R7,#var_60]
D9C1E:  ADD.W           R0, R5, R0,LSL#2
D9C22:  BLX             j_comb_filter
D9C26:  ADD             SP, SP, #0x20 ; ' '
D9C28:  LDR.W           R0, [R7,#n]
D9C2C:  LDR.W           R8, [R7,#var_74]
D9C30:  LDR.W           R6, [R7,#var_58]
D9C34:  ADDS            R1, R5, R0; src
D9C36:  MOV             R2, R8; n
D9C38:  MOV             R0, R6; dest
D9C3A:  BLX             j_memcpy
D9C3E:  LDR.W           R0, [R9]
D9C42:  MOV.W           R2, #0x1000; n
D9C46:  LDR.W           R4, [R7,#var_40]
D9C4A:  ADD.W           R1, R0, R11,LSL#2; src
D9C4E:  MOV             R0, R4; dest
D9C50:  BLX             j_memcpy
D9C54:  LDR.W           R0, [R7,#dest]
D9C58:  MOV             R11, R5
D9C5A:  LDR.W           R1, [R7,#var_5C]
D9C5E:  CMP             R1, R0
D9C60:  BLT.W           loc_D9B1A
D9C64:  B               loc_D9DD2
D9C66:  RSB.W           R1, R1, #0x400
D9C6A:  ADD.W           R10, R4, #0xF4
D9C6E:  MOV             R6, R3
D9C70:  MOV.W           R9, #0
D9C74:  LSLS            R1, R1, #2
D9C76:  STR.W           R1, [R7,#var_6C]
D9C7A:  SUB.W           R1, R1, #0x1000
D9C7E:  STR.W           R1, [R7,#var_70]
D9C82:  MOVS            R1, #1
D9C84:  STR.W           R1, [R7,#var_5C]
D9C88:  B               loc_D9CBA
D9C8A:  LDR.W           LR, [R7,#var_54]
D9C8E:  ADDS            R1, #1
D9C90:  LDR.W           R9, [R7,#var_68]
D9C94:  ADD.W           R4, R4, #0x1000
D9C98:  LDR.W           R6, [R7,#var_64]
D9C9C:  ADD             R10, R8
D9C9E:  LDR.W           R0, [R7,#var_44]
D9CA2:  ADD.W           R9, R9, #1
D9CA6:  STR.W           R4, [R7,#var_40]
D9CAA:  ADDS            R6, #4
D9CAC:  STR.W           R1, [R7,#var_5C]
D9CB0:  ADD             R11, R0
D9CB2:  LDR.W           R0, [LR]
D9CB6:  LDR.W           R4, [R7,#var_48]
D9CBA:  CMP             R0, #0xF
D9CBC:  MOV             R2, R8; n
D9CBE:  IT LE
D9CC0:  MOVLE           R0, #0xF
D9CC2:  LDR.W           R1, [R7,#var_38]
D9CC6:  LDR             R5, [R1,#0x24]
D9CC8:  MOV             R1, R10; src
D9CCA:  STR.W           R0, [LR]
D9CCE:  MOV             R0, R11; dest
D9CD0:  STR.W           R10, [R7,#var_58]
D9CD4:  BLX             j_memcpy
D9CD8:  LDR.W           R0, [R7,#var_34]
D9CDC:  STRD.W          R9, R6, [R7,#var_68]
D9CE0:  SUBS.W          R10, R5, R0
D9CE4:  STR.W           R5, [R7,#var_60]
D9CE8:  BEQ             loc_D9D28
D9CEA:  LDR             R3, [R6]
D9CEC:  LDR             R0, [R4,#0x48]
D9CEE:  LDR             R2, [R4,#0x68]
D9CF0:  LDR             R1, [R4,#0x70]
D9CF2:  LDRH.W          R6, [R4,#0x6C]
D9CF6:  SUB             SP, SP, #0x20 ; ' '
D9CF8:  NEGS            R6, R6
D9CFA:  SXTH            R6, R6
D9CFC:  STRD.W          R10, R6, [SP,#0xA0+var_A0]
D9D00:  STRD.W          R6, R1, [SP,#0xA0+var_98]
D9D04:  STR             R1, [SP,#0xA0+var_90]
D9D06:  MOVS            R1, #0
D9D08:  STRD.W          R1, R1, [SP,#0xA0+var_8C]
D9D0C:  ADD.W           R1, R3, #0x1000
D9D10:  STR             R0, [SP,#0xA0+var_84]
D9D12:  ADD.W           R0, R11, R8
D9D16:  MOV             R3, R2
D9D18:  BLX             j_comb_filter
D9D1C:  ADD             SP, SP, #0x20 ; ' '
D9D1E:  SUB.W           R0, R7, #-var_2C
D9D22:  ADD.W           R5, R0, R9,LSL#2
D9D26:  B               loc_D9D2A
D9D28:  MOV             R5, R6
D9D2A:  LDR.W           R0, [R7,#var_38]
D9D2E:  MOV             R9, R11
D9D30:  LDR.W           R12, [R4,#0x48]
D9D34:  MOV             R11, R5
D9D36:  LDR             R2, [R4,#0x68]
D9D38:  LDR             R1, [R4,#0x70]
D9D3A:  LDRH.W          R4, [R4,#0x6C]
D9D3E:  LDR.W           R3, [R7,#var_30]
D9D42:  LDR             R6, [R0,#0x34]
D9D44:  LDR.W           LR, [R11]
D9D48:  SUB             SP, SP, #0x20 ; ' '
D9D4A:  LDR.W           R0, [R7,#var_50]
D9D4E:  NEGS            R4, R4
D9D50:  LDR             R5, [R7,#arg_0]
D9D52:  SXTH            R4, R4
D9D54:  SXTH            R0, R0
D9D56:  SUB.W           R5, R5, R10
D9D5A:  STRD.W          R5, R4, [SP,#0xA0+var_A0]
D9D5E:  STRD.W          R0, R1, [SP,#0xA0+var_98]
D9D62:  ADD.W           R1, LR, R10,LSL#2
D9D66:  LDR             R0, [R7,#arg_4]
D9D68:  ADD.W           R1, R1, #0x1000
D9D6C:  STRD.W          R0, R6, [SP,#0xA0+var_90]
D9D70:  LDR.W           R0, [R7,#var_34]
D9D74:  STRD.W          R0, R12, [SP,#0xA0+var_88]
D9D78:  LDR.W           R0, [R7,#var_60]
D9D7C:  ADD.W           R0, R9, R0,LSL#2
D9D80:  BLX             j_comb_filter
D9D84:  ADD             SP, SP, #0x20 ; ' '
D9D86:  LDR.W           R5, [R7,#n]
D9D8A:  MOV             R2, R8; n
D9D8C:  LDR.W           R10, [R7,#var_58]
D9D90:  ADD.W           R1, R9, R5; src
D9D94:  MOV             R0, R10; dest
D9D96:  BLX             j_memcpy
D9D9A:  LDR.W           R4, [R7,#var_40]
D9D9E:  LDR.W           R2, [R7,#var_6C]; n
D9DA2:  ADDS            R1, R4, R5; src
D9DA4:  MOV             R0, R4; dest
D9DA6:  BLX             j_memmove
D9DAA:  LDR.W           R0, [R7,#var_70]
D9DAE:  MOV             R2, R5; n
D9DB0:  LDR.W           R1, [R11]
D9DB4:  ADD             R0, R4
D9DB6:  ADD.W           R0, R0, #0x1000; dest
D9DBA:  ADD.W           R1, R1, #0x1000; src
D9DBE:  BLX             j_memcpy
D9DC2:  LDR.W           R0, [R7,#dest]
D9DC6:  MOV             R11, R9
D9DC8:  LDR.W           R1, [R7,#var_5C]
D9DCC:  CMP             R1, R0
D9DCE:  BLT.W           loc_D9C8A
D9DD2:  LDR             R0, [R7,#arg_C]
D9DD4:  LDR.W           R1, [R7,#var_7C]
D9DD8:  STRH            R1, [R0]
D9DDA:  LDR             R1, [R7,#arg_8]
D9DDC:  LDR.W           R0, [R7,#var_30]
D9DE0:  STR             R0, [R1]
D9DE2:  LDR             R0, [R7,#arg_10]
D9DE4:  LDR.W           R1, [R7,#var_78]
D9DE8:  STR             R1, [R0]
D9DEA:  LDR             R0, =(__stack_chk_guard_ptr - 0xD9DF4)
D9DEC:  LDR.W           R1, [R7,#var_24]
D9DF0:  ADD             R0, PC; __stack_chk_guard_ptr
D9DF2:  LDR             R0, [R0]; __stack_chk_guard
D9DF4:  LDR             R0, [R0]
D9DF6:  SUBS            R0, R0, R1
D9DF8:  ITTTT EQ
D9DFA:  LDREQ.W         R0, [R7,#var_80]
D9DFE:  SUBEQ.W         R4, R7, #-var_1C
D9E02:  MOVEQ           SP, R4
D9E04:  POPEQ.W         {R8-R11}
D9E08:  IT EQ
D9E0A:  POPEQ           {R4-R7,PC}
D9E0C:  BLX             __stack_chk_fail
