; =========================================================
; Game Engine Function: _ZN11CMenuSystem13ActivateItemsEhhhhhhhhhhhhh
; Address            : 0x43BEBC - 0x43BFDE
; =========================================================

43BEBC:  PUSH            {R7,LR}
43BEBE:  MOV             R7, SP
43BEC0:  LDR.W           R12, =(MenuNumber_ptr - 0x43BEC8)
43BEC4:  ADD             R12, PC; MenuNumber_ptr
43BEC6:  LDR.W           R12, [R12]; MenuNumber
43BECA:  LDR.W           LR, [R12,R0,LSL#2]
43BECE:  STRB.W          R1, [LR,#0x3D6]
43BED2:  LDR.W           R1, [R12,R0,LSL#2]
43BED6:  STRB.W          R2, [R1,#0x3D7]
43BEDA:  LDR.W           R1, [R12,R0,LSL#2]
43BEDE:  LDR             R2, [R7,#8+arg_0]
43BEE0:  STRB.W          R3, [R1,#0x3D8]
43BEE4:  LDR.W           R1, [R12,R0,LSL#2]
43BEE8:  STRB.W          R2, [R1,#0x3D9]
43BEEC:  LDR.W           R1, [R12,R0,LSL#2]
43BEF0:  LDR             R2, [R7,#8+arg_4]
43BEF2:  STRB.W          R2, [R1,#0x3DA]
43BEF6:  LDR.W           R1, [R12,R0,LSL#2]
43BEFA:  LDR             R2, [R7,#8+arg_8]
43BEFC:  STRB.W          R2, [R1,#0x3DB]
43BF00:  LDR.W           R1, [R12,R0,LSL#2]
43BF04:  LDR             R2, [R7,#8+arg_C]
43BF06:  STRB.W          R2, [R1,#0x3DC]
43BF0A:  LDR.W           R1, [R12,R0,LSL#2]
43BF0E:  LDR             R2, [R7,#8+arg_10]
43BF10:  STRB.W          R2, [R1,#0x3DD]
43BF14:  LDR.W           R1, [R12,R0,LSL#2]
43BF18:  LDR             R2, [R7,#8+arg_14]
43BF1A:  STRB.W          R2, [R1,#0x3DE]
43BF1E:  LDR.W           R1, [R12,R0,LSL#2]
43BF22:  LDR             R2, [R7,#8+arg_18]
43BF24:  STRB.W          R2, [R1,#0x3DF]
43BF28:  LDR.W           R1, [R12,R0,LSL#2]
43BF2C:  LDR             R2, [R7,#8+arg_1C]
43BF2E:  STRB.W          R2, [R1,#0x3E0]
43BF32:  LDR.W           R1, [R12,R0,LSL#2]
43BF36:  LDR             R2, [R7,#8+arg_20]
43BF38:  STRB.W          R2, [R1,#0x3E1]
43BF3C:  LDR             R1, =(MenuNumber_ptr - 0x43BF42)
43BF3E:  ADD             R1, PC; MenuNumber_ptr
43BF40:  LDR.W           LR, [R1]; MenuNumber
43BF44:  B               loc_43BF4E
43BF46:  ADD.W           R2, R12, #1
43BF4A:  STRB.W          R2, [R1,#0x415]
43BF4E:  LDR.W           R1, [LR,R0,LSL#2]
43BF52:  LDRSB.W         R2, [R1,#0x415]
43BF56:  ADDS            R3, R1, R2
43BF58:  UXTB.W          R12, R2
43BF5C:  LDRB.W          R3, [R3,#0x3D6]
43BF60:  CBZ             R3, loc_43BF70
43BF62:  ADD.W           R3, R2, R2,LSL#2
43BF66:  ADD.W           R3, R1, R3,LSL#1
43BF6A:  LDRB.W          R3, [R3,#0x41]
43BF6E:  CBNZ            R3, loc_43BF7E
43BF70:  LDRB.W          R3, [R1,#0x3F6]
43BF74:  CMP             R2, R3
43BF76:  BLT             loc_43BF46
43BF78:  CMP             R2, R3
43BF7A:  BGE             loc_43BF86
43BF7C:  B               loc_43BFCE
43BF7E:  LDRB.W          R3, [R1,#0x3F6]
43BF82:  CMP             R2, R3
43BF84:  BLT             loc_43BFCE
43BF86:  MOVS            R2, #0
43BF88:  STRB.W          R2, [R1,#0x415]
43BF8C:  LDR             R1, =(MenuNumber_ptr - 0x43BF92)
43BF8E:  ADD             R1, PC; MenuNumber_ptr
43BF90:  LDR.W           LR, [R1]; MenuNumber
43BF94:  B               loc_43BF9E
43BF96:  ADD.W           R2, R12, #1
43BF9A:  STRB.W          R2, [R1,#0x415]
43BF9E:  LDR.W           R1, [LR,R0,LSL#2]
43BFA2:  LDRSB.W         R2, [R1,#0x415]
43BFA6:  ADDS            R3, R1, R2
43BFA8:  UXTB.W          R12, R2
43BFAC:  LDRB.W          R3, [R3,#0x3D6]
43BFB0:  CBZ             R3, loc_43BFC0
43BFB2:  ADD.W           R3, R2, R2,LSL#2
43BFB6:  ADD.W           R3, R1, R3,LSL#1
43BFBA:  LDRB.W          R3, [R3,#0x41]
43BFBE:  CBNZ            R3, loc_43BFCA
43BFC0:  LDRB.W          R3, [R1,#0x3F6]
43BFC4:  CMP             R2, R3
43BFC6:  BLT             loc_43BF96
43BFC8:  B               loc_43BFCE
43BFCA:  LDRB.W          R3, [R1,#0x3F6]
43BFCE:  SXTB.W          R0, R12
43BFD2:  CMP             R0, R3
43BFD4:  ITT GE
43BFD6:  MOVGE           R0, #0
43BFD8:  STRBGE.W        R0, [R1,#0x415]
43BFDC:  POP             {R7,PC}
