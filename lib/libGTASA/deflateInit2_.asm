; =========================================================
; Game Engine Function: deflateInit2_
; Address            : 0x20AAAC - 0x20AC88
; =========================================================

20AAAC:  PUSH            {R4-R7,LR}
20AAAE:  ADD             R7, SP, #0xC
20AAB0:  PUSH.W          {R8-R11}
20AAB4:  SUB             SP, SP, #4
20AAB6:  MOV             R8, R1
20AAB8:  LDR             R1, [R7,#arg_8]
20AABA:  MOV             R5, R3
20AABC:  MOV             R4, R0
20AABE:  CMP             R1, #0
20AAC0:  BEQ.W           loc_20AC0C
20AAC4:  LDR             R3, [R7,#arg_C]
20AAC6:  MOV             R0, #0xFFFFFFFA
20AACA:  CMP             R3, #0x38 ; '8'
20AACC:  ITT EQ
20AACE:  LDRBEQ          R1, [R1]
20AAD0:  CMPEQ           R1, #0x31 ; '1'
20AAD2:  BNE.W           loc_20AC80
20AAD6:  CMP             R4, #0
20AAD8:  BEQ.W           loc_20AC12
20AADC:  LDRD.W          R10, R9, [R7,#arg_0]
20AAE0:  MOVS            R0, #0
20AAE2:  LDR             R3, [R4,#0x20]
20AAE4:  STR             R0, [R4,#0x18]
20AAE6:  CBNZ            R3, loc_20AAF2
20AAE8:  LDR             R1, =(zcalloc_ptr - 0x20AAF0)
20AAEA:  STR             R0, [R4,#0x28]
20AAEC:  ADD             R1, PC; zcalloc_ptr
20AAEE:  LDR             R3, [R1]; zcalloc
20AAF0:  STR             R3, [R4,#0x20]
20AAF2:  LDR             R0, [R4,#0x24]
20AAF4:  CBNZ            R0, loc_20AAFE
20AAF6:  LDR             R0, =(zcfree_ptr - 0x20AAFC)
20AAF8:  ADD             R0, PC; zcfree_ptr
20AAFA:  LDR             R0, [R0]; zcfree
20AAFC:  STR             R0, [R4,#0x24]
20AAFE:  ADDS.W          R0, R8, #1
20AB02:  MOV             R11, R5
20AB04:  IT EQ
20AB06:  MOVEQ.W         R8, #6
20AB0A:  CMP             R5, #0
20AB0C:  IT MI
20AB0E:  RSBMI.W         R11, R5, #0
20AB12:  CMP.W           R9, #2
20AB16:  MOV             R0, #0xFFFFFFFE
20AB1A:  IT LS
20AB1C:  CMPLS.W         R8, #9
20AB20:  BHI.W           loc_20AC80
20AB24:  BIC.W           R1, R11, #7
20AB28:  CMP             R1, #8
20AB2A:  IT EQ
20AB2C:  CMPEQ           R2, #8
20AB2E:  BNE.W           loc_20AC80
20AB32:  SUB.W           R1, R10, #1
20AB36:  CMP             R1, #8
20AB38:  BHI.W           loc_20AC80
20AB3C:  LDR             R0, [R4,#0x28]
20AB3E:  MOVS            R1, #1
20AB40:  MOVW            R2, #0x16B8
20AB44:  BLX             R3
20AB46:  MOV             R6, R0
20AB48:  CMP             R6, #0
20AB4A:  BEQ.W           loc_20AC7C
20AB4E:  MOVW            R2, #0xAAAB
20AB52:  ADD.W           R1, R10, #9
20AB56:  MOVT            R2, #0xAAAA
20AB5A:  LSRS            R0, R5, #0x1F
20AB5C:  UMULL.W         R1, R2, R1, R2
20AB60:  MOVS            R3, #1
20AB62:  STR             R6, [R4,#0x1C]
20AB64:  STR             R0, [R6,#0x18]
20AB66:  LSL.W           R1, R3, R11
20AB6A:  SUBS            R0, R1, #1
20AB6C:  STR             R4, [R6]
20AB6E:  STRD.W          R1, R11, [R6,#0x24]
20AB72:  MOV.W           R11, #1
20AB76:  STR             R0, [R6,#0x2C]
20AB78:  ADD.W           R0, R10, #7
20AB7C:  LSRS            R2, R2, #1
20AB7E:  LSLS            R3, R0
20AB80:  SUBS            R5, R3, #1
20AB82:  STRD.W          R3, R0, [R6,#0x44]
20AB86:  STRD.W          R5, R2, [R6,#0x4C]
20AB8A:  MOVS            R2, #2
20AB8C:  LDR             R3, [R4,#0x20]
20AB8E:  LDR             R0, [R4,#0x28]
20AB90:  BLX             R3
20AB92:  LDR             R1, [R6,#0x24]
20AB94:  MOVS            R2, #2
20AB96:  STR             R0, [R6,#0x30]
20AB98:  LDR             R3, [R4,#0x20]
20AB9A:  LDR             R0, [R4,#0x28]
20AB9C:  BLX             R3
20AB9E:  LDR             R1, [R6,#0x44]
20ABA0:  MOVS            R2, #2
20ABA2:  STR             R0, [R6,#0x38]
20ABA4:  LDR             R3, [R4,#0x20]
20ABA6:  LDR             R0, [R4,#0x28]
20ABA8:  BLX             R3
20ABAA:  ADD.W           R1, R10, #6
20ABAE:  MOVW            R5, #0x1694
20ABB2:  MOVS            R2, #4
20ABB4:  LSL.W           R1, R11, R1
20ABB8:  STR             R1, [R6,R5]
20ABBA:  STR             R0, [R6,#0x3C]
20ABBC:  LDR             R3, [R4,#0x20]
20ABBE:  LDR             R0, [R4,#0x28]
20ABC0:  BLX             R3
20ABC2:  LDR             R1, [R6,R5]
20ABC4:  LDR             R2, [R6,#0x30]
20ABC6:  LSLS            R3, R1, #2
20ABC8:  CMP             R2, #0
20ABCA:  STRD.W          R0, R3, [R6,#8]
20ABCE:  BEQ             loc_20AC18
20ABD0:  LDR             R2, [R6,#0x38]
20ABD2:  CMP             R2, #0
20ABD4:  ITT NE
20ABD6:  LDRNE           R2, [R6,#0x3C]
20ABD8:  CMPNE           R2, #0
20ABDA:  BEQ             loc_20AC18
20ABDC:  CBZ             R0, loc_20AC18
20ABDE:  ADD.W           R2, R1, R1,LSL#1
20ABE2:  BIC.W           R1, R1, #1
20ABE6:  ADD             R2, R0
20ABE8:  MOVW            R3, #0x1690
20ABEC:  ADD             R0, R1
20ABEE:  MOVW            R1, #0x169C
20ABF2:  STR             R2, [R6,R3]
20ABF4:  STR             R0, [R6,R1]
20ABF6:  MOVS            R0, #8
20ABF8:  STRD.W          R8, R9, [R6,#0x7C]
20ABFC:  STRB            R0, [R6,#0x1D]
20ABFE:  MOV             R0, R4
20AC00:  ADD             SP, SP, #4
20AC02:  POP.W           {R8-R11}
20AC06:  POP.W           {R4-R7,LR}
20AC0A:  B               deflateReset
20AC0C:  MOV             R0, #0xFFFFFFFA
20AC10:  B               loc_20AC80
20AC12:  MOV             R0, #0xFFFFFFFE
20AC16:  B               loc_20AC80
20AC18:  LDR             R0, =(z_errmsg_ptr - 0x20AC20)
20AC1A:  LDR             R1, [R4,#0x1C]
20AC1C:  ADD             R0, PC; z_errmsg_ptr
20AC1E:  CMP             R1, #0
20AC20:  LDR             R0, [R0]; z_errmsg
20AC22:  LDR             R0, [R0,#(off_683B28 - 0x683B10)]; "insufficient memory" ...
20AC24:  STR             R0, [R4,#0x18]
20AC26:  BEQ             loc_20AC7C
20AC28:  LDR             R0, [R1,#4]
20AC2A:  CMP             R0, #0x2A ; '*'
20AC2C:  ITT NE
20AC2E:  MOVWNE          R2, #0x29A
20AC32:  CMPNE           R0, R2
20AC34:  BEQ             loc_20AC3A
20AC36:  CMP             R0, #0x71 ; 'q'
20AC38:  BNE             loc_20AC7C
20AC3A:  LDR             R2, [R1,#8]
20AC3C:  CBZ             R2, loc_20AC48
20AC3E:  LDRD.W          R3, R0, [R4,#0x24]
20AC42:  MOV             R1, R2
20AC44:  BLX             R3
20AC46:  LDR             R1, [R4,#0x1C]
20AC48:  LDR             R2, [R1,#0x3C]
20AC4A:  CBZ             R2, loc_20AC56
20AC4C:  LDRD.W          R3, R0, [R4,#0x24]
20AC50:  MOV             R1, R2
20AC52:  BLX             R3
20AC54:  LDR             R1, [R4,#0x1C]
20AC56:  LDR             R2, [R1,#0x38]
20AC58:  CBZ             R2, loc_20AC64
20AC5A:  LDRD.W          R3, R0, [R4,#0x24]
20AC5E:  MOV             R1, R2
20AC60:  BLX             R3
20AC62:  LDR             R1, [R4,#0x1C]
20AC64:  LDR             R2, [R1,#0x30]
20AC66:  CBZ             R2, loc_20AC72
20AC68:  LDRD.W          R3, R0, [R4,#0x24]
20AC6C:  MOV             R1, R2
20AC6E:  BLX             R3
20AC70:  LDR             R1, [R4,#0x1C]
20AC72:  LDRD.W          R2, R0, [R4,#0x24]
20AC76:  BLX             R2
20AC78:  MOVS            R0, #0
20AC7A:  STR             R0, [R4,#0x1C]
20AC7C:  MOV             R0, #0xFFFFFFFC
20AC80:  ADD             SP, SP, #4
20AC82:  POP.W           {R8-R11}
20AC86:  POP             {R4-R7,PC}
