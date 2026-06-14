; =========================================================
; Game Engine Function: silk_encode_frame_FIX
; Address            : 0x1AA894 - 0x1AB3FE
; =========================================================

1AA894:  PUSH            {R4-R7,LR}
1AA896:  ADD             R7, SP, #0xC
1AA898:  PUSH.W          {R8-R11}
1AA89C:  SUB.W           SP, SP, #0x2500
1AA8A0:  SUB             SP, SP, #0x2C
1AA8A2:  MOV             R4, R0
1AA8A4:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1AA8B2)
1AA8A8:  MOV             R6, SP
1AA8AA:  ADD.W           R5, R6, #0x154
1AA8AE:  ADD             R0, PC; __stack_chk_guard_ptr
1AA8B0:  STR.W           R3, [R6,#0x2548+var_24C4]
1AA8B4:  STR.W           R2, [R6,#0x2548+var_24B0]
1AA8B8:  MOVW            R9, #0x11F0
1AA8BC:  LDR             R0, [R0]; __stack_chk_guard
1AA8BE:  MOVW            R8, #0x12A2
1AA8C2:  STR             R1, [R6,#0x2548+var_2524]
1AA8C4:  MOVW            R10, #0x11E8
1AA8C8:  LDR             R0, [R0]
1AA8CA:  STR.W           R0, [R6,#0x2548+var_247C]
1AA8CE:  MOVS            R0, #0
1AA8D0:  STRD.W          R0, R0, [R5,#-0xC]
1AA8D4:  STR.W           R0, [R5,#-4]
1AA8D8:  STR             R0, [R5]
1AA8DA:  MOVW            R0, #0x120C
1AA8DE:  LDR             R1, [R4,R0]
1AA8E0:  LDR.W           R11, [R4,R9]
1AA8E4:  AND.W           R2, R1, #3
1AA8E8:  STRB.W          R2, [R4,R8]
1AA8EC:  ADDS            R1, #1
1AA8EE:  LDR.W           R2, [R4,R10]
1AA8F2:  STR             R1, [R4,R0]
1AA8F4:  MOVW            R0, #0x13EA
1AA8F8:  ADDS            R5, R4, R0
1AA8FA:  ADD.W           R0, R4, #0x10
1AA8FE:  MOV             R1, R5
1AA900:  BLX             j_silk_LP_variable_cutoff
1AA904:  MOVW            R0, #0x1C10
1AA908:  ADD             R0, R4
1AA90A:  STR             R0, [R6,#0x2548+var_2528]
1AA90C:  ADD.W           R1, R0, R11,LSL#1
1AA910:  MOV.W           R0, #0x11E0
1AA914:  LDR             R0, [R4,R0]
1AA916:  STR             R1, [R6,#0x2548+var_24D8]
1AA918:  ADD.W           R0, R0, R0,LSL#2
1AA91C:  ADD.W           R0, R1, R0,LSL#1; dest
1AA920:  LDR.W           R1, [R4,R10]
1AA924:  LSLS            R2, R1, #1; n
1AA926:  MOV             R1, R5; src
1AA928:  BLX             j_memcpy
1AA92C:  MOVW            R0, #0x1248
1AA930:  ADD.W           R2, R4, R10
1AA934:  LDR             R1, [R4,R0]
1AA936:  ADD             R0, R4
1AA938:  STR             R0, [R6,#0x2548+var_252C]
1AA93A:  ADD.W           R0, R4, R9
1AA93E:  CMP             R1, #0
1AA940:  STR             R0, [R6,#0x2548+var_24E8]
1AA942:  ADD.W           R0, R4, #0x11E0
1AA946:  STR.W           R4, [R6,#0x2548+var_24B4]
1AA94A:  STR             R0, [R6,#0x2548+var_2530]
1AA94C:  BEQ             loc_1AA9E8
1AA94E:  LDR             R1, [R6,#0x18]
1AA950:  LDR             R0, [R2]
1AA952:  LDR             R2, [R1]
1AA954:  LDR             R1, [R6,#0x60]
1AA956:  LDR             R3, [R1]
1AA958:  LDR.W           R1, [R6,#0x94]
1AA95C:  ADD.W           R0, R1, R0,LSL#1
1AA960:  MOVW            R1, #0x1C10
1AA964:  ADD             R1, R0; src
1AA966:  ADD.W           R0, R2, R2,LSL#2
1AA96A:  ADD             R0, R3
1AA96C:  LSLS            R2, R0, #1; n
1AA96E:  LDR             R0, [R6,#0x20]; dest
1AA970:  BLX             j_memmove
1AA974:  LDR             R0, [R6,#0x1C]
1AA976:  LDR             R1, [R0]
1AA978:  MOVS            R0, #0
1AA97A:  CBNZ            R1, loc_1AA9BE
1AA97C:  LDR.W           R5, [R6,#0x94]
1AA980:  MOVW            R1, #0x11E4
1AA984:  ADD.W           LR, R6, #0x18
1AA988:  MOVW            R2, #0x129D
1AA98C:  ADD.W           R3, LR, #0x1240
1AA990:  LDR             R1, [R5,R1]
1AA992:  LDRB            R2, [R5,R2]
1AA994:  ADD.W           R1, R3, R1,LSL#2
1AA998:  MOVW            R3, #0x1238
1AA99C:  LDR             R1, [R1,#0x78]
1AA99E:  STR             R0, [R5,R3]
1AA9A0:  MOVW            R0, #0x11BD
1AA9A4:  STRB            R2, [R5,R0]
1AA9A6:  MOV.W           R0, #0x11C0
1AA9AA:  STR             R1, [R5,R0]
1AA9AC:  LDR.W           R1, [R6,#0x98]
1AA9B0:  LDR             R0, [R1,#0x1C]
1AA9B2:  LDR             R1, [R1,#0x14]
1AA9B4:  CLZ.W           R0, R0
1AA9B8:  ADD             R0, R1
1AA9BA:  SUBS            R0, #0x19
1AA9BC:  ASRS            R0, R0, #3
1AA9BE:  LDR             R1, [R6,#0x24]
1AA9C0:  STR             R0, [R1]
1AA9C2:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1AA9CE)
1AA9C6:  LDR.W           R1, [R6,#0xCC]
1AA9CA:  ADD             R0, PC; __stack_chk_guard_ptr
1AA9CC:  LDR             R0, [R0]; __stack_chk_guard
1AA9CE:  LDR             R0, [R0]
1AA9D0:  SUBS            R0, R0, R1
1AA9D2:  ITTTT EQ
1AA9D4:  MOVEQ           R0, #0
1AA9D6:  SUBEQ.W         R4, R7, #-var_1C
1AA9DA:  MOVEQ           SP, R4
1AA9DC:  POPEQ.W         {R8-R11}
1AA9E0:  IT EQ
1AA9E2:  POPEQ           {R4-R7,PC}
1AA9E4:  BLX             __stack_chk_fail
1AA9E8:  LDR.W           R5, [R6,#0x94]
1AA9EC:  ADD.W           R0, R5, R8
1AA9F0:  STR             R0, [R6,#0x14]
1AA9F2:  ADD.W           R0, R5, #0x1280
1AA9F6:  STR.W           R0, [R6,#0xA4]
1AA9FA:  MOVW            R0, #0x11F4
1AA9FE:  LDR             R0, [R5,R0]
1AAA00:  STR.W           R2, [R6,#0xB4]
1AAA04:  LDR             R1, [R2]
1AAA06:  LDR             R2, [R6,#0x60]
1AAA08:  ADD             R0, R1
1AAA0A:  MOVS            R1, #7
1AAA0C:  LDR.W           R10, [R2]
1AAA10:  ADD             R0, R10
1AAA12:  ADD.W           R0, R1, R0,LSL#1
1AAA16:  BIC.W           R0, R0, #7
1AAA1A:  SUB.W           R4, SP, R0
1AAA1E:  MOV             SP, R4
1AAA20:  MOVW            R8, #0x13E4
1AAA24:  LDR.W           R0, [R5,R8]
1AAA28:  SUB             SP, SP, #8
1AAA2A:  LDR.W           R9, [R6,#0x70]
1AAA2E:  ADD.W           LR, R6, #0x18
1AAA32:  ADD.W           R11, LR, #0x1240
1AAA36:  STR             R0, [SP,#0x2550+var_2550]
1AAA38:  SUB.W           R3, R9, R10,LSL#1
1AAA3C:  MOV             R0, R5
1AAA3E:  MOV             R1, R11
1AAA40:  MOV             R2, R4
1AAA42:  BLX             j_silk_find_pitch_lags_FIX
1AAA46:  ADD             SP, SP, #8
1AAA48:  LDR.W           R0, [R5,R8]
1AAA4C:  SUB             SP, SP, #8
1AAA4E:  ADD.W           R8, R4, R10,LSL#1
1AAA52:  STR             R0, [SP,#0x2550+var_2550]
1AAA54:  MOV             R0, R5
1AAA56:  MOV             R1, R11
1AAA58:  MOV             R2, R8
1AAA5A:  MOV             R3, R9
1AAA5C:  BLX             j_silk_noise_shape_analysis_FIX
1AAA60:  ADD             SP, SP, #8
1AAA62:  SUB             SP, SP, #8
1AAA64:  LDR.W           R4, [R6,#0x84]
1AAA68:  MOV             R0, R5
1AAA6A:  MOV             R1, R11
1AAA6C:  MOV             R2, R8
1AAA6E:  MOV             R3, R9
1AAA70:  STR             R4, [SP,#0x2550+var_2550]
1AAA72:  BLX             j_silk_find_pred_coefs_FIX
1AAA76:  ADD             SP, SP, #8
1AAA78:  MOV             R0, R5
1AAA7A:  MOV             R1, R11
1AAA7C:  MOV             R2, R4
1AAA7E:  BLX             j_silk_process_gains_FIX
1AAA82:  MOVW            R0, #0x1674
1AAA86:  ADDS            R1, R5, R0
1AAA88:  STR             R1, [R6,#0x6C]
1AAA8A:  MOVW            R1, #0x17CC
1AAA8E:  LDR             R1, [R5,R1]
1AAA90:  CMP             R1, #0
1AAA92:  BEQ.W           loc_1AAC0C
1AAA96:  LDR.W           R2, [R6,#0x94]
1AAA9A:  MOVW            R1, #0x11B4
1AAA9E:  LDR             R1, [R2,R1]
1AAAA0:  CMP             R1, #0x4E ; 'N'
1AAAA2:  BLT.W           loc_1AAC0C
1AAAA6:  LDR.W           R4, [R6,#0x94]
1AAAAA:  MOVW            R2, #0x17D4
1AAAAE:  LDR             R0, [R4,R0]
1AAAB0:  ADD.W           R1, R0, R0,LSL#3
1AAAB4:  ADD.W           R0, R4, R0,LSL#2
1AAAB8:  ADD.W           R1, R4, R1,LSL#2
1AAABC:  ADD.W           R11, R1, R2
1AAAC0:  MOVW            R1, #0x1274
1AAAC4:  MOVS            R2, #1
1AAAC6:  STR             R2, [R0,R1]
1AAAC8:  ADD.W           R1, R4, #0x94; src
1AAACC:  ADD.W           R0, R6, #0x1420; dest
1AAAD0:  MOV.W           R2, #0x1100; n
1AAAD4:  BLX             j_memcpy
1AAAD8:  LDR.W           R1, [R6,#0xA4]; src
1AAADC:  MOV             R0, R11; dest
1AAADE:  MOVS            R2, #0x24 ; '$'; n
1AAAE0:  BLX             j_memcpy
1AAAE4:  MOVW            R8, #0x11E4
1AAAE8:  ADD.W           R9, R6, #0x18
1AAAEC:  LDR.W           R5, [R4,R8]
1AAAF0:  ADD.W           R0, R6, #0x158; dest
1AAAF4:  ADD.W           R1, R9, #0x1240; src
1AAAF8:  LSLS            R2, R5, #2; n
1AAAFA:  BLX             j_memcpy
1AAAFE:  LDR             R0, [R6,#0x6C]
1AAB00:  ADD             R8, R4
1AAB02:  LDR             R0, [R0]
1AAB04:  CBZ             R0, loc_1AAB22
1AAB06:  LDR.W           R1, [R6,#0x94]
1AAB0A:  ADD.W           R0, R1, R0,LSL#2
1AAB0E:  MOVW            R1, #0x1270
1AAB12:  LDR             R0, [R0,R1]
1AAB14:  CBZ             R0, loc_1AAB22
1AAB16:  LDR.W           R1, [R6,#0x94]
1AAB1A:  MOVW            R0, #0x11BC
1AAB1E:  ADDS            R2, R1, R0
1AAB20:  B               loc_1AAB50
1AAB22:  LDR.W           R3, [R6,#0x94]
1AAB26:  MOV.W           R1, #0x1C00
1AAB2A:  MOVW            R0, #0x17D0
1AAB2E:  MOVW            R2, #0x11BC
1AAB32:  LDRB            R1, [R3,R1]
1AAB34:  LDR             R0, [R3,R0]
1AAB36:  STRB            R1, [R3,R2]
1AAB38:  ADD             R2, R3
1AAB3A:  LDRB.W          R1, [R11]
1AAB3E:  ADD             R0, R1
1AAB40:  SXTB            R0, R0
1AAB42:  CMP             R0, #0x3F ; '?'
1AAB44:  IT GE
1AAB46:  MOVGE           R0, #0x3F ; '?'
1AAB48:  STRB.W          R0, [R11]
1AAB4C:  LDR.W           R5, [R8]
1AAB50:  SUB             SP, SP, #8
1AAB52:  LDR.W           R0, [R6,#0x84]
1AAB56:  ADD.W           R4, R6, #0x18
1AAB5A:  STR             R5, [SP,#0x2550+var_2550]
1AAB5C:  ADD.W           R5, R4, #0x1240
1AAB60:  CMP             R0, #2
1AAB62:  MOV.W           R3, #0
1AAB66:  IT EQ
1AAB68:  MOVEQ           R3, #1
1AAB6A:  MOV             R0, R5
1AAB6C:  MOV             R1, R11
1AAB6E:  BLX             j_silk_gains_dequant
1AAB72:  ADD             SP, SP, #8
1AAB74:  LDR.W           R1, [R6,#0x94]
1AAB78:  MOVW            R0, #0x1214
1AAB7C:  LDR             R0, [R1,R0]
1AAB7E:  CMP             R0, #1
1AAB80:  BGT             loc_1AAB92
1AAB82:  LDR.W           R1, [R6,#0x94]
1AAB86:  MOV.W           R0, #0x1240
1AAB8A:  LDR             R0, [R1,R0]
1AAB8C:  CMP             R0, #1
1AAB8E:  BLT.W           loc_1AB398
1AAB92:  ADD.W           R10, R6, #0x1000
1AAB96:  LDR             R2, [R6,#0x6C]
1AAB98:  LDR.W           R0, [R10,#0x2D0]
1AAB9C:  ADD.W           R10, R6, #0x1000
1AABA0:  LDR             R2, [R2]
1AABA2:  LDR.W           R1, [R10,#0x3D4]
1AABA6:  SUB             SP, SP, #0x30 ; '0'
1AABA8:  ADD.W           R3, R5, #0x7C ; '|'
1AABAC:  STRD.W          R3, R1, [SP,#0x2578+var_2558]
1AABB0:  STR             R0, [SP,#0x2578+var_2550]
1AABB2:  ADD.W           R2, R2, R2,LSL#2
1AABB6:  LDR.W           R0, [R6,#0x94]
1AABBA:  ADD.W           R1, R5, #0x10
1AABBE:  ADD.W           LR, R5, #0x15C
1AABC2:  ADD.W           R9, R5, #0x16C
1AABC6:  ADD.W           R2, R0, R2,LSL#6
1AABCA:  ADD.W           R4, R5, #0x8C
1AABCE:  ADD.W           R2, R2, #0x1840
1AABD2:  STRD.W          R2, R1, [SP,#0x2578+var_2578]
1AABD6:  ADD.W           R3, R5, #0x50 ; 'P'
1AABDA:  ADD             R1, SP, #0x2578+var_2570
1AABDC:  STM.W           R1, {R3,R4,R9,LR}
1AABE0:  ADD.W           R12, R5, #0x14C
1AABE4:  ADD.W           R1, R6, #0x1420
1AABE8:  STRD.W          R12, R5, [SP,#0x2578+var_2560]
1AABEC:  MOV             R2, R11
1AABEE:  LDR             R3, [R6,#0x70]
1AABF0:  BLX             j_silk_NSQ_del_dec_c
1AABF4:  ADD             SP, SP, #0x30 ; '0'
1AABF6:  LDR.W           R0, [R8]
1AABFA:  ADD.W           R4, R6, #0x18
1AABFE:  ADD.W           R1, R6, #0x158; src
1AAC02:  LSLS            R2, R0, #2; n
1AAC04:  ADD.W           R0, R4, #0x1240; dest
1AAC08:  BLX             j_memcpy
1AAC0C:  LDR.W           R10, [R6,#0x94]
1AAC10:  MOVW            R8, #0x11E4
1AAC14:  LDR.W           R0, [R6,#0xA4]
1AAC18:  LDR.W           R1, [R10,R8]
1AAC1C:  BLX             j_silk_gains_ID
1AAC20:  LDR.W           R9, [R6,#0x98]
1AAC24:  MOV             R11, R0
1AAC26:  ADD.W           R12, R6, #0x100
1AAC2A:  MOV             R1, R9
1AAC2C:  LDM.W           R1!, {R0,R2-R5,LR}
1AAC30:  STM.W           R12!, {R0,R2-R5,LR}
1AAC34:  LDM.W           R1, {R0,R2-R5,LR}
1AAC38:  ADD.W           R1, R10, #0x94; src
1AAC3C:  STM.W           R12, {R0,R2-R5,LR}
1AAC40:  ADD.W           R0, R6, #0x1420; dest
1AAC44:  MOV.W           R2, #0x1100; n
1AAC48:  STR.W           R1, [R6,#0x80]
1AAC4C:  BLX             j_memcpy
1AAC50:  LDR.W           R0, [R6,#0x84]
1AAC54:  MOV             R3, R11
1AAC56:  ADD.W           R4, R6, #0x18
1AAC5A:  MOV.W           R2, #0xFFFFFFFF
1AAC5E:  CMP             R0, #2
1AAC60:  MOV.W           R0, #0
1AAC64:  IT EQ
1AAC66:  MOVEQ           R0, #1
1AAC68:  ADD.W           LR, R4, #0x1240
1AAC6C:  STR.W           R0, [R6,#0x88]
1AAC70:  MOVW            R0, #0x129E
1AAC74:  ADD             R0, R10
1AAC76:  STR             R0, [R6,#0x68]
1AAC78:  MOVW            R0, #0x129D
1AAC7C:  ADD             R0, R10
1AAC7E:  STR             R0, [R6,#0x64]
1AAC80:  MOVW            R0, #0x12A4
1AAC84:  ADD.W           R11, R10, R0
1AAC88:  MOVW            R0, #0x1214
1AAC8C:  ADD             R0, R10
1AAC8E:  STR             R0, [R6,#0x4C]
1AAC90:  MOVW            R0, #0x11EC
1AAC94:  ADD             R0, R10
1AAC96:  STR             R0, [R6,#0x10]
1AAC98:  MOVW            R0, #0x1688
1AAC9C:  ADD.W           R1, R10, R0
1AACA0:  STR             R1, [R6,#0x5C]
1AACA2:  LDR.W           R0, [R10,R0]
1AACA6:  STR             R0, [R6,#0x58]
1AACA8:  MOVW            R0, #0x168C
1AACAC:  LDRH.W          R1, [R10,R0]
1AACB0:  ADD             R0, R10
1AACB2:  STR             R0, [R6,#0x50]
1AACB4:  ADD.W           R0, R10, R8
1AACB8:  STR.W           R0, [R6,#0xC0]
1AACBC:  ADD.W           R0, LR, #0x7C ; '|'
1AACC0:  STR             R0, [R6,#0x48]
1AACC2:  ADD.W           R0, LR, #0x14C
1AACC6:  STR             R0, [R6,#0x44]
1AACC8:  ADD.W           R0, LR, #0x15C
1AACCC:  STR             R0, [R6,#0x40]
1AACCE:  ADD.W           R0, LR, #0x16C
1AACD2:  STR             R0, [R6,#0x3C]
1AACD4:  ADD.W           R0, LR, #0x8C
1AACD8:  STR             R0, [R6,#0x38]
1AACDA:  ADD.W           R0, LR, #0x50 ; 'P'
1AACDE:  STR             R1, [R6,#0x54]
1AACE0:  STR             R0, [R6,#0x34]
1AACE2:  ADD.W           R0, LR, #0x10
1AACE6:  LDR             R1, [R7,#arg_0]
1AACE8:  STR             R0, [R6,#0x30]
1AACEA:  ADD.W           R0, R9, #0x1C
1AACEE:  STR             R0, [R6,#0x7C]
1AACF0:  SUBS            R0, R1, #5
1AACF2:  STR             R0, [R6,#0x74]
1AACF4:  MOV.W           R9, #0x100
1AACF8:  LDR             R0, [R6,#0x14]
1AACFA:  LDRB            R0, [R0]
1AACFC:  STR             R0, [R6,#0xC]
1AACFE:  ADD.W           R0, R10, #0x1240
1AAD02:  STR             R0, [R6,#8]
1AAD04:  ADD.W           R0, R10, #0x1C00
1AAD08:  STR.W           R0, [R6,#0xA0]
1AAD0C:  SUB.W           R0, SP, #0x500
1AAD10:  STR.W           R2, [R6,#0xB8]
1AAD14:  STR             R0, [R6,#0x2C]
1AAD16:  MOV             SP, R0
1AAD18:  ADD.W           R0, R6, #0xE8
1AAD1C:  STR             R0, [R6]
1AAD1E:  ADD.W           R0, R6, #0xD0
1AAD22:  STR             R0, [R6,#4]
1AAD24:  MOVS            R0, #0
1AAD26:  MOVW            R8, #0xFFFF
1AAD2A:  STR.W           R0, [R6,#0xB0]
1AAD2E:  MOVS            R0, #0
1AAD30:  STR.W           R0, [R6,#0x9C]
1AAD34:  MOVS            R0, #0
1AAD36:  STR.W           R0, [R6,#0x90]
1AAD3A:  MOVS            R0, #0
1AAD3C:  STR.W           R0, [R6,#0xBC]
1AAD40:  MOV.W           R0, #0xFFFFFFFF
1AAD44:  STR.W           R0, [R6,#0x8C]
1AAD48:  MOVT            R8, #0x7F
1AAD4C:  STR             R0, [R6,#0x78]
1AAD4E:  MOVS            R0, #0
1AAD50:  STR             R0, [R6,#0x28]
1AAD52:  MOVS            R0, #0
1AAD54:  MOVS            R4, #0
1AAD56:  STR.W           R0, [R6,#0xA8]
1AAD5A:  MOVS            R0, #0
1AAD5C:  STR.W           R0, [R6,#0xC8]
1AAD60:  B               loc_1AADAA
1AAD62:  ADD.W           R5, R6, #0x1000
1AAD66:  LDR.W           R2, [R6,#0xA0]
1AAD6A:  LDRB.W          R1, [R5,#0x418]
1AAD6E:  STRB            R1, [R2]
1AAD70:  SUB             SP, SP, #8
1AAD72:  LDR.W           R3, [R6,#0x88]
1AAD76:  MOV             R1, LR
1AAD78:  STR.W           R12, [SP,#0x2550+var_2550]
1AAD7C:  MOV             R4, R0
1AAD7E:  BLX             j_silk_gains_quant
1AAD82:  ADD             SP, SP, #8
1AAD84:  LDR.W           R0, [R6,#0xC0]
1AAD88:  LDR             R1, [R0]
1AAD8A:  MOV             R0, R4
1AAD8C:  BLX             j_silk_gains_ID
1AAD90:  MOV             R3, R0
1AAD92:  LDR.W           R0, [R6,#0xC8]
1AAD96:  ADD.W           R5, R6, #0x18
1AAD9A:  LDR             R1, [R7,#arg_0]
1AAD9C:  ADDS            R0, #1
1AAD9E:  ADD.W           LR, R5, #0x1240
1AADA2:  STR.W           R0, [R6,#0xC8]
1AADA6:  LDR.W           R4, [R6,#0xC4]
1AADAA:  LDR.W           R0, [R6,#0xB8]
1AADAE:  LDR.W           R2, [R6,#0xB4]
1AADB2:  CMP             R3, R0
1AADB4:  BNE             loc_1AADBE
1AADB6:  LDR.W           R0, [R6,#0xB0]
1AADBA:  MOV             R10, R0
1AADBC:  B               loc_1AB014
1AADBE:  LDR.W           R0, [R6,#0x8C]
1AADC2:  CMP             R3, R0
1AADC4:  BNE             loc_1AADCE
1AADC6:  LDR.W           R0, [R6,#0x9C]
1AADCA:  MOV             R10, R0
1AADCC:  B               loc_1AB014
1AADCE:  LDR.W           R0, [R6,#0xC8]
1AADD2:  STR.W           R3, [R6,#0xAC]
1AADD6:  CMP             R0, #1
1AADD8:  BLT             loc_1AAE20
1AADDA:  ADD.W           R12, R6, #0x100
1AADDE:  LDR.W           R1, [R6,#0x98]
1AADE2:  MOV             R10, R4
1AADE4:  LDM.W           R12!, {R0,R2-R5,LR}
1AADE8:  STM.W           R1!, {R0,R2-R5,LR}
1AADEC:  LDM.W           R12, {R0,R2-R5,LR}
1AADF0:  STM.W           R1, {R0,R2-R5,LR}
1AADF4:  ADD.W           R1, R6, #0x1420; src
1AADF8:  MOV.W           R2, #0x1100; n
1AADFC:  LDR.W           R0, [R6,#0x80]; dest
1AAE00:  MOV             R4, R10
1AAE02:  BLX             j_memcpy
1AAE06:  LDR             R0, [R6,#0x14]
1AAE08:  ADD.W           R3, R6, #0x18
1AAE0C:  LDR             R1, [R6,#0xC]
1AAE0E:  ADD.W           LR, R3, #0x1240
1AAE12:  STRB            R1, [R0]
1AAE14:  LDRD.W          R1, R0, [R6,#0x50]
1AAE18:  STRH            R0, [R1]
1AAE1A:  LDRD.W          R1, R0, [R6,#0x58]
1AAE1E:  STR             R1, [R0]
1AAE20:  LDR             R0, [R6,#0x4C]
1AAE22:  LDR             R0, [R0]
1AAE24:  CMP             R0, #1
1AAE26:  BGT             loc_1AAE32
1AAE28:  LDR             R0, [R6,#8]
1AAE2A:  LDR             R0, [R0]
1AAE2C:  CMP             R0, #1
1AAE2E:  BLT.W           loc_1AB2D6
1AAE32:  ADD.W           R5, R6, #0x1000
1AAE36:  LDR.W           R0, [R5,#0x2D0]
1AAE3A:  ADD.W           R5, R6, #0x1000
1AAE3E:  LDR.W           R1, [R5,#0x3D4]
1AAE42:  SUB             SP, SP, #0x30 ; '0'
1AAE44:  LDR             R2, [R6,#0x48]
1AAE46:  STRD.W          R2, R1, [SP,#0x2578+var_2558]
1AAE4A:  STR             R0, [SP,#0x2578+var_2550]
1AAE4C:  LDR             R0, [R6,#0x30]
1AAE4E:  STR.W           R11, [SP,#0x2578+var_2578]
1AAE52:  STR             R0, [SP,#0x2578+var_2574]
1AAE54:  LDR             R0, [R6,#0x34]
1AAE56:  STR             R0, [SP,#0x2578+var_2570]
1AAE58:  LDR             R0, [R6,#0x38]
1AAE5A:  STR             R0, [SP,#0x2578+var_256C]
1AAE5C:  LDR             R0, [R6,#0x3C]
1AAE5E:  STR             R0, [SP,#0x2578+var_2568]
1AAE60:  LDR             R0, [R6,#0x40]
1AAE62:  STR             R0, [SP,#0x2578+var_2564]
1AAE64:  LDR             R0, [R6,#0x44]
1AAE66:  STRD.W          R0, LR, [SP,#0x2578+var_2560]
1AAE6A:  LDR.W           R0, [R6,#0x94]
1AAE6E:  LDR.W           R1, [R6,#0x80]
1AAE72:  LDR.W           R2, [R6,#0xA4]
1AAE76:  LDR             R3, [R6,#0x70]
1AAE78:  BLX             j_silk_NSQ_del_dec_c
1AAE7C:  ADD             SP, SP, #0x30 ; '0'
1AAE7E:  CMP             R4, #0
1AAE80:  STR.W           R4, [R6,#0xC4]
1AAE84:  ITT EQ
1AAE86:  LDREQ.W         R0, [R6,#0xC8]
1AAE8A:  CMPEQ           R0, #6
1AAE8C:  BNE             loc_1AAEB4
1AAE8E:  LDR.W           R10, [R6,#0x98]
1AAE92:  ADD.W           R12, R6, #0xE8
1AAE96:  MOV             R1, R10
1AAE98:  LDM.W           R1, {R0,R2-R5,LR}
1AAE9C:  ADD.W           R1, R6, #0xD0
1AAEA0:  STM.W           R12, {R0,R2-R5,LR}
1AAEA4:  LDR.W           R12, [R6,#0x7C]
1AAEA8:  LDR.W           R0, [R10,#0x18]
1AAEAC:  STR             R0, [R6,#0x78]
1AAEAE:  LDM.W           R12, {R0,R2-R5}
1AAEB2:  STM             R1!, {R0,R2-R5}
1AAEB4:  LDR             R0, [R6,#0x6C]
1AAEB6:  LDR             R2, [R0]
1AAEB8:  SUB             SP, SP, #8
1AAEBA:  LDR.W           R0, [R6,#0x84]
1AAEBE:  MOVS            R3, #0
1AAEC0:  STR             R0, [SP,#0x2550+var_2550]
1AAEC2:  LDRD.W          R0, R4, [R6,#0x94]
1AAEC6:  MOV             R1, R4
1AAEC8:  BLX             j_silk_encode_indices
1AAECC:  ADD             SP, SP, #8
1AAECE:  LDR             R0, [R6,#0x68]
1AAED0:  LDRSB.W         R2, [R0]
1AAED4:  LDR             R0, [R6,#0x64]
1AAED6:  LDRSB.W         R1, [R0]
1AAEDA:  LDR.W           R0, [R6,#0xB4]
1AAEDE:  LDR             R0, [R0]
1AAEE0:  SUB             SP, SP, #8
1AAEE2:  STR             R0, [SP,#0x2550+var_2550]
1AAEE4:  MOV             R0, R4
1AAEE6:  MOV             R3, R11
1AAEE8:  BLX             j_silk_encode_pulses
1AAEEC:  ADD             SP, SP, #8
1AAEEE:  LDR             R1, [R4,#0x1C]
1AAEF0:  LDR             R0, [R4,#0x14]
1AAEF2:  CLZ.W           R1, R1
1AAEF6:  ADD             R0, R1
1AAEF8:  LDR             R1, [R7,#arg_0]
1AAEFA:  SUB.W           R10, R0, #0x20 ; ' '
1AAEFE:  CMP             R10, R1
1AAF00:  BLE             loc_1AAFE8
1AAF02:  LDR.W           R0, [R6,#0xC4]
1AAF06:  LDR.W           R3, [R6,#0xAC]
1AAF0A:  CMP             R0, #0
1AAF0C:  ADD.W           R0, R6, #0x18
1AAF10:  ADD.W           LR, R0, #0x1240
1AAF14:  ITT EQ
1AAF16:  LDREQ.W         R0, [R6,#0xC8]
1AAF1A:  CMPEQ           R0, #6
1AAF1C:  BNE             loc_1AAFF4
1AAF1E:  LDR.W           R10, [R6,#0x98]
1AAF22:  ADD.W           R12, R6, #0xE8
1AAF26:  LDM.W           R12, {R0,R2-R5,LR}
1AAF2A:  MOV             R1, R10
1AAF2C:  STM.W           R1, {R0,R2-R5,LR}
1AAF30:  ADD.W           R1, R6, #0xD0
1AAF34:  ADD.W           LR, R6, #0x1000
1AAF38:  LDR             R0, [R6,#0x78]
1AAF3A:  STR.W           R0, [R10,#0x18]
1AAF3E:  LDR.W           R12, [R6,#0x7C]
1AAF42:  LDM.W           R1, {R0,R2-R5}
1AAF46:  STM.W           R12, {R0,R2-R5}
1AAF4A:  MOVS            R4, #4
1AAF4C:  LDR.W           R1, [R6,#0xA0]
1AAF50:  LDRB.W          R0, [LR,#0x418]
1AAF54:  STRB            R0, [R1]
1AAF56:  LDR.W           R5, [R6,#0xC0]
1AAF5A:  LDR.W           R3, [R6,#0xA4]
1AAF5E:  LDR             R1, [R5]
1AAF60:  CMP             R1, #1
1AAF62:  BLT             loc_1AAF70
1AAF64:  MOVS            R1, #0
1AAF66:  STRB            R4, [R3,R1]
1AAF68:  ADDS            R1, #1
1AAF6A:  LDR             R2, [R5]
1AAF6C:  CMP             R1, R2
1AAF6E:  BLT             loc_1AAF66
1AAF70:  LDR.W           R1, [R6,#0x84]
1AAF74:  MOVS            R5, #0
1AAF76:  CMP             R1, #2
1AAF78:  IT NE
1AAF7A:  STRBNE          R0, [R3]
1AAF7C:  LDRD.W          R1, R0, [R6,#0x50]
1AAF80:  STRH            R0, [R1]
1AAF82:  LDRD.W          R1, R0, [R6,#0x58]
1AAF86:  STR             R1, [R0]
1AAF88:  LDR.W           R2, [R6,#0xB4]
1AAF8C:  LDR             R0, [R2]
1AAF8E:  CMP             R0, #1
1AAF90:  BLT             loc_1AAFA0
1AAF92:  MOVS            R0, #0
1AAF94:  STRB.W          R5, [R11,R0]
1AAF98:  ADDS            R0, #1
1AAF9A:  LDR             R1, [R2]
1AAF9C:  CMP             R0, R1
1AAF9E:  BLT             loc_1AAF94
1AAFA0:  LDR             R0, [R6,#0x6C]
1AAFA2:  MOV             R5, R2
1AAFA4:  LDR             R2, [R0]
1AAFA6:  SUB             SP, SP, #8
1AAFA8:  LDR.W           R0, [R6,#0x84]
1AAFAC:  MOVS            R3, #0
1AAFAE:  STR             R0, [SP,#0x2550+var_2550]
1AAFB0:  LDRD.W          R0, R4, [R6,#0x94]
1AAFB4:  MOV             R1, R4
1AAFB6:  BLX             j_silk_encode_indices
1AAFBA:  ADD             SP, SP, #8
1AAFBC:  LDR             R0, [R6,#0x68]
1AAFBE:  LDRSB.W         R2, [R0]
1AAFC2:  LDR             R0, [R6,#0x64]
1AAFC4:  LDRSB.W         R1, [R0]
1AAFC8:  LDR             R0, [R5]
1AAFCA:  SUB             SP, SP, #8
1AAFCC:  STR             R0, [SP,#0x2550+var_2550]
1AAFCE:  MOV             R0, R4
1AAFD0:  MOV             R3, R11
1AAFD2:  BLX             j_silk_encode_pulses
1AAFD6:  ADD             SP, SP, #8
1AAFD8:  LDR             R1, [R4,#0x1C]
1AAFDA:  LDR             R0, [R4,#0x14]
1AAFDC:  CLZ.W           R1, R1
1AAFE0:  ADD             R0, R1
1AAFE2:  LDR             R1, [R7,#arg_0]
1AAFE4:  SUB.W           R10, R0, #0x20 ; ' '
1AAFE8:  ADD.W           R0, R6, #0x18
1AAFEC:  LDR.W           R3, [R6,#0xAC]
1AAFF0:  ADD.W           LR, R0, #0x1240
1AAFF4:  LDR             R0, [R7,#arg_4]
1AAFF6:  LDR.W           R2, [R6,#0xC8]
1AAFFA:  ORRS            R0, R2
1AAFFC:  BNE             loc_1AB00C
1AAFFE:  LDR.W           R2, [R6,#0xB4]
1AB002:  CMP             R10, R1
1AB004:  LDR.W           R4, [R6,#0xC4]
1AB008:  BGT             loc_1AB014
1AB00A:  B               loc_1AA94E
1AB00C:  LDR.W           R2, [R6,#0xB4]
1AB010:  LDR.W           R4, [R6,#0xC4]
1AB014:  LDR.W           R0, [R6,#0xC8]
1AB018:  CMP             R0, #6
1AB01A:  BEQ.W           loc_1AB322
1AB01E:  CMP             R10, R1
1AB020:  BLE             loc_1AB050
1AB022:  CBNZ            R4, loc_1AB070
1AB024:  LDR.W           R0, [R6,#0xC8]
1AB028:  CMP             R0, #2
1AB02A:  BLT             loc_1AB070
1AB02C:  ADD.W           R4, R6, #0x1000
1AB030:  LDR.W           R2, [R6,#0xBC]
1AB034:  MOV.W           R3, #0xFFFFFFFF
1AB038:  LDR.W           R0, [R4,#0x3D4]
1AB03C:  ADD.W           R4, R6, #0x1000
1AB040:  ADD.W           R0, R0, R0,ASR#1
1AB044:  STR.W           R0, [R4,#0x3D4]
1AB048:  MOVS            R0, #0
1AB04A:  STR.W           R0, [R6,#0xA8]
1AB04E:  B               loc_1AB090
1AB050:  LDR             R0, [R6,#0x74]
1AB052:  CMP             R10, R0
1AB054:  BGE.W           loc_1AA94E
1AB058:  SXTH.W          R0, R9
1AB05C:  STR.W           R0, [R6,#0x90]
1AB060:  LDR.W           R0, [R6,#0xB8]
1AB064:  CMP             R3, R0
1AB066:  BNE             loc_1AB162
1AB068:  MOVS            R4, #1
1AB06A:  STR.W           R3, [R6,#0xB8]
1AB06E:  B               loc_1AB1CC
1AB070:  MOVS            R0, #1
1AB072:  SXTH.W          R2, R9
1AB076:  STR.W           R0, [R6,#0xA8]
1AB07A:  CMP             R4, #0
1AB07C:  MOV             R0, R10
1AB07E:  STR.W           R0, [R6,#0x9C]
1AB082:  BEQ             loc_1AB090
1AB084:  MOV             R0, R10
1AB086:  STR.W           R3, [R6,#0x8C]
1AB08A:  STR.W           R0, [R6,#0x9C]
1AB08E:  B               loc_1AB1D6
1AB090:  LDR.W           R0, [R6,#0xC0]
1AB094:  LDR.W           R12, [R0]
1AB098:  CMP.W           R12, #1
1AB09C:  BLT.W           loc_1AB2CE
1AB0A0:  LDR             R0, [R6,#0x10]
1AB0A2:  STR.W           R2, [R6,#0xBC]
1AB0A6:  MOVS            R2, #0
1AB0A8:  STR.W           R3, [R6,#0xAC]
1AB0AC:  LDR.W           LR, [R0]
1AB0B0:  LDR.W           R0, [R6,#0xC8]
1AB0B4:  CBNZ            R0, loc_1AB102
1AB0B6:  ADDS            R3, R2, #1
1AB0B8:  MUL.W           R4, LR, R2
1AB0BC:  MOVS            R5, #0
1AB0BE:  MUL.W           R0, LR, R3
1AB0C2:  CMP             R4, R0
1AB0C4:  BGE             loc_1AB0D8
1AB0C6:  LDRSB.W         R1, [R11,R4]
1AB0CA:  ADDS            R4, #1
1AB0CC:  CMP             R1, #0
1AB0CE:  IT MI
1AB0D0:  NEGMI           R1, R1
1AB0D2:  ADD             R5, R1
1AB0D4:  CMP             R4, R0
1AB0D6:  BLT             loc_1AB0C6
1AB0D8:  ADD.W           R0, R6, #0x130
1AB0DC:  CMP             R3, R12
1AB0DE:  STR.W           R5, [R0,R2,LSL#2]
1AB0E2:  ADD.W           R0, R6, #0x140
1AB0E6:  STRH.W          R9, [R0,R2,LSL#1]
1AB0EA:  MOV             R2, R3
1AB0EC:  BLT             loc_1AB0B6
1AB0EE:  B               loc_1AB14C
1AB0F0:  ADD.W           R0, R6, #0x130
1AB0F4:  STR.W           R5, [R0,R2,LSL#2]
1AB0F8:  ADD.W           R0, R6, #0x140
1AB0FC:  STRH.W          R9, [R0,R2,LSL#1]
1AB100:  B               loc_1AB146
1AB102:  ADDS            R3, R2, #1
1AB104:  MUL.W           R4, LR, R2
1AB108:  MOVS            R5, #0
1AB10A:  MUL.W           R0, LR, R3
1AB10E:  CMP             R4, R0
1AB110:  BGE             loc_1AB124
1AB112:  LDRSB.W         R1, [R11,R4]
1AB116:  ADDS            R4, #1
1AB118:  CMP             R1, #0
1AB11A:  IT MI
1AB11C:  NEGMI           R1, R1
1AB11E:  ADD             R5, R1
1AB120:  CMP             R4, R0
1AB122:  BLT             loc_1AB112
1AB124:  ADD.W           R0, R6, #0x130
1AB128:  LDR.W           R0, [R0,R2,LSL#2]
1AB12C:  CMP             R5, R0
1AB12E:  BGE             loc_1AB13C
1AB130:  ADD.W           R0, R6, #0x148
1AB134:  LDR.W           R0, [R0,R2,LSL#2]
1AB138:  CMP             R0, #0
1AB13A:  BEQ             loc_1AB0F0
1AB13C:  ADD.W           R0, R6, #0x148
1AB140:  MOVS            R1, #1
1AB142:  STR.W           R1, [R0,R2,LSL#2]
1AB146:  CMP             R3, R12
1AB148:  MOV             R2, R3
1AB14A:  BLT             loc_1AB102
1AB14C:  LDR.W           R0, [R6,#0xAC]
1AB150:  MOVS            R4, #0
1AB152:  STR.W           R0, [R6,#0x8C]
1AB156:  ADD.W           R0, R6, #0x18
1AB15A:  LDR             R1, [R7,#arg_0]
1AB15C:  ADD.W           LR, R0, #0x1240
1AB160:  B               loc_1AB1D2
1AB162:  STR.W           R10, [R6,#0xC4]
1AB166:  ADD.W           R12, R6, #0xE8
1AB16A:  LDR.W           R10, [R6,#0x98]
1AB16E:  STR.W           R3, [R6,#0xAC]
1AB172:  MOV             R1, R10
1AB174:  LDM.W           R1, {R0,R2-R5,LR}
1AB178:  ADD.W           R1, R6, #0xD0
1AB17C:  STM.W           R12, {R0,R2-R5,LR}
1AB180:  LDR.W           R12, [R6,#0x7C]
1AB184:  LDR.W           R2, [R10,#0x18]; n
1AB188:  LDM.W           R12, {R0,R3-R5,LR}
1AB18C:  STM.W           R1, {R0,R3-R5,LR}
1AB190:  LDR.W           R1, [R10]; src
1AB194:  LDR             R0, [R6,#0x2C]; dest
1AB196:  LDR.W           R10, [R6,#0xC4]
1AB19A:  STR             R2, [R6,#0x78]
1AB19C:  BLX             j_memcpy
1AB1A0:  LDR.W           R1, [R6,#0x80]; src
1AB1A4:  ADD.W           R0, R6, #0x158; dest
1AB1A8:  MOV.W           R2, #0x1100; n
1AB1AC:  BLX             j_memcpy
1AB1B0:  LDR.W           R0, [R6,#0xA0]
1AB1B4:  ADD.W           R3, R6, #0x18
1AB1B8:  ADD.W           LR, R3, #0x1240
1AB1BC:  LDR             R1, [R7,#arg_0]
1AB1BE:  MOVS            R4, #1
1AB1C0:  LDRB            R0, [R0]
1AB1C2:  STR             R0, [R6,#0x28]
1AB1C4:  LDR.W           R0, [R6,#0xAC]
1AB1C8:  STR.W           R0, [R6,#0xB8]
1AB1CC:  MOV             R0, R10
1AB1CE:  STR.W           R0, [R6,#0xB0]
1AB1D2:  LDR.W           R2, [R6,#0xBC]
1AB1D6:  LDR.W           R0, [R6,#0xA8]
1AB1DA:  STR.W           R2, [R6,#0xBC]
1AB1DE:  TST             R4, R0
1AB1E0:  STR.W           R4, [R6,#0xC4]
1AB1E4:  BEQ             loc_1AB228
1AB1E6:  LDR.W           R5, [R6,#0x90]
1AB1EA:  MOV             R10, R2
1AB1EC:  LDR.W           R3, [R6,#0xB0]
1AB1F0:  SUBS            R4, R2, R5
1AB1F2:  SUBS            R0, R1, R3
1AB1F4:  LDR.W           R1, [R6,#0x9C]
1AB1F8:  MULS            R0, R4
1AB1FA:  SUBS            R1, R1, R3
1AB1FC:  BLX             sub_220A40
1AB200:  ADD             R0, R5
1AB202:  ADD.W           R9, R5, R4,ASR#2
1AB206:  SXTH            R1, R0
1AB208:  CMP             R1, R9
1AB20A:  BGT             loc_1AB21A
1AB20C:  ASRS            R2, R4, #2
1AB20E:  SUB.W           R2, R10, R2
1AB212:  CMP             R1, R2
1AB214:  IT LT
1AB216:  MOVLT           R0, R2
1AB218:  MOV             R9, R0
1AB21A:  ADD.W           R1, R6, #0x18
1AB21E:  LDR.W           R0, [R6,#0xA4]
1AB222:  ADD.W           LR, R1, #0x1240
1AB226:  B               loc_1AB272
1AB228:  CMP             R10, R1
1AB22A:  BLE             loc_1AB240
1AB22C:  SXTH.W          R0, R9
1AB230:  CMP.W           R0, #0x4000
1AB234:  ITE LT
1AB236:  MOVLT.W         R9, R0,LSL#1
1AB23A:  MOVWGE          R9, #0x7FFF
1AB23E:  B               loc_1AB26E
1AB240:  SUB.W           R0, R10, R1
1AB244:  LDR.W           R1, [R6,#0xB4]
1AB248:  LSLS            R0, R0, #7
1AB24A:  LDR             R1, [R1]
1AB24C:  BLX             sub_220A40
1AB250:  ADD.W           R0, R0, #0x800
1AB254:  BLX             j_silk_log2lin
1AB258:  UXTH            R1, R0
1AB25A:  SXTH.W          R2, R9
1AB25E:  MULS            R1, R2
1AB260:  ADD.W           R3, R6, #0x18
1AB264:  ADD.W           LR, R3, #0x1240
1AB268:  LSRS            R1, R1, #0x10
1AB26A:  SMLATB.W        R9, R0, R9, R1
1AB26E:  LDR.W           R0, [R6,#0xA4]
1AB272:  LDR.W           R1, [R6,#0xC0]
1AB276:  LDR.W           R12, [R1]
1AB27A:  CMP.W           R12, #1
1AB27E:  BLT.W           loc_1AAD62
1AB282:  MOVS            R1, #0
1AB284:  ADD.W           R2, R6, #0x148
1AB288:  ADD.W           R3, LR, R1,LSL#2
1AB28C:  LDR.W           R2, [R2,R1,LSL#2]
1AB290:  CMP             R2, #0
1AB292:  MOV             R2, R9
1AB294:  ITT NE
1AB296:  ADDNE.W         R2, R6, #0x140
1AB29A:  LDRHNE.W        R2, [R2,R1,LSL#1]
1AB29E:  LDR.W           R3, [R3,#0x1B0]
1AB2A2:  UXTH            R5, R3
1AB2A4:  SXTH            R4, R2
1AB2A6:  MULS            R5, R4
1AB2A8:  ASRS            R5, R5, #0x10
1AB2AA:  SMLATB.W        R2, R3, R2, R5
1AB2AE:  MOVS            R3, #0xFF800000
1AB2B4:  CMP             R2, R3
1AB2B6:  IT LE
1AB2B8:  MOVLE           R2, R3
1AB2BA:  CMP             R2, R8
1AB2BC:  IT GE
1AB2BE:  MOVGE           R2, R8
1AB2C0:  LSLS            R2, R2, #8
1AB2C2:  STR.W           R2, [LR,R1,LSL#2]
1AB2C6:  ADDS            R1, #1
1AB2C8:  CMP             R1, R12
1AB2CA:  BLT             loc_1AB284
1AB2CC:  B               loc_1AAD62
1AB2CE:  MOVS            R4, #0
1AB2D0:  STR.W           R3, [R6,#0x8C]
1AB2D4:  B               loc_1AB1D6
1AB2D6:  ADD.W           R5, R6, #0x1000
1AB2DA:  LDR.W           R0, [R5,#0x2D0]
1AB2DE:  ADD.W           R5, R6, #0x1000
1AB2E2:  LDR.W           R1, [R5,#0x3D4]
1AB2E6:  SUB             SP, SP, #0x30 ; '0'
1AB2E8:  LDR             R2, [R6,#0x48]
1AB2EA:  STRD.W          R2, R1, [SP,#0x2578+var_2558]
1AB2EE:  STR             R0, [SP,#0x2578+var_2550]
1AB2F0:  LDR             R0, [R6,#0x30]
1AB2F2:  STR.W           R11, [SP,#0x2578+var_2578]
1AB2F6:  STR             R0, [SP,#0x2578+var_2574]
1AB2F8:  LDR             R0, [R6,#0x34]
1AB2FA:  STR             R0, [SP,#0x2578+var_2570]
1AB2FC:  LDR             R0, [R6,#0x38]
1AB2FE:  STR             R0, [SP,#0x2578+var_256C]
1AB300:  LDR             R0, [R6,#0x3C]
1AB302:  STR             R0, [SP,#0x2578+var_2568]
1AB304:  LDR             R0, [R6,#0x40]
1AB306:  STR             R0, [SP,#0x2578+var_2564]
1AB308:  LDR             R0, [R6,#0x44]
1AB30A:  STRD.W          R0, LR, [SP,#0x2578+var_2560]
1AB30E:  LDR.W           R0, [R6,#0x94]
1AB312:  LDR.W           R1, [R6,#0x80]
1AB316:  LDR.W           R2, [R6,#0xA4]
1AB31A:  LDR             R3, [R6,#0x70]
1AB31C:  BLX             j_silk_NSQ_c
1AB320:  B               loc_1AAE7C
1AB322:  CMP             R10, R1
1AB324:  MOV.W           R1, #0
1AB328:  IT GT
1AB32A:  MOVGT           R1, #1
1AB32C:  MOV             R5, R3
1AB32E:  LDR.W           R3, [R6,#0xB8]
1AB332:  MOVS            R0, #0
1AB334:  CMP             R5, R3
1AB336:  IT EQ
1AB338:  MOVEQ           R0, #1
1AB33A:  CMP             R4, #0
1AB33C:  BEQ.W           loc_1AA94E
1AB340:  ORRS            R0, R1
1AB342:  CMP             R0, #1
1AB344:  BNE.W           loc_1AA94E
1AB348:  LDR.W           LR, [R6,#0x98]
1AB34C:  LDR.W           R8, [R6]
1AB350:  MOV             R0, LR
1AB352:  LDM.W           R8, {R1-R5,R12}
1AB356:  STM.W           R0, {R1-R5,R12}
1AB35A:  LDR             R2, [R6,#0x78]; n
1AB35C:  STR.W           R2, [LR,#0x18]
1AB360:  LDR.W           R12, [R6,#4]
1AB364:  LDR             R4, [R6,#0x7C]
1AB366:  LDM.W           R12, {R0,R1,R3,R5,R8}
1AB36A:  STM.W           R4, {R0,R1,R3,R5,R8}
1AB36E:  LDR.W           R0, [LR]; dest
1AB372:  LDR             R1, [R6,#0x2C]; src
1AB374:  BLX             j_memcpy
1AB378:  LDR.W           R0, [R6,#0x80]; dest
1AB37C:  ADD.W           R1, R6, #0x158; src
1AB380:  MOV.W           R2, #0x1100; n
1AB384:  BLX             j_memcpy
1AB388:  LDR.W           R2, [R6,#0xB4]
1AB38C:  LDR.W           R0, [R6,#0xA0]
1AB390:  LDR             R1, [R6,#0x28]
1AB392:  STRB            R1, [R0]
1AB394:  B.W             loc_1AA94E
1AB398:  ADD.W           R10, R6, #0x1000
1AB39C:  LDR             R2, [R6,#0x6C]
1AB39E:  LDR.W           R0, [R10,#0x2D0]
1AB3A2:  ADD.W           R10, R6, #0x1000
1AB3A6:  LDR             R2, [R2]
1AB3A8:  LDR.W           R1, [R10,#0x3D4]
1AB3AC:  SUB             SP, SP, #0x30 ; '0'
1AB3AE:  ADD.W           R3, R5, #0x7C ; '|'
1AB3B2:  STRD.W          R3, R1, [SP,#0x2578+var_2558]
1AB3B6:  STR             R0, [SP,#0x2578+var_2550]
1AB3B8:  ADD.W           R2, R2, R2,LSL#2
1AB3BC:  LDR.W           R0, [R6,#0x94]
1AB3C0:  ADD.W           R1, R5, #0x10
1AB3C4:  ADD.W           LR, R5, #0x15C
1AB3C8:  ADD.W           R9, R5, #0x16C
1AB3CC:  ADD.W           R2, R0, R2,LSL#6
1AB3D0:  ADD.W           R4, R5, #0x8C
1AB3D4:  ADD.W           R2, R2, #0x1840
1AB3D8:  STRD.W          R2, R1, [SP,#0x2578+var_2578]
1AB3DC:  ADD.W           R3, R5, #0x50 ; 'P'
1AB3E0:  ADD             R1, SP, #0x2578+var_2570
1AB3E2:  STM.W           R1, {R3,R4,R9,LR}
1AB3E6:  ADD.W           R12, R5, #0x14C
1AB3EA:  ADD.W           R1, R6, #0x1420
1AB3EE:  STRD.W          R12, R5, [SP,#0x2578+var_2560]
1AB3F2:  MOV             R2, R11
1AB3F4:  LDR             R3, [R6,#0x70]
1AB3F6:  BLX             j_silk_NSQ_c
1AB3FA:  B.W             loc_1AABF4
