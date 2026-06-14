; =========================================================
; Game Engine Function: sub_DDC48
; Address            : 0xDDC48 - 0xDDD4E
; =========================================================

DDC48:  PUSH            {R4-R7,LR}
DDC4A:  ADD             R7, SP, #0xC
DDC4C:  PUSH.W          {R8-R10}
DDC50:  SUB             SP, SP, #0x10
DDC52:  MOV             R6, R0
DDC54:  LDR             R0, =(unk_91CE0 - 0xDDC62)
DDC56:  LDRH.W          R2, [R1,#9]
DDC5A:  ADD.W           R8, R1, #0xB
DDC5E:  ADD             R0, PC; unk_91CE0
DDC60:  LDR             R5, [R1]
DDC62:  AND.W           R2, R2, #0xF
DDC66:  LDR.W           R9, [R7,#arg_0]
DDC6A:  SUBS            R4, R5, R3
DDC6C:  LDRB            R0, [R0,R2]
DDC6E:  IT CC
DDC70:  MOVCC           R4, #0
DDC72:  LSRS.W          R10, R4, R0
DDC76:  BEQ             loc_DDC84
DDC78:  MOV             R0, R6
DDC7A:  MOV             R1, R10
DDC7C:  MOV             R2, R8
DDC7E:  BL              sub_DD992
DDC82:  MOV             R6, R0
DDC84:  LDR.W           R0, [R9]
DDC88:  BIC.W           R5, R0, #0xFF000000
DDC8C:  CBZ             R5, loc_DDCAE
DDC8E:  LDRD.W          R0, R2, [R6,#8]
DDC92:  ADDS            R1, R0, #1
DDC94:  CMP             R2, R1
DDC96:  BCS             loc_DDCA4
DDC98:  LDR             R0, [R6]
DDC9A:  LDR             R2, [R0]
DDC9C:  MOV             R0, R6
DDC9E:  BLX             R2
DDCA0:  LDR             R0, [R6,#8]
DDCA2:  ADDS            R1, R0, #1
DDCA4:  LDR             R2, [R6,#4]
DDCA6:  STR             R1, [R6,#8]
DDCA8:  STRB            R5, [R2,R0]
DDCAA:  LSRS            R5, R5, #8
DDCAC:  BNE             loc_DDC8E
DDCAE:  LDR.W           R1, [R9,#8]
DDCB2:  MOVS            R0, #0x30 ; '0'
DDCB4:  SUB.W           R2, R7, #-var_22
DDCB8:  STRB.W          R0, [R7,#var_22]
DDCBC:  MOV             R0, R6
DDCBE:  SUB.W           R10, R4, R10
DDCC2:  BL              sub_DD9D2
DDCC6:  LDRD.W          R3, R4, [R0,#8]
DDCCA:  MOV             R2, R0
DDCCC:  LDRD.W          R0, R1, [R9,#0xC]
DDCD0:  LDRB.W          R6, [R9,#0x14]
DDCD4:  ADD             R3, R1
DDCD6:  CMP             R4, R3
DDCD8:  BCC             loc_DDD02
DDCDA:  LDR             R4, [R2,#4]
DDCDC:  STR             R3, [R2,#8]
DDCDE:  CBZ             R4, loc_DDD02
DDCE0:  LDR             R5, =(a0123456789abcd_0 - 0xDDCEC); "0123456789ABCDEF" ...
DDCE2:  ADD             R3, R4
DDCE4:  LDR             R1, =(a0123456789abcd - 0xDDCF0); "0123456789abcdef" ...
DDCE6:  SUBS            R3, #1
DDCE8:  ADD             R5, PC; "0123456789ABCDEF"
DDCEA:  CMP             R6, #0
DDCEC:  ADD             R1, PC; "0123456789abcdef"
DDCEE:  IT NE
DDCF0:  MOVNE           R1, R5
DDCF2:  AND.W           R6, R0, #0xF
DDCF6:  LSRS            R0, R0, #4
DDCF8:  LDRB            R6, [R1,R6]
DDCFA:  STRB.W          R6, [R3],#-1
DDCFE:  BNE             loc_DDCF2
DDD00:  B               loc_DDD32
DDD02:  CMP             R6, #0
DDD04:  SUB.W           R6, R7, #-var_21
DDD08:  LDR             R4, =(a0123456789abcd_0 - 0xDDD16); "0123456789ABCDEF" ...
DDD0A:  ADD             R1, R6
DDD0C:  LDR             R3, =(a0123456789abcd - 0xDDD18); "0123456789abcdef" ...
DDD0E:  SUB.W           R6, R1, #1
DDD12:  ADD             R4, PC; "0123456789ABCDEF"
DDD14:  ADD             R3, PC; "0123456789abcdef"
DDD16:  IT NE
DDD18:  MOVNE           R3, R4
DDD1A:  AND.W           R5, R0, #0xF
DDD1E:  LSRS            R0, R0, #4
DDD20:  LDRB            R5, [R3,R5]
DDD22:  STRB.W          R5, [R6],#-1
DDD26:  BNE             loc_DDD1A
DDD28:  SUB.W           R0, R7, #-var_21
DDD2C:  BL              sub_DCF1C
DDD30:  MOV             R2, R0
DDD32:  CMP.W           R10, #0
DDD36:  BEQ             loc_DDD44
DDD38:  MOV             R0, R2
DDD3A:  MOV             R1, R10
DDD3C:  MOV             R2, R8
DDD3E:  BL              sub_DD992
DDD42:  MOV             R2, R0
DDD44:  MOV             R0, R2
DDD46:  ADD             SP, SP, #0x10
DDD48:  POP.W           {R8-R10}
DDD4C:  POP             {R4-R7,PC}
