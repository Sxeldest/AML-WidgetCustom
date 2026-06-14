; =========================================================
; Game Engine Function: silk_quant_LTP_gains
; Address            : 0x1AF7F4 - 0x1AFBA8
; =========================================================

1AF7F4:  PUSH            {R4-R7,LR}
1AF7F6:  ADD             R7, SP, #0xC
1AF7F8:  PUSH.W          {R8-R11}
1AF7FC:  SUB             SP, SP, #0x64
1AF7FE:  MOV             R6, R1
1AF800:  LDR             R1, =(__stack_chk_guard_ptr - 0x1AF80C)
1AF802:  LDR.W           R10, [R7,#n]
1AF806:  MOV             R5, R3
1AF808:  ADD             R1, PC; __stack_chk_guard_ptr
1AF80A:  LDR.W           R9, [R7,#arg_0]
1AF80E:  MOV             R4, R2
1AF810:  CMP.W           R10, #1
1AF814:  LDR             R1, [R1]; __stack_chk_guard
1AF816:  LDR             R1, [R1]
1AF818:  STR             R1, [SP,#0x80+var_20]
1AF81A:  BLT.W           loc_1AFB30
1AF81E:  STR             R0, [SP,#0x80+var_5C]
1AF820:  LDR             R0, =(silk_LTP_vq_sizes_ptr - 0x1AF82A)
1AF822:  LDR             R1, =(silk_LTP_vq_ptrs_Q7_ptr - 0x1AF82E)
1AF824:  LDR             R2, =(silk_LTP_gain_BITS_Q5_ptrs_ptr - 0x1AF830)
1AF826:  ADD             R0, PC; silk_LTP_vq_sizes_ptr
1AF828:  LDR             R3, =(silk_LTP_vq_gain_ptrs_Q7_ptr - 0x1AF834)
1AF82A:  ADD             R1, PC; silk_LTP_vq_ptrs_Q7_ptr
1AF82C:  ADD             R2, PC; silk_LTP_gain_BITS_Q5_ptrs_ptr
1AF82E:  LDR             R0, [R0]; silk_LTP_vq_sizes
1AF830:  ADD             R3, PC; silk_LTP_vq_gain_ptrs_Q7_ptr
1AF832:  LDR             R1, [R1]; silk_LTP_vq_ptrs_Q7
1AF834:  LDR             R2, [R2]; silk_LTP_gain_BITS_Q5_ptrs
1AF836:  STRD.W          R6, R4, [SP,#0x80+dest]
1AF83A:  MOV             R6, #0x7FFFFFFF
1AF83E:  LDR             R3, [R3]; silk_LTP_vq_gain_ptrs_Q7
1AF840:  LDRD.W          R9, R10, [R7,#arg_4]
1AF844:  STR             R5, [SP,#0x80+var_54]
1AF846:  LDR             R4, [R5]
1AF848:  MOVS            R5, #0
1AF84A:  LDRSB.W         R0, [R0]
1AF84E:  LDR.W           R11, [R1]; unk_BFE04
1AF852:  LDR.W           R8, [R2]; unk_BFDCC
1AF856:  STR             R0, [SP,#0x80+var_3C]
1AF858:  LDR             R0, [R3]; unk_BFF1C
1AF85A:  STR             R0, [SP,#0x80+var_40]
1AF85C:  MOVS            R0, #0
1AF85E:  STR             R0, [SP,#0x80+var_34]
1AF860:  MOVW            R0, #0x1855
1AF864:  SUBS            R0, R0, R4
1AF866:  BLX             j_silk_log2lin
1AF86A:  STMEA.W         SP, {R9-R11}
1AF86E:  SUBS            R0, #0x33 ; '3'
1AF870:  ADD             R2, SP, #0x80+var_2C
1AF872:  LDR             R1, [SP,#0x80+var_40]
1AF874:  ADD             R3, SP, #0x80+var_30
1AF876:  STRD.W          R1, R8, [SP,#0x80+var_74]
1AF87A:  LDR             R1, [R7,#arg_C]
1AF87C:  STRD.W          R1, R0, [SP,#0x80+var_6C]
1AF880:  ADD             R1, SP, #0x80+var_28
1AF882:  LDR             R0, [SP,#0x80+var_3C]
1AF884:  STR             R0, [SP,#0x80+var_64]
1AF886:  ADD             R0, SP, #0x80+src
1AF888:  ADD             R0, R5
1AF88A:  BLX             j_silk_VQ_WMat_EC_c
1AF88E:  LDR             R0, [SP,#0x80+var_2C]
1AF890:  LDRD.W          R2, R1, [SP,#0x80+var_34]
1AF894:  ADD             R0, R2
1AF896:  MOV             R2, #0x7FFFFFFF
1AF89A:  CMP             R0, R6
1AF89C:  STR             R0, [SP,#0x80+var_38]
1AF89E:  IT CC
1AF8A0:  MOVCC           R2, R0
1AF8A2:  ADD.W           R0, R1, #0x33 ; '3'
1AF8A6:  STR             R2, [SP,#0x80+var_34]
1AF8A8:  BLX             j_silk_lin2log
1AF8AC:  ADD             R0, R4
1AF8AE:  CMP.W           R0, #0x380
1AF8B2:  BGE             loc_1AF8B8
1AF8B4:  MOVS            R4, #0
1AF8B6:  B               loc_1AF8C6
1AF8B8:  LDR             R0, [SP,#0x80+var_30]
1AF8BA:  ADDS            R0, #0x33 ; '3'
1AF8BC:  BLX             j_silk_lin2log
1AF8C0:  ADD             R0, R4
1AF8C2:  SUB.W           R4, R0, #0x380
1AF8C6:  LDR             R0, [R7,#n]
1AF8C8:  ADDS            R5, #1
1AF8CA:  ADD.W           R10, R10, #0x14
1AF8CE:  ADD.W           R9, R9, #0x64 ; 'd'
1AF8D2:  CMP             R0, R5
1AF8D4:  BNE             loc_1AF860
1AF8D6:  LDR             R0, [SP,#0x80+var_4C]
1AF8D8:  MOV.W           R11, #0
1AF8DC:  STR             R4, [SP,#0x80+var_58]
1AF8DE:  ADD             R1, SP, #0x80+src; src
1AF8E0:  LDR             R2, [R7,#n]; n
1AF8E2:  STRB.W          R11, [R0]
1AF8E6:  LDR             R0, [SP,#0x80+dest]; dest
1AF8E8:  BLX             j_memcpy
1AF8EC:  LDR             R0, =(silk_LTP_vq_sizes_ptr - 0x1AF8FC)
1AF8EE:  MOV             R10, #0x7FFFFFFF
1AF8F2:  LDR             R3, =(silk_LTP_vq_gain_ptrs_Q7_ptr - 0x1AF902)
1AF8F4:  MOV.W           R8, #0
1AF8F8:  ADD             R0, PC; silk_LTP_vq_sizes_ptr
1AF8FA:  LDR             R1, =(silk_LTP_vq_ptrs_Q7_ptr - 0x1AF904)
1AF8FC:  LDR             R2, =(silk_LTP_gain_BITS_Q5_ptrs_ptr - 0x1AF908)
1AF8FE:  ADD             R3, PC; silk_LTP_vq_gain_ptrs_Q7_ptr
1AF900:  ADD             R1, PC; silk_LTP_vq_ptrs_Q7_ptr
1AF902:  LDR             R0, [R0]; silk_LTP_vq_sizes
1AF904:  ADD             R2, PC; silk_LTP_gain_BITS_Q5_ptrs_ptr
1AF906:  LDR.W           R9, [SP,#0x80+var_54]
1AF90A:  LDR             R3, [R3]; silk_LTP_vq_gain_ptrs_Q7
1AF90C:  LDR             R1, [R1]; silk_LTP_vq_ptrs_Q7
1AF90E:  LDR             R2, [R2]; silk_LTP_gain_BITS_Q5_ptrs
1AF910:  LDRSB.W         R0, [R0,#(byte_BFF55 - 0xBFF54)]
1AF914:  LDR.W           R5, [R9]
1AF918:  STR             R0, [SP,#0x80+var_3C]
1AF91A:  LDR             R0, [R3,#(off_2300A0 - 0x23009C)]; unk_BFF24
1AF91C:  STR             R0, [SP,#0x80+var_40]
1AF91E:  LDR             R0, [R1,#(off_230094 - 0x230090)]; unk_BFE2C
1AF920:  STR             R0, [SP,#0x80+var_44]
1AF922:  LDR             R0, [R2,#(off_230088 - 0x230084)]; unk_BFDD4
1AF924:  STR             R0, [SP,#0x80+var_48]
1AF926:  LDRD.W          R4, R6, [R7,#arg_4]
1AF92A:  MOVW            R0, #0x1855
1AF92E:  SUBS            R0, R0, R5
1AF930:  BLX             j_silk_log2lin
1AF934:  STRD.W          R4, R6, [SP,#0x80+var_80]
1AF938:  SUBS            R0, #0x33 ; '3'
1AF93A:  LDR             R1, [SP,#0x80+var_44]
1AF93C:  ADD             R2, SP, #0x80+var_2C
1AF93E:  STR             R1, [SP,#0x80+var_78]
1AF940:  ADD             R3, SP, #0x80+var_30
1AF942:  LDR             R1, [SP,#0x80+var_40]
1AF944:  STR             R1, [SP,#0x80+var_74]
1AF946:  LDR             R1, [SP,#0x80+var_48]
1AF948:  STR             R1, [SP,#0x80+var_70]
1AF94A:  LDR             R1, [R7,#arg_C]
1AF94C:  STRD.W          R1, R0, [SP,#0x80+var_6C]
1AF950:  ADD             R1, SP, #0x80+var_28
1AF952:  LDR             R0, [SP,#0x80+var_3C]
1AF954:  STR             R0, [SP,#0x80+var_64]
1AF956:  ADD             R0, SP, #0x80+src
1AF958:  ADD             R0, R11
1AF95A:  BLX             j_silk_VQ_WMat_EC_c
1AF95E:  LDRD.W          R1, R0, [SP,#0x80+var_30]
1AF962:  ADD             R8, R0
1AF964:  CMP             R8, R10
1AF966:  ADD.W           R0, R1, #0x33 ; '3'
1AF96A:  IT CS
1AF96C:  MOVCS           R8, R10
1AF96E:  BLX             j_silk_lin2log
1AF972:  ADD             R0, R5
1AF974:  CMP.W           R0, #0x380
1AF978:  BGE             loc_1AF97E
1AF97A:  MOVS            R5, #0
1AF97C:  B               loc_1AF98C
1AF97E:  LDR             R0, [SP,#0x80+var_30]
1AF980:  ADDS            R0, #0x33 ; '3'
1AF982:  BLX             j_silk_lin2log
1AF986:  ADD             R0, R5
1AF988:  SUB.W           R5, R0, #0x380
1AF98C:  LDR             R0, [R7,#n]
1AF98E:  ADD.W           R11, R11, #1
1AF992:  ADDS            R6, #0x14
1AF994:  ADDS            R4, #0x64 ; 'd'
1AF996:  CMP             R0, R11
1AF998:  BNE             loc_1AF92A
1AF99A:  LDR.W           R10, [R7,#n]
1AF99E:  LDR             R0, [SP,#0x80+var_34]
1AF9A0:  CMP             R8, R0
1AF9A2:  MOV             R2, R10; n
1AF9A4:  BGT             loc_1AF9BA
1AF9A6:  LDR             R1, [SP,#0x80+var_4C]
1AF9A8:  MOVS            R0, #1
1AF9AA:  STRB            R0, [R1]
1AF9AC:  ADD             R1, SP, #0x80+src; src
1AF9AE:  LDR             R0, [SP,#0x80+dest]; dest
1AF9B0:  BLX             j_memcpy
1AF9B4:  STR.W           R8, [SP,#0x80+var_38]
1AF9B8:  STR             R5, [SP,#0x80+var_58]
1AF9BA:  LDR             R0, =(silk_LTP_vq_sizes_ptr - 0x1AF9C6)
1AF9BC:  MOVS            R5, #0
1AF9BE:  LDR             R3, =(silk_LTP_vq_gain_ptrs_Q7_ptr - 0x1AF9CC)
1AF9C0:  MOVS            R6, #0
1AF9C2:  ADD             R0, PC; silk_LTP_vq_sizes_ptr
1AF9C4:  LDR             R1, =(silk_LTP_vq_ptrs_Q7_ptr - 0x1AF9CE)
1AF9C6:  LDR             R2, =(silk_LTP_gain_BITS_Q5_ptrs_ptr - 0x1AF9D2)
1AF9C8:  ADD             R3, PC; silk_LTP_vq_gain_ptrs_Q7_ptr
1AF9CA:  ADD             R1, PC; silk_LTP_vq_ptrs_Q7_ptr
1AF9CC:  LDR             R0, [R0]; silk_LTP_vq_sizes
1AF9CE:  ADD             R2, PC; silk_LTP_gain_BITS_Q5_ptrs_ptr
1AF9D0:  LDR             R3, [R3]; silk_LTP_vq_gain_ptrs_Q7
1AF9D2:  LDR             R1, [R1]; silk_LTP_vq_ptrs_Q7
1AF9D4:  MOV.W           R8, #0
1AF9D8:  LDR             R2, [R2]; silk_LTP_gain_BITS_Q5_ptrs
1AF9DA:  LDRSB.W         R0, [R0,#(byte_BFF56 - 0xBFF54)]
1AF9DE:  LDR.W           R11, [R9]
1AF9E2:  STR             R0, [SP,#0x80+var_3C]
1AF9E4:  LDR             R0, [R3,#(off_2300A4 - 0x23009C)]; unk_BFF34
1AF9E6:  STR             R0, [SP,#0x80+var_40]
1AF9E8:  LDR             R0, [R1,#(off_230098 - 0x230090)]; unk_BFE7C
1AF9EA:  STR             R0, [SP,#0x80+var_44]
1AF9EC:  LDR             R0, [R2,#(off_23008C - 0x230084)]; unk_BFDE4
1AF9EE:  STR             R0, [SP,#0x80+var_48]
1AF9F0:  LDRD.W          R4, R9, [R7,#arg_4]
1AF9F4:  MOVW            R0, #0x1855
1AF9F8:  SUB.W           R0, R0, R11
1AF9FC:  BLX             j_silk_log2lin
1AFA00:  LDR             R1, [SP,#0x80+var_44]
1AFA02:  SUBS            R0, #0x33 ; '3'
1AFA04:  STR             R4, [SP,#0x80+var_80]
1AFA06:  ADD             R2, SP, #0x80+var_2C
1AFA08:  STR.W           R9, [SP,#0x80+var_7C]
1AFA0C:  ADD             R3, SP, #0x80+var_30
1AFA0E:  STR             R1, [SP,#0x80+var_78]
1AFA10:  MOV             R10, R9
1AFA12:  LDR             R1, [SP,#0x80+var_40]
1AFA14:  STR             R1, [SP,#0x80+var_74]
1AFA16:  LDR             R1, [SP,#0x80+var_48]
1AFA18:  STR             R1, [SP,#0x80+var_70]
1AFA1A:  LDR             R1, [R7,#arg_C]
1AFA1C:  STR             R4, [SP,#0x80+var_34]
1AFA1E:  STRD.W          R1, R0, [SP,#0x80+var_6C]
1AFA22:  ADD             R1, SP, #0x80+var_28
1AFA24:  LDR             R0, [SP,#0x80+var_3C]
1AFA26:  STR             R0, [SP,#0x80+var_64]
1AFA28:  ADD             R0, SP, #0x80+src
1AFA2A:  ADD             R0, R5
1AFA2C:  BLX             j_silk_VQ_WMat_EC_c
1AFA30:  LDRD.W          R1, R0, [SP,#0x80+var_30]
1AFA34:  ADD             R6, R0
1AFA36:  LDR             R2, [SP,#0x80+var_28]
1AFA38:  MOV             R0, #0x7FFFFFFF
1AFA3C:  CMP             R6, R0
1AFA3E:  ADD             R8, R2
1AFA40:  IT CS
1AFA42:  MOVCS           R6, R0
1AFA44:  CMP             R8, R0
1AFA46:  IT CS
1AFA48:  MOVCS           R8, R0
1AFA4A:  ADD.W           R0, R1, #0x33 ; '3'
1AFA4E:  BLX             j_silk_lin2log
1AFA52:  ADD             R0, R11
1AFA54:  CMP.W           R0, #0x380
1AFA58:  BGE             loc_1AFA60
1AFA5A:  MOV.W           R11, #0
1AFA5E:  B               loc_1AFA6E
1AFA60:  LDR             R0, [SP,#0x80+var_30]
1AFA62:  ADDS            R0, #0x33 ; '3'
1AFA64:  BLX             j_silk_lin2log
1AFA68:  ADD             R0, R11
1AFA6A:  SUB.W           R11, R0, #0x380
1AFA6E:  LDR             R4, [SP,#0x80+var_34]
1AFA70:  MOV             R9, R10
1AFA72:  LDR.W           R10, [R7,#n]
1AFA76:  ADDS            R5, #1
1AFA78:  ADD.W           R9, R9, #0x14
1AFA7C:  ADDS            R4, #0x64 ; 'd'
1AFA7E:  CMP             R10, R5
1AFA80:  BNE             loc_1AF9F4
1AFA82:  LDR             R0, [SP,#0x80+var_38]
1AFA84:  LDR.W           R12, [SP,#0x80+var_58]
1AFA88:  CMP             R6, R0
1AFA8A:  LDR             R6, [SP,#0x80+dest]
1AFA8C:  BGT             loc_1AFAA0
1AFA8E:  LDR             R1, [SP,#0x80+var_4C]
1AFA90:  MOVS            R0, #2
1AFA92:  MOV             R2, R10; n
1AFA94:  STRB            R0, [R1]
1AFA96:  ADD             R1, SP, #0x80+src; src
1AFA98:  MOV             R0, R6; dest
1AFA9A:  BLX             j_memcpy
1AFA9E:  MOV             R12, R11
1AFAA0:  LDR             R5, [R7,#arg_0]
1AFAA2:  CMP.W           R10, #1
1AFAA6:  MOV             R9, R5
1AFAA8:  LDR             R5, [SP,#0x80+var_54]
1AFAAA:  BLT             loc_1AFB64
1AFAAC:  LDR             R0, =(silk_LTP_vq_ptrs_Q7_ptr - 0x1AFAB6)
1AFAAE:  MOV             R2, R10
1AFAB0:  LDR             R1, [SP,#0x80+var_4C]
1AFAB2:  ADD             R0, PC; silk_LTP_vq_ptrs_Q7_ptr
1AFAB4:  LDRSB.W         R1, [R1]
1AFAB8:  LDR             R0, [R0]; silk_LTP_vq_ptrs_Q7
1AFABA:  LDR.W           R0, [R0,R1,LSL#2]
1AFABE:  LDR             R1, [SP,#0x80+var_5C]
1AFAC0:  ADDS            R1, #4
1AFAC2:  LDRSB.W         R3, [R6]
1AFAC6:  SUBS            R2, #1
1AFAC8:  ADD.W           R3, R3, R3,LSL#2
1AFACC:  LDRSB           R3, [R0,R3]
1AFACE:  MOV.W           R3, R3,LSL#7
1AFAD2:  STRH.W          R3, [R1,#-4]
1AFAD6:  LDRSB.W         R3, [R6]
1AFADA:  ADD.W           R3, R3, R3,LSL#2
1AFADE:  ADD             R3, R0
1AFAE0:  LDRSB.W         R3, [R3,#1]
1AFAE4:  MOV.W           R3, R3,LSL#7
1AFAE8:  STRH.W          R3, [R1,#-2]
1AFAEC:  LDRSB.W         R3, [R6]
1AFAF0:  ADD.W           R3, R3, R3,LSL#2
1AFAF4:  ADD             R3, R0
1AFAF6:  LDRSB.W         R3, [R3,#2]
1AFAFA:  MOV.W           R3, R3,LSL#7
1AFAFE:  STRH            R3, [R1]
1AFB00:  LDRSB.W         R3, [R6]
1AFB04:  ADD.W           R3, R3, R3,LSL#2
1AFB08:  ADD             R3, R0
1AFB0A:  LDRSB.W         R3, [R3,#3]
1AFB0E:  MOV.W           R3, R3,LSL#7
1AFB12:  STRH            R3, [R1,#2]
1AFB14:  LDRSB.W         R3, [R6],#1
1AFB18:  ADD.W           R3, R3, R3,LSL#2
1AFB1C:  ADD             R3, R0
1AFB1E:  LDRSB.W         R3, [R3,#4]
1AFB22:  MOV.W           R3, R3,LSL#7
1AFB26:  STRH            R3, [R1,#4]
1AFB28:  ADD.W           R1, R1, #0xA
1AFB2C:  BNE             loc_1AFAC2
1AFB2E:  B               loc_1AFB64
1AFB30:  ADD.W           R8, SP, #0x80+src
1AFB34:  MOV             R0, R6; dest
1AFB36:  MOV             R2, R10; n
1AFB38:  MOV             R1, R8; src
1AFB3A:  BLX             j_memcpy
1AFB3E:  MOVS            R0, #1
1AFB40:  MOV             R1, R8; src
1AFB42:  STRB            R0, [R4]
1AFB44:  MOV             R0, R6; dest
1AFB46:  MOV             R2, R10; n
1AFB48:  BLX             j_memcpy
1AFB4C:  MOVS            R0, #2
1AFB4E:  LDR.W           R11, [R5]
1AFB52:  STRB            R0, [R4]
1AFB54:  MOV             R0, R6; dest
1AFB56:  MOV             R1, R8; src
1AFB58:  MOV             R2, R10; n
1AFB5A:  BLX             j_memcpy
1AFB5E:  MOV             R12, R11
1AFB60:  MOV.W           R8, #0
1AFB64:  MOVS            R0, #2
1AFB66:  CMP.W           R10, #2
1AFB6A:  STR.W           R12, [R5]
1AFB6E:  IT EQ
1AFB70:  MOVEQ           R0, #1
1AFB72:  LSR.W           R0, R8, R0
1AFB76:  BLX             j_silk_lin2log
1AFB7A:  MOVS            R1, #0xF8800000
1AFB80:  ADD.W           R0, R1, R0,LSL#16
1AFB84:  ASRS            R0, R0, #0x10
1AFB86:  SUB.W           R0, R0, R0,LSL#2
1AFB8A:  STR.W           R0, [R9]
1AFB8E:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AFB96)
1AFB90:  LDR             R1, [SP,#0x80+var_20]
1AFB92:  ADD             R0, PC; __stack_chk_guard_ptr
1AFB94:  LDR             R0, [R0]; __stack_chk_guard
1AFB96:  LDR             R0, [R0]
1AFB98:  SUBS            R0, R0, R1
1AFB9A:  ITTT EQ
1AFB9C:  ADDEQ           SP, SP, #0x64 ; 'd'
1AFB9E:  POPEQ.W         {R8-R11}
1AFBA2:  POPEQ           {R4-R7,PC}
1AFBA4:  BLX             __stack_chk_fail
