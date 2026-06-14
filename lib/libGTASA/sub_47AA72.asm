; =========================================================
; Game Engine Function: sub_47AA72
; Address            : 0x47AA72 - 0x47AC16
; =========================================================

47AA72:  PUSH            {R4-R7,LR}
47AA74:  ADD             R7, SP, #0xC
47AA76:  PUSH.W          {R8-R11}
47AA7A:  SUB             SP, SP, #0x24
47AA7C:  MOV             R5, R2
47AA7E:  STR             R1, [SP,#0x40+var_2C]
47AA80:  MOV             R9, R0
47AA82:  LDR             R0, [R5]
47AA84:  MOV             R6, R3
47AA86:  CMP             R0, R6
47AA88:  BCS.W           loc_47AC0E
47AA8C:  LDR.W           R3, [R9,#0x144]
47AA90:  MOV.W           R11, #1
47AA94:  LDR.W           R8, [R7,#arg_8]
47AA98:  ADD.W           R1, R3, #8
47AA9C:  STR             R1, [SP,#0x40+var_28]
47AA9E:  STRD.W          R5, R6, [SP,#0x40+var_34]
47AAA2:  STRD.W          R9, R3, [SP,#0x40+var_24]
47AAA6:  LDR             R1, [R7,#arg_4]
47AAA8:  LDR             R1, [R1]
47AAAA:  CMP             R1, R8
47AAAC:  BCS.W           loc_47AC0E
47AAB0:  LDR             R3, [SP,#0x40+var_20]
47AAB2:  SUBS            R4, R6, R0
47AAB4:  LDR.W           R1, [R9,#0xDC]
47AAB8:  LDR.W           R2, [R9,#0x150]
47AABC:  LDR             R3, [R3,#0x1C]
47AABE:  SUBS            R1, R1, R3
47AAC0:  LDR             R6, [R2,#4]
47AAC2:  CMP             R1, R4
47AAC4:  IT CC
47AAC6:  MOVCC           R4, R1
47AAC8:  LDR             R1, [SP,#0x40+var_2C]
47AACA:  LDR             R2, [SP,#0x40+var_28]
47AACC:  ADD.W           R1, R1, R0,LSL#2
47AAD0:  MOV             R0, R9
47AAD2:  STR             R4, [SP,#0x40+var_40]
47AAD4:  BLX             R6
47AAD6:  LDR             R0, [R5]
47AAD8:  LDR             R3, [SP,#0x40+var_20]
47AADA:  ADD             R0, R4
47AADC:  STR             R0, [R5]
47AADE:  LDRD.W          R0, R1, [R3,#0x18]
47AAE2:  ADDS            R6, R1, R4
47AAE4:  SUBS            R0, R0, R4
47AAE6:  STRD.W          R0, R6, [R3,#0x18]
47AAEA:  BNE             loc_47AB52
47AAEC:  LDR.W           R5, [R9,#0xDC]
47AAF0:  CMP             R6, R5
47AAF2:  BGE             loc_47AB52
47AAF4:  LDR.W           R0, [R9,#0x3C]
47AAF8:  CMP             R0, #1
47AAFA:  BLT             loc_47AB4E
47AAFC:  MOV.W           R8, #0
47AB00:  CMP             R6, R5
47AB02:  BGE             loc_47AB3E
47AB04:  ADD.W           R0, R3, R8,LSL#2
47AB08:  LDR.W           R10, [R9,#0x1C]
47AB0C:  SUB.W           R9, R6, #1
47AB10:  LDR             R4, [R0,#8]
47AB12:  MOV             R0, R4; unsigned __int8 **
47AB14:  MOV             R1, R9; int
47AB16:  MOV             R2, R4; unsigned __int8 **
47AB18:  MOV             R3, R6; int
47AB1A:  STRD.W          R11, R10, [SP,#0x40+var_40]; int
47AB1E:  BLX             j__Z17jcopy_sample_rowsPPhiS0_iij; jcopy_sample_rows(uchar **,int,uchar **,int,int,uint)
47AB22:  ADDS            R6, #1
47AB24:  CMP             R5, R6
47AB26:  BNE             loc_47AB12
47AB28:  LDR.W           R9, [SP,#0x40+var_24]
47AB2C:  LDR             R3, [SP,#0x40+var_20]
47AB2E:  LDR.W           R0, [R9,#0x3C]
47AB32:  B               loc_47AB3E
47AB34:  LDR.W           R5, [R9,#0xDC]
47AB38:  LDR             R6, [R3,#0x1C]
47AB3A:  CMP             R6, R5
47AB3C:  BLT             loc_47AB04
47AB3E:  ADD.W           R8, R8, #1
47AB42:  CMP             R8, R0
47AB44:  BLT             loc_47AB34
47AB46:  LDR.W           R5, [R9,#0xDC]
47AB4A:  LDR.W           R8, [R7,#arg_8]
47AB4E:  STR             R5, [R3,#0x1C]
47AB50:  B               loc_47AB54
47AB52:  MOV             R5, R6
47AB54:  LDR.W           R0, [R9,#0xDC]
47AB58:  CMP             R5, R0
47AB5A:  BNE             loc_47AB80
47AB5C:  LDR             R1, [R7,#arg_4]
47AB5E:  MOVS            R2, #0
47AB60:  LDR.W           R0, [R9,#0x154]
47AB64:  LDR             R3, [R7,#arg_0]
47AB66:  MOV             R4, R1
47AB68:  LDR             R1, [R4]
47AB6A:  LDR             R6, [R0,#4]
47AB6C:  MOV             R0, R9
47AB6E:  STR             R1, [SP,#0x40+var_40]
47AB70:  LDR             R1, [SP,#0x40+var_28]
47AB72:  BLX             R6
47AB74:  LDR             R3, [SP,#0x40+var_20]
47AB76:  MOVS            R0, #0
47AB78:  STR             R0, [R3,#0x1C]
47AB7A:  LDR             R0, [R4]
47AB7C:  ADDS            R0, #1
47AB7E:  STR             R0, [R4]
47AB80:  LDR             R0, [R3,#0x18]
47AB82:  LDRD.W          R5, R6, [SP,#0x40+var_34]
47AB86:  CBNZ            R0, loc_47AB90
47AB88:  LDR             R0, [R7,#arg_4]
47AB8A:  LDR             R0, [R0]
47AB8C:  CMP             R0, R8
47AB8E:  BCC             loc_47AB9A
47AB90:  LDR             R0, [R5]
47AB92:  CMP             R0, R6
47AB94:  BCC.W           loc_47AAA6
47AB98:  B               loc_47AC0E
47AB9A:  LDR.W           R1, [R9,#0x3C]
47AB9E:  CMP             R1, #1
47ABA0:  BLT             loc_47AC08
47ABA2:  LDR.W           R6, [R9,#0x44]
47ABA6:  MOV.W           R10, #0
47ABAA:  MOV.W           R11, #1
47ABAE:  B               loc_47ABB6
47ABB0:  LDR             R0, [R7,#arg_4]
47ABB2:  ADDS            R6, #0x54 ; 'T'
47ABB4:  LDR             R0, [R0]
47ABB6:  LDR             R2, [R6,#0xC]
47ABB8:  MUL.W           R5, R2, R0
47ABBC:  MUL.W           R3, R2, R8
47ABC0:  CMP             R5, R3
47ABC2:  BGE             loc_47AC00
47ABC4:  LDR             R3, [R7,#arg_0]
47ABC6:  SUBS            R4, R5, #1
47ABC8:  STR             R6, [SP,#0x40+var_20]
47ABCA:  LDR             R1, [R6,#0x1C]
47ABCC:  LDR.W           R6, [R3,R10,LSL#2]
47ABD0:  MOV             R3, R8
47ABD2:  SUBS            R0, R3, R0
47ABD4:  MOV.W           R8, R1,LSL#3
47ABD8:  MUL.W           R9, R2, R0
47ABDC:  MOV             R0, R6; unsigned __int8 **
47ABDE:  MOV             R1, R4; int
47ABE0:  MOV             R2, R6; unsigned __int8 **
47ABE2:  MOV             R3, R5; int
47ABE4:  STRD.W          R11, R8, [SP,#0x40+var_40]; int
47ABE8:  BLX             j__Z17jcopy_sample_rowsPPhiS0_iij; jcopy_sample_rows(uchar **,int,uchar **,int,int,uint)
47ABEC:  SUBS.W          R9, R9, #1
47ABF0:  ADD.W           R5, R5, #1
47ABF4:  BNE             loc_47ABDC
47ABF6:  LDR             R0, [SP,#0x40+var_24]
47ABF8:  LDR.W           R8, [R7,#arg_8]
47ABFC:  LDR             R6, [SP,#0x40+var_20]
47ABFE:  LDR             R1, [R0,#0x3C]
47AC00:  ADD.W           R10, R10, #1
47AC04:  CMP             R10, R1
47AC06:  BLT             loc_47ABB0
47AC08:  LDR             R0, [R7,#arg_4]
47AC0A:  STR.W           R8, [R0]
47AC0E:  ADD             SP, SP, #0x24 ; '$'
47AC10:  POP.W           {R8-R11}
47AC14:  POP             {R4-R7,PC}
